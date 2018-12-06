#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
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

/* PROTOTYPES */
DSPaccum second_order_IIR(DSPfract input, __memX DSPfract* coefficients, __memY DSPfract* x_history, __memY DSPfract* y_history);
void processing();

DSPint main(int argc, char *argv[])
{
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;

	char WavInputName[256];
	char WavOutputName[256];

    DSPint nChannels;
	DSPint bitsPerSample;
    DSPint sampleRate;
    DSPint iNumSamples;
    DSPint i;
    DSPint j;

    // Init channel buffers
    for (i = 0; i < MAX_NUM_CHANNEL; i++)
    {
    	for (j = 0; i < MAX_NUM_CHANNEL; i++)
        {
            sampleBuffer[i][j] = FRACT_NUM(0);
        }
    }

	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------
	
	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,argv[1]);
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, nChannels, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------	
    {
		DSPint i;
		DSPint j;
		DSPint k;
		DSPint sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			//processing();

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{	
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
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

DSPaccum second_order_IIR(DSPfract input, __memX DSPfract* coefficients, __memY DSPfract* x_history, __memY DSPfract* y_history)
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
    __memX DSPfract *tempL = tempLeft;
    __memY DSPfract *tempR = tempRight;

    __memX DSPfract *left_ptr = sampleBuffer[0];
    __memX DSPfract *center_ptr = sampleBuffer[1];
    __memY DSPfract *right_ptr = sampleBuffer[2];
    __memX DSPfract *left_sur_ptr = sampleBuffer[3];
    __memY DSPfract *right_sur_ptr = sampleBuffer[4];
    __memY DSPfract *LFE_ptr = sampleBuffer[5];

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
