	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"cordic_fixed_time.c"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	mov	r9, r2
	ldr	r2, [r2, #0]
	rsbs	r6, r3, #1
	movcc	r6, #0
	mov	sl, r1
	mov	r7, r3
	ands	r3, r6, r2, lsr #31
	mov	r8, r0
	ldr	r1, [r0, #0]
	ldr	ip, [sl, #0]
	bne	.L4
	cmp	ip, #0
	cmpge	r7, #1
	bne	.L46
.L4:
	ldr	r5, .L59
	ldr	r3, [r5, #0]
	rsb	r4, r1, ip
	add	r2, r2, r3
	add	r1, r1, ip
.L3:
	ands	r3, r6, r2, lsr #31
	bne	.L7
	cmp	r4, #0
	cmpge	r7, #1
	bne	.L47
.L7:
	ldr	r3, [r5, #4]
	sub	r0, r4, r1, asr #1
	add	ip, r2, r3
	add	r2, r1, r4, asr #1
.L6:
	ands	r3, r6, ip, lsr #31
	bne	.L10
	cmp	r0, #0
	cmpge	r7, #1
	bne	.L48
.L10:
	ldr	r3, [r5, #8]
	sub	r1, r0, r2, asr #2
	add	ip, ip, r3
	add	r2, r2, r0, asr #2
.L9:
	ands	r3, r6, ip, lsr #31
	bne	.L13
	cmp	r1, #0
	cmpge	r7, #1
	bne	.L49
.L13:
	ldr	r3, [r5, #12]
	sub	r0, r1, r2, asr #3
	add	ip, ip, r3
	add	r2, r2, r1, asr #3
.L12:
	ands	r3, r6, ip, lsr #31
	bne	.L16
	cmp	r0, #0
	cmpge	r7, #1
	bne	.L50
.L16:
	ldr	r3, [r5, #16]
	sub	r1, r0, r2, asr #4
	add	ip, ip, r3
	add	r2, r2, r0, asr #4
.L15:
	ands	r3, r6, ip, lsr #31
	bne	.L19
	cmp	r1, #0
	cmpge	r7, #1
	bne	.L51
.L19:
	ldr	r3, [r5, #20]
	sub	r0, r1, r2, asr #5
	add	ip, ip, r3
	add	r2, r2, r1, asr #5
.L18:
	ands	r3, r6, ip, lsr #31
	bne	.L22
	cmp	r0, #0
	cmpge	r7, #1
	bne	.L52
.L22:
	ldr	r3, [r5, #24]
	sub	r1, r0, r2, asr #6
	add	ip, ip, r3
	add	r2, r2, r0, asr #6
.L21:
	ands	r3, r6, ip, lsr #31
	bne	.L25
	cmp	r1, #0
	cmpge	r7, #1
	bne	.L53
.L25:
	ldr	r3, [r5, #28]
	sub	r0, r1, r2, asr #7
	add	ip, ip, r3
	add	r2, r2, r1, asr #7
.L24:
	ands	r3, r6, ip, lsr #31
	bne	.L28
	cmp	r0, #0
	cmpge	r7, #1
	bne	.L54
.L28:
	ldr	r3, [r5, #32]
	sub	r1, r0, r2, asr #8
	add	ip, ip, r3
	add	r2, r2, r0, asr #8
.L27:
	ands	r3, r6, ip, lsr #31
	bne	.L31
	cmp	r1, #0
	cmpge	r7, #1
	bne	.L55
.L31:
	ldr	r3, [r5, #36]
	sub	r0, r1, r2, asr #9
	add	ip, ip, r3
	add	r2, r2, r1, asr #9
.L30:
	ands	r3, r6, ip, lsr #31
	bne	.L34
	cmp	r0, #0
	cmpge	r7, #1
	bne	.L56
.L34:
	ldr	r3, [r5, #40]
	sub	r1, r0, r2, asr #10
	add	ip, ip, r3
	add	r2, r2, r0, asr #10
.L33:
	ands	r3, r6, ip, lsr #31
	bne	.L37
	cmp	r1, #0
	cmpge	r7, #1
	bne	.L57
.L37:
	ldr	r3, [r5, #44]
	sub	r0, r1, r2, asr #11
	add	ip, ip, r3
	add	r2, r2, r1, asr #11
.L36:
	ands	r3, r6, ip, lsr #31
	bne	.L40
	cmp	r0, #0
	cmpge	r7, #1
	bne	.L58
.L40:
	ldr	r3, [r5, #48]
	sub	r1, r0, r2, asr #12
	add	ip, ip, r3
	add	r2, r2, r0, asr #12
.L39:
	ands	r6, r6, ip, lsr #31
	bne	.L41
	cmp	r1, #0
	cmpge	r7, #1
	ldrne	r3, [r5, #52]
	addne	r4, r1, r2, asr #13
	rsbne	r3, r3, ip
	subne	ip, r2, r1, asr #13
	bne	.L43
.L41:
	ldr	r3, [r5, #52]
	sub	r4, r1, r2, asr #13
	add	r3, ip, r3
	add	ip, r2, r1, asr #13
.L43:
	str	ip, [r8, #0]
	str	r4, [sl, #0]
	str	r3, [r9, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L58:
	ldr	r3, [r5, #48]
	add	r1, r0, r2, asr #12
	rsb	ip, r3, ip
	sub	r2, r2, r0, asr #12
	b	.L39
.L57:
	ldr	r3, [r5, #44]
	add	r0, r1, r2, asr #11
	rsb	ip, r3, ip
	sub	r2, r2, r1, asr #11
	b	.L36
.L56:
	ldr	r3, [r5, #40]
	add	r1, r0, r2, asr #10
	rsb	ip, r3, ip
	sub	r2, r2, r0, asr #10
	b	.L33
.L55:
	ldr	r3, [r5, #36]
	add	r0, r1, r2, asr #9
	rsb	ip, r3, ip
	sub	r2, r2, r1, asr #9
	b	.L30
.L54:
	ldr	r3, [r5, #32]
	add	r1, r0, r2, asr #8
	rsb	ip, r3, ip
	sub	r2, r2, r0, asr #8
	b	.L27
.L53:
	ldr	r3, [r5, #28]
	add	r0, r1, r2, asr #7
	rsb	ip, r3, ip
	sub	r2, r2, r1, asr #7
	b	.L24
.L52:
	ldr	r3, [r5, #24]
	add	r1, r0, r2, asr #6
	rsb	ip, r3, ip
	sub	r2, r2, r0, asr #6
	b	.L21
.L51:
	ldr	r3, [r5, #20]
	add	r0, r1, r2, asr #5
	rsb	ip, r3, ip
	sub	r2, r2, r1, asr #5
	b	.L18
.L50:
	ldr	r3, [r5, #16]
	add	r1, r0, r2, asr #4
	rsb	ip, r3, ip
	sub	r2, r2, r0, asr #4
	b	.L15
.L49:
	ldr	r3, [r5, #12]
	add	r0, r1, r2, asr #3
	rsb	ip, r3, ip
	sub	r2, r2, r1, asr #3
	b	.L12
.L48:
	ldr	r3, [r5, #8]
	add	r1, r0, r2, asr #2
	rsb	ip, r3, ip
	sub	r2, r2, r0, asr #2
	b	.L9
.L47:
	ldr	r3, [r5, #4]
	add	r0, r4, r1, asr #1
	rsb	ip, r3, r2
	sub	r2, r1, r4, asr #1
	b	.L6
.L46:
	ldr	r5, .L59
	ldr	r3, [r5, #0]
	add	r4, r1, ip
	rsb	r2, r3, r2
	rsb	r1, ip, r1
	b	.L3
.L60:
	.align	2
.L59:
	.word	.LANCHOR0
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.global	__aeabi_f2d
	.align	2
	.global	int2float
	.type	int2float, %function
int2float:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	int2float, .-int2float
	.global	__aeabi_f2iz
	.align	2
	.global	float2int
	.type	float2int, %function
float2int:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1174405120
	stmfd	sp!, {r4, lr}
	add	r1, r1, #8388608
	bl	__aeabi_fmul
	bl	__aeabi_f2iz
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	float2int, .-float2int
	.global	__aeabi_fdiv
	.global	__aeabi_dmul
	.global	__aeabi_d2f
	.align	2
	.global	deg2rad
	.type	deg2rad, %function
deg2rad:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1124073472
	stmfd	sp!, {r4, lr}
	add	r1, r1, #3407872
	bl	__aeabi_fdiv
	bl	__aeabi_f2d
	adr	r3, .L67
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	bl	__aeabi_d2f
	ldmfd	sp!, {r4, lr}
	bx	lr
.L68:
	.align	3
.L67:
	.word	1293080650
	.word	1074340347
	.size	deg2rad, .-deg2rad
	.global	__aeabi_ddiv
	.align	2
	.global	rad2deg
	.type	rad2deg, %function
rad2deg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1124073472
	stmfd	sp!, {r4, lr}
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L71
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	ldmfd	sp!, {r4, lr}
	bx	lr
.L72:
	.align	3
.L71:
	.word	1293080650
	.word	1074340347
	.size	rad2deg, .-rad2deg
	.align	2
	.global	arctan_y_x
	.type	arctan_y_x, %function
arctan_y_x:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r0, #4
	mov	r4, r1
	bl	malloc
	mov	r8, r0
	mov	r0, #4
	bl	malloc
	mov	r7, r0
	mov	r0, #4
	bl	malloc
	cmp	r4, #0
	ldrlt	ip, .L103
	ldrge	ip, .L103
	ldrlt	r3, [ip, #0]
	mov	r6, r0
	addlt	r0, r5, r4
	rsbge	r0, r5, r4
	rsblt	lr, r3, #0
	rsblt	r1, r4, r5
	addge	r1, r5, r4
	ldrge	lr, [ip, #0]
	cmp	r0, #0
	ldrlt	r3, [ip, #4]
	ldrge	r3, [ip, #4]
	addlt	r2, r0, r1, asr #1
	subge	r2, r0, r1, asr #1
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	sublt	r0, r1, r0, asr #1
	addge	r0, r1, r0, asr #1
	cmp	r2, #0
	ldrlt	r3, [ip, #8]
	ldrge	r3, [ip, #8]
	addlt	r1, r2, r0, asr #2
	subge	r1, r2, r0, asr #2
	sublt	r2, r0, r2, asr #2
	addge	r2, r0, r2, asr #2
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	cmp	r1, #0
	ldrlt	r3, [ip, #12]
	ldrge	r3, [ip, #12]
	addlt	r0, r1, r2, asr #3
	subge	r0, r1, r2, asr #3
	rsblt	lr, r3, lr
	sublt	r2, r2, r1, asr #3
	addge	lr, lr, r3
	addge	r2, r2, r1, asr #3
	cmp	r0, #0
	ldrlt	r3, [ip, #16]
	ldrge	r3, [ip, #16]
	addlt	r1, r0, r2, asr #4
	subge	r1, r0, r2, asr #4
	sublt	r2, r2, r0, asr #4
	addge	r2, r2, r0, asr #4
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	cmp	r1, #0
	ldrlt	r3, [ip, #20]
	ldrge	r3, [ip, #20]
	addlt	r0, r1, r2, asr #5
	subge	r0, r1, r2, asr #5
	rsblt	lr, r3, lr
	sublt	r2, r2, r1, asr #5
	addge	lr, lr, r3
	addge	r2, r2, r1, asr #5
	cmp	r0, #0
	ldrlt	r3, [ip, #24]
	ldrge	r3, [ip, #24]
	addlt	r1, r0, r2, asr #6
	subge	r1, r0, r2, asr #6
	sublt	r2, r2, r0, asr #6
	addge	r2, r2, r0, asr #6
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	cmp	r1, #0
	ldrlt	r3, [ip, #28]
	ldrge	r3, [ip, #28]
	addlt	r0, r1, r2, asr #7
	subge	r0, r1, r2, asr #7
	rsblt	lr, r3, lr
	sublt	r2, r2, r1, asr #7
	addge	lr, lr, r3
	addge	r2, r2, r1, asr #7
	cmp	r0, #0
	ldrlt	r3, [ip, #32]
	ldrge	r3, [ip, #32]
	addlt	r1, r0, r2, asr #8
	subge	r1, r0, r2, asr #8
	sublt	r2, r2, r0, asr #8
	addge	r2, r2, r0, asr #8
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	cmp	r1, #0
	ldrlt	r3, [ip, #36]
	ldrge	r3, [ip, #36]
	addlt	r0, r1, r2, asr #9
	subge	r0, r1, r2, asr #9
	rsblt	lr, r3, lr
	sublt	r2, r2, r1, asr #9
	addge	lr, lr, r3
	addge	r2, r2, r1, asr #9
	cmp	r0, #0
	ldrlt	r3, [ip, #40]
	ldrge	r3, [ip, #40]
	addlt	r1, r0, r2, asr #10
	subge	r1, r0, r2, asr #10
	sublt	r2, r2, r0, asr #10
	addge	r2, r2, r0, asr #10
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	cmp	r1, #0
	ldrlt	r3, [ip, #44]
	ldrge	r3, [ip, #44]
	addlt	r0, r1, r2, asr #11
	subge	r0, r1, r2, asr #11
	rsblt	lr, r3, lr
	sublt	r2, r2, r1, asr #11
	addge	lr, lr, r3
	addge	r2, r2, r1, asr #11
	cmp	r0, #0
	ldrlt	r3, [ip, #48]
	ldrge	r3, [ip, #48]
	addlt	r1, r0, r2, asr #12
	subge	r1, r0, r2, asr #12
	sublt	r2, r2, r0, asr #12
	addge	r2, r2, r0, asr #12
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	cmp	r1, #0
	ldrge	r3, [ip, #52]
	ldrlt	r3, [ip, #52]
	subge	ip, r1, r2, asr #13
	addlt	ip, r1, r2, asr #13
	addge	r0, lr, r3
	addge	r1, r2, r1, asr #13
	rsblt	r0, r3, lr
	sublt	r1, r2, r1, asr #13
	str	r1, [r8, #0]
	str	ip, [r7, #0]
	str	r0, [r6, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	.LANCHOR0
	.size	arctan_y_x, .-arctan_y_x
	.align	2
	.global	sine
	.type	sine, %function
sine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r0, #4
	bl	malloc
	mov	r7, r0
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	cmp	r4, #0
	ldrlt	ip, .L135
	ldrge	ip, .L135
	ldrlt	r3, [ip, #0]
	ldrge	r3, [ip, #0]
	movlt	r1, #-2147483648
	mov	r5, r0
	addlt	r0, r4, r3
	rsbge	r0, r3, r4
	movlt	r1, r1, asr #17
	movge	r1, #16384
	cmp	r0, #0
	ldrlt	r3, [ip, #4]
	ldrge	r3, [ip, #4]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	movlt	r2, r1, asr #1
	movge	r2, r1, asr #1
	addlt	lr, r2, #16384
	rsbge	lr, r2, #16384
	sublt	r2, r1, #8192
	addge	r2, r1, #8192
	cmp	r0, #0
	ldrlt	r3, [ip, #8]
	ldrge	r3, [ip, #8]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, r2, lr, asr #2
	addge	r1, r2, lr, asr #2
	addlt	r2, lr, r2, asr #2
	subge	r2, lr, r2, asr #2
	cmp	r0, #0
	ldrlt	r3, [ip, #12]
	ldrge	r3, [ip, #12]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #3
	addge	lr, r1, r2, asr #3
	addlt	r2, r2, r1, asr #3
	subge	r2, r2, r1, asr #3
	cmp	r0, #0
	ldrlt	r3, [ip, #16]
	ldrge	r3, [ip, #16]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #4
	addge	r1, lr, r2, asr #4
	addlt	r2, r2, lr, asr #4
	subge	r2, r2, lr, asr #4
	cmp	r0, #0
	ldrlt	r3, [ip, #20]
	ldrge	r3, [ip, #20]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #5
	addge	lr, r1, r2, asr #5
	addlt	r2, r2, r1, asr #5
	subge	r2, r2, r1, asr #5
	cmp	r0, #0
	ldrlt	r3, [ip, #24]
	ldrge	r3, [ip, #24]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #6
	addge	r1, lr, r2, asr #6
	addlt	r2, r2, lr, asr #6
	subge	r2, r2, lr, asr #6
	cmp	r0, #0
	ldrlt	r3, [ip, #28]
	ldrge	r3, [ip, #28]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #7
	addge	lr, r1, r2, asr #7
	addlt	r2, r2, r1, asr #7
	subge	r2, r2, r1, asr #7
	cmp	r0, #0
	ldrlt	r3, [ip, #32]
	ldrge	r3, [ip, #32]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #8
	addge	r1, lr, r2, asr #8
	addlt	r2, r2, lr, asr #8
	subge	r2, r2, lr, asr #8
	cmp	r0, #0
	ldrlt	r3, [ip, #36]
	ldrge	r3, [ip, #36]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #9
	addge	lr, r1, r2, asr #9
	addlt	r2, r2, r1, asr #9
	subge	r2, r2, r1, asr #9
	cmp	r0, #0
	ldrlt	r3, [ip, #40]
	ldrge	r3, [ip, #40]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #10
	addge	r1, lr, r2, asr #10
	addlt	r2, r2, lr, asr #10
	subge	r2, r2, lr, asr #10
	cmp	r0, #0
	ldrlt	r3, [ip, #44]
	ldrge	r3, [ip, #44]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r4, r1, r2, asr #11
	addge	r4, r1, r2, asr #11
	addlt	r2, r2, r1, asr #11
	subge	r2, r2, r1, asr #11
	cmp	r0, #0
	ldrlt	r3, [ip, #48]
	ldrge	r3, [ip, #48]
	addlt	r1, r0, r3
	rsbge	r1, r3, r0
	sublt	lr, r4, r2, asr #12
	addge	lr, r4, r2, asr #12
	addlt	r2, r2, r4, asr #12
	subge	r2, r2, r4, asr #12
	cmp	r1, #0
	ldrge	r3, [ip, #52]
	ldrlt	r3, [ip, #52]
	addge	r0, lr, r2, asr #13
	sublt	r0, lr, r2, asr #13
	rsbge	r3, r3, r1
	subge	r2, r2, lr, asr #13
	addlt	r3, r1, r3
	addlt	r2, r2, lr, asr #13
	str	r2, [r7, #0]
	str	r3, [r5, #0]
	str	r0, [r6, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L136:
	.align	2
.L135:
	.word	.LANCHOR0
	.size	sine, .-sine
	.align	2
	.global	cosine
	.type	cosine, %function
cosine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r0, #4
	bl	malloc
	mov	r7, r0
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	cmp	r4, #0
	ldrlt	ip, .L167
	ldrge	ip, .L167
	ldrlt	r3, [ip, #0]
	ldrge	r3, [ip, #0]
	movlt	r1, #-2147483648
	mov	r5, r0
	addlt	r0, r4, r3
	rsbge	r0, r3, r4
	movlt	r1, r1, asr #17
	movge	r1, #16384
	cmp	r0, #0
	ldrlt	r3, [ip, #4]
	ldrge	r3, [ip, #4]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	movlt	r2, r1, asr #1
	movge	r2, r1, asr #1
	addlt	lr, r2, #16384
	rsbge	lr, r2, #16384
	sublt	r2, r1, #8192
	addge	r2, r1, #8192
	cmp	r0, #0
	ldrlt	r3, [ip, #8]
	ldrge	r3, [ip, #8]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, r2, lr, asr #2
	addge	r1, r2, lr, asr #2
	addlt	r2, lr, r2, asr #2
	subge	r2, lr, r2, asr #2
	cmp	r0, #0
	ldrlt	r3, [ip, #12]
	ldrge	r3, [ip, #12]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #3
	addge	lr, r1, r2, asr #3
	addlt	r2, r2, r1, asr #3
	subge	r2, r2, r1, asr #3
	cmp	r0, #0
	ldrlt	r3, [ip, #16]
	ldrge	r3, [ip, #16]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #4
	addge	r1, lr, r2, asr #4
	addlt	r2, r2, lr, asr #4
	subge	r2, r2, lr, asr #4
	cmp	r0, #0
	ldrlt	r3, [ip, #20]
	ldrge	r3, [ip, #20]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #5
	addge	lr, r1, r2, asr #5
	addlt	r2, r2, r1, asr #5
	subge	r2, r2, r1, asr #5
	cmp	r0, #0
	ldrlt	r3, [ip, #24]
	ldrge	r3, [ip, #24]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #6
	addge	r1, lr, r2, asr #6
	addlt	r2, r2, lr, asr #6
	subge	r2, r2, lr, asr #6
	cmp	r0, #0
	ldrlt	r3, [ip, #28]
	ldrge	r3, [ip, #28]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #7
	addge	lr, r1, r2, asr #7
	addlt	r2, r2, r1, asr #7
	subge	r2, r2, r1, asr #7
	cmp	r0, #0
	ldrlt	r3, [ip, #32]
	ldrge	r3, [ip, #32]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #8
	addge	r1, lr, r2, asr #8
	addlt	r2, r2, lr, asr #8
	subge	r2, r2, lr, asr #8
	cmp	r0, #0
	ldrlt	r3, [ip, #36]
	ldrge	r3, [ip, #36]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	lr, r1, r2, asr #9
	addge	lr, r1, r2, asr #9
	addlt	r2, r2, r1, asr #9
	subge	r2, r2, r1, asr #9
	cmp	r0, #0
	ldrlt	r3, [ip, #40]
	ldrge	r3, [ip, #40]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r1, lr, r2, asr #10
	addge	r1, lr, r2, asr #10
	addlt	r2, r2, lr, asr #10
	subge	r2, r2, lr, asr #10
	cmp	r0, #0
	ldrlt	r3, [ip, #44]
	ldrge	r3, [ip, #44]
	addlt	r0, r0, r3
	rsbge	r0, r3, r0
	sublt	r4, r1, r2, asr #11
	addge	r4, r1, r2, asr #11
	addlt	r2, r2, r1, asr #11
	subge	r2, r2, r1, asr #11
	cmp	r0, #0
	ldrlt	r3, [ip, #48]
	ldrge	r3, [ip, #48]
	addlt	r1, r0, r3
	rsbge	r1, r3, r0
	addlt	r0, r2, r4, asr #12
	subge	r0, r2, r4, asr #12
	sublt	lr, r4, r2, asr #12
	addge	lr, r4, r2, asr #12
	cmp	r1, #0
	ldrge	r3, [ip, #52]
	ldrlt	r3, [ip, #52]
	addge	r2, lr, r0, asr #13
	sublt	r2, lr, r0, asr #13
	rsbge	r3, r3, r1
	subge	r0, r0, lr, asr #13
	addlt	r3, r1, r3
	addlt	r0, r0, lr, asr #13
	str	r2, [r6, #0]
	str	r3, [r5, #0]
	str	r0, [r7, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L168:
	.align	2
.L167:
	.word	.LANCHOR0
	.size	cosine, .-cosine
	.align	2
	.global	arctan_x
	.type	arctan_x, %function
arctan_x:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r0, #4
	bl	malloc
	mov	r7, r0
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	cmp	r4, #0
	ldrlt	ip, .L199
	ldrge	ip, .L199
	ldrlt	r3, [ip, #0]
	mov	r5, r0
	addlt	r0, r4, #16384
	subge	r0, r4, #16384
	rsblt	lr, r3, #0
	rsblt	r2, r4, #16384
	addge	r2, r4, #16384
	ldrge	lr, [ip, #0]
	cmp	r0, #0
	ldrlt	r3, [ip, #4]
	ldrge	r3, [ip, #4]
	addlt	r1, r0, r2, asr #1
	subge	r1, r0, r2, asr #1
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	sublt	r0, r2, r0, asr #1
	addge	r0, r2, r0, asr #1
	cmp	r1, #0
	ldrlt	r3, [ip, #8]
	ldrge	r3, [ip, #8]
	addlt	r2, r1, r0, asr #2
	subge	r2, r1, r0, asr #2
	rsblt	lr, r3, lr
	sublt	r1, r0, r1, asr #2
	addge	lr, lr, r3
	addge	r1, r0, r1, asr #2
	cmp	r2, #0
	ldrlt	r3, [ip, #12]
	ldrge	r3, [ip, #12]
	addlt	r0, r2, r1, asr #3
	subge	r0, r2, r1, asr #3
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	sublt	r1, r1, r2, asr #3
	addge	r1, r1, r2, asr #3
	cmp	r0, #0
	ldrlt	r3, [ip, #16]
	ldrge	r3, [ip, #16]
	addlt	r2, r0, r1, asr #4
	subge	r2, r0, r1, asr #4
	rsblt	lr, r3, lr
	sublt	r1, r1, r0, asr #4
	addge	lr, lr, r3
	addge	r1, r1, r0, asr #4
	cmp	r2, #0
	ldrlt	r3, [ip, #20]
	ldrge	r3, [ip, #20]
	addlt	r0, r2, r1, asr #5
	subge	r0, r2, r1, asr #5
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	sublt	r1, r1, r2, asr #5
	addge	r1, r1, r2, asr #5
	cmp	r0, #0
	ldrlt	r3, [ip, #24]
	ldrge	r3, [ip, #24]
	addlt	r2, r0, r1, asr #6
	subge	r2, r0, r1, asr #6
	rsblt	lr, r3, lr
	sublt	r1, r1, r0, asr #6
	addge	lr, lr, r3
	addge	r1, r1, r0, asr #6
	cmp	r2, #0
	ldrlt	r3, [ip, #28]
	ldrge	r3, [ip, #28]
	addlt	r0, r2, r1, asr #7
	subge	r0, r2, r1, asr #7
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	sublt	r1, r1, r2, asr #7
	addge	r1, r1, r2, asr #7
	cmp	r0, #0
	ldrlt	r3, [ip, #32]
	ldrge	r3, [ip, #32]
	addlt	r2, r0, r1, asr #8
	subge	r2, r0, r1, asr #8
	rsblt	lr, r3, lr
	sublt	r1, r1, r0, asr #8
	addge	lr, lr, r3
	addge	r1, r1, r0, asr #8
	cmp	r2, #0
	ldrlt	r3, [ip, #36]
	ldrge	r3, [ip, #36]
	addlt	r0, r2, r1, asr #9
	subge	r0, r2, r1, asr #9
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	sublt	r1, r1, r2, asr #9
	addge	r1, r1, r2, asr #9
	cmp	r0, #0
	ldrlt	r3, [ip, #40]
	ldrge	r3, [ip, #40]
	addlt	r2, r0, r1, asr #10
	subge	r2, r0, r1, asr #10
	rsblt	lr, r3, lr
	sublt	r1, r1, r0, asr #10
	addge	lr, lr, r3
	addge	r1, r1, r0, asr #10
	cmp	r2, #0
	ldrlt	r3, [ip, #44]
	ldrge	r3, [ip, #44]
	addlt	r0, r2, r1, asr #11
	subge	r0, r2, r1, asr #11
	rsblt	lr, r3, lr
	addge	lr, lr, r3
	sublt	r1, r1, r2, asr #11
	addge	r1, r1, r2, asr #11
	cmp	r0, #0
	ldrlt	r3, [ip, #48]
	ldrge	r3, [ip, #48]
	addlt	r2, r0, r1, asr #12
	subge	r2, r0, r1, asr #12
	rsblt	lr, r3, lr
	sublt	r1, r1, r0, asr #12
	addge	lr, lr, r3
	addge	r1, r1, r0, asr #12
	cmp	r2, #0
	ldrge	r3, [ip, #52]
	ldrlt	r3, [ip, #52]
	addge	r0, lr, r3
	rsblt	r0, r3, lr
	subge	ip, r2, r1, asr #13
	addge	r3, r1, r2, asr #13
	addlt	ip, r2, r1, asr #13
	sublt	r3, r1, r2, asr #13
	str	r3, [r7, #0]
	str	ip, [r6, #0]
	str	r0, [r5, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L200:
	.align	2
.L199:
	.word	.LANCHOR0
	.size	arctan_x, .-arctan_x
	.global	__aeabi_i2d
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r2, #60160
	sub	sp, sp, #12
	add	r2, r2, #172
	str	r2, [sp, #0]
	bl	clock
	ldr	r7, .L309+8
	mov	r9, #38144
	mov	fp, #60416
	str	r0, [sp, #4]
	mov	sl, #0
	add	r9, r9, #13
	sub	fp, fp, #83
	mov	r8, r7
.L306:
	ldr	r0, .L309+12
	bl	puts
	mov	r0, #4
	bl	malloc
	mov	r4, r0
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	ldr	r3, [r7, #0]
	rsb	r2, r3, #12864
	add	r2, r2, #3
	cmp	r2, #0
	ldrlt	r3, [r8, #4]
	ldrge	r3, [r8, #4]
	addlt	r1, r2, r3
	rsbge	r1, r3, r2
	movlt	r2, #8192
	movge	r2, #24576
	mov	r6, r0
	movlt	r0, #24576
	movge	r0, #8192
	cmp	r1, #0
	ldrlt	r3, [r7, #8]
	ldrge	r3, [r7, #8]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r2, r0, lsr #2
	addge	ip, r2, r0, lsr #2
	addlt	r2, r0, r2, lsr #2
	subge	r2, r0, r2, lsr #2
	cmp	r1, #0
	ldrlt	r3, [r7, #12]
	ldrge	r3, [r7, #12]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #3
	addge	r0, ip, r2, asr #3
	addlt	r2, r2, ip, asr #3
	subge	r2, r2, ip, asr #3
	cmp	r1, #0
	ldrlt	r3, [r7, #16]
	ldrge	r3, [r7, #16]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #4
	addge	ip, r0, r2, asr #4
	addlt	r2, r2, r0, asr #4
	subge	r2, r2, r0, asr #4
	cmp	r1, #0
	ldrlt	r3, [r7, #20]
	ldrge	r3, [r7, #20]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #5
	addge	r0, ip, r2, asr #5
	addlt	r2, r2, ip, asr #5
	subge	r2, r2, ip, asr #5
	cmp	r1, #0
	ldrlt	r3, [r7, #24]
	ldrge	r3, [r7, #24]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #6
	addge	ip, r0, r2, asr #6
	addlt	r2, r2, r0, asr #6
	subge	r2, r2, r0, asr #6
	cmp	r1, #0
	ldrlt	r3, [r7, #28]
	ldrge	r3, [r7, #28]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #7
	addge	r0, ip, r2, asr #7
	addlt	r2, r2, ip, asr #7
	subge	r2, r2, ip, asr #7
	cmp	r1, #0
	ldrlt	r3, [r7, #32]
	ldrge	r3, [r7, #32]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #8
	addge	ip, r0, r2, asr #8
	addlt	r2, r2, r0, asr #8
	subge	r2, r2, r0, asr #8
	cmp	r1, #0
	ldrlt	r3, [r7, #36]
	ldrge	r3, [r7, #36]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #9
	addge	r0, ip, r2, asr #9
	addlt	r2, r2, ip, asr #9
	subge	r2, r2, ip, asr #9
	cmp	r1, #0
	ldrlt	r3, [r7, #40]
	ldrge	r3, [r7, #40]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #10
	addge	ip, r0, r2, asr #10
	addlt	r2, r2, r0, asr #10
	subge	r2, r2, r0, asr #10
	cmp	r1, #0
	ldrlt	r3, [r7, #44]
	ldrge	r3, [r7, #44]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #11
	addge	r0, ip, r2, asr #11
	addlt	r2, r2, ip, asr #11
	subge	r2, r2, ip, asr #11
	cmp	r1, #0
	ldrlt	r3, [r7, #48]
	ldrge	r3, [r7, #48]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #12
	addge	ip, r0, r2, asr #12
	addlt	r0, r2, r0, asr #12
	subge	r0, r2, r0, asr #12
	cmp	r1, #0
	ldrge	r3, [r7, #52]
	ldrlt	r3, [r7, #52]
	addge	lr, ip, r0, asr #13
	sublt	lr, ip, r0, asr #13
	rsbge	r2, r3, r1
	addlt	r2, r1, r3
	subge	r3, r0, ip, asr #13
	addlt	r3, r0, ip, asr #13
	str	lr, [r5, #0]
	mov	r0, r3
	str	r2, [r6, #0]
	str	r3, [r4, #0]
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L309
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r3, r1
	mov	r2, r0
	ldr	r0, .L309+16
	bl	printf
	mov	r0, #4
	bl	malloc
	mov	r4, r0
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	ldr	r3, [r7, #0]
	rsb	r2, r3, #8576
	add	r2, r2, #2
	cmp	r2, #0
	ldrlt	r3, [r8, #4]
	ldrge	r3, [r8, #4]
	addlt	r1, r2, r3
	rsbge	r1, r3, r2
	movlt	r2, #8192
	movge	r2, #24576
	mov	r6, r0
	movlt	r0, #24576
	movge	r0, #8192
	cmp	r1, #0
	ldrlt	r3, [r7, #8]
	ldrge	r3, [r7, #8]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r2, r0, lsr #2
	addge	ip, r2, r0, lsr #2
	addlt	r2, r0, r2, lsr #2
	subge	r2, r0, r2, lsr #2
	cmp	r1, #0
	ldrlt	r3, [r7, #12]
	ldrge	r3, [r7, #12]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #3
	addge	r0, ip, r2, asr #3
	addlt	r2, r2, ip, asr #3
	subge	r2, r2, ip, asr #3
	cmp	r1, #0
	ldrlt	r3, [r7, #16]
	ldrge	r3, [r7, #16]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #4
	addge	ip, r0, r2, asr #4
	addlt	r2, r2, r0, asr #4
	subge	r2, r2, r0, asr #4
	cmp	r1, #0
	ldrlt	r3, [r7, #20]
	ldrge	r3, [r7, #20]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #5
	addge	r0, ip, r2, asr #5
	addlt	r2, r2, ip, asr #5
	subge	r2, r2, ip, asr #5
	cmp	r1, #0
	ldrlt	r3, [r7, #24]
	ldrge	r3, [r7, #24]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #6
	addge	ip, r0, r2, asr #6
	addlt	r2, r2, r0, asr #6
	subge	r2, r2, r0, asr #6
	cmp	r1, #0
	ldrlt	r3, [r7, #28]
	ldrge	r3, [r7, #28]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #7
	addge	r0, ip, r2, asr #7
	addlt	r2, r2, ip, asr #7
	subge	r2, r2, ip, asr #7
	cmp	r1, #0
	ldrlt	r3, [r7, #32]
	ldrge	r3, [r7, #32]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #8
	addge	ip, r0, r2, asr #8
	addlt	r2, r2, r0, asr #8
	subge	r2, r2, r0, asr #8
	cmp	r1, #0
	ldrlt	r3, [r7, #36]
	ldrge	r3, [r7, #36]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #9
	addge	r0, ip, r2, asr #9
	addlt	r2, r2, ip, asr #9
	subge	r2, r2, ip, asr #9
	cmp	r1, #0
	ldrlt	r3, [r7, #40]
	ldrge	r3, [r7, #40]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #10
	addge	ip, r0, r2, asr #10
	addlt	r2, r2, r0, asr #10
	subge	r2, r2, r0, asr #10
	cmp	r1, #0
	ldrlt	r3, [r7, #44]
	ldrge	r3, [r7, #44]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #11
	addge	r0, ip, r2, asr #11
	addlt	r2, r2, ip, asr #11
	subge	r2, r2, ip, asr #11
	cmp	r1, #0
	ldrlt	r3, [r7, #48]
	ldrge	r3, [r7, #48]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #12
	addge	ip, r0, r2, asr #12
	addlt	r0, r2, r0, asr #12
	subge	r0, r2, r0, asr #12
	cmp	r1, #0
	ldrge	r3, [r7, #52]
	ldrlt	r3, [r7, #52]
	addge	lr, ip, r0, asr #13
	sublt	lr, ip, r0, asr #13
	rsbge	r2, r3, r1
	addlt	r2, r1, r3
	subge	r3, r0, ip, asr #13
	addlt	r3, r0, ip, asr #13
	str	lr, [r5, #0]
	mov	r0, r3
	str	r2, [r6, #0]
	str	r3, [r4, #0]
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L309
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r3, r1
	mov	r2, r0
	ldr	r0, .L309+20
	bl	printf
	ldr	r0, .L309+24
	bl	puts
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	mov	r4, r0
	mov	r0, #4
	bl	malloc
	ldr	r3, [r7, #0]
	rsb	r2, r3, #12864
	add	r2, r2, #3
	cmp	r2, #0
	ldrlt	r3, [r8, #4]
	ldrge	r3, [r8, #4]
	addlt	r1, r2, r3
	rsbge	r1, r3, r2
	movlt	r2, #8192
	movge	r2, #24576
	mov	r6, r0
	movlt	r0, #24576
	movge	r0, #8192
	cmp	r1, #0
	ldrlt	r3, [r7, #8]
	ldrge	r3, [r7, #8]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	lr, r2, r0, lsr #2
	addge	lr, r2, r0, lsr #2
	addlt	r2, r0, r2, lsr #2
	subge	r2, r0, r2, lsr #2
	cmp	r1, #0
	ldrlt	r3, [r7, #12]
	ldrge	r3, [r7, #12]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, lr, r2, asr #3
	addge	ip, lr, r2, asr #3
	addlt	r2, r2, lr, asr #3
	subge	r2, r2, lr, asr #3
	cmp	r1, #0
	ldrlt	r3, [r7, #16]
	ldrge	r3, [r7, #16]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #4
	addge	r0, ip, r2, asr #4
	addlt	r2, r2, ip, asr #4
	subge	r2, r2, ip, asr #4
	cmp	r1, #0
	ldrlt	r3, [r7, #20]
	ldrge	r3, [r7, #20]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #5
	addge	ip, r0, r2, asr #5
	addlt	r2, r2, r0, asr #5
	subge	r2, r2, r0, asr #5
	cmp	r1, #0
	ldrlt	r3, [r7, #24]
	ldrge	r3, [r7, #24]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #6
	addge	r0, ip, r2, asr #6
	addlt	r2, r2, ip, asr #6
	subge	r2, r2, ip, asr #6
	cmp	r1, #0
	ldrlt	r3, [r7, #28]
	ldrge	r3, [r7, #28]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #7
	addge	ip, r0, r2, asr #7
	addlt	r2, r2, r0, asr #7
	subge	r2, r2, r0, asr #7
	cmp	r1, #0
	ldrlt	r3, [r7, #32]
	ldrge	r3, [r7, #32]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #8
	addge	r0, ip, r2, asr #8
	addlt	r2, r2, ip, asr #8
	subge	r2, r2, ip, asr #8
	cmp	r1, #0
	ldrlt	r3, [r7, #36]
	ldrge	r3, [r7, #36]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #9
	addge	ip, r0, r2, asr #9
	addlt	r2, r2, r0, asr #9
	subge	r2, r2, r0, asr #9
	cmp	r1, #0
	ldrlt	r3, [r7, #40]
	ldrge	r3, [r7, #40]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #10
	addge	r0, ip, r2, asr #10
	b	.L310
.L311:
	.align	3
.L309:
	.word	59098750
	.word	1073371425
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
.L310:
	addlt	r2, r2, ip, asr #10
	subge	r2, r2, ip, asr #10
	cmp	r1, #0
	ldrlt	r3, [r7, #44]
	ldrge	r3, [r7, #44]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	lr, r0, r2, asr #11
	addge	lr, r0, r2, asr #11
	addlt	r2, r2, r0, asr #11
	subge	r2, r2, r0, asr #11
	cmp	r1, #0
	ldrlt	r3, [r7, #48]
	ldrge	r3, [r7, #48]
	addlt	r0, r1, r3
	rsbge	r0, r3, r1
	sublt	ip, lr, r2, asr #12
	addge	ip, lr, r2, asr #12
	addlt	r1, r2, lr, asr #12
	subge	r1, r2, lr, asr #12
	cmp	r0, #0
	ldrge	r3, [r7, #52]
	ldrlt	r3, [r7, #52]
	rsbge	lr, r3, r0
	addlt	lr, r0, r3
	addge	r2, ip, r1, asr #13
	subge	r3, r1, ip, asr #13
	sublt	r2, ip, r1, asr #13
	addlt	r3, r1, ip, asr #13
	str	r3, [r5, #0]
	mov	r0, r2
	str	lr, [r6, #0]
	str	r2, [r4, #0]
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L312
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r3, r1
	mov	r2, r0
	ldr	r0, .L312+16
	bl	printf
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	mov	r4, r0
	mov	r0, #4
	bl	malloc
	ldr	r3, [r7, #0]
	rsb	r2, r3, #8576
	add	r2, r2, #2
	cmp	r2, #0
	ldrlt	r3, [r8, #4]
	ldrge	r3, [r8, #4]
	addlt	r1, r2, r3
	rsbge	r1, r3, r2
	movlt	r2, #8192
	movge	r2, #24576
	mov	r6, r0
	movlt	r0, #24576
	movge	r0, #8192
	cmp	r1, #0
	ldrlt	r3, [r7, #8]
	ldrge	r3, [r7, #8]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	lr, r2, r0, lsr #2
	addge	lr, r2, r0, lsr #2
	addlt	r2, r0, r2, lsr #2
	subge	r2, r0, r2, lsr #2
	cmp	r1, #0
	ldrlt	r3, [r7, #12]
	ldrge	r3, [r7, #12]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, lr, r2, asr #3
	addge	ip, lr, r2, asr #3
	addlt	r2, r2, lr, asr #3
	subge	r2, r2, lr, asr #3
	cmp	r1, #0
	ldrlt	r3, [r7, #16]
	ldrge	r3, [r7, #16]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #4
	addge	r0, ip, r2, asr #4
	addlt	r2, r2, ip, asr #4
	subge	r2, r2, ip, asr #4
	cmp	r1, #0
	ldrlt	r3, [r7, #20]
	ldrge	r3, [r7, #20]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #5
	addge	ip, r0, r2, asr #5
	addlt	r2, r2, r0, asr #5
	subge	r2, r2, r0, asr #5
	cmp	r1, #0
	ldrlt	r3, [r7, #24]
	ldrge	r3, [r7, #24]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #6
	addge	r0, ip, r2, asr #6
	addlt	r2, r2, ip, asr #6
	subge	r2, r2, ip, asr #6
	cmp	r1, #0
	ldrlt	r3, [r7, #28]
	ldrge	r3, [r7, #28]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #7
	addge	ip, r0, r2, asr #7
	addlt	r2, r2, r0, asr #7
	subge	r2, r2, r0, asr #7
	cmp	r1, #0
	ldrlt	r3, [r7, #32]
	ldrge	r3, [r7, #32]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #8
	addge	r0, ip, r2, asr #8
	addlt	r2, r2, ip, asr #8
	subge	r2, r2, ip, asr #8
	cmp	r1, #0
	ldrlt	r3, [r7, #36]
	ldrge	r3, [r7, #36]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	ip, r0, r2, asr #9
	addge	ip, r0, r2, asr #9
	addlt	r2, r2, r0, asr #9
	subge	r2, r2, r0, asr #9
	cmp	r1, #0
	ldrlt	r3, [r7, #40]
	ldrge	r3, [r7, #40]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	r0, ip, r2, asr #10
	addge	r0, ip, r2, asr #10
	addlt	r2, r2, ip, asr #10
	subge	r2, r2, ip, asr #10
	cmp	r1, #0
	ldrlt	r3, [r7, #44]
	ldrge	r3, [r7, #44]
	addlt	r1, r1, r3
	rsbge	r1, r3, r1
	sublt	lr, r0, r2, asr #11
	addge	lr, r0, r2, asr #11
	addlt	r2, r2, r0, asr #11
	subge	r2, r2, r0, asr #11
	cmp	r1, #0
	ldrlt	r3, [r7, #48]
	ldrge	r3, [r7, #48]
	addlt	r0, r1, r3
	rsbge	r0, r3, r1
	sublt	ip, lr, r2, asr #12
	addlt	r1, r2, lr, asr #12
	addge	ip, lr, r2, asr #12
	subge	r1, r2, lr, asr #12
	cmp	r0, #0
	ldrge	r3, [r7, #52]
	ldrlt	r3, [r7, #52]
	rsbge	lr, r3, r0
	addlt	lr, r0, r3
	addge	r2, ip, r1, asr #13
	subge	r3, r1, ip, asr #13
	sublt	r2, ip, r1, asr #13
	addlt	r3, r1, ip, asr #13
	str	r3, [r5, #0]
	mov	r0, r2
	str	lr, [r6, #0]
	str	r2, [r4, #0]
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L312
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L312+20
	bl	printf
	ldr	r0, .L312+24
	bl	puts
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	ldmia	r7, {r2, r3}
	add	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r1, r7, #12
	ldmia	r1, {r1, ip}	@ phole ldm
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #24]
	rsb	r3, ip, r3
	rsb	r3, r2, r3
	ldr	ip, [r7, #28]
	ldr	r2, [r7, #32]
	rsb	r3, r1, r3
	add	r3, r3, ip
	add	r1, r7, #36
	ldmia	r1, {r1, ip}	@ phole ldm
	add	r3, r3, r2
	ldr	r4, [r7, #44]
	add	r3, r3, r1
	add	r3, r3, ip
	add	r1, r7, #48
	ldmia	r1, {r1, r2}	@ phole ldm
	add	r3, r3, r4
	rsb	r3, r1, r3
	add	r3, r3, r2
	mov	r2, #0
	str	r9, [r6, #0]
	str	r2, [r5, #0]
	str	r3, [r0, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L312+8
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L312+28
	bl	printf
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	ldmia	r7, {r2, r3}
	sub	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r1, r7, #12
	ldmia	r1, {r1, ip}	@ phole ldm
	add	r3, r3, r2
	rsb	r3, r1, r3
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #24]
	add	r3, r3, ip
	rsb	r3, r2, r3
	ldr	ip, [r7, #28]
	ldr	r2, [r7, #32]
	rsb	r3, r1, r3
	add	r3, r3, ip
	add	r1, r7, #36
	ldmia	r1, {r1, ip}	@ phole ldm
	rsb	r3, r2, r3
	ldr	r4, [r7, #44]
	add	r3, r3, r1
	rsb	r3, ip, r3
	add	r1, r7, #48
	ldmia	r1, {r1, r2}	@ phole ldm
	add	r3, r3, r4
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [sp, #0]
	str	r2, [r6, #0]
	mvn	r2, #0
	str	r2, [r5, #0]
	str	r3, [r0, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	b	.L313
.L314:
	.align	3
.L312:
	.word	59098750
	.word	1073371425
	.word	1293080650
	.word	1074340347
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
.L313:
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L315
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L315+8
	bl	printf
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	ldmia	r7, {r2, r3}
	add	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r1, r7, #12
	ldmia	r1, {r1, ip}	@ phole ldm
	rsb	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #24]
	rsb	r3, ip, r3
	add	r3, r3, r2
	ldr	ip, [r7, #28]
	ldr	r2, [r7, #32]
	add	r3, r3, r1
	rsb	r3, ip, r3
	add	r1, r7, #36
	ldmia	r1, {r1, ip}	@ phole ldm
	add	r3, r3, r2
	ldr	r4, [r7, #44]
	rsb	r3, r1, r3
	add	r3, r3, ip
	add	r1, r7, #48
	ldmia	r1, {r1, r2}	@ phole ldm
	rsb	r3, r4, r3
	rsb	r3, r1, r3
	rsb	r3, r2, r3
	mov	r2, #1
	str	fp, [r6, #0]
	str	r2, [r5, #0]
	str	r3, [r0, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L315
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L315+12
	bl	printf
	ldr	r0, .L315+16
	bl	puts
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	ldmia	r7, {r2, r3}
	add	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r1, r7, #12
	ldmia	r1, {r1, ip}	@ phole ldm
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #24]
	rsb	r3, ip, r3
	rsb	r3, r2, r3
	ldr	ip, [r7, #28]
	ldr	r2, [r7, #32]
	rsb	r3, r1, r3
	add	r3, r3, ip
	add	r1, r7, #36
	ldmia	r1, {r1, ip}	@ phole ldm
	add	r3, r3, r2
	ldr	r4, [r7, #44]
	add	r3, r3, r1
	add	r3, r3, ip
	add	r1, r7, #48
	ldmia	r1, {r1, r2}	@ phole ldm
	add	r3, r3, r4
	rsb	r3, r1, r3
	add	r3, r3, r2
	mov	r2, #0
	str	r9, [r6, #0]
	str	r2, [r5, #0]
	str	r3, [r0, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L315
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L315+20
	bl	printf
	mov	r0, #4
	bl	malloc
	mov	r6, r0
	mov	r0, #4
	bl	malloc
	mov	r5, r0
	mov	r0, #4
	bl	malloc
	ldmia	r7, {r2, r3}
	add	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r1, r7, #12
	ldmia	r1, {r1, ip}	@ phole ldm
	rsb	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #24]
	rsb	r3, ip, r3
	add	r3, r3, r2
	ldr	ip, [r7, #28]
	ldr	r2, [r7, #32]
	add	r3, r3, r1
	rsb	r3, ip, r3
	add	r1, r7, #36
	ldmia	r1, {r1, ip}	@ phole ldm
	add	r3, r3, r2
	ldr	r4, [r7, #44]
	rsb	r3, r1, r3
	add	r3, r3, ip
	add	r1, r7, #48
	ldmia	r1, {r1, r2}	@ phole ldm
	rsb	r3, r4, r3
	rsb	r3, r1, r3
	rsb	r3, r2, r3
	mov	r2, #1
	str	fp, [r6, #0]
	str	r2, [r5, #0]
	str	r3, [r0, #0]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L315
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	add	sl, sl, #1
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L315+24
	bl	printf
	cmp	sl, #100
	bne	.L306
	bl	clock
	ldr	r3, [sp, #4]
	rsb	r0, r3, r0
	bl	__aeabi_i2d
	mov	r3, #1090519040
	add	r3, r3, #3047424
	mov	r2, #0
	add	r3, r3, #1152
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L315+28
	bl	printf
	mov	r0, #0
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L316:
	.align	3
.L315:
	.word	1293080650
	.word	1074340347
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.size	main, .-main
	.global	z_table
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	z_table, %object
	.size	z_table, 56
z_table:
	.word	12867
	.word	7596
	.word	4013
	.word	2037
	.word	1022
	.word	511
	.word	255
	.word	127
	.word	63
	.word	31
	.word	15
	.word	7
	.word	3
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"TESTING: Cosine:\000"
	.space	3
.LC1:
	.ascii	"Cos(45deg): %.15lf\012\000"
.LC2:
	.ascii	"Cos(30deg): %.15lf\012\000"
.LC3:
	.ascii	"TESTING: Sine:\000"
	.space	1
.LC4:
	.ascii	"Sin(45deg): %.15lf\012\000"
.LC5:
	.ascii	"Sin(30deg): %.15lf\012\000"
.LC6:
	.ascii	"TESTING: Arctan Y/X:\000"
	.space	3
.LC7:
	.ascii	"Arctan(1/1): %.15lf\012\000"
	.space	3
.LC8:
	.ascii	"Arctan(1/2): %.15lf\012\000"
	.space	3
.LC9:
	.ascii	"Arctan(2/1): %.15lf\012\000"
	.space	3
.LC10:
	.ascii	"TESTING: Arctan X:\000"
	.space	1
.LC11:
	.ascii	"Arctan(1): %.15lf\012\000"
	.space	1
.LC12:
	.ascii	"Arctan(2): %.15lf\012\000"
	.space	1
.LC13:
	.ascii	"Time Spent: %f\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
