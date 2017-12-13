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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	mov	r1, r1, asl #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	setPixel4
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	ip, [r3]
	add	r0, r0, r0, lsr #31
	bic	r0, r0, #1
	ldrh	r3, [ip, r0]
	tst	r1, #1
	biceq	r3, r3, #255
	andne	r3, r3, #255
	orrne	r2, r3, r2, asl #8
	orreq	r3, r3, r2
	strneh	r2, [ip, r0]	@ movhi
	streqh	r3, [ip, r0]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	DMANow
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r0, lsl #1
	mov	r0, r0, asl #2
	add	r0, r0, #67108864
	orr	r3, r3, #-2147483648
	str	r1, [r0, #176]
	str	r2, [r0, #180]
	str	r3, [r0, #184]
	bx	lr
	.size	DMANow, .-DMANow
	.align	2
	.global	drawRect3
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	ldrh	ip, [sp, #16]
	cmp	r2, #0
	strh	ip, [sp, #6]	@ movhi
	ble	.L11
	mov	lr, #67108864
	ldr	ip, .L17
	add	r2, r0, r2
	ldr	ip, [ip]
	rsb	r0, r0, r0, lsl #4
	rsb	r2, r2, r2, lsl #4
	add	r2, r1, r2, lsl #4
	add	r1, r1, r0, lsl #4
	orr	r3, r3, #-2130706432
	add	r2, ip, r2, lsl #1
	add	r1, ip, r1, lsl #1
	add	r0, sp, #6
.L13:
	str	r0, [lr, #212]
	str	r1, [lr, #216]
	add	r1, r1, #480
	cmp	r1, r2
	str	r3, [lr, #220]
	bne	.L13
.L11:
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	ble	.L31
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #0
	ldr	ip, .L32
	rsb	r0, r0, r0, lsl #4
	ldr	r4, [ip]
	mov	r5, r0, asl #4
	add	r6, r3, r1
.L25:
	cmp	r3, #0
	ble	.L26
	mov	lr, r1
.L24:
	add	r0, r5, lr
	add	r0, r0, r0, lsr #31
	bic	r0, r0, #1
	ldrh	r8, [r4, r0]
	ldrb	ip, [sp, #28]	@ zero_extendqisi2
	tst	lr, #1
	and	ip, ip, #255
	and	r9, r8, #255
	biceq	r8, r8, #255
	orr	r9, r9, ip, asl #8
	add	lr, lr, #1
	orreq	ip, r8, ip
	strneh	r9, [r4, r0]	@ movhi
	streqh	ip, [r4, r0]	@ movhi
	cmp	r6, lr
	bne	.L24
.L26:
	add	r7, r7, #1
	cmp	r2, r7
	add	r5, r5, #240
	bne	.L25
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L31:
	bx	lr
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	loadPalette
	.type	loadPalette, %function
loadPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r1, #83886080
	ldr	r2, .L35
	str	r0, [r3, #212]
	str	r1, [r3, #216]
	str	r2, [r3, #220]
	bx	lr
.L36:
	.align	2
.L35:
	.word	-2147483392
	.size	loadPalette, .-loadPalette
	.align	2
	.global	fillScreen
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	sub	sp, sp, #8
	ldr	r1, .L39
	add	r2, sp, #8
	strh	r0, [r2, #-2]!	@ movhi
	ldr	r0, [r1]
	ldr	r1, .L39+4
	str	r2, [r3, #212]
	str	r0, [r3, #216]
	str	r1, [r3, #220]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	-2130668032
	.size	fillScreen, .-fillScreen
	.align	2
	.global	fillScreen4
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	sub	sp, sp, #8
	ldr	r1, .L43
	add	r2, sp, #8
	orr	r0, r0, r0, asl #8
	strh	r0, [r2, #-2]!	@ movhi
	ldr	r0, [r1]
	ldr	r1, .L43+4
	str	r2, [r3, #212]
	str	r0, [r3, #216]
	str	r1, [r3, #220]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	flipPage
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	ldrh	r3, [r2]
	ldr	r1, .L48
	tst	r3, #16
	ldrne	r0, [r1, #4]
	ldreq	r0, [r1, #8]
	bicne	r3, r3, #16
	orreq	r3, r3, #16
	strh	r3, [r2]	@ movhi
	str	r0, [r1]
	bx	lr
.L49:
	.align	2
.L48:
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.align	2
	.global	waitForVBlank
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L51:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L51
	mov	r2, #67108864
.L53:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L53
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	short2bin
	.type	short2bin, %function
short2bin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	stmfd	sp!, {r4, lr}
	mov	r2, #1
	mov	r4, #48
	mov	lr, #49
	strb	r3, [r1, #16]
	sub	ip, r1, #1
	add	r3, r1, #15
.L59:
	tst	r0, r2
	strneb	lr, [r3]
	streqb	r4, [r3]
	sub	r3, r3, #1
	cmp	r3, ip
	mov	r2, r2, asl #1
	bne	.L59
	mov	r0, r1
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	short2bin, .-short2bin
	.global	backBuffer
	.global	frontBuffer
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	backBuffer, %object
	.size	backBuffer, 4
backBuffer:
	.word	100704256
	.type	frontBuffer, %object
	.size	frontBuffer, 4
frontBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 45) 5.3.0"
