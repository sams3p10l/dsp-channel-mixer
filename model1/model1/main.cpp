#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"
#include "common.h"

double second_order_IIR(double input, double* coefficients, double* x_history, double* y_history);
void processing();

int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr,outputWAVhdr;	

	// Init channel buffers
	for(int i=0; i<MAX_NUM_CHANNEL; i++)
	{
		memset(&sampleBuffer[i],0,BLOCK_SIZE);
		memset(&tempBuffer[i], 0, BLOCK_SIZE);
	}

	// Open input and output wav files
	//-------------------------------------------------
	if (argc > 2)
	{
		strcpy(WavInputName, argv[1]);
		wav_in = OpenWavFileForRead(WavInputName, "rb");
		strcpy(WavOutputName, argv[2]);
		wav_out = OpenWavFileForRead(WavOutputName, "wb");

		if (argc > 3)
		{
			if (((mode = atoi(argv[3])) != 0) && ((mode = atoi(argv[3])) != 1))
			{
				printf("Invalid mode input, choose 0 or 1\n");
				return -1;
			}

			if (argc > 4)
			{
				if (((gain = atoi(argv[4])) > 0))
				{
					printf("Invalid gain input, must be negative\n");
					return -1;
				}
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

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			processing();

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = sampleBuffer[k][j] * SAMPLE_SCALE ;	// crude, non-rounding 			
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

double second_order_IIR(double input, double* coefficients, double* x_history, double* y_history)
{
	double output = 0;

	output += coefficients[0] * input;        /* A0 * x(n)     */
	output += coefficients[1] * x_history[0]; /* A1 * x(n-1) */
	output += coefficients[2] * x_history[1]; /* A2 * x(n-2)   */
	output -= coefficients[4] * y_history[0]; /* B1 * y(n-1) */
	output -= coefficients[5] * y_history[1]; /* B2 * y(n-2)   */


	y_history[1] = y_history[0];    /* y(n-2) = y(n-1) */
	y_history[0] = output; /* y(n-1) = y(n)   */
	x_history[1] = x_history[0];  /* x(n-2) = x(n-1) */
	x_history[0] = input;          /* x(n-1) = x(n)   */

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
    int i;
    
    left_ptr = sampleBuffer[0];
    left_ptr_backup = tempBuffer[0];
    center_ptr = sampleBuffer[1];
    right_ptr = sampleBuffer[2];
    left_sur_ptr = sampleBuffer[3];
    right_sur_ptr = sampleBuffer[4];
    LFE_ptr = sampleBuffer[5];

    for (i = 0; i < BLOCK_SIZE; i++, left_ptr++, left_ptr_backup++, center_ptr++, right_ptr++, left_sur_ptr++, right_sur_ptr++, LFE_ptr++)
    {
        /* variables for multiplier storing */
        *left_ptr = (*left_ptr) * gain;
        *left_ptr_backup = *left_ptr;
        *center_ptr = (*center_ptr) * gain;     // at this moment it's still right channel at this position

        if (mode == 1)
        {
            /* LEFT CHANNEL */
            // levi je vec uradjen samim mnozenjem iznad
            *center_ptr = second_order_IIR(*left_ptr, LPF_18KHz, x_history1, y_history1); // C
            *left_sur_ptr = second_order_IIR(*left_ptr, HPF_800Hz, x_history3, y_history3); // Ls
            *right_sur_ptr = second_order_IIR(*left_ptr, BPF_1200_14000Hz, x_history4, y_history4); //Rs

            /* RIGHT CHANNEL */
            *right_ptr = second_order_IIR(*center_ptr, BPF_1200_14000Hz, x_history2, y_history2); //R
            *LFE_ptr = second_order_IIR(*center_ptr, HPF_800Hz, x_history5, y_history5); //LFE
        }
        else if (mode == 0)
        {
            /* LEFT CHANNEL */
            *left_ptr = second_order_IIR(*left_ptr_backup, LPF_18KHz, x_history0, y_history0); //L
            *center_ptr = second_order_IIR(*left_ptr_backup, HPF_800Hz, x_history1, y_history1); //C
            *left_sur_ptr = second_order_IIR(*left_ptr_backup, BPF_1200_14000Hz, x_history3, y_history3); //Ls

            /* RIGHT CHANNEL */
            *right_sur_ptr = second_order_IIR(*center_ptr, BPF_1200_14000Hz, x_history4, y_history4); //Rs
            *right_ptr = second_order_IIR(*center_ptr, HPF_800Hz, x_history2, y_history2); //R
            *LFE_ptr = second_order_IIR(*center_ptr, LPF_18KHz, x_history5, y_history5); //LFE
        }
    }
}