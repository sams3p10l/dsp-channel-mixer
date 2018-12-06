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

#endif
