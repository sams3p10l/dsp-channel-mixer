#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define MINUS_FOUR_DB 0.630957
#define USER_CHANNELS 6

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

double x_history0[] = { 0, 0 };	//LEFT
double y_history0[] = { 0, 0 };

double x_history1[] = { 0, 0 };	//CENTER
double y_history1[] = { 0, 0 };

double x_history2[] = { 0, 0 };	//LEFT SURROUND
double y_history2[] = { 0, 0 };

double x_history3[] = { 0, 0 };	//RIGHT SURROUND
double y_history3[] = { 0, 0 };

double x_history4[] = { 0, 0 };	//RIGHT
double y_history4[] = { 0, 0 };

double x_history5[] = { 0, 0 }; //BASS
double y_history5[] = { 0, 0 };

double LPF_18KHz[6] = {
	0.5690337746913825,
	1.138067549382765,
	0.5690337746913825,
	1.0,
	0.9428060277021068,
	0.3333290710634233
};

double HPF_800Hz[6] = {
	0.9286231649207966,
	-1.857246329841593,
	0.9286231649207966,
	1.0,
	-1.8521452628914687,
	0.8623473967917175
};

double BPF_1200_14000Hz[6] =  //CHECK
{
	0.3722675327550114,
	0,
	-0.3722675327550114,
	1.0,
	-0.6837752104158255,
	0.25546493448997737
};

double BPF_1200_14000Hz_Bokan[6] = 
{
	0.34656122162555841000,
	0.00000000000000000000,
	-0.69312244325111683000,
	1.00000000000000000000,
	-1.52799527919044700000,
	0.57389076313775655000
};

/* DEFAULTS */
int mode = 1; //1 = off, 0 = on
int gain = -3;

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
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

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
    double tempL[MAX_NUM_CHANNEL][BLOCK_SIZE];

	for (i = 0; i < BLOCK_SIZE; i++)
	{
		/* variables for multiplier storing */
		sampleBuffer[0][i] = sampleBuffer[0][i] * gain;
        tempL[0][i] = sampleBuffer[0][i];
		sampleBuffer[1][i] = sampleBuffer[1][i] * gain;

		if (mode == 1)
		{
			/* LEFT CHANNEL */
			//sampleBuffer[0][i] = tempL; // L
			sampleBuffer[1][i] = second_order_IIR(sampleBuffer[0][i], LPF_18KHz, x_history1, y_history1); // C
			sampleBuffer[3][i] = second_order_IIR(sampleBuffer[0][i], HPF_800Hz, x_history3, y_history3); // Ls
			sampleBuffer[4][i] = second_order_IIR(sampleBuffer[0][i], BPF_1200_14000Hz, x_history4, y_history4); //Rs

			/* RIGHT CHANNEL */
			
			sampleBuffer[2][i] = second_order_IIR(sampleBuffer[1][i], BPF_1200_14000Hz, x_history2, y_history2); //R
			sampleBuffer[5][i] = second_order_IIR(sampleBuffer[1][i], HPF_800Hz, x_history5, y_history5); //LFE
		}
		else if (mode == 0)
		{
			/* LEFT CHANNEL */
			sampleBuffer[0][i] = second_order_IIR(tempL[0][i], LPF_18KHz, x_history0, y_history0); //L
			sampleBuffer[1][i] = second_order_IIR(tempL[0][i], HPF_800Hz, x_history0, y_history1); //C
			sampleBuffer[3][i] = second_order_IIR(tempL[0][i], BPF_1200_14000Hz, x_history3, y_history3); //Ls

			/* RIGHT CHANNEL */
			sampleBuffer[4][i] = second_order_IIR(sampleBuffer[1][i], BPF_1200_14000Hz, x_history4, y_history4); //Rs
			sampleBuffer[2][i] = second_order_IIR(sampleBuffer[1][i], HPF_800Hz, x_history2, y_history2); //R
			sampleBuffer[5][i] = second_order_IIR(sampleBuffer[1][i], LPF_18KHz, x_history5, y_history5); //LFE
		}
	}
}