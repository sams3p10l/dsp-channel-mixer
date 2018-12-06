#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "common.h"


/* GLOBALS */
DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
DSPfract tempLeft[BLOCK_SIZE];
DSPfract tempRight[BLOCK_SIZE];

DSPfract x_history0[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//LEFT
DSPfract y_history0[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

DSPfract x_history1[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//CENTER
DSPfract y_history1[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

DSPfract x_history2[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//LEFT SURROUND
DSPfract y_history2[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

DSPfract x_history3[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//RIGHT SURROUND
DSPfract y_history3[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

DSPfract x_history4[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//RIGHT
DSPfract y_history4[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

DSPfract x_history5[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) }; //BASS
DSPfract y_history5[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

DSPfract LPF_18KHz[6] = { //downscaled with factor 2 because of DSP limits -1/1
	FRACT_NUM(0.28451688734569125),
	FRACT_NUM(0.5690337746913825),
	FRACT_NUM(0.28451688734569125),
	FRACT_NUM(0.5),
	FRACT_NUM(0.4714030138510534),
    FRACT_NUM(0.16666453553171165)
};

DSPfract HPF_800Hz[6] = {
    FRACT_NUM(0.4643115824603983),
    FRACT_NUM(-0.92862316492079652),
    FRACT_NUM(0.4643115824603983),
    FRACT_NUM(0.5),
    FRACT_NUM(-0.92607263144573435),
    FRACT_NUM(0.43117369839585875)
};

DSPfract BPF_1200_14000Hz[6] =  //CHECK
{
    FRACT_NUM(0.18613376637750572),
    FRACT_NUM(0.0),
    FRACT_NUM(-0.1861337663775057),
    FRACT_NUM(0.5),
    FRACT_NUM(-0.34188760520791275),
    FRACT_NUM(0.127732467244988685)
};

DSPfract BPF_1200_14000Hz_Bokan[6] = 
{
    FRACT_NUM(0.173280610812779205),
    FRACT_NUM(0.0),
    FRACT_NUM(-0.346561221625558415),
    FRACT_NUM(0.5),
    FRACT_NUM(-0.7639976395952235),
    FRACT_NUM(0.286945381568878275)
};

/* DEFAULTS */
DSPint mode = 1; //1 = off, 0 = on
DSPfract gain = FRACT_NUM(0.7079457843841379);

DSPaccum second_order_IIR(DSPfract input, DSPfract* coefficients, DSPfract* x_history, DSPfract* y_history);
void processing();

DSPint main(DSPint argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr,outputWAVhdr;	

	// Init channel buffers
    for (DSPint i = 0; i < MAX_NUM_CHANNEL; i++) //user_channels?
    {
        for (DSPint j = 0; i < MAX_NUM_CHANNEL; i++)
        {
            sampleBuffer[i][j] = FRACT_NUM(0);
        }
    }

	// Open input and output wav files
	//-------------------------------------------------
	if (argc > 2)
	{
		strcpy(WavInputName, argv[1]);
		wav_in = OpenWavFileForRead(WavInputName, (char*)"rb");
		strcpy(WavOutputName, argv[2]);
		wav_out = OpenWavFileForRead(WavOutputName, (char*)"wb");

		if (argc > 3)
		{
			if (((mode = atoi(argv[3])) != 0) && ((mode = atoi(argv[3])) != 1))
			{
				printf("Invalid mode input, choose 0 or 1\n");
				return -1;
			}

			if (argc > 4)
			{
                DSPint db_gain;
                if (((db_gain = atoi(argv[4])) > 0.0))
                {
                    printf("Invalid gain input, must be negative\n");
                    return -1;
                }
                else
                    gain = pow(10.0, (db_gain / 20.0));
			}
		}	
	}
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = USER_CHANNELS; // change number of channels

	DSPint oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		DSPint sample;
		DSPint BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		DSPint iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(DSPint i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{	
			for(DSPint j = 0; j < BLOCK_SIZE; j++)
			{
				for(DSPint k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = FRACT_NUM(sample / SAMPLE_SCALE);				// scale sample to 1.0/-1.0 range		
                    printf("for above processing iteration [%d]\n", i);
				}
			}

			processing();

			for(DSPint j = 0; j < BLOCK_SIZE; j++)
			{
				for(DSPint k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = (sampleBuffer[k][j]).toLong();	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample/8, 1, wav_out);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}

/**************************************
* IIR filtar drugog reda
*
* input - ulazni odbirak
* coefficients - koeficijenti [a0 a1 a2 b0 b2 b2]
* z_x - memorija za ulazne odbirke (niz duzine 2)
* z_y - memorija za izlazne odbirke (niz duzine 2)
*
* povratna vrednost - izlazni odbirak
*
*************************************/

DSPaccum second_order_IIR(DSPfract input, DSPfract* coefficients, DSPfract* x_history, DSPfract* y_history)
{
	DSPaccum output = 0;

    output += *coefficients * input << 1;        /* A0 * x(n)     */
    output += (*(coefficients + 1) * *x_history) << 1; /* A1 * x(n-1) */
    output += (*(coefficients + 2) * *(x_history + 1)) << 1; /* A2 * x(n-2)   */
    output -= (*(coefficients + 4) * *y_history) << 1; /* B1 * y(n-1) */
    output -= (*(coefficients + 5) * *(y_history + 1)) << 1; /* B2 * y(n-2)   */

    *(y_history + 1) = *y_history;    /* y(n-2) = y(n-1) */
    *y_history = output; /* y(n-1) = y(n)   */
    *(x_history + 1) = *x_history;  /* x(n-2) = x(n-1) */
    *x_history = input; /* x(n-1) = x(n)   */

	return output;
}

/*
	L = 0
	C = 1
	R = 2
	Ls = 3
	Rs = 4
	LFE = 5
*/

void processing()
{
    DSPint i;
    DSPfract *tempL = tempLeft;
    DSPfract *tempR = tempRight;

    DSPfract *left_ptr = sampleBuffer[0];
    DSPfract *center_ptr = sampleBuffer[1];
    DSPfract *right_ptr = sampleBuffer[2];
    DSPfract *left_sur_ptr = sampleBuffer[3];
    DSPfract *right_sur_ptr = sampleBuffer[4];
    DSPfract *LFE_ptr = sampleBuffer[5];

    for (i = 0; i < BLOCK_SIZE; i++)
    {
        /* variables for multiplier storing */
        *tempL = (*left_ptr) * gain;
        *tempR = (*center_ptr) * gain; // at this moment it's still right channel at this position

        if (mode == 1)
        {
            /* LEFT CHANNEL */
            *left_ptr = *tempL; // L
            *center_ptr = second_order_IIR(*tempL, LPF_18KHz, x_history1, y_history1); // C
            *left_sur_ptr = second_order_IIR(*tempL, HPF_800Hz, x_history3, y_history3); // Ls
            *right_sur_ptr = second_order_IIR(*tempL, BPF_1200_14000Hz, x_history4, y_history4); //Rs

            /* RIGHT CHANNEL */
            *right_ptr = second_order_IIR(*tempR, BPF_1200_14000Hz, x_history2, y_history2); //R
            *LFE_ptr = second_order_IIR(*tempR, HPF_800Hz, x_history5, y_history5); //LFE
        }
        else if (mode == 0)
        {
            /* LEFT CHANNEL */
            *left_ptr = second_order_IIR(*tempL, LPF_18KHz, x_history0, y_history0); //L
            *center_ptr = second_order_IIR(*tempL, HPF_800Hz, x_history0, y_history1); //C
            *left_sur_ptr = second_order_IIR(*tempL, BPF_1200_14000Hz, x_history3, y_history3); //Ls

            /* RIGHT CHANNEL */
            *right_sur_ptr = second_order_IIR(*tempR, BPF_1200_14000Hz, x_history4, y_history4); //Rs
            *right_ptr = second_order_IIR(*tempR, HPF_800Hz, x_history2, y_history2); //R
            *LFE_ptr = second_order_IIR(*tempR, LPF_18KHz, x_history5, y_history5); //LFE
        }

        left_ptr++;
        center_ptr++;
        right_ptr++;
        left_sur_ptr++;
        right_sur_ptr++;
        LFE_ptr++;
        tempL++;
        tempR++;
    }
}