#ifndef COMMON_H
#define COMMON_H

#include "fixed_point_math.h"
#include "stdfix_emu.h"
// Constant definitions
/////////////////////////////////////////////////////////////////////////////////
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define MINUS_FOUR_DB 0.630957 //for testing purpose
#define USER_CHANNELS 6
/////////////////////////////////////////////////////////////////////////////////

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;					/* DSP fixed-point fractional */
typedef long_accum DSPaccum;			/* DSP fixed-point fractional */

/* GLOBALS */
DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
DSPfract tempBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

DSPfract *left_ptr;
DSPfract *center_ptr;
DSPfract *right_ptr;
DSPfract *left_sur_ptr;
DSPfract *right_sur_ptr;
DSPfract *LFE_ptr;

DSPfract *p;
DSPfract *p_temp;
DSPfract *left_ptr_backup;

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
    FRACT_NUM(0.5690337746913825),
    FRACT_NUM(1.138067549382765/2),
    FRACT_NUM(0.5690337746913825),
    FRACT_NUM(1.0),
    FRACT_NUM(0.9428060277021068/2),
    FRACT_NUM(0.3333290710634233)
};

DSPfract HPF_800Hz[6] = {
    FRACT_NUM(0.9286231649207966),
    FRACT_NUM(-1.857246329841593/2),
    FRACT_NUM(0.9286231649207966),
    FRACT_NUM(1.0),
    FRACT_NUM(-1.8521452628914687/2),
    FRACT_NUM(0.8623473967917175)
};

DSPfract BPF_1200_14000Hz[6] =  //CHECK
{
    FRACT_NUM(0.3722675327550114),
    FRACT_NUM(0.0),
    FRACT_NUM(-0.3722675327550114),
    FRACT_NUM(1.0),
    FRACT_NUM(-0.6837752104158255/2),
    FRACT_NUM(0.25546493448997737)
};

DSPfract BPF_1200_14000Hz_Bokan[6] =
{
    FRACT_NUM(0.34656122162555841000),
    FRACT_NUM(0.0),
    FRACT_NUM(-0.69312244325111683000),
    FRACT_NUM(1.00000000000000000000),
    FRACT_NUM(-1.52799527919044700000/2),
    FRACT_NUM(0.57389076313775655000)
};

/* DEFAULTS */
DSPint mode = 1; //1 = off, 0 = on
DSPfract gain = FRACT_NUM(0.7079457843841379);

#endif