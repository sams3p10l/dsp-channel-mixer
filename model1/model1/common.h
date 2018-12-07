#ifndef COMMON_H
#define COMMON_H

/* Basic constants */

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define MINUS_FOUR_DB 0.630957 //for testing purpose
#define USER_CHANNELS 6

/* GLOBALS */
double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
double tempBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

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

double *left_ptr = sampleBuffer[0];
double *left_ptr_backup = tempBuffer[0];
double *center_ptr = sampleBuffer[1];
double *right_ptr = sampleBuffer[2];
double *left_sur_ptr = sampleBuffer[3];
double *right_sur_ptr = sampleBuffer[4];
double *LFE_ptr = sampleBuffer[5];

#endif