#ifndef COMMON_H
#define COMMON_H

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
__memX DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
__memY DSPfract tempBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX DSPfract *left_ptr;
__memX DSPfract *center_ptr;
__memX DSPfract *right_ptr;
__memX DSPfract *left_sur_ptr;
__memX DSPfract *right_sur_ptr;
__memX DSPfract *LFE_ptr;

__memY DSPfract *p;
__memY DSPfract *p_temp;
__memY DSPfract *left_ptr_backup;

__memY DSPfract x_history0[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//LEFT
__memY DSPfract y_history0[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

__memY DSPfract x_history1[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//CENTER
__memY DSPfract y_history1[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

__memY DSPfract x_history2[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//LEFT SURROUND
__memY DSPfract y_history2[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

__memY DSPfract x_history3[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//RIGHT SURROUND
__memY DSPfract y_history3[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

__memY DSPfract x_history4[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };	//RIGHT
__memY DSPfract y_history4[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

__memY DSPfract x_history5[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) }; //BASS
__memY DSPfract y_history5[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

__memX DSPfract LPF_18KHz[6] = { //downscaled with factor 2 because of DSP limits -1/1
    FRACT_NUM(0.5690337746913825),
    FRACT_NUM(0.56903377469),
    FRACT_NUM(0.5690337746913825),
    FRACT_NUM(1.0),
    FRACT_NUM(0.47140301385),
    FRACT_NUM(0.3333290710634233)
};

__memX DSPfract HPF_800Hz[6] = {
    FRACT_NUM(0.9286231649207966),
    FRACT_NUM(-0.92862316492),
    FRACT_NUM(0.9286231649207966),
    FRACT_NUM(1.0),
    FRACT_NUM(-0.92607263144),
    FRACT_NUM(0.8623473967917175)
};

__memX DSPfract BPF_1200_14000Hz[6] =  //CHECK
{
    FRACT_NUM(0.3722675327550114),
    FRACT_NUM(0.0),
    FRACT_NUM(-0.3722675327550114),
    FRACT_NUM(1.0),
    FRACT_NUM(-0.3418876052),
    FRACT_NUM(0.25546493448997737)
};

__memX DSPfract BPF_1200_14000Hz_Bokan[6] =
{
    FRACT_NUM(0.34656122162555841000),
    FRACT_NUM(0.0),
    FRACT_NUM(-0.69312244325111683000),
    FRACT_NUM(1.00000000000000000000),
    FRACT_NUM(-0.76399763959),
    FRACT_NUM(0.57389076313775655000)
};

/* DEFAULTS */
DSPint mode = 1; //1 = off, 0 = on
DSPfract gain = FRACT_NUM(0.7079457843841379);

#endif
