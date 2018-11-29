#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define MINUS_FOUR_DB 0.630957
#define USER_CHANNELS 6

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

double x_historyL[] = { 0, 0 };	
double y_historyL[] = { 0, 0 };

double x_historyR[] = { 0, 0 };	
double y_historyR[] = { 0, 0 };

double x_historyLS[] = { 0, 0 };	
double y_historyLS[] = { 0, 0 };

double x_historyRS[] = { 0, 0 };	
double y_historyRS[] = { 0, 0 };

double x_historyC[] = { 0, 0 };	
double y_historyC[] = { 0, 0 };

//TODO: LFS history

double second_order_IIR(double input, double* coefficients, double* x_history, double* y_history);

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
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
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

			//processing();

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

void processing()
{
	int i;

	for (i = 0; i < BLOCK_SIZE; i++)
	{

	}
}