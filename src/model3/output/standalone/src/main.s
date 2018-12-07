	.public _BPF_1200_14000Hz
	.public _BPF_1200_14000Hz_Bokan
	.public _HPF_800Hz
	.public _LFE_ptr
	.public _LPF_18KHz
	.public _center_ptr
	.public _gain
	.public _left_ptr
	.public _left_ptr_backup
	.public _left_sur_ptr
	.public _mode
	.public _p
	.public _p_temp
	.public _right_ptr
	.public _right_sur_ptr
	.public _sampleBuffer
	.public _tempBuffer
	.public _x_history0
	.public _x_history1
	.public _x_history2
	.public _x_history3
	.public _x_history4
	.public _x_history5
	.public _y_history0
	.public _y_history1
	.public _y_history2
	.public _y_history3
	.public _y_history4
	.public _y_history5
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _printf
	.public _processing
	.public _processing_ptr
	.public _second_order_IIR
	.extern _strcpy
	.extern __div
	.xdata_ovly
_BPF_1200_14000Hz
	.dw  (0x2fa67667)
	.dw  (0x0)
	.dw  (0xd0598999)
	.dw  (0x7fffffff)
	.dw  (0xd43d06e6)
	.dw  (0x20b31331)
	.xdata_ovly
_BPF_1200_14000Hz_Bokan
	.dw  (0x2c5c1e3c)
	.dw  (0x0)
	.dw  (0xa747c387)
	.dw  (0x7fffffff)
	.dw  (0x9e35534a)
	.dw  (0x497540a6)
	.xdata_ovly
_HPF_800Hz
	.dw  (0x76dd1fb6)
	.dw  (0x8922e04a)
	.dw  (0x76dd1fb6)
	.dw  (0x7fffffff)
	.dw  (0x897673b7)
	.dw  (0x6e616646)
	.xdata_ovly
_LFE_ptr
	.bss (0x1)
	.xdata_ovly
_LPF_18KHz
	.dw  (0x48d61946)
	.dw  (0x48d61946)
	.dw  (0x48d61946)
	.dw  (0x7fffffff)
	.dw  (0x3c56ef18)
	.dw  (0x2aaa86ea)
	.xdata_ovly
_center_ptr
	.bss (0x1)
	.xdata_ovly
_gain
	.dw  (0x5a9df7ac)
	.xdata_ovly
_left_ptr
	.bss (0x1)
	.xdata_ovly
_left_ptr_backup
	.bss (0x1)
	.xdata_ovly
_left_sur_ptr
	.bss (0x1)
	.xdata_ovly
_mode
	.dw  (0x1)
	.xdata_ovly
_p
	.bss (0x1)
	.xdata_ovly
_p_temp
	.bss (0x1)
	.xdata_ovly
_right_ptr
	.bss (0x1)
	.xdata_ovly
_right_sur_ptr
	.bss (0x1)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x69)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x72)
	.dw  (0x61)
	.dw  (0x74)
	.dw  (0x69)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x5b)
	.dw  (0x25)
	.dw  (0x64)
	.dw  (0x5d)
	.dw  (0xa)
	.dw  (0x0)
	.ydata_ovly
_tempBuffer
	.bss (0x80)
	.ydata_ovly
_x_history0
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history1
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history2
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history3
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history4
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_x_history5
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history0
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history1
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history2
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history3
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history4
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_y_history5
	.dw  (0x0)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 11 | 
	i7 += 1			# LN: 11 | 
	i7 = i7 + (0x20e)			# LN: 11 | 
	i1 = i7 - (0x1)			# LN: 11 | 
	xmem[i1] = a0h			# LN: 11 | 
	i1 = i7 - (0x2)			# LN: 11 | 
	xmem[i1] = i0			# LN: 11 | 
cline_11_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 27 | 
	a0 = 0			# LN: 27 | 
	xmem[i0] = a0h			# LN: 27 | 
for_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 27 | 
	a0 = xmem[i0]			# LN: 27 | 
	uhalfword(a1) = (0x8)			# LN: 27 | 
	a0 - a1			# LN: 27 | 
	if (a >= 0) jmp (for_end_0)			# LN: 27 | 
cline_27_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 29 | 
	a0 = 0			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
for_1:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 29 | 
	a0 = xmem[i0]			# LN: 29 | 
	uhalfword(a1) = (0x8)			# LN: 29 | 
	a0 - a1			# LN: 29 | 
	if (a >= 0) jmp (for_end_1)			# LN: 29 | 
cline_29_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 31 | 
	a0 = xmem[i0]; a1 = 0			# LN: 31, 31 | 
	a0 = a0 << 4			# LN: 31 | 
	i0 = a0			# LN: 31 | 
	i1 = i7 - (0x4)			# LN: 31 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 31 | 
	a0 = xmem[i1]			# LN: 31 | 
	b0 = i0			# LN: 31 | 
	a0 = a0 + b0			# LN: 31 | 
	AnyReg(i0, a0h)			# LN: 31 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 32 | 
	a0 = xmem[i0]; a1 = 0			# LN: 32, 32 | 
	a0 = a0 << 4			# LN: 32 | 
	i0 = a0			# LN: 32 | 
	i1 = i7 - (0x4)			# LN: 32 | 
	i0 = i0 + (_tempBuffer + 0)			# LN: 32 | 
	a0 = xmem[i1]			# LN: 32 | 
	b0 = i0			# LN: 32 | 
	a0 = a0 + b0			# LN: 32 | 
	AnyReg(i0, a0h)			# LN: 32 | 
	nop #empty cycle
	ymem[i0] = a1h			# LN: 32 | 
cline_32_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 29 | 
	a0 = xmem[i0]			# LN: 29 | 
	uhalfword(a1) = (0x1)			# LN: 29 | 
	a0 = a0 + a1			# LN: 29 | 
	i0 = i7 - (0x3)			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
	jmp (for_1)			# LN: 29 | 
cline_29_1:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 27 | 
	a0 = xmem[i0]			# LN: 27 | 
	uhalfword(a1) = (0x1)			# LN: 27 | 
	a0 = a0 + a1			# LN: 27 | 
	i0 = i7 - (0x3)			# LN: 27 | 
	xmem[i0] = a0h			# LN: 27 | 
	jmp (for_0)			# LN: 27 | 
cline_27_1:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 38 | 
	i0 = xmem[i0]			# LN: 38 | 
	i1 = i7 - (260 - 0)			# LN: 38 | 
	i4 = xmem[i0]			# LN: 38 | 
	i0 = i1			# LN: 38 | 
	i1 = i4			# LN: 38 | 
	call (_strcpy)			# LN: 38 | 
cline_38_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 39 | 
	call (_cl_wavread_open)			# LN: 39 | 
	AnyReg(i0, a0h)			# LN: 39 | 
	i1 = i7 - (0x105)			# LN: 39 | 
	xmem[i1] = i0			# LN: 39 | 
cline_39_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 40 | 
	a0 = xmem[i0]			# LN: 40 | 
	a0 & a0			# LN: 40 | 
	if (a != 0) jmp (else_0)			# LN: 40 | 
cline_40_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 42 | 
	call (_printf)			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 43 | 
	jmp (__epilogue_220)			# LN: 43 | 
cline_43_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 49 | 
	i0 = xmem[i0]			# LN: 49 | 
	call (_cl_wavread_getnchannels)			# LN: 49 | 
	i0 = i7 - (0x106)			# LN: 49 | 
	xmem[i0] = a0h			# LN: 49 | 
cline_49_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	call (_cl_wavread_bits_per_sample)			# LN: 50 | 
	i0 = i7 - (0x107)			# LN: 50 | 
	xmem[i0] = a0h			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	call (_cl_wavread_frame_rate)			# LN: 51 | 
	i0 = i7 - (0x108)			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 52 | 
	i0 = xmem[i0]			# LN: 52 | 
	call (_cl_wavread_number_of_frames)			# LN: 52 | 
	i0 = i7 - (0x109)			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	i1 = i7 - (521 - 0)			# LN: 57 | 
	i0 += 1			# LN: 57 | 
	i4 = xmem[i0]			# LN: 57 | 
	i0 = i1			# LN: 57 | 
	i1 = i4			# LN: 57 | 
	call (_strcpy)			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 58 | 
	i1 = i7 - (0x107)			# LN: 58 | 
	a0 = xmem[i1]			# LN: 58 | 
	i1 = i7 - (0x106)			# LN: 58 | 
	a1 = xmem[i1]			# LN: 58 | 
	i1 = i7 - (0x108)			# LN: 58 | 
	b0 = xmem[i1]			# LN: 58 | 
	call (_cl_wavwrite_open)			# LN: 58 | 
	AnyReg(i0, a0h)			# LN: 58 | 
	i1 = i7 - (0x20a)			# LN: 58 | 
	xmem[i1] = i0			# LN: 58 | 
cline_58_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 59 | 
	a0 = xmem[i0]			# LN: 59 | 
	a0 & a0			# LN: 59 | 
	if (a != 0) jmp (else_1)			# LN: 59 | 
cline_59_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 61 | 
	call (_printf)			# LN: 61 | 
cline_61_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 62 | 
	jmp (__epilogue_220)			# LN: 62 | 
cline_62_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 75 | 
	a0 = 0			# LN: 75 | 
	xmem[i0] = a0h			# LN: 75 | 
for_2:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 75 | 
	a0 = xmem[i0]			# LN: 75 | 
	uhalfword(a1) = (0x10)			# LN: 75 | 
	call (__div)			# LN: 75 | 
	i0 = i7 - (0x20b)			# LN: 75 | 
	a1 = xmem[i0]			# LN: 75 | 
	a1 - a0			# LN: 75 | 
	if (a >= 0) jmp (for_end_2)			# LN: 75 | 
cline_75_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 77 | 
	a0 = 0			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
	do (0x10), label_end_93			# LN: 77 | 
cline_77_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 79 | 
	a0 = 0			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
for_4:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 79 | 
	a0 = xmem[i0]			# LN: 79 | 
	i0 = i7 - (0x106)			# LN: 79 | 
	a1 = xmem[i0]			# LN: 79 | 
	a0 - a1			# LN: 79 | 
	if (a >= 0) jmp (for_end_4)			# LN: 79 | 
cline_79_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 81 | 
	i0 = xmem[i0]			# LN: 81 | 
	call (_cl_wavread_recvsample)			# LN: 81 | 
	i0 = i7 - (0x20e)			# LN: 81 | 
	xmem[i0] = a0h			# LN: 81 | 
cline_81_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	a0 = a0 << 4			# LN: 82 | 
	i0 = a0			# LN: 82 | 
	i1 = i7 - (0x20c)			# LN: 82 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 82 | 
	a0 = xmem[i1]			# LN: 82 | 
	a1 = i0			# LN: 82 | 
	a0 = a1 + a0			# LN: 82 | 
	AnyReg(i0, a0h)			# LN: 82 | 
	i1 = i7 - (0x20e)			# LN: 82 | 
	a0 = xmem[i1]			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
cline_82_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x20b)			# LN: 83 | 
	a0 = xmem[i1]			# LN: 83 | 
	i0 = (0) + (_string_const_2)			# LN: 83 | 
	call (_printf)			# LN: 83 | 
cline_83_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 79 | 
	a0 = xmem[i0]			# LN: 79 | 
	uhalfword(a1) = (0x1)			# LN: 79 | 
	a0 = a0 + a1			# LN: 79 | 
	i0 = i7 - (0x20d)			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
	jmp (for_4)			# LN: 79 | 
cline_79_1:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x1)			# LN: 77 | 
	a0 = a0 + a1			# LN: 77 | 
	i0 = i7 - (0x20c)			# LN: 77 | 
label_end_93:			# LN: 77 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 77 | 
cline_77_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 89 | 
	a0 = 0			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
	do (0x10), label_end_94			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 91 | 
	a0 = 0			# LN: 91 | 
	xmem[i0] = a0h			# LN: 91 | 
for_6:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	i0 = i7 - (0x106)			# LN: 91 | 
	a1 = xmem[i0]			# LN: 91 | 
	a0 - a1			# LN: 91 | 
	if (a >= 0) jmp (for_end_6)			# LN: 91 | 
cline_91_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	a0 = a0 << 4			# LN: 93 | 
	i0 = a0			# LN: 93 | 
	i1 = i7 - (0x20c)			# LN: 93 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 93 | 
	a0 = xmem[i1]			# LN: 93 | 
	a1 = i0			# LN: 93 | 
	a0 = a1 + a0			# LN: 93 | 
	AnyReg(i0, a0h)			# LN: 93 | 
	i1 = i7 - (0x20e)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	xmem[i1] = a0h			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 94 | 
	i1 = i7 - (0x20e)			# LN: 94 | 
	a0 = xmem[i1]			# LN: 94 | 
	i0 = xmem[i0]			# LN: 94 | 
	call (_cl_wavwrite_sendsample)			# LN: 94 | 
cline_94_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	uhalfword(a1) = (0x1)			# LN: 91 | 
	a0 = a0 + a1			# LN: 91 | 
	i0 = i7 - (0x20d)			# LN: 91 | 
	xmem[i0] = a0h			# LN: 91 | 
	jmp (for_6)			# LN: 91 | 
cline_91_1:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	uhalfword(a1) = (0x1)			# LN: 89 | 
	a0 = a0 + a1			# LN: 89 | 
	i0 = i7 - (0x20c)			# LN: 89 | 
label_end_94:			# LN: 89 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 89 | 
cline_89_1:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 75 | 
	a0 = xmem[i0]			# LN: 75 | 
	uhalfword(a1) = (0x1)			# LN: 75 | 
	a0 = a0 + a1			# LN: 75 | 
	i0 = i7 - (0x20b)			# LN: 75 | 
	xmem[i0] = a0h			# LN: 75 | 
	jmp (for_2)			# LN: 75 | 
cline_75_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	call (_cl_wavread_close)			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	call (_cl_wavwrite_close)			# LN: 103 | 
cline_103_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 106 | 
	jmp (__epilogue_220)			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
__epilogue_220:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 107 | 
	i7 -= 1			# LN: 107 | 
	ret			# LN: 107 | 



_processing:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 148 | 
	i7 += 1			# LN: 148 | 
	i7 = i7 + (0x1)			# LN: 148 | 
cline_148_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 152 | 
	xmem[_left_ptr + 0] = i0			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_tempBuffer + 0)			# LN: 153 | 
	xmem[_left_ptr_backup + 0] = i0			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 154 | 
	xmem[_center_ptr + 0] = i0			# LN: 154 | 
cline_154_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 155 | 
	xmem[_right_ptr + 0] = i0			# LN: 155 | 
cline_155_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 156 | 
	xmem[_left_sur_ptr + 0] = i0			# LN: 156 | 
cline_156_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 64)			# LN: 157 | 
	xmem[_right_sur_ptr + 0] = i0			# LN: 157 | 
cline_157_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 80)			# LN: 158 | 
	xmem[_LFE_ptr + 0] = i0			# LN: 158 | 
cline_158_0:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 160 | 
	a0 = 0			# LN: 160 | 
	xmem[i0] = a0h			# LN: 160 | 
	do (0x10), label_end_92			# LN: 160 | 
cline_160_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr + 0]			# LN: 163 | 
	x0 = xmem[_gain + 0]			# LN: 163 | 
	x1 = xmem[i0]			# LN: 163 | 
	i0 = (0) + (_left_ptr)			# LN: 163 | 
	i0 = xmem[i0]			# LN: 163 | 
	a0 = x1 * x0			# LN: 163 | 
	xmem[i0] = a0			# LN: 163 | 
cline_163_0:			/* LN: 164 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr + 0]			# LN: 164 | 
	i1 = (0) + (_left_ptr_backup)			# LN: 164 | 
	i1 = xmem[i1]			# LN: 164 | 
	a0 = xmem[i0]			# LN: 164 | 
	ymem[i1] = a0h			# LN: 164 | 
cline_164_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_center_ptr + 0]			# LN: 165 | 
	x0 = xmem[_gain + 0]			# LN: 165 | 
	x1 = xmem[i0]			# LN: 165 | 
	i0 = (0) + (_center_ptr)			# LN: 165 | 
	i0 = xmem[i0]			# LN: 165 | 
	a0 = x1 * x0			# LN: 165 | 
	xmem[i0] = a0			# LN: 165 | 
cline_165_0:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 167 | 
	uhalfword(a1) = (0x1)			# LN: 167 | 
	a0 - a1			# LN: 167 | 
	if (a != 0) jmp (else_2)			# LN: 167 | 
cline_167_0:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr + 0]			# LN: 171 | 
	i1 = (0) + (_LPF_18KHz)			# LN: 171 | 
	a0 = xmem[i0]			# LN: 171 | 
	i4 = (0) + (_x_history1)			# LN: 171 | 
	i5 = (0) + (_y_history1)			# LN: 171 | 
	i0 = i1			# LN: 171 | 
	i1 = i4			# LN: 171 | 
	i4 = i5			# LN: 171 | 
	call (_second_order_IIR)			# LN: 171 | 
	i0 = (0) + (_center_ptr)			# LN: 171 | 
	i0 = xmem[i0]			# LN: 171 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 171 | 
cline_171_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr + 0]			# LN: 172 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 172 | 
	a0 = xmem[i0]			# LN: 172 | 
	i4 = (0) + (_x_history3)			# LN: 172 | 
	i5 = (0) + (_y_history3)			# LN: 172 | 
	i0 = i1			# LN: 172 | 
	i1 = i4			# LN: 172 | 
	i4 = i5			# LN: 172 | 
	call (_second_order_IIR)			# LN: 172 | 
	i0 = (0) + (_left_sur_ptr)			# LN: 172 | 
	i0 = xmem[i0]			# LN: 172 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 172 | 
cline_172_0:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr + 0]			# LN: 173 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 173 | 
	a0 = xmem[i0]			# LN: 173 | 
	i4 = (0) + (_x_history4)			# LN: 173 | 
	i5 = (0) + (_y_history4)			# LN: 173 | 
	i0 = i1			# LN: 173 | 
	i1 = i4			# LN: 173 | 
	i4 = i5			# LN: 173 | 
	call (_second_order_IIR)			# LN: 173 | 
	i0 = (0) + (_right_sur_ptr)			# LN: 173 | 
	i0 = xmem[i0]			# LN: 173 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 173 | 
cline_173_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_center_ptr + 0]			# LN: 176 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 176 | 
	a0 = xmem[i0]			# LN: 176 | 
	i4 = (0) + (_x_history2)			# LN: 176 | 
	i5 = (0) + (_y_history2)			# LN: 176 | 
	i0 = i1			# LN: 176 | 
	i1 = i4			# LN: 176 | 
	i4 = i5			# LN: 176 | 
	call (_second_order_IIR)			# LN: 176 | 
	i0 = (0) + (_right_ptr)			# LN: 176 | 
	i0 = xmem[i0]			# LN: 176 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 176 | 
cline_176_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_center_ptr + 0]			# LN: 177 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 177 | 
	a0 = xmem[i0]			# LN: 177 | 
	i4 = (0) + (_x_history5)			# LN: 177 | 
	i5 = (0) + (_y_history5)			# LN: 177 | 
	i0 = i1			# LN: 177 | 
	i1 = i4			# LN: 177 | 
	i4 = i5			# LN: 177 | 
	call (_second_order_IIR)			# LN: 177 | 
	i0 = (0) + (_LFE_ptr)			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 177 | 
	jmp (endif_2)			# LN: 177 | 
cline_177_0:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 179 | 
	a0 & a0			# LN: 179 | 
	if (a != 0) jmp (else_3)			# LN: 179 | 
cline_179_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr_backup + 0]			# LN: 182 | 
	i1 = (0) + (_LPF_18KHz)			# LN: 182 | 
	a0 = ymem[i0]			# LN: 182 | 
	i4 = (0) + (_x_history0)			# LN: 182 | 
	i5 = (0) + (_y_history0)			# LN: 182 | 
	i0 = i1			# LN: 182 | 
	i1 = i4			# LN: 182 | 
	i4 = i5			# LN: 182 | 
	call (_second_order_IIR)			# LN: 182 | 
	i0 = (0) + (_left_ptr)			# LN: 182 | 
	i0 = xmem[i0]			# LN: 182 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 182 | 
cline_182_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr_backup + 0]			# LN: 183 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 183 | 
	a0 = ymem[i0]			# LN: 183 | 
	i4 = (0) + (_x_history1)			# LN: 183 | 
	i5 = (0) + (_y_history1)			# LN: 183 | 
	i0 = i1			# LN: 183 | 
	i1 = i4			# LN: 183 | 
	i4 = i5			# LN: 183 | 
	call (_second_order_IIR)			# LN: 183 | 
	i0 = (0) + (_center_ptr)			# LN: 183 | 
	i0 = xmem[i0]			# LN: 183 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 183 | 
cline_183_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr_backup + 0]			# LN: 184 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 184 | 
	a0 = ymem[i0]			# LN: 184 | 
	i4 = (0) + (_x_history3)			# LN: 184 | 
	i5 = (0) + (_y_history3)			# LN: 184 | 
	i0 = i1			# LN: 184 | 
	i1 = i4			# LN: 184 | 
	i4 = i5			# LN: 184 | 
	call (_second_order_IIR)			# LN: 184 | 
	i0 = (0) + (_left_sur_ptr)			# LN: 184 | 
	i0 = xmem[i0]			# LN: 184 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 184 | 
cline_184_0:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_center_ptr + 0]			# LN: 187 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 187 | 
	a0 = xmem[i0]			# LN: 187 | 
	i4 = (0) + (_x_history4)			# LN: 187 | 
	i5 = (0) + (_y_history4)			# LN: 187 | 
	i0 = i1			# LN: 187 | 
	i1 = i4			# LN: 187 | 
	i4 = i5			# LN: 187 | 
	call (_second_order_IIR)			# LN: 187 | 
	i0 = (0) + (_right_sur_ptr)			# LN: 187 | 
	i0 = xmem[i0]			# LN: 187 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 187 | 
cline_187_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_center_ptr + 0]			# LN: 188 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 188 | 
	a0 = xmem[i0]			# LN: 188 | 
	i4 = (0) + (_x_history2)			# LN: 188 | 
	i5 = (0) + (_y_history2)			# LN: 188 | 
	i0 = i1			# LN: 188 | 
	i1 = i4			# LN: 188 | 
	i4 = i5			# LN: 188 | 
	call (_second_order_IIR)			# LN: 188 | 
	i0 = (0) + (_right_ptr)			# LN: 188 | 
	i0 = xmem[i0]			# LN: 188 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 188 | 
cline_188_0:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_center_ptr + 0]			# LN: 189 | 
	i1 = (0) + (_LPF_18KHz)			# LN: 189 | 
	a0 = xmem[i0]			# LN: 189 | 
	i4 = (0) + (_x_history5)			# LN: 189 | 
	i5 = (0) + (_y_history5)			# LN: 189 | 
	i0 = i1			# LN: 189 | 
	i1 = i4			# LN: 189 | 
	i4 = i5			# LN: 189 | 
	call (_second_order_IIR)			# LN: 189 | 
	i0 = (0) + (_LFE_ptr)			# LN: 189 | 
	i0 = xmem[i0]			# LN: 189 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 189 | 
	jmp (endif_3)			# LN: 189 | 
cline_189_0:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_left_ptr + 0]			# LN: 160 | 
	i1 = i7 - (0x1)			# LN: 160 | 
	i0 += 1			# LN: 160 | 
	xmem[_left_ptr + 0] = i0			# LN: 160 | 
	i0 = xmem[_right_ptr + 0]			# LN: 160 | 
	uhalfword(a0) = (0x1)			# LN: 160 | 
	i0 += 1			# LN: 160 | 
	xmem[_right_ptr + 0] = i0			# LN: 160 | 
	i0 = xmem[_center_ptr + 0]			# LN: 160 | 
	i4 = i7 - (0x1)			# LN: 160 | 
	i0 += 1			# LN: 160 | 
	xmem[_center_ptr + 0] = i0			# LN: 160 | 
	i0 = xmem[_left_sur_ptr + 0]			# LN: 160 | 
	nop #empty cycle
	i0 += 1			# LN: 160 | 
	xmem[_left_sur_ptr + 0] = i0			# LN: 160 | 
	i0 = xmem[_right_sur_ptr + 0]			# LN: 160 | 
	nop #empty cycle
	i0 += 1			# LN: 160 | 
	xmem[_right_sur_ptr + 0] = i0			# LN: 160 | 
	i0 = xmem[_left_ptr_backup + 0]			# LN: 160 | 
	nop #empty cycle
	i0 += 1			# LN: 160 | 
	xmem[_left_ptr_backup + 0] = i0			# LN: 160 | 
	i0 = xmem[_LFE_ptr + 0]			# LN: 160 | 
	nop #empty cycle
	i0 += 1			# LN: 160 | 
	xmem[_LFE_ptr + 0] = i0			# LN: 160 | 
	a1 = xmem[i1]			# LN: 160 | 
	a0 = a1 + a0			# LN: 160 | 
label_end_92:			# LN: 160 | CYCLE: 30 | RULES: ()
	xmem[i4] = a0h			# LN: 160 | 
cline_160_1:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_224)			# LN: 192 | 
__epilogue_224:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 192 | 
	i7 -= 1			# LN: 192 | 
	ret			# LN: 192 | 



_processing_ptr:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 194 | 
	i7 += 1			# LN: 194 | 
	xmem[i7] = i2; i7 += 1			# LN: 194, 194 | 
cline_194_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 196 | 
	xmem[_p + 0] = i0			# LN: 196 | 
	i0 = (0) + (_tempBuffer + 0)			# LN: 196 | 
	xmem[_p_temp + 0] = i0			# LN: 196 | 
for_8:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 196 | 
	a0 = i0			# LN: 196 | 
	uhalfword(a1) = (_sampleBuffer + 16)			# LN: 196 | 
	a0 - a1			# LN: 196 | 
	if (a >= 0) jmp (for_end_8)			# LN: 196 | 
cline_196_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 198 | 
	x0 = xmem[_gain + 0]			# LN: 198 | 
	x1 = ymem[i0]			# LN: 198 | 
	i0 = (0) + (_p)			# LN: 198 | 
	i0 = xmem[i0]			# LN: 198 | 
	a0 = x1 * x0			# LN: 198 | 
	ymem[i0] = a0			# LN: 198 | 
cline_198_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 199 | 
	i1 = (0) + (_p_temp)			# LN: 199 | 
	i1 = xmem[i1]			# LN: 199 | 
	a0 = ymem[i0]			# LN: 199 | 
	ymem[i1] = a0h			# LN: 199 | 
cline_199_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 200 | 
	i1 = xmem[_p + 0]			# LN: 200 | 
	i0 = i0 + (0x10)			# LN: 200 | 
	i1 = i1 + (0x10)			# LN: 200 | 
	x0 = ymem[i1]			# LN: 200 | 
	x1 = xmem[_gain + 0]			# LN: 200 | 
	a0 = x0 * x1			# LN: 200 | 
	ymem[i0] = a0			# LN: 200 | 
cline_200_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_temp + 0]			# LN: 196 | 
	nop #empty cycle
	i0 += 1			# LN: 196 | 
	xmem[_p_temp + 0] = i0			# LN: 196 | 
	i0 = xmem[_p + 0]			# LN: 196 | 
	nop #empty cycle
	i0 += 1			# LN: 196 | 
	xmem[_p + 0] = i0			# LN: 196 | 
	jmp (for_8)			# LN: 196 | 
cline_196_1:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 203 | 
	xmem[_p + 0] = i0			# LN: 203 | 
	i0 = (0) + (_tempBuffer + 0)			# LN: 203 | 
	xmem[_p_temp + 0] = i0			# LN: 203 | 
for_9:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 203 | 
	a0 = i0			# LN: 203 | 
	uhalfword(a1) = (_sampleBuffer + 16)			# LN: 203 | 
	a0 - a1			# LN: 203 | 
	if (a >= 0) jmp (for_end_9)			# LN: 203 | 
cline_203_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 205 | 
	uhalfword(a1) = (0x1)			# LN: 205 | 
	a0 - a1			# LN: 205 | 
	if (a != 0) jmp (else_4)			# LN: 205 | 
cline_205_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 207 | 
	i5 = xmem[_p + 0]			# LN: 207 | 
	a0 = ymem[i0]			# LN: 207 | 
	i0 = (0) + (_LPF_18KHz)			# LN: 207 | 
	i1 = (0) + (_x_history0)			# LN: 207 | 
	i4 = (0) + (_y_history0)			# LN: 207 | 
	i2 = i5 + (0x10)			# LN: 207 | 
	call (_second_order_IIR)			# LN: 207 | 
	ymem[i2] = a0			# LN: 207 | 
cline_207_0:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 208 | 
	i5 = xmem[_p + 0]			# LN: 208 | 
	a0 = ymem[i0]			# LN: 208 | 
	i0 = (0) + (_HPF_800Hz)			# LN: 208 | 
	i1 = (0) + (_x_history3)			# LN: 208 | 
	i4 = (0) + (_y_history3)			# LN: 208 | 
	i2 = i5 + (0x30)			# LN: 208 | 
	call (_second_order_IIR)			# LN: 208 | 
	ymem[i2] = a0			# LN: 208 | 
cline_208_0:			/* LN: 209 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 209 | 
	i5 = xmem[_p + 0]			# LN: 209 | 
	a0 = ymem[i0]			# LN: 209 | 
	i0 = (0) + (_BPF_1200_14000Hz)			# LN: 209 | 
	i1 = (0) + (_x_history4)			# LN: 209 | 
	i4 = (0) + (_y_history4)			# LN: 209 | 
	i2 = i5 + (0x40)			# LN: 209 | 
	call (_second_order_IIR)			# LN: 209 | 
	ymem[i2] = a0			# LN: 209 | 
cline_209_0:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 211 | 
	i5 = xmem[_p + 0]			# LN: 211 | 
	i0 = i0 + (0x10)			# LN: 211 | 
	a0 = ymem[i0]			# LN: 211 | 
	i0 = (0) + (_BPF_1200_14000Hz)			# LN: 211 | 
	i1 = (0) + (_x_history2)			# LN: 211 | 
	i4 = (0) + (_y_history2)			# LN: 211 | 
	i2 = i5 + (0x20)			# LN: 211 | 
	call (_second_order_IIR)			# LN: 211 | 
	ymem[i2] = a0			# LN: 211 | 
cline_211_0:			/* LN: 212 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 212 | 
	i5 = xmem[_p + 0]			# LN: 212 | 
	i0 = i0 + (0x10)			# LN: 212 | 
	a0 = ymem[i0]			# LN: 212 | 
	i0 = (0) + (_HPF_800Hz)			# LN: 212 | 
	i1 = (0) + (_x_history5)			# LN: 212 | 
	i4 = (0) + (_y_history5)			# LN: 212 | 
	i2 = i5 + (0x50)			# LN: 212 | 
	call (_second_order_IIR)			# LN: 212 | 
	ymem[i2] = a0			# LN: 212 | 
	jmp (endif_4)			# LN: 212 | 
cline_212_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 214 | 
	a0 & a0			# LN: 214 | 
	if (a != 0) jmp (else_5)			# LN: 214 | 
cline_214_0:			/* LN: 216 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_temp + 0]			# LN: 216 | 
	i1 = (0) + (_LPF_18KHz)			# LN: 216 | 
	a0 = ymem[i0]			# LN: 216 | 
	i4 = (0) + (_x_history0)			# LN: 216 | 
	i5 = (0) + (_y_history0)			# LN: 216 | 
	i0 = i1			# LN: 216 | 
	i1 = i4			# LN: 216 | 
	i4 = i5			# LN: 216 | 
	call (_second_order_IIR)			# LN: 216 | 
	i0 = (0) + (_p)			# LN: 216 | 
	i0 = xmem[i0]			# LN: 216 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 216 | 
cline_216_0:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_temp + 0]			# LN: 217 | 
	i5 = xmem[_p + 0]			# LN: 217 | 
	a0 = ymem[i0]			# LN: 217 | 
	i0 = (0) + (_HPF_800Hz)			# LN: 217 | 
	i1 = (0) + (_x_history1)			# LN: 217 | 
	i4 = (0) + (_y_history1)			# LN: 217 | 
	i2 = i5 + (0x10)			# LN: 217 | 
	call (_second_order_IIR)			# LN: 217 | 
	ymem[i2] = a0			# LN: 217 | 
cline_217_0:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_temp + 0]			# LN: 218 | 
	i5 = xmem[_p + 0]			# LN: 218 | 
	a0 = ymem[i0]			# LN: 218 | 
	i0 = (0) + (_BPF_1200_14000Hz)			# LN: 218 | 
	i1 = (0) + (_x_history3)			# LN: 218 | 
	i4 = (0) + (_y_history3)			# LN: 218 | 
	i2 = i5 + (0x30)			# LN: 218 | 
	call (_second_order_IIR)			# LN: 218 | 
	ymem[i2] = a0			# LN: 218 | 
cline_218_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 220 | 
	i5 = xmem[_p + 0]			# LN: 220 | 
	i0 = i0 + (0x10)			# LN: 220 | 
	a0 = ymem[i0]			# LN: 220 | 
	i0 = (0) + (_BPF_1200_14000Hz)			# LN: 220 | 
	i1 = (0) + (_x_history4)			# LN: 220 | 
	i4 = (0) + (_y_history4)			# LN: 220 | 
	i2 = i5 + (0x40)			# LN: 220 | 
	call (_second_order_IIR)			# LN: 220 | 
	ymem[i2] = a0			# LN: 220 | 
cline_220_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 221 | 
	i5 = xmem[_p + 0]			# LN: 221 | 
	i0 = i0 + (0x10)			# LN: 221 | 
	a0 = ymem[i0]			# LN: 221 | 
	i0 = (0) + (_HPF_800Hz)			# LN: 221 | 
	i1 = (0) + (_x_history2)			# LN: 221 | 
	i4 = (0) + (_y_history2)			# LN: 221 | 
	i2 = i5 + (0x20)			# LN: 221 | 
	call (_second_order_IIR)			# LN: 221 | 
	ymem[i2] = a0			# LN: 221 | 
cline_221_0:			/* LN: 222 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p + 0]			# LN: 222 | 
	i5 = xmem[_p + 0]			# LN: 222 | 
	i0 = i0 + (0x10)			# LN: 222 | 
	a0 = ymem[i0]			# LN: 222 | 
	i0 = (0) + (_LPF_18KHz)			# LN: 222 | 
	i1 = (0) + (_x_history5)			# LN: 222 | 
	i4 = (0) + (_y_history5)			# LN: 222 | 
	i2 = i5 + (0x50)			# LN: 222 | 
	call (_second_order_IIR)			# LN: 222 | 
	ymem[i2] = a0			# LN: 222 | 
	jmp (endif_5)			# LN: 222 | 
cline_222_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_temp + 0]			# LN: 203 | 
	nop #empty cycle
	i0 += 1			# LN: 203 | 
	xmem[_p_temp + 0] = i0			# LN: 203 | 
	i0 = xmem[_p + 0]			# LN: 203 | 
	nop #empty cycle
	i0 += 1			# LN: 203 | 
	xmem[_p + 0] = i0			# LN: 203 | 
	jmp (for_9)			# LN: 203 | 
cline_203_1:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_226)			# LN: 225 | 
__epilogue_226:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 225 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 225, 225 | 
	ret			# LN: 225 | 



_second_order_IIR:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 121 | 
	i7 += 1			# LN: 121 | 
	i7 = i7 + (0x7)			# LN: 121 | 
	i5 = i7 - (0x1)			# LN: 121 | 
	xmem[i5] = a0h			# LN: 121 | 
	i5 = i7 - (0x2)			# LN: 121 | 
	xmem[i5] = i0			# LN: 121 | 
	i0 = i7 - (0x3)			# LN: 121 | 
	xmem[i0] = i1			# LN: 121 | 
	i0 = i7 - (0x4)			# LN: 121 | 
	xmem[i0] = i4			# LN: 121 | 
cline_121_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 123 | 
	a0 = 0			# LN: 123 | 
	xmem[i0] = a0g; i0 += 1			# LN: 123, 123 | 
	xmem[i0] = a0h; i0 += 1			# LN: 123, 123 | 
	xmem[i0] = a0l			# LN: 123 | 
cline_123_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	i1 = i7 - (0x1)			# LN: 125 | 
	x0 = xmem[i0]			# LN: 125 | 
	x1 = xmem[i1]			# LN: 125 | 
	i0 = i7 - (0x7)			# LN: 125 | 
	a0g = xmem[i0]; i0 += 1			# LN: 125, 125 | 
	a0h = xmem[i0]; i0 += 1			# LN: 125, 125 | 
	a0l = xmem[i0]			# LN: 125 | 
	a0 += x0 * x1			# LN: 125 | 
	i0 = i7 - (0x7)			# LN: 125 | 
	xmem[i0] = a0g; i0 += 1			# LN: 125, 125 | 
	xmem[i0] = a0h; i0 += 1			# LN: 125, 125 | 
	xmem[i0] = a0l			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	i1 = i7 - (0x3)			# LN: 126 | 
	i0 += 1			# LN: 126 | 
	i1 = xmem[i1]			# LN: 126 | 
	x0 = xmem[i0]			# LN: 126 | 
	x1 = ymem[i1]			# LN: 126 | 
	i0 = i7 - (0x7)			# LN: 126 | 
	a0g = xmem[i0]; i0 += 1			# LN: 126, 126 | 
	a1 = x0 * x1			# LN: 126 | 
	a0h = xmem[i0]; i0 += 1			# LN: 126, 126 | 
	a1 = a1 << 1			# LN: 126 | 
	a0l = xmem[i0]			# LN: 126 | 
	a0 = a0 + a1			# LN: 126 | 
	i0 = i7 - (0x7)			# LN: 126 | 
	xmem[i0] = a0g; i0 += 1			# LN: 126, 126 | 
	xmem[i0] = a0h; i0 += 1			# LN: 126, 126 | 
	xmem[i0] = a0l			# LN: 126 | 
cline_126_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	i1 = i7 - (0x3)			# LN: 127 | 
	i0 += 2			# LN: 127 | 
	i1 = xmem[i1]			# LN: 127 | 
	x0 = xmem[i0]			# LN: 127 | 
	i1 += 1			# LN: 127 | 
	x1 = ymem[i1]			# LN: 127 | 
	i0 = i7 - (0x7)			# LN: 127 | 
	a0g = xmem[i0]; i0 += 1			# LN: 127, 127 | 
	a0h = xmem[i0]; i0 += 1			# LN: 127, 127 | 
	a0l = xmem[i0]			# LN: 127 | 
	a0 += x0 * x1			# LN: 127 | 
	i0 = i7 - (0x7)			# LN: 127 | 
	xmem[i0] = a0g; i0 += 1			# LN: 127, 127 | 
	xmem[i0] = a0h; i0 += 1			# LN: 127, 127 | 
	xmem[i0] = a0l			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 128 | 
	i0 = xmem[i0]			# LN: 128 | 
	i1 = i7 - (0x4)			# LN: 128 | 
	i0 = i0 + (0x4)			# LN: 128 | 
	i1 = xmem[i1]			# LN: 128 | 
	x0 = xmem[i0]			# LN: 128 | 
	x1 = ymem[i1]			# LN: 128 | 
	i0 = i7 - (0x7)			# LN: 128 | 
	a0g = xmem[i0]; i0 += 1			# LN: 128, 128 | 
	a1 = x0 * x1			# LN: 128 | 
	a0h = xmem[i0]; i0 += 1			# LN: 128, 128 | 
	a1 = a1 << 1			# LN: 128 | 
	a0l = xmem[i0]			# LN: 128 | 
	a0 = a0 - a1			# LN: 128 | 
	i0 = i7 - (0x7)			# LN: 128 | 
	xmem[i0] = a0g; i0 += 1			# LN: 128, 128 | 
	xmem[i0] = a0h; i0 += 1			# LN: 128, 128 | 
	xmem[i0] = a0l			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
	i1 = i7 - (0x4)			# LN: 129 | 
	i0 = i0 + (0x5)			# LN: 129 | 
	i1 = xmem[i1]			# LN: 129 | 
	x0 = xmem[i0]			# LN: 129 | 
	i1 += 1			# LN: 129 | 
	x1 = ymem[i1]			# LN: 129 | 
	i0 = i7 - (0x7)			# LN: 129 | 
	a0g = xmem[i0]; i0 += 1			# LN: 129, 129 | 
	a0h = xmem[i0]; i0 += 1			# LN: 129, 129 | 
	a0l = xmem[i0]			# LN: 129 | 
	a0 -= x0 * x1			# LN: 129 | 
	i0 = i7 - (0x7)			# LN: 129 | 
	xmem[i0] = a0g; i0 += 1			# LN: 129, 129 | 
	xmem[i0] = a0h; i0 += 1			# LN: 129, 129 | 
	xmem[i0] = a0l			# LN: 129 | 
cline_129_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 131 | 
	i0 = xmem[i0]			# LN: 131 | 
	i1 = i7 - (0x4)			# LN: 131 | 
	i1 = xmem[i1]			# LN: 131 | 
	i0 += 1			# LN: 131 | 
	a0 = ymem[i1]			# LN: 131 | 
	ymem[i0] = a0h			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 132 | 
	a0g = xmem[i0]; i0 += 1			# LN: 132, 132 | 
	a0h = xmem[i0]; i0 += 1			# LN: 132, 132 | 
	i1 = i7 - (0x4)			# LN: 132 | 
	i1 = xmem[i1]			# LN: 132 | 
	a0l = xmem[i0]			# LN: 132 | 
	ymem[i1] = a0			# LN: 132 | 
cline_132_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	i1 = i7 - (0x3)			# LN: 133 | 
	i1 = xmem[i1]			# LN: 133 | 
	i0 += 1			# LN: 133 | 
	a0 = ymem[i1]			# LN: 133 | 
	ymem[i0] = a0h			# LN: 133 | 
cline_133_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 134 | 
	i1 = i7 - (0x3)			# LN: 134 | 
	i1 = xmem[i1]			# LN: 134 | 
	a0 = xmem[i0]			# LN: 134 | 
	ymem[i1] = a0h			# LN: 134 | 
cline_134_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 136 | 
	a0g = xmem[i0]; i0 += 1			# LN: 136, 136 | 
	a0h = xmem[i0]; i0 += 1			# LN: 136, 136 | 
	a0l = xmem[i0]			# LN: 136 | 
	jmp (__epilogue_222)			# LN: 136 | 
cline_136_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
__epilogue_222:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 137 | 
	i7 -= 1			# LN: 137 | 
	ret			# LN: 137 | 
