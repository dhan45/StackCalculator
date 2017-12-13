	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r1, #83886080
	mov	r5, #0
	mvn	r8, #32768
	mov	r0, #31
	mov	r3, #992
	mov	lr, #149
	mov	ip, #217
	mov	r6, #1
	mov	r7, #5
	mov	r4, #2
	ldr	r2, .L3
	sub	sp, sp, #48
	strh	r8, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r5, [r1]	@ movhi
	mov	r0, r5
	ldr	r3, .L3+4
	str	lr, [r2, #8]
	str	lr, [r2, #16]
	str	lr, [r2]
	str	ip, [r2, #12]
	str	ip, [r2, #20]
	str	ip, [r2, #4]
	str	r7, [r2, #28]
	strb	r4, [r2, #32]
	str	r6, [r2, #24]
	ldr	r4, .L3+8
	mov	lr, pc
	bx	r3
	mov	r3, r6
	ldr	r2, .L3+12
	mov	r1, #30
	mov	r0, #10
	mov	lr, pc
	bx	r4
	mov	r1, #20
	mov	r3, #3
	mov	r0, r1
	ldr	r2, .L3+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r2, .L3+20
	mov	r1, #20
	mov	r0, #30
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r2, .L3+24
	mov	r1, #20
	mov	r0, #40
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r2, .L3+28
	mov	r1, #20
	mov	r0, #110
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r2, .L3+32
	mov	r1, #20
	mov	r0, #120
	mov	lr, pc
	bx	r4
	ldr	r8, .L3+36
	mov	r3, #3
	ldr	r2, .L3+40
	mov	r1, #20
	mov	r0, #130
	ldr	r6, .L3+44
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r2, .L3+48
	mov	r1, #20
	mov	r0, #140
	mov	lr, pc
	bx	r4
	ldr	r7, .L3+52
	mov	r2, r5
	mov	r1, r8
	add	r0, sp, #4
	strh	r5, [r6, #6]	@ movhi
	strh	r5, [r6, #4]	@ movhi
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [r6]	@ movhi
	mov	lr, pc
	bx	r7
	add	r2, sp, #4
	mov	r3, #3
	mov	r1, #126
	mov	r0, #110
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6, #4]
	mov	r1, r8
	add	r0, sp, #4
	mov	lr, pc
	bx	r7
	add	r2, sp, #4
	mov	r3, #3
	mov	r1, #126
	mov	r0, #120
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6, #2]
	mov	r1, r8
	add	r0, sp, #4
	mov	lr, pc
	bx	r7
	add	r2, sp, #4
	mov	r3, #3
	mov	r1, #126
	mov	r0, #130
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6]
	mov	r1, r8
	add	r0, sp, #4
	mov	lr, pc
	bx	r7
	add	r2, sp, #4
	mov	r0, #140
	mov	r3, #3
	mov	r1, #126
	mov	lr, pc
	bx	r4
	ldr	r1, .L3+56
	ldr	r2, .L3+60
	ldr	r3, .L3+64
	str	r5, [r1]
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #48
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	cursor
	.word	fillScreen4
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC8
	.word	.LC6
	.word	stack
	.word	.LC7
	.word	sprintf
	.word	state
	.word	operation
	.word	flipPage
	.size	initialize, .-initialize
	.align	2
	.global	clear
	.type	clear, %function
clear:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r5, #0
	sub	sp, sp, #12
	ldr	r4, .L7
	mov	r3, #1
	str	r5, [sp]
	mov	r2, #8
	mov	r1, #17
	mov	r0, #110
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #8
	mov	r1, #17
	mov	r0, #120
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #8
	mov	r1, #17
	mov	r0, #130
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #8
	mov	r1, #17
	mov	r0, #140
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #96
	mov	r2, #8
	mov	r1, #126
	mov	r0, #110
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #96
	mov	r2, #8
	mov	r1, #126
	mov	r0, #120
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #96
	mov	r2, #8
	mov	r1, #126
	mov	r0, #130
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #96
	mov	r2, #8
	mov	r1, #126
	mov	r0, #140
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	mov	r3, #12
	mov	r2, #8
	mov	r1, #114
	mov	r0, #140
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	drawRect4
	.size	clear, .-clear
	.align	2
	.global	addition
	.type	addition, %function
addition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L22
	mov	r3, #2
	mov	r2, #43
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L22+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L10
	ldr	r2, .L22+8
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L21
.L10:
	tst	r3, #1
	beq	.L9
	ldr	r3, .L22+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L9
	mov	r5, #1
	ldr	ip, .L22+12
	mov	r2, #43
	mov	r1, #120
	mov	r0, #140
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+16
	strh	r5, [r3]	@ movhi
.L9:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L21:
	ldr	r3, .L22+20
	ldrh	r1, [r3, #2]
	ldrh	lr, [r3]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	add	r1, r1, lr
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L22+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L10
.L23:
	.align	2
.L22:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	addition, .-addition
	.align	2
	.global	subtraction
	.type	subtraction, %function
subtraction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L36
	mov	r3, #2
	mov	r2, #45
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L36+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L25
	ldr	r2, .L36+8
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L35
.L25:
	tst	r3, #1
	beq	.L24
	ldr	r3, .L36+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L24
	mov	lr, #2
	ldr	ip, .L36+12
	mov	r2, #45
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L36+16
	strh	r2, [r3]	@ movhi
.L24:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L35:
	ldr	r3, .L36+20
	ldrh	r1, [r3, #2]
	ldrh	lr, [r3]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	rsb	r1, lr, r1
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L36+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L25
.L37:
	.align	2
.L36:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	subtraction, .-subtraction
	.align	2
	.global	multiplication
	.type	multiplication, %function
multiplication:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L50
	mov	r3, #2
	mov	r2, #42
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L50+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L39
	ldr	r2, .L50+8
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L49
.L39:
	tst	r3, #1
	beq	.L38
	ldr	r3, .L50+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L38
	mov	lr, #3
	ldr	ip, .L50+12
	mov	r2, #42
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L50+16
	strh	r2, [r3]	@ movhi
.L38:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L49:
	ldr	r3, .L50+20
	ldrh	r0, [r3]
	ldrh	r1, [r3, #2]
	mul	r1, r0, r1
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L50+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L39
.L51:
	.align	2
.L50:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	multiplication, .-multiplication
	.global	__aeabi_uidiv
	.align	2
	.global	division
	.type	division, %function
division:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L64
	mov	r3, #2
	mov	r2, #47
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L64+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L53
	ldr	r2, .L64+8
	ldr	r2, [r2]
	ands	r6, r2, #2
	beq	.L63
.L53:
	tst	r3, #1
	beq	.L52
	ldr	r3, .L64+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L52
	mov	lr, #4
	ldr	ip, .L64+12
	mov	r2, #47
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L64+16
	strh	r2, [r3]	@ movhi
.L52:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L63:
	ldr	r7, .L64+20
	ldr	r3, .L64+24
	ldrh	r1, [r7]
	ldrh	r0, [r7, #2]
	mov	lr, pc
	bx	r3
	ldrh	r2, [r7, #4]
	ldrh	r3, [r7, #6]
	strh	r2, [r7, #2]	@ movhi
	strh	r3, [r7, #4]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r6, [r7, #6]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L64+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L53
.L65:
	.align	2
.L64:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.word	__aeabi_uidiv
	.size	division, .-division
	.align	2
	.global	And
	.type	And, %function
And:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L82
	mov	r3, #2
	ldr	r2, .L82+4
	mov	r1, #114
	mov	r0, #140
	ldr	r4, .L82+8
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L67
	ldr	r2, .L82+12
	ldr	r2, [r2]
	tst	r2, #2
	beq	.L81
.L67:
	tst	r3, #1
	beq	.L66
	ldr	r3, .L82+12
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L66
	mov	lr, #5
	ldr	ip, .L82+16
	ldr	r2, .L82+4
	mov	r1, #114
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L82+20
	strh	r2, [r3]	@ movhi
.L66:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L81:
	ldr	r3, .L82+24
	ldrh	r2, [r3, #2]
	cmp	r2, #0
	beq	.L68
	ldrh	r2, [r3]
	adds	r2, r2, #0
	movne	r2, #1
.L68:
	mov	ip, #0
	ldrh	r1, [r3, #4]
	ldrh	r0, [r3, #6]
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L82+20
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L67
.L83:
	.align	2
.L82:
	.word	oldButtons
	.word	.LC9
	.word	drawString4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	And, .-And
	.align	2
	.global	Or
	.type	Or, %function
Or:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L99
	mov	r3, #2
	ldr	r2, .L99+4
	mov	r1, #114
	mov	r0, #140
	ldr	r4, .L99+8
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L85
	ldr	r2, .L99+12
	ldr	r2, [r2]
	tst	r2, #2
	beq	.L97
.L85:
	tst	r3, #1
	beq	.L84
	ldr	r3, .L99+12
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L84
	mov	lr, #6
	ldr	ip, .L99+16
	ldr	r2, .L99+4
	mov	r1, #114
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L99+20
	strh	r2, [r3]	@ movhi
.L84:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L97:
	ldr	r3, .L99+24
	ldrh	r2, [r3, #2]
	cmp	r2, #0
	movne	r2, #1
	beq	.L98
.L86:
	mov	ip, #0
	ldrh	r1, [r3, #4]
	ldrh	r0, [r3, #6]
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L99+20
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L85
.L98:
	ldrh	r2, [r3]
	adds	r2, r2, #0
	movne	r2, #1
	b	.L86
.L100:
	.align	2
.L99:
	.word	oldButtons
	.word	.LC10
	.word	drawString4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	Or, .-Or
	.align	2
	.global	Not
	.type	Not, %function
Not:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L113
	mov	r3, #2
	mov	r2, #33
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L113+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L102
	ldr	r2, .L113+8
	ldr	r2, [r2]
	tst	r2, #2
	beq	.L112
.L102:
	tst	r3, #1
	beq	.L101
	ldr	r3, .L113+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L101
	mov	lr, #7
	ldr	ip, .L113+12
	mov	r2, #33
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L113+16
	strh	r2, [r3]	@ movhi
.L101:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L112:
	ldr	r2, .L113+20
	ldrh	r3, [r2]
	rsbs	r3, r3, #1
	movcc	r3, #0
	strh	r3, [r2]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L113+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L102
.L114:
	.align	2
.L113:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	Not, .-Not
	.align	2
	.global	bitAnd
	.type	bitAnd, %function
bitAnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L127
	mov	r3, #2
	mov	r2, #38
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L127+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L116
	ldr	r2, .L127+8
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L126
.L116:
	tst	r3, #1
	beq	.L115
	ldr	r3, .L127+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L115
	mov	lr, #8
	ldr	ip, .L127+12
	mov	r2, #38
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L127+16
	strh	r2, [r3]	@ movhi
.L115:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L126:
	ldr	r3, .L127+20
	ldrh	lr, [r3, #2]
	ldrh	r1, [r3]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	and	r1, r1, lr
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L127+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L116
.L128:
	.align	2
.L127:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	bitAnd, .-bitAnd
	.align	2
	.global	bitOr
	.type	bitOr, %function
bitOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L141
	mov	r3, #2
	mov	r2, #124
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L141+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L130
	ldr	r2, .L141+8
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L140
.L130:
	tst	r3, #1
	beq	.L129
	ldr	r3, .L141+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L129
	mov	lr, #9
	ldr	ip, .L141+12
	mov	r2, #124
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L141+16
	strh	r2, [r3]	@ movhi
.L129:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L140:
	ldr	r3, .L141+20
	ldrh	lr, [r3, #2]
	ldrh	r1, [r3]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	orr	r1, lr, r1
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L141+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L130
.L142:
	.align	2
.L141:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	bitOr, .-bitOr
	.align	2
	.global	complement
	.type	complement, %function
complement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L155
	mov	r3, #2
	mov	r2, #126
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L155+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L144
	ldr	r2, .L155+8
	ldr	r2, [r2]
	tst	r2, #2
	beq	.L154
.L144:
	tst	r3, #1
	beq	.L143
	ldr	r3, .L155+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L143
	mov	lr, #10
	ldr	ip, .L155+12
	mov	r2, #126
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L155+16
	strh	r2, [r3]	@ movhi
.L143:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L154:
	ldr	r2, .L155+20
	ldrh	r3, [r2]
	mvn	r3, r3
	strh	r3, [r2]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L155+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L144
.L156:
	.align	2
.L155:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	complement, .-complement
	.align	2
	.global	XOr
	.type	XOr, %function
XOr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L169
	mov	r3, #2
	mov	r2, #94
	mov	r1, #120
	mov	r0, #140
	ldr	r4, .L169+4
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L158
	ldr	r2, .L169+8
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L168
.L158:
	tst	r3, #1
	beq	.L157
	ldr	r3, .L169+8
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L157
	mov	lr, #11
	ldr	ip, .L169+12
	mov	r2, #94
	mov	r1, #120
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L169+16
	strh	r2, [r3]	@ movhi
.L157:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L168:
	ldr	r3, .L169+20
	ldrh	lr, [r3, #2]
	ldrh	r1, [r3]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	eor	r1, r1, lr
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L169+16
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L158
.L170:
	.align	2
.L169:
	.word	oldButtons
	.word	drawChar4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	XOr, .-XOr
	.align	2
	.global	bitLeft
	.type	bitLeft, %function
bitLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L183
	mov	r3, #2
	ldr	r2, .L183+4
	mov	r1, #114
	mov	r0, #140
	ldr	r4, .L183+8
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L172
	ldr	r2, .L183+12
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L182
.L172:
	tst	r3, #1
	beq	.L171
	ldr	r3, .L183+12
	ldr	r3, [r3]
	ands	r3, r3, #1
	bne	.L171
	mov	lr, #12
	ldr	ip, .L183+16
	ldr	r2, .L183+4
	mov	r1, #114
	mov	r0, #140
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L183+20
	strh	r2, [r3]	@ movhi
.L171:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L182:
	ldr	r3, .L183+24
	ldrh	r1, [r3, #2]
	ldrh	lr, [r3]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	mov	r1, r1, asl lr
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L183+20
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L172
.L184:
	.align	2
.L183:
	.word	oldButtons
	.word	.LC11
	.word	drawString4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	bitLeft, .-bitLeft
	.align	2
	.global	bitRight
	.type	bitRight, %function
bitRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L197
	mov	r3, #2
	ldr	r2, .L197+4
	mov	r1, #114
	mov	r0, #140
	ldr	r4, .L197+8
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	tst	r3, #2
	beq	.L186
	ldr	r2, .L197+12
	ldr	r2, [r2]
	ands	r2, r2, #2
	beq	.L196
.L186:
	tst	r3, #1
	beq	.L185
	ldr	r3, .L197+12
	ldr	r3, [r3]
	ands	ip, r3, #1
	bne	.L185
	ldr	lr, .L197+16
	mov	r3, ip
	ldr	r2, .L197+4
	mov	r1, #114
	mov	r0, #140
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L197+20
	strh	r2, [r3]	@ movhi
.L185:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L196:
	ldr	r3, .L197+24
	ldrh	r1, [r3, #2]
	ldrh	lr, [r3]
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #6]
	mov	r1, r1, asr lr
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	bl	clear
	mov	r1, #1
	ldr	r2, .L197+20
	ldr	r3, [r5]
	strh	r1, [r2]	@ movhi
	b	.L186
.L198:
	.align	2
.L197:
	.word	oldButtons
	.word	.LC12
	.word	drawString4
	.word	buttons
	.word	operation
	.word	.LANCHOR0
	.word	stack
	.size	bitRight, .-bitRight
	.align	2
	.global	drawCursor
	.type	drawCursor, %function
drawCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, #0
	mov	r4, r0
	sub	sp, sp, #8
	add	r2, r0, #24
	add	r0, r0, #8
	ldmia	r0, {r0, r1}
	ldr	r5, .L201
	ldmia	r2, {r2, r3}
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	add	r0, r4, #16
	ldmia	r0, {r0, r1, r2, r3}
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldrb	ip, [r4, #32]	@ zero_extendqisi2
	add	r2, r4, #24
	ldmia	r2, {r2, r3}
	ldmia	r4, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L202:
	.align	2
.L201:
	.word	drawRect4
	.size	drawCursor, .-drawCursor
	.align	2
	.global	updateCursor
	.type	updateCursor, %function
updateCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L218
	ldr	r2, [r3]
	ldr	ip, [r0, #20]
	ldr	r1, [r0, #4]
	ldr	r3, [r0]
	tst	r2, #32
	str	lr, [sp, #-4]!
	str	ip, [r0, #12]
	str	r1, [r0, #20]
	str	r3, [r0, #16]
	beq	.L204
	ldr	r3, .L218+4
	ldr	r3, [r3]
	tst	r3, #32
	beq	.L217
.L204:
	tst	r2, #16
	beq	.L203
	ldr	r3, .L218+4
	ldr	r3, [r3]
	ands	r2, r3, #16
	bne	.L203
	ldr	r1, .L218+8
	ldrh	r3, [r1, #2]
	mov	ip, r3, asl #16
	cmp	ip, #0
	movle	r3, #217
	subgt	r3, r3, #1
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	subgt	r2, r3, r3, asl #2
	strgth	r3, [r1, #2]	@ movhi
	movgt	r3, r2, asl #1
	addgt	r3, r3, #217
	strleh	r2, [r1, #2]	@ movhi
	str	r3, [r0, #4]
.L203:
	ldr	lr, [sp], #4
	bx	lr
.L217:
	ldr	r3, .L218+12
	ldr	lr, .L218+8
	ldrh	ip, [r3]
	ldrh	r1, [lr, #2]
	mov	r3, ip, asl #16
	cmp	r3, r1, asl #16
	addgt	r1, r1, #1
	movgt	r1, r1, asl #16
	movgt	ip, r1, lsr #16
	movgt	r3, ip, asl #16
	mov	r3, r3, asr #16
	sub	r3, r3, r3, asl #2
	mov	r3, r3, asl #1
	add	r3, r3, #217
	strleh	ip, [lr, #2]	@ movhi
	strgth	ip, [lr, #2]	@ movhi
	str	r3, [r0, #4]
	b	.L204
.L219:
	.align	2
.L218:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	max
	.size	updateCursor, .-updateCursor
	.align	2
	.global	roll
	.type	roll, %function
roll:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L238
	ldr	r3, [r3]
	tst	r3, #8
	stmfd	sp!, {r4, lr}
	beq	.L221
	ldr	r2, .L238+4
	ldr	r2, [r2]
	ands	r2, r2, #8
	beq	.L235
.L221:
	tst	r3, #4
	beq	.L223
	ldr	r2, .L238+4
	ldr	r2, [r2]
	ands	r2, r2, #4
	beq	.L236
.L223:
	tst	r3, #512
	beq	.L220
	ldr	r3, .L238+4
	ldr	r3, [r3]
	tst	r3, #512
	beq	.L237
.L220:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L237:
	ldr	r3, .L238+8
	ldrh	r1, [r3]
	ldrh	r2, [r3, #2]
.L234:
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bl	clear
	mov	r2, #1
	ldr	r3, .L238+12
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L235:
	ldr	r3, .L238+8
	ldrh	ip, [r3, #4]
	ldrh	r0, [r3, #2]
	ldrh	r1, [r3]
	strh	ip, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	b	.L234
.L236:
	ldr	r3, .L238+8
	ldrh	ip, [r3, #2]
	ldrh	r0, [r3, #4]
	ldrh	r1, [r3, #6]
	strh	ip, [r3]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bl	clear
	mov	r2, #1
	ldr	r3, .L238+12
	strh	r2, [r3]	@ movhi
	b	.L220
.L239:
	.align	2
.L238:
	.word	oldButtons
	.word	buttons
	.word	stack
	.word	.LANCHOR0
	.size	roll, .-roll
	.align	2
	.global	converter
	.type	converter, %function
converter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L257
	ldr	r3, [r5]
	tst	r3, #64
	beq	.L248
	ldr	r2, .L257+4
	ldr	r2, [r2]
	tst	r2, #64
	bne	.L248
	ldr	r0, .L257+8
	ldrsh	r2, [r0, #2]
	cmp	r2, #0
	ble	.L249
	mov	r4, #1
	ldr	r3, .L257+12
	ldrh	r1, [r3]
.L243:
	mul	r3, r4, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	subs	r2, r2, #1
	mov	r4, r3
	bne	.L243
.L242:
	mov	r1, #1
	ldr	r2, .L257+16
	ldrh	ip, [r2]
	add	r3, r3, ip
	strh	r3, [r2]	@ movhi
	strh	r1, [r0]	@ movhi
	bl	clear
	ldr	r3, [r5]
	tst	r3, #128
	bne	.L256
.L240:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L248:
	tst	r3, #128
	mov	r4, #1
	beq	.L240
.L256:
	ldr	r3, .L257+4
	ldr	r3, [r3]
	tst	r3, #128
	bne	.L240
	ldr	r0, .L257+8
	ldrsh	r3, [r0, #2]
	cmp	r3, #0
	ble	.L245
	ldr	r2, .L257+12
	ldrh	r2, [r2]
.L246:
	mul	r4, r2, r4
	subs	r3, r3, #1
	mov	r4, r4, asl #16
	mov	r4, r4, lsr #16
	bne	.L246
.L245:
	mov	r1, #1
	ldr	r2, .L257+16
	ldrh	r3, [r2]
	rsb	r4, r4, r3
	strh	r4, [r2]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	strh	r1, [r0]	@ movhi
	b	clear
.L249:
	mov	r3, #1
	mov	r4, r3
	b	.L242
.L258:
	.align	2
.L257:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	baseState
	.word	stack
	.size	converter, .-converter
	.align	2
	.global	decimal
	.type	decimal, %function
decimal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #10
	mov	r2, #4
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r1, .L266
	ldr	r3, .L266+4
	sub	sp, sp, #56
	ldr	r0, .L266+8
	strh	ip, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	bl	updateCursor
	ldr	r0, .L266+8
	bl	drawCursor
	bl	roll
	bl	converter
	mov	r3, #2
	ldr	r6, .L266+12
	str	r3, [sp]
	mov	r2, #7
	mov	r3, #1
	mov	r1, #17
	mov	r0, #130
	ldr	r4, .L266+16
	mov	lr, pc
	bx	r4
	ldr	r5, .L266+20
	ldrh	r2, [r6, #6]
	ldr	r1, .L266+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	ldr	r4, .L266+28
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #110
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6, #4]
	ldr	r1, .L266+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #120
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6, #2]
	ldr	r1, .L266+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #130
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6]
	ldr	r1, .L266+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #140
	mov	lr, pc
	bx	r4
	ldr	r3, .L266+32
	ldr	r3, [r3]
	tst	r3, #256
	beq	.L259
	ldr	r3, .L266+36
	ldr	r3, [r3]
	tst	r3, #256
	beq	.L265
.L259:
	add	sp, sp, #56
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L265:
	mov	r4, #1
	ldr	r3, .L266+40
	str	r4, [r3]
	bl	clear
	ldr	r3, .L266+44
	strh	r4, [r3]	@ movhi
	add	sp, sp, #56
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L267:
	.align	2
.L266:
	.word	baseState
	.word	max
	.word	cursor
	.word	stack
	.word	drawRect4
	.word	sprintf
	.word	.LC8
	.word	drawString4
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.size	decimal, .-decimal
	.align	2
	.global	hexadecimal
	.type	hexadecimal, %function
hexadecimal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r1, #16
	mov	r4, #3
	mov	r8, #2
	ldr	r2, .L275
	ldr	r3, .L275+4
	sub	sp, sp, #56
	ldr	r0, .L275+8
	strh	r1, [r2]	@ movhi
	strh	r4, [r3]	@ movhi
	ldr	r7, .L275+12
	bl	updateCursor
	ldr	r0, .L275+8
	bl	drawCursor
	ldr	r5, .L275+16
	bl	roll
	bl	converter
	mov	r3, #1
	mov	r2, #7
	mov	r1, #17
	mov	r0, #140
	str	r8, [sp]
	mov	lr, pc
	bx	r5
	ldr	r6, .L275+20
	ldrh	r2, [r7, #6]
	ldr	r1, .L275+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r6
	ldr	r5, .L275+28
	mov	r3, r4
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #110
	mov	lr, pc
	bx	r5
	ldrh	r2, [r7, #4]
	ldr	r1, .L275+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r6
	mov	r3, r4
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #120
	mov	lr, pc
	bx	r5
	ldrh	r2, [r7, #2]
	ldr	r1, .L275+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r6
	mov	r3, r4
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #130
	mov	lr, pc
	bx	r5
	ldrh	r2, [r7]
	ldr	r1, .L275+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r6
	mov	r3, r4
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #140
	mov	lr, pc
	bx	r5
	ldr	r3, .L275+32
	ldr	r3, [r3]
	tst	r3, #256
	beq	.L268
	ldr	r3, .L275+36
	ldr	r3, [r3]
	tst	r3, #256
	beq	.L274
.L268:
	add	sp, sp, #56
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L274:
	ldr	r3, .L275+40
	str	r8, [r3]
	bl	clear
	mov	r2, #1
	ldr	r3, .L275+44
	strh	r2, [r3]	@ movhi
	add	sp, sp, #56
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L276:
	.align	2
.L275:
	.word	baseState
	.word	max
	.word	cursor
	.word	stack
	.word	drawRect4
	.word	sprintf
	.word	.LC13
	.word	drawString4
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.size	hexadecimal, .-hexadecimal
	.align	2
	.global	binary
	.type	binary, %function
binary:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r2, #15
	mov	r4, #2
	ldr	r1, .L286
	ldr	r3, .L286+4
	sub	sp, sp, #28
	ldr	r0, .L286+8
	strh	r4, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	bl	updateCursor
	ldr	r0, .L286+8
	bl	drawCursor
	bl	roll
	bl	converter
	str	r4, [sp]
	mov	r3, #1
	ldr	r4, .L286+12
	mov	r2, #7
	mov	r1, #17
	mov	r0, #110
	mov	lr, pc
	bx	r4
	mov	r4, #110
	ldr	r5, .L286+16
	ldr	r7, .L286+20
	ldr	r6, .L286+24
.L278:
	add	r1, sp, #8
	ldrsh	r0, [r5, #-2]!
	mov	lr, pc
	bx	r7
	mov	r0, r4
	mov	r3, #3
	add	r2, sp, #8
	mov	r1, #126
	add	r4, r4, #10
	mov	lr, pc
	bx	r6
	cmp	r4, #150
	bne	.L278
	ldr	r3, .L286+28
	ldr	r3, [r3]
	tst	r3, #256
	beq	.L277
	ldr	r3, .L286+32
	ldr	r3, [r3]
	tst	r3, #256
	beq	.L285
.L277:
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L285:
	mov	r2, #3
	ldr	r3, .L286+36
	str	r2, [r3]
	bl	clear
	mov	r2, #1
	ldr	r3, .L286+40
	strh	r2, [r3]	@ movhi
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L287:
	.align	2
.L286:
	.word	baseState
	.word	max
	.word	cursor
	.word	drawRect4
	.word	stack+8
	.word	short2bin
	.word	drawString4
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.size	binary, .-binary
	.align	2
	.global	octal
	.type	octal, %function
octal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #8
	mov	r2, #5
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r1, .L295
	ldr	r3, .L295+4
	sub	sp, sp, #56
	ldr	r0, .L295+8
	strh	ip, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	bl	updateCursor
	ldr	r0, .L295+8
	bl	drawCursor
	bl	roll
	bl	converter
	mov	r3, #2
	ldr	r6, .L295+12
	str	r3, [sp]
	mov	r2, #7
	mov	r3, #1
	mov	r1, #17
	mov	r0, #120
	ldr	r4, .L295+16
	mov	lr, pc
	bx	r4
	ldr	r5, .L295+20
	ldrh	r2, [r6, #6]
	ldr	r1, .L295+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	ldr	r4, .L295+28
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #110
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6, #4]
	ldr	r1, .L295+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #120
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6, #2]
	ldr	r1, .L295+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #130
	mov	lr, pc
	bx	r4
	ldrh	r2, [r6]
	ldr	r1, .L295+24
	add	r0, sp, #12
	mov	lr, pc
	bx	r5
	mov	r3, #3
	add	r2, sp, #12
	mov	r1, #126
	mov	r0, #140
	mov	lr, pc
	bx	r4
	ldr	r3, .L295+32
	ldr	r3, [r3]
	tst	r3, #256
	beq	.L288
	ldr	r3, .L295+36
	ldr	r3, [r3]
	ands	r3, r3, #256
	beq	.L294
.L288:
	add	sp, sp, #56
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L294:
	ldr	r2, .L295+40
	str	r3, [r2]
	bl	clear
	mov	r2, #1
	ldr	r3, .L295+44
	strh	r2, [r3]	@ movhi
	add	sp, sp, #56
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L296:
	.align	2
.L295:
	.word	baseState
	.word	max
	.word	cursor
	.word	stack
	.word	drawRect4
	.word	sprintf
	.word	.LC14
	.word	drawString4
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.size	octal, .-octal
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r5, #67108864
	ldr	r3, .L323
	stmfd	sp!, {r4, r7, fp, lr}
	ldr	r4, .L323+4
	strh	r3, [r5]	@ movhi
	mov	lr, pc
	bx	r4
	ldr	r6, .L323+8
	mov	lr, pc
	bx	r4
	ldr	r9, .L323+12
	ldr	r4, .L323+16
	ldr	r8, .L323+20
	ldr	r7, .L323+24
	ldr	fp, .L323+28
	ldr	r10, .L323+32
.L320:
	ldr	r3, [r4]
	str	r3, [r9]
	ldrsh	r2, [r6]
	ldr	r3, [r5, #304]
	cmp	r2, #1
	str	r3, [r4]
	beq	.L322
.L298:
	ldr	r3, [r8]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L299
.L301:
	.word	.L300
	.word	.L302
	.word	.L303
	.word	.L304
.L304:
	ldr	r3, .L323+36
	mov	lr, pc
	bx	r3
.L299:
	ldr	r3, [r7]
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L305
.L307:
	.word	.L306
	.word	.L308
	.word	.L309
	.word	.L310
	.word	.L311
	.word	.L312
	.word	.L313
	.word	.L314
	.word	.L315
	.word	.L316
	.word	.L317
	.word	.L318
	.word	.L319
.L302:
	ldr	r3, .L323+40
	mov	lr, pc
	bx	r3
	b	.L299
.L300:
	ldr	r3, .L323+44
	mov	lr, pc
	bx	r3
	b	.L299
.L303:
	ldr	r3, .L323+48
	mov	lr, pc
	bx	r3
	b	.L299
.L319:
	ldr	r3, .L323+52
	mov	lr, pc
	bx	r3
.L305:
	mov	lr, pc
	bx	fp
	mov	lr, pc
	bx	r10
	b	.L320
.L318:
	ldr	r3, .L323+56
	mov	lr, pc
	bx	r3
	b	.L305
.L317:
	ldr	r3, .L323+60
	mov	lr, pc
	bx	r3
	b	.L305
.L316:
	ldr	r3, .L323+64
	mov	lr, pc
	bx	r3
	b	.L305
.L315:
	ldr	r3, .L323+68
	mov	lr, pc
	bx	r3
	b	.L305
.L314:
	ldr	r3, .L323+72
	mov	lr, pc
	bx	r3
	b	.L305
.L313:
	ldr	r3, .L323+76
	mov	lr, pc
	bx	r3
	b	.L305
.L312:
	ldr	r3, .L323+80
	mov	lr, pc
	bx	r3
	b	.L305
.L311:
	ldr	r3, .L323+84
	mov	lr, pc
	bx	r3
	b	.L305
.L310:
	ldr	r3, .L323+88
	mov	lr, pc
	bx	r3
	b	.L305
.L309:
	ldr	r3, .L323+92
	mov	lr, pc
	bx	r3
	b	.L305
.L306:
	ldr	r3, .L323+96
	mov	lr, pc
	bx	r3
	b	.L305
.L308:
	ldr	r3, .L323+100
	mov	lr, pc
	bx	r3
	b	.L305
.L322:
	ldr	r3, .L323+104
	mov	lr, pc
	bx	r3
	mov	r2, #0	@ movhi
	ldr	r3, .L323+8
	strh	r2, [r3]	@ movhi
	b	.L298
.L324:
	.align	2
.L323:
	.word	1044
	.word	initialize
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	state
	.word	operation
	.word	waitForVBlank
	.word	flipPage
	.word	octal
	.word	hexadecimal
	.word	decimal
	.word	binary
	.word	bitRight
	.word	bitLeft
	.word	XOr
	.word	complement
	.word	bitOr
	.word	bitAnd
	.word	Not
	.word	Or
	.word	And
	.word	division
	.word	multiplication
	.word	addition
	.word	subtraction
	.word	clear
	.size	main, .-main
	.global	change
	.comm	max,2,2
	.comm	baseState,2,2
	.global	marker
	.comm	stack,8,4
	.comm	operation,4,4
	.comm	state,4,4
	.comm	cursor,36,4
	.comm	buttons,4,4
	.comm	oldButtons,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"STACK CALCULATOR\000"
	.space	3
.LC1:
	.ascii	"B: operate A: change operation\000"
	.space	1
.LC2:
	.ascii	"Start: move up Select: move down\000"
	.space	3
.LC3:
	.ascii	"L: swap R: change base\000"
	.space	1
.LC4:
	.ascii	"BINARY\000"
	.space	1
.LC5:
	.ascii	"OCTAL\000"
	.space	2
.LC6:
	.ascii	"DECIMAL\000"
.LC7:
	.ascii	"HEXADECIMAL\000"
.LC8:
	.ascii	"%.16d\000"
	.space	2
.LC9:
	.ascii	"&&\000"
	.space	1
.LC10:
	.ascii	"||\000"
	.space	1
.LC11:
	.ascii	"<<\000"
	.space	1
.LC12:
	.ascii	">>\000"
	.space	1
.LC13:
	.ascii	"%.16X\000"
	.space	2
.LC14:
	.ascii	"%.16o\000"
	.bss
	.align	1
	.set	.LANCHOR0,. + 0
	.type	change, %object
	.size	change, 2
change:
	.space	2
	.type	marker, %object
	.size	marker, 2
marker:
	.space	2
	.ident	"GCC: (devkitARM release 45) 5.3.0"
