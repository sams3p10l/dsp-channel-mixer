	.public _BPF_1200_14000Hz
	.public _BPF_1200_14000Hz_Bokan
	.public _HPF_800Hz
	.public _LPF_18KHz
	.public _gain
	.public _mode
	.public _sampleBuffer
	.public _tempLeft
	.public _tempRight
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
	.public _second_order_IIR
	.extern _strcpy
	.extern __div
	.xdata_ovly
_BPF_1200_14000Hz
	.dw  (0x17d33b34)
	.dw  (0x0)
	.dw  (0xe82cc4cc)
	.dw  (0x40000000)
	.dw  (0xd43d06e6)
	.dw  (0x10598999)
	.xdata_ovly
_BPF_1200_14000Hz_Bokan
	.dw  (0x162e0f1e)
	.dw  (0x0)
	.dw  (0xd3a3e1c4)
	.dw  (0x40000000)
	.dw  (0x9e35534a)
	.dw  (0x24baa053)
	.xdata_ovly
_HPF_800Hz
	.dw  (0x3b6e8fdb)
	.dw  (0x8922e04a)
	.dw  (0x3b6e8fdb)
	.dw  (0x40000000)
	.dw  (0x897673b7)
	.dw  (0x3730b323)
	.xdata_ovly
_LPF_18KHz
	.dw  (0x246b0ca3)
	.dw  (0x48d61946)
	.dw  (0x246b0ca3)
	.dw  (0x40000000)
	.dw  (0x3c56ef18)
	.dw  (0x15554375)
	.xdata_ovly
_gain
	.dw  (0x5a9df7ac)
	.xdata_ovly
_mode
	.dw  (0x1)
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
_tempLeft
	.bss (0x10)
	.xdata_ovly
_tempRight
	.bss (0x10)
	.xdata_ovly
_x_history0
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history1
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history2
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history3
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history4
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history5
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history0
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history1
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history2
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history3
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history4
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
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

_main:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 76 | 
	i7 += 1			# LN: 76 | 
	i7 = i7 + (0x20e)			# LN: 76 | 
	i1 = i7 - (0x1)			# LN: 76 | 
	xmem[i1] = a0h			# LN: 76 | 
	i1 = i7 - (0x2)			# LN: 76 | 
	xmem[i1] = i0			# LN: 76 | 
cline_76_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 92 | 
	a0 = 0			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
for_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	uhalfword(a1) = (0x8)			# LN: 92 | 
	a0 - a1			# LN: 92 | 
	if (a >= 0) jmp (for_end_0)			# LN: 92 | 
cline_92_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 94 | 
	a0 = 0			# LN: 94 | 
	xmem[i0] = a0h			# LN: 94 | 
for_1:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	uhalfword(a1) = (0x8)			# LN: 94 | 
	a0 - a1			# LN: 94 | 
	if (a >= 0) jmp (for_end_1)			# LN: 94 | 
cline_94_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 96 | 
	a0 = xmem[i0]; a1 = 0			# LN: 96, 96 | 
	a0 = a0 << 4			# LN: 96 | 
	i0 = a0			# LN: 96 | 
	i1 = i7 - (0x4)			# LN: 96 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 96 | 
	a0 = xmem[i1]			# LN: 96 | 
	b0 = i0			# LN: 96 | 
	a0 = a0 + b0			# LN: 96 | 
	AnyReg(i0, a0h)			# LN: 96 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 96 | 
cline_96_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	uhalfword(a1) = (0x1)			# LN: 94 | 
	a0 = a0 + a1			# LN: 94 | 
	i0 = i7 - (0x3)			# LN: 94 | 
	xmem[i0] = a0h			# LN: 94 | 
	jmp (for_1)			# LN: 94 | 
cline_94_1:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	uhalfword(a1) = (0x1)			# LN: 92 | 
	a0 = a0 + a1			# LN: 92 | 
	i0 = i7 - (0x3)			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
	jmp (for_0)			# LN: 92 | 
cline_92_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	i1 = i7 - (260 - 0)			# LN: 102 | 
	i4 = xmem[i0]			# LN: 102 | 
	i0 = i1			# LN: 102 | 
	i1 = i4			# LN: 102 | 
	call (_strcpy)			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 103 | 
	call (_cl_wavread_open)			# LN: 103 | 
	AnyReg(i0, a0h)			# LN: 103 | 
	i1 = i7 - (0x105)			# LN: 103 | 
	xmem[i1] = i0			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 104 | 
	a0 = xmem[i0]			# LN: 104 | 
	a0 & a0			# LN: 104 | 
	if (a != 0) jmp (else_0)			# LN: 104 | 
cline_104_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 106 | 
	call (_printf)			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 107 | 
	jmp (__epilogue_220)			# LN: 107 | 
cline_107_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 113 | 
	i0 = xmem[i0]			# LN: 113 | 
	call (_cl_wavread_getnchannels)			# LN: 113 | 
	i0 = i7 - (0x106)			# LN: 113 | 
	xmem[i0] = a0h			# LN: 113 | 
cline_113_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 114 | 
	i0 = xmem[i0]			# LN: 114 | 
	call (_cl_wavread_bits_per_sample)			# LN: 114 | 
	i0 = i7 - (0x107)			# LN: 114 | 
	xmem[i0] = a0h			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 115 | 
	i0 = xmem[i0]			# LN: 115 | 
	call (_cl_wavread_frame_rate)			# LN: 115 | 
	i0 = i7 - (0x108)			# LN: 115 | 
	xmem[i0] = a0h			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 116 | 
	i0 = xmem[i0]			# LN: 116 | 
	call (_cl_wavread_number_of_frames)			# LN: 116 | 
	i0 = i7 - (0x109)			# LN: 116 | 
	xmem[i0] = a0h			# LN: 116 | 
cline_116_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 121 | 
	i0 = xmem[i0]			# LN: 121 | 
	i1 = i7 - (521 - 0)			# LN: 121 | 
	i0 += 1			# LN: 121 | 
	i4 = xmem[i0]			# LN: 121 | 
	i0 = i1			# LN: 121 | 
	i1 = i4			# LN: 121 | 
	call (_strcpy)			# LN: 121 | 
cline_121_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 122 | 
	i1 = i7 - (0x107)			# LN: 122 | 
	a0 = xmem[i1]			# LN: 122 | 
	i1 = i7 - (0x106)			# LN: 122 | 
	a1 = xmem[i1]			# LN: 122 | 
	i1 = i7 - (0x108)			# LN: 122 | 
	b0 = xmem[i1]			# LN: 122 | 
	call (_cl_wavwrite_open)			# LN: 122 | 
	AnyReg(i0, a0h)			# LN: 122 | 
	i1 = i7 - (0x20a)			# LN: 122 | 
	xmem[i1] = i0			# LN: 122 | 
cline_122_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 123 | 
	a0 = xmem[i0]			# LN: 123 | 
	a0 & a0			# LN: 123 | 
	if (a != 0) jmp (else_1)			# LN: 123 | 
cline_123_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 125 | 
	call (_printf)			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 126 | 
	jmp (__epilogue_220)			# LN: 126 | 
cline_126_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 139 | 
	a0 = 0			# LN: 139 | 
	xmem[i0] = a0h			# LN: 139 | 
for_2:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 139 | 
	a0 = xmem[i0]			# LN: 139 | 
	uhalfword(a1) = (0x10)			# LN: 139 | 
	call (__div)			# LN: 139 | 
	i0 = i7 - (0x20b)			# LN: 139 | 
	a1 = xmem[i0]			# LN: 139 | 
	a1 - a0			# LN: 139 | 
	if (a >= 0) jmp (for_end_2)			# LN: 139 | 
cline_139_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 141 | 
	a0 = 0			# LN: 141 | 
	xmem[i0] = a0h			# LN: 141 | 
	do (0x10), label_end_93			# LN: 141 | 
cline_141_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 143 | 
	a0 = 0			# LN: 143 | 
	xmem[i0] = a0h			# LN: 143 | 
for_4:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 143 | 
	a0 = xmem[i0]			# LN: 143 | 
	i0 = i7 - (0x106)			# LN: 143 | 
	a1 = xmem[i0]			# LN: 143 | 
	a0 - a1			# LN: 143 | 
	if (a >= 0) jmp (for_end_4)			# LN: 143 | 
cline_143_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	call (_cl_wavread_recvsample)			# LN: 145 | 
	i0 = i7 - (0x20e)			# LN: 145 | 
	xmem[i0] = a0h			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 146 | 
	a0 = xmem[i0]			# LN: 146 | 
	a0 = a0 << 4			# LN: 146 | 
	i0 = a0			# LN: 146 | 
	i1 = i7 - (0x20c)			# LN: 146 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 146 | 
	a0 = xmem[i1]			# LN: 146 | 
	a1 = i0			# LN: 146 | 
	a0 = a1 + a0			# LN: 146 | 
	AnyReg(i0, a0h)			# LN: 146 | 
	i1 = i7 - (0x20e)			# LN: 146 | 
	a0 = xmem[i1]			# LN: 146 | 
	xmem[i0] = a0h			# LN: 146 | 
cline_146_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 143 | 
	a0 = xmem[i0]			# LN: 143 | 
	uhalfword(a1) = (0x1)			# LN: 143 | 
	a0 = a0 + a1			# LN: 143 | 
	i0 = i7 - (0x20d)			# LN: 143 | 
	xmem[i0] = a0h			# LN: 143 | 
	jmp (for_4)			# LN: 143 | 
cline_143_1:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 141 | 
	a0 = xmem[i0]			# LN: 141 | 
	uhalfword(a1) = (0x1)			# LN: 141 | 
	a0 = a0 + a1			# LN: 141 | 
	i0 = i7 - (0x20c)			# LN: 141 | 
label_end_93:			# LN: 141 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 141 | 
cline_141_1:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 152 | 
	a0 = 0			# LN: 152 | 
	xmem[i0] = a0h			# LN: 152 | 
	do (0x10), label_end_94			# LN: 152 | 
cline_152_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 154 | 
	a0 = 0			# LN: 154 | 
	xmem[i0] = a0h			# LN: 154 | 
for_6:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 154 | 
	a0 = xmem[i0]			# LN: 154 | 
	i0 = i7 - (0x106)			# LN: 154 | 
	a1 = xmem[i0]			# LN: 154 | 
	a0 - a1			# LN: 154 | 
	if (a >= 0) jmp (for_end_6)			# LN: 154 | 
cline_154_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 156 | 
	a0 = xmem[i0]			# LN: 156 | 
	a0 = a0 << 4			# LN: 156 | 
	i0 = a0			# LN: 156 | 
	i1 = i7 - (0x20c)			# LN: 156 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 156 | 
	a0 = xmem[i1]			# LN: 156 | 
	a1 = i0			# LN: 156 | 
	a0 = a1 + a0			# LN: 156 | 
	AnyReg(i0, a0h)			# LN: 156 | 
	i1 = i7 - (0x20e)			# LN: 156 | 
	a0 = xmem[i0]			# LN: 156 | 
	xmem[i1] = a0h			# LN: 156 | 
cline_156_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 157 | 
	i1 = i7 - (0x20e)			# LN: 157 | 
	a0 = xmem[i1]			# LN: 157 | 
	i0 = xmem[i0]			# LN: 157 | 
	call (_cl_wavwrite_sendsample)			# LN: 157 | 
cline_157_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 154 | 
	a0 = xmem[i0]			# LN: 154 | 
	uhalfword(a1) = (0x1)			# LN: 154 | 
	a0 = a0 + a1			# LN: 154 | 
	i0 = i7 - (0x20d)			# LN: 154 | 
	xmem[i0] = a0h			# LN: 154 | 
	jmp (for_6)			# LN: 154 | 
cline_154_1:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	uhalfword(a1) = (0x1)			# LN: 152 | 
	a0 = a0 + a1			# LN: 152 | 
	i0 = i7 - (0x20c)			# LN: 152 | 
label_end_94:			# LN: 152 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 152 | 
cline_152_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 139 | 
	a0 = xmem[i0]			# LN: 139 | 
	uhalfword(a1) = (0x1)			# LN: 139 | 
	a0 = a0 + a1			# LN: 139 | 
	i0 = i7 - (0x20b)			# LN: 139 | 
	xmem[i0] = a0h			# LN: 139 | 
	jmp (for_2)			# LN: 139 | 
cline_139_1:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 165 | 
	i0 = xmem[i0]			# LN: 165 | 
	call (_cl_wavread_close)			# LN: 165 | 
cline_165_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 166 | 
	i0 = xmem[i0]			# LN: 166 | 
	call (_cl_wavwrite_close)			# LN: 166 | 
cline_166_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 169 | 
	jmp (__epilogue_220)			# LN: 169 | 
cline_169_0:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
__epilogue_220:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 170 | 
	i7 -= 1			# LN: 170 | 
	ret			# LN: 170 | 



_processing:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 211 | 
	i7 += 1			# LN: 211 | 
	i7 = i7 + (0x9)			# LN: 211 | 
cline_211_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 214 | 
	uhalfword(a0) = (_tempLeft + 0)			# LN: 214 | 
	xmem[i0] = a0			# LN: 214 | 
cline_214_0:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 215 | 
	uhalfword(a0) = (_tempRight + 0)			# LN: 215 | 
	xmem[i0] = a0			# LN: 215 | 
cline_215_0:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 217 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 217 | 
	xmem[i0] = a0			# LN: 217 | 
cline_217_0:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 218 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 218 | 
	xmem[i0] = a0			# LN: 218 | 
cline_218_0:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 219 | 
	uhalfword(a0) = (_sampleBuffer + 32)			# LN: 219 | 
	xmem[i0] = a0			# LN: 219 | 
cline_219_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 220 | 
	uhalfword(a0) = (_sampleBuffer + 48)			# LN: 220 | 
	xmem[i0] = a0			# LN: 220 | 
cline_220_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 221 | 
	uhalfword(a0) = (_sampleBuffer + 64)			# LN: 221 | 
	xmem[i0] = a0			# LN: 221 | 
cline_221_0:			/* LN: 222 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 222 | 
	uhalfword(a0) = (_sampleBuffer + 80)			# LN: 222 | 
	xmem[i0] = a0			# LN: 222 | 
cline_222_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 224 | 
	a0 = 0			# LN: 224 | 
	xmem[i0] = a0h			# LN: 224 | 
	do (0x10), label_end_92			# LN: 224 | 
cline_224_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	x0 = xmem[_gain + 0]			# LN: 227 | 
	x1 = xmem[i0]			# LN: 227 | 
	i0 = i7 - (0x1)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	a0 = x1 * x0			# LN: 227 | 
	xmem[i0] = a0			# LN: 227 | 
cline_227_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 228 | 
	i0 = xmem[i0]			# LN: 228 | 
	x0 = xmem[_gain + 0]			# LN: 228 | 
	x1 = xmem[i0]			# LN: 228 | 
	i0 = i7 - (0x2)			# LN: 228 | 
	i0 = xmem[i0]			# LN: 228 | 
	a0 = x1 * x0			# LN: 228 | 
	ymem[i0] = a0			# LN: 228 | 
cline_228_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 230 | 
	uhalfword(a1) = (0x1)			# LN: 230 | 
	a0 - a1			# LN: 230 | 
	if (a != 0) jmp (else_2)			# LN: 230 | 
cline_230_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 233 | 
	i0 = xmem[i0]			# LN: 233 | 
	i1 = i7 - (0x3)			# LN: 233 | 
	i1 = xmem[i1]			# LN: 233 | 
	a0 = xmem[i0]			# LN: 233 | 
	xmem[i1] = a0h			# LN: 233 | 
cline_233_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 234 | 
	i0 = xmem[i0]			# LN: 234 | 
	i1 = (0) + (_LPF_18KHz)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	i4 = (0) + (_x_history1)			# LN: 234 | 
	i5 = (0) + (_y_history1)			# LN: 234 | 
	i0 = i1			# LN: 234 | 
	i1 = i4			# LN: 234 | 
	i4 = i5			# LN: 234 | 
	call (_second_order_IIR)			# LN: 234 | 
	i0 = i7 - (0x4)			# LN: 234 | 
	i0 = xmem[i0]			# LN: 234 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 234 | 
cline_234_0:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 235 | 
	i0 = xmem[i0]			# LN: 235 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 235 | 
	a0 = xmem[i0]			# LN: 235 | 
	i4 = (0) + (_x_history3)			# LN: 235 | 
	i5 = (0) + (_y_history3)			# LN: 235 | 
	i0 = i1			# LN: 235 | 
	i1 = i4			# LN: 235 | 
	i4 = i5			# LN: 235 | 
	call (_second_order_IIR)			# LN: 235 | 
	i0 = i7 - (0x6)			# LN: 235 | 
	i0 = xmem[i0]			# LN: 235 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 235 | 
cline_235_0:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 236 | 
	i0 = xmem[i0]			# LN: 236 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 236 | 
	a0 = xmem[i0]			# LN: 236 | 
	i4 = (0) + (_x_history4)			# LN: 236 | 
	i5 = (0) + (_y_history4)			# LN: 236 | 
	i0 = i1			# LN: 236 | 
	i1 = i4			# LN: 236 | 
	i4 = i5			# LN: 236 | 
	call (_second_order_IIR)			# LN: 236 | 
	i0 = i7 - (0x7)			# LN: 236 | 
	i0 = xmem[i0]			# LN: 236 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 236 | 
cline_236_0:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 239 | 
	i0 = xmem[i0]			# LN: 239 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 239 | 
	a0 = ymem[i0]			# LN: 239 | 
	i4 = (0) + (_x_history2)			# LN: 239 | 
	i5 = (0) + (_y_history2)			# LN: 239 | 
	i0 = i1			# LN: 239 | 
	i1 = i4			# LN: 239 | 
	i4 = i5			# LN: 239 | 
	call (_second_order_IIR)			# LN: 239 | 
	i0 = i7 - (0x5)			# LN: 239 | 
	i0 = xmem[i0]			# LN: 239 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 239 | 
cline_239_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 240 | 
	i0 = xmem[i0]			# LN: 240 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 240 | 
	a0 = ymem[i0]			# LN: 240 | 
	i4 = (0) + (_x_history5)			# LN: 240 | 
	i5 = (0) + (_y_history5)			# LN: 240 | 
	i0 = i1			# LN: 240 | 
	i1 = i4			# LN: 240 | 
	i4 = i5			# LN: 240 | 
	call (_second_order_IIR)			# LN: 240 | 
	i0 = i7 - (0x8)			# LN: 240 | 
	i0 = xmem[i0]			# LN: 240 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 240 | 
	jmp (endif_2)			# LN: 240 | 
cline_240_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 242 | 
	a0 & a0			# LN: 242 | 
	if (a != 0) jmp (else_3)			# LN: 242 | 
cline_242_0:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 245 | 
	i0 = xmem[i0]			# LN: 245 | 
	i1 = (0) + (_LPF_18KHz)			# LN: 245 | 
	a0 = xmem[i0]			# LN: 245 | 
	i4 = (0) + (_x_history0)			# LN: 245 | 
	i5 = (0) + (_y_history0)			# LN: 245 | 
	i0 = i1			# LN: 245 | 
	i1 = i4			# LN: 245 | 
	i4 = i5			# LN: 245 | 
	call (_second_order_IIR)			# LN: 245 | 
	i0 = i7 - (0x3)			# LN: 245 | 
	i0 = xmem[i0]			# LN: 245 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 245 | 
cline_245_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 246 | 
	i0 = xmem[i0]			# LN: 246 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 246 | 
	a0 = xmem[i0]			# LN: 246 | 
	i4 = (0) + (_x_history0)			# LN: 246 | 
	i5 = (0) + (_y_history1)			# LN: 246 | 
	i0 = i1			# LN: 246 | 
	i1 = i4			# LN: 246 | 
	i4 = i5			# LN: 246 | 
	call (_second_order_IIR)			# LN: 246 | 
	i0 = i7 - (0x4)			# LN: 246 | 
	i0 = xmem[i0]			# LN: 246 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 246 | 
cline_246_0:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 247 | 
	i0 = xmem[i0]			# LN: 247 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 247 | 
	a0 = xmem[i0]			# LN: 247 | 
	i4 = (0) + (_x_history3)			# LN: 247 | 
	i5 = (0) + (_y_history3)			# LN: 247 | 
	i0 = i1			# LN: 247 | 
	i1 = i4			# LN: 247 | 
	i4 = i5			# LN: 247 | 
	call (_second_order_IIR)			# LN: 247 | 
	i0 = i7 - (0x6)			# LN: 247 | 
	i0 = xmem[i0]			# LN: 247 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 247 | 
cline_247_0:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 250 | 
	i0 = xmem[i0]			# LN: 250 | 
	i1 = (0) + (_BPF_1200_14000Hz)			# LN: 250 | 
	a0 = ymem[i0]			# LN: 250 | 
	i4 = (0) + (_x_history4)			# LN: 250 | 
	i5 = (0) + (_y_history4)			# LN: 250 | 
	i0 = i1			# LN: 250 | 
	i1 = i4			# LN: 250 | 
	i4 = i5			# LN: 250 | 
	call (_second_order_IIR)			# LN: 250 | 
	i0 = i7 - (0x7)			# LN: 250 | 
	i0 = xmem[i0]			# LN: 250 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 250 | 
cline_250_0:			/* LN: 251 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 251 | 
	i0 = xmem[i0]			# LN: 251 | 
	i1 = (0) + (_HPF_800Hz)			# LN: 251 | 
	a0 = ymem[i0]			# LN: 251 | 
	i4 = (0) + (_x_history2)			# LN: 251 | 
	i5 = (0) + (_y_history2)			# LN: 251 | 
	i0 = i1			# LN: 251 | 
	i1 = i4			# LN: 251 | 
	i4 = i5			# LN: 251 | 
	call (_second_order_IIR)			# LN: 251 | 
	i0 = i7 - (0x5)			# LN: 251 | 
	i0 = xmem[i0]			# LN: 251 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 251 | 
cline_251_0:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 252 | 
	i0 = xmem[i0]			# LN: 252 | 
	i1 = (0) + (_LPF_18KHz)			# LN: 252 | 
	a0 = ymem[i0]			# LN: 252 | 
	i4 = (0) + (_x_history5)			# LN: 252 | 
	i5 = (0) + (_y_history5)			# LN: 252 | 
	i0 = i1			# LN: 252 | 
	i1 = i4			# LN: 252 | 
	i4 = i5			# LN: 252 | 
	call (_second_order_IIR)			# LN: 252 | 
	i0 = i7 - (0x8)			# LN: 252 | 
	i0 = xmem[i0]			# LN: 252 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 252 | 
	jmp (endif_3)			# LN: 252 | 
cline_252_0:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	i1 = i7 - (0x3)			# LN: 255 | 
	i0 += 1			# LN: 255 | 
	xmem[i1] = i0			# LN: 255 | 
cline_255_0:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 256 | 
	i0 = xmem[i0]			# LN: 256 | 
	i1 = i7 - (0x4)			# LN: 256 | 
	i0 += 1			# LN: 256 | 
	xmem[i1] = i0			# LN: 256 | 
cline_256_0:			/* LN: 257 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 257 | 
	i0 = xmem[i0]			# LN: 257 | 
	i1 = i7 - (0x5)			# LN: 257 | 
	i0 += 1			# LN: 257 | 
	xmem[i1] = i0			# LN: 257 | 
cline_257_0:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 258 | 
	i0 = xmem[i0]			# LN: 258 | 
	i1 = i7 - (0x6)			# LN: 258 | 
	i0 += 1			# LN: 258 | 
	xmem[i1] = i0			# LN: 258 | 
cline_258_0:			/* LN: 259 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 259 | 
	i0 = xmem[i0]			# LN: 259 | 
	i1 = i7 - (0x7)			# LN: 259 | 
	i0 += 1			# LN: 259 | 
	xmem[i1] = i0			# LN: 259 | 
cline_259_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 260 | 
	i0 = xmem[i0]			# LN: 260 | 
	i1 = i7 - (0x8)			# LN: 260 | 
	i0 += 1			# LN: 260 | 
	xmem[i1] = i0			# LN: 260 | 
cline_260_0:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 261 | 
	i0 = xmem[i0]			# LN: 261 | 
	i1 = i7 - (0x1)			# LN: 261 | 
	i0 += 1			# LN: 261 | 
	xmem[i1] = i0			# LN: 261 | 
cline_261_0:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 262 | 
	i0 = xmem[i0]			# LN: 262 | 
	i1 = i7 - (0x2)			# LN: 262 | 
	i0 += 1			# LN: 262 | 
	xmem[i1] = i0			# LN: 262 | 
cline_262_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 224 | 
	a0 = xmem[i0]			# LN: 224 | 
	uhalfword(a1) = (0x1)			# LN: 224 | 
	a0 = a0 + a1			# LN: 224 | 
	i0 = i7 - (0x9)			# LN: 224 | 
label_end_92:			# LN: 224 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 224 | 
cline_224_1:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_224)			# LN: 264 | 
__epilogue_224:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x9)			# LN: 264 | 
	i7 -= 1			# LN: 264 | 
	ret			# LN: 264 | 



_second_order_IIR:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 184 | 
	i7 += 1			# LN: 184 | 
	i7 = i7 + (0x7)			# LN: 184 | 
	i5 = i7 - (0x1)			# LN: 184 | 
	xmem[i5] = a0h			# LN: 184 | 
	i5 = i7 - (0x2)			# LN: 184 | 
	xmem[i5] = i0			# LN: 184 | 
	i0 = i7 - (0x3)			# LN: 184 | 
	xmem[i0] = i1			# LN: 184 | 
	i0 = i7 - (0x4)			# LN: 184 | 
	xmem[i0] = i4			# LN: 184 | 
cline_184_0:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 186 | 
	a0 = 0			# LN: 186 | 
	xmem[i0] = a0g; i0 += 1			# LN: 186, 186 | 
	xmem[i0] = a0h; i0 += 1			# LN: 186, 186 | 
	xmem[i0] = a0l			# LN: 186 | 
cline_186_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 188 | 
	i0 = xmem[i0]			# LN: 188 | 
	i1 = i7 - (0x1)			# LN: 188 | 
	x0 = xmem[i0]			# LN: 188 | 
	x1 = xmem[i1]			# LN: 188 | 
	i0 = i7 - (0x7)			# LN: 188 | 
	a0g = xmem[i0]; i0 += 1			# LN: 188, 188 | 
	a1 = x0 * x1			# LN: 188 | 
	a0h = xmem[i0]; i0 += 1			# LN: 188, 188 | 
	a1 = a1 << 1			# LN: 188 | 
	a0l = xmem[i0]			# LN: 188 | 
	a0 = a0 + a1			# LN: 188 | 
	i0 = i7 - (0x7)			# LN: 188 | 
	xmem[i0] = a0g; i0 += 1			# LN: 188, 188 | 
	xmem[i0] = a0h; i0 += 1			# LN: 188, 188 | 
	xmem[i0] = a0l			# LN: 188 | 
cline_188_0:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 189 | 
	i0 = xmem[i0]			# LN: 189 | 
	i1 = i7 - (0x3)			# LN: 189 | 
	i0 += 1			# LN: 189 | 
	i1 = xmem[i1]			# LN: 189 | 
	x0 = xmem[i0]			# LN: 189 | 
	x1 = ymem[i1]			# LN: 189 | 
	i0 = i7 - (0x7)			# LN: 189 | 
	a0g = xmem[i0]; i0 += 1			# LN: 189, 189 | 
	a1 = x0 * x1			# LN: 189 | 
	a0h = xmem[i0]; i0 += 1			# LN: 189, 189 | 
	a1 = a1 << 1			# LN: 189 | 
	a0l = xmem[i0]			# LN: 189 | 
	a0 = a0 + a1			# LN: 189 | 
	i0 = i7 - (0x7)			# LN: 189 | 
	xmem[i0] = a0g; i0 += 1			# LN: 189, 189 | 
	xmem[i0] = a0h; i0 += 1			# LN: 189, 189 | 
	xmem[i0] = a0l			# LN: 189 | 
cline_189_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 190 | 
	i0 = xmem[i0]			# LN: 190 | 
	i1 = i7 - (0x3)			# LN: 190 | 
	i0 += 2			# LN: 190 | 
	i1 = xmem[i1]			# LN: 190 | 
	x0 = xmem[i0]			# LN: 190 | 
	i1 += 1			# LN: 190 | 
	x1 = ymem[i1]			# LN: 190 | 
	i0 = i7 - (0x7)			# LN: 190 | 
	a0g = xmem[i0]; i0 += 1			# LN: 190, 190 | 
	a1 = x0 * x1			# LN: 190 | 
	a0h = xmem[i0]; i0 += 1			# LN: 190, 190 | 
	a1 = a1 << 1			# LN: 190 | 
	a0l = xmem[i0]			# LN: 190 | 
	a0 = a0 + a1			# LN: 190 | 
	i0 = i7 - (0x7)			# LN: 190 | 
	xmem[i0] = a0g; i0 += 1			# LN: 190, 190 | 
	xmem[i0] = a0h; i0 += 1			# LN: 190, 190 | 
	xmem[i0] = a0l			# LN: 190 | 
cline_190_0:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 191 | 
	i0 = xmem[i0]			# LN: 191 | 
	i1 = i7 - (0x4)			# LN: 191 | 
	i0 = i0 + (0x4)			# LN: 191 | 
	i1 = xmem[i1]			# LN: 191 | 
	x0 = xmem[i0]			# LN: 191 | 
	x1 = ymem[i1]			# LN: 191 | 
	i0 = i7 - (0x7)			# LN: 191 | 
	a0g = xmem[i0]; i0 += 1			# LN: 191, 191 | 
	a1 = x0 * x1			# LN: 191 | 
	a0h = xmem[i0]; i0 += 1			# LN: 191, 191 | 
	a1 = a1 << 1			# LN: 191 | 
	a0l = xmem[i0]			# LN: 191 | 
	a0 = a0 - a1			# LN: 191 | 
	i0 = i7 - (0x7)			# LN: 191 | 
	xmem[i0] = a0g; i0 += 1			# LN: 191, 191 | 
	xmem[i0] = a0h; i0 += 1			# LN: 191, 191 | 
	xmem[i0] = a0l			# LN: 191 | 
cline_191_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 192 | 
	i0 = xmem[i0]			# LN: 192 | 
	i1 = i7 - (0x4)			# LN: 192 | 
	i0 = i0 + (0x5)			# LN: 192 | 
	i1 = xmem[i1]			# LN: 192 | 
	x0 = xmem[i0]			# LN: 192 | 
	i1 += 1			# LN: 192 | 
	x1 = ymem[i1]			# LN: 192 | 
	i0 = i7 - (0x7)			# LN: 192 | 
	a0g = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a1 = x0 * x1			# LN: 192 | 
	a0h = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a1 = a1 << 1			# LN: 192 | 
	a0l = xmem[i0]			# LN: 192 | 
	a0 = a0 - a1			# LN: 192 | 
	i0 = i7 - (0x7)			# LN: 192 | 
	xmem[i0] = a0g; i0 += 1			# LN: 192, 192 | 
	xmem[i0] = a0h; i0 += 1			# LN: 192, 192 | 
	xmem[i0] = a0l			# LN: 192 | 
cline_192_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 194 | 
	i0 = xmem[i0]			# LN: 194 | 
	i1 = i7 - (0x4)			# LN: 194 | 
	i1 = xmem[i1]			# LN: 194 | 
	i0 += 1			# LN: 194 | 
	a0 = ymem[i1]			# LN: 194 | 
	ymem[i0] = a0h			# LN: 194 | 
cline_194_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 195 | 
	a0g = xmem[i0]; i0 += 1			# LN: 195, 195 | 
	a0h = xmem[i0]; i0 += 1			# LN: 195, 195 | 
	i1 = i7 - (0x4)			# LN: 195 | 
	i1 = xmem[i1]			# LN: 195 | 
	a0l = xmem[i0]			# LN: 195 | 
	ymem[i1] = a0			# LN: 195 | 
cline_195_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 196 | 
	i0 = xmem[i0]			# LN: 196 | 
	i1 = i7 - (0x3)			# LN: 196 | 
	i1 = xmem[i1]			# LN: 196 | 
	i0 += 1			# LN: 196 | 
	a0 = ymem[i1]			# LN: 196 | 
	ymem[i0] = a0h			# LN: 196 | 
cline_196_0:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 197 | 
	i1 = i7 - (0x3)			# LN: 197 | 
	i1 = xmem[i1]			# LN: 197 | 
	a0 = xmem[i0]			# LN: 197 | 
	ymem[i1] = a0h			# LN: 197 | 
cline_197_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 199 | 
	a0g = xmem[i0]; i0 += 1			# LN: 199, 199 | 
	a0h = xmem[i0]; i0 += 1			# LN: 199, 199 | 
	a0l = xmem[i0]			# LN: 199 | 
	jmp (__epilogue_222)			# LN: 199 | 
cline_199_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
__epilogue_222:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 200 | 
	i7 -= 1			# LN: 200 | 
	ret			# LN: 200 | 
