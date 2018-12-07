#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "common.h"

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
            tempBuffer[i][j] = FRACT_NUM(0.0);
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
        			printf("iteration[%d]\n", i);
				}
			}

			processing();

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

    output += *coefficients * input;        /* A0 * x(n)     */
    output += (*(coefficients + 1) * *x_history) << 1; /* A1 * x(n-1) */
    output += (*(coefficients + 2) * *(x_history + 1)); /* A2 * x(n-2)   */
    output -= (*(coefficients + 4) * *y_history) << 1; /* B1 * y(n-1) */
    output -= (*(coefficients + 5) * *(y_history + 1)); /* B2 * y(n-2)   */

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

void processing_ptr()
{
    for (p = sampleBuffer[0], p_temp = tempBuffer[0]; p < sampleBuffer[0] + BLOCK_SIZE; p++, p_temp++)
    {
        *p = *p * gain; //left
        *p_temp = *p;
        *(p + 16) = *(p + 16) * gain; //right
    }

    for (p = sampleBuffer[0], p_temp = tempBuffer[0]; p < sampleBuffer[0] + BLOCK_SIZE; p++, p_temp++)
    {
        if (mode == 1)
        {
            *(p + 16) = second_order_IIR(*p, LPF_18KHz, x_history0, y_history0); //center
            *(p + 48) = second_order_IIR(*p, HPF_800Hz, x_history3, y_history3); //left surround
            *(p + 64) = second_order_IIR(*p, BPF_1200_14000Hz, x_history4, y_history4); //right surround

            *(p + 32) = second_order_IIR(*(p + 16), BPF_1200_14000Hz, x_history2, y_history2); //right
            *(p + 80) = second_order_IIR(*(p + 16), HPF_800Hz, x_history5, y_history5); //LPF
        }
        else if (mode == 0)
        {
            *p = second_order_IIR(*p_temp, LPF_18KHz, x_history0, y_history0); //left
            *(p + 16) = second_order_IIR(*p_temp, HPF_800Hz, x_history1, y_history1); //center
            *(p + 48) = second_order_IIR(*p_temp, BPF_1200_14000Hz, x_history3, y_history3); //left surround

            *(p + 64) = second_order_IIR(*(p + 16), BPF_1200_14000Hz, x_history4, y_history4); //right surround
            *(p + 32) = second_order_IIR(*(p + 16), HPF_800Hz, x_history2, y_history2); //right
            *(p + 80) = second_order_IIR(*(p + 16), LPF_18KHz, x_history5, y_history5); //LPF
        }
    }
}
