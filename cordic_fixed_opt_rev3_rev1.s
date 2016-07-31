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
	.file	"cordic_fixed_opt_rev3.c"
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.global	__aeabi_f2d
	.text
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
	adr	r3, .L7
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	bl	__aeabi_d2f
	ldmfd	sp!, {r4, lr}
	bx	lr
.L8:
	.align	3
.L7:
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
	adr	r3, .L11
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	ldmfd	sp!, {r4, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	1293080650
	.word	1074340347
	.size	rad2deg, .-rad2deg
	.align	2
	.global	cordic_V_fixed_point_rotate
	.type	cordic_V_fixed_point_rotate, %function
cordic_V_fixed_point_rotate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}
	ldr	r5, .L43
	mov	r4, r5
	sub	sp, sp, #32
	mov	sl, r0
	mov	r8, r1
	mov	r6, r2
	mov	r7, r3
	ldmia	r4!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	cmp	r7, #0
	ldmia	r4, {r0, r1, r2}
	ldr	r3, [sp, #4]
	stmia	ip, {r0, r1, r2}
	subge	r0, r7, r3, asr #16
	addlt	r0, r7, r3, asr #16
	rsbge	r1, r6, r8
	addlt	r1, r6, r8
	addge	ip, r6, r8
	rsblt	ip, r8, r6
	cmp	r0, #0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	r2, ip, r1, asr #1
	sublt	r2, ip, r1, asr #1
	subge	r1, r1, ip, asr #1
	addlt	r1, r1, ip, asr #1
	cmp	r3, #0
	ldr	r0, [sp, #8]
	subge	ip, r3, r0, asr #16
	addlt	ip, r3, r0, asr #16
	addge	r4, r2, r1, asr #2
	sublt	r4, r2, r1, asr #2
	subge	r1, r1, r2, asr #2
	addlt	r1, r1, r2, asr #2
	cmp	ip, #0
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	rsbge	r3, r3, ip
	addlt	r3, r3, ip
	addge	r2, r4, r1, asr #3
	sublt	r2, r4, r1, asr #3
	subge	r1, r1, r4, asr #3
	addlt	r1, r1, r4, asr #3
	cmp	r3, #0
	ldr	r0, [sp, #12]
	subge	ip, r3, r0, asr #16
	addlt	ip, r3, r0, asr #16
	addge	r4, r2, r1, asr #4
	sublt	r4, r2, r1, asr #4
	subge	r1, r1, r2, asr #4
	addlt	r1, r1, r2, asr #4
	cmp	ip, #0
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	rsbge	r3, r3, ip
	addlt	r3, r3, ip
	addge	r2, r4, r1, asr #5
	sublt	r2, r4, r1, asr #5
	subge	r1, r1, r4, asr #5
	addlt	r1, r1, r4, asr #5
	cmp	r3, #0
	ldr	r0, [sp, #16]
	subge	ip, r3, r0, asr #16
	addlt	ip, r3, r0, asr #16
	addge	r4, r2, r1, asr #6
	sublt	r4, r2, r1, asr #6
	subge	r1, r1, r2, asr #6
	addlt	r1, r1, r2, asr #6
	cmp	ip, #0
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	rsbge	r3, r3, ip
	addlt	r3, r3, ip
	addge	r2, r4, r1, asr #7
	sublt	r2, r4, r1, asr #7
	subge	r1, r1, r4, asr #7
	addlt	r1, r1, r4, asr #7
	cmp	r3, #0
	ldr	r0, [sp, #20]
	subge	ip, r3, r0, asr #16
	addlt	ip, r3, r0, asr #16
	addge	r4, r2, r1, asr #8
	sublt	r4, r2, r1, asr #8
	subge	r1, r1, r2, asr #8
	addlt	r1, r1, r2, asr #8
	cmp	ip, #0
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	rsbge	r3, r3, ip
	addlt	r3, r3, ip
	addge	r2, r4, r1, asr #9
	sublt	r2, r4, r1, asr #9
	subge	r1, r1, r4, asr #9
	addlt	r1, r1, r4, asr #9
	cmp	r3, #0
	ldr	r0, [sp, #24]
	subge	ip, r3, r0, asr #16
	addlt	ip, r3, r0, asr #16
	addge	r4, r2, r1, asr #10
	sublt	r4, r2, r1, asr #10
	subge	r1, r1, r2, asr #10
	addlt	r1, r1, r2, asr #10
	cmp	ip, #0
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	rsbge	r3, r3, ip
	addlt	r3, r3, ip
	addge	r2, r4, r1, asr #11
	sublt	r2, r4, r1, asr #11
	subge	r1, r1, r4, asr #11
	addlt	r1, r1, r4, asr #11
	cmp	r3, #0
	ldr	r0, [sp, #28]
	addlt	ip, r3, r0, asr #16
	subge	ip, r3, r0, asr #16
	sublt	r4, r2, r1, asr #12
	addge	r4, r2, r1, asr #12
	addlt	r1, r1, r2, asr #12
	subge	r1, r1, r2, asr #12
	cmp	ip, #0
	mov	r3, r0, asl #16
	mov	r3, r3, lsr #16
	sublt	r2, r4, r1, asr #13
	addge	r2, r4, r1, asr #13
	addlt	r3, r3, ip
	addlt	r1, r1, r4, asr #13
	rsbge	r3, r3, ip
	subge	r1, r1, r4, asr #13
	stmia	sl, {r1, r2, r3}	@ phole stm
	mov	r0, sl
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.size	cordic_V_fixed_point_rotate, .-cordic_V_fixed_point_rotate
	.align	2
	.global	cordic_V_fixed_point_vector
	.type	cordic_V_fixed_point_vector, %function
cordic_V_fixed_point_vector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}
	ldr	r4, .L75
	sub	sp, sp, #36
	mov	r5, r2
	mov	r8, r0
	mov	r6, r1
	mov	r7, r3
	ldmia	r4!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	cmp	r5, #0
	ldmia	r4, {r0, r1, r2}
	ldrlt	r3, [sp, #4]
	ldrge	r3, [sp, #4]
	stmia	ip, {r0, r1, r2}
	addlt	r2, r5, r6
	rsbge	r2, r6, r5
	sublt	r1, r7, r3, asr #16
	addge	r1, r7, r3, asr #16
	rsblt	r0, r5, r6
	addge	r0, r5, r6
	cmp	r2, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	rsblt	ip, r3, r1
	addge	ip, r3, r1
	addlt	r1, r2, r0, asr #1
	subge	r1, r2, r0, asr #1
	sublt	r2, r0, r2, asr #1
	addge	r2, r0, r2, asr #1
	cmp	r1, #0
	ldrlt	r3, [sp, #8]
	ldrge	r3, [sp, #8]
	addlt	r0, r1, r2, asr #2
	subge	r0, r1, r2, asr #2
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r1, asr #2
	addge	r2, r2, r1, asr #2
	cmp	r0, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r1, r0, r2, asr #3
	subge	r1, r0, r2, asr #3
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r0, asr #3
	addge	r2, r2, r0, asr #3
	cmp	r1, #0
	ldrlt	r3, [sp, #12]
	ldrge	r3, [sp, #12]
	addlt	r0, r1, r2, asr #4
	subge	r0, r1, r2, asr #4
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r1, asr #4
	addge	r2, r2, r1, asr #4
	cmp	r0, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r1, r0, r2, asr #5
	subge	r1, r0, r2, asr #5
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r0, asr #5
	addge	r2, r2, r0, asr #5
	cmp	r1, #0
	ldrlt	r3, [sp, #16]
	ldrge	r3, [sp, #16]
	addlt	r0, r1, r2, asr #6
	subge	r0, r1, r2, asr #6
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r1, asr #6
	addge	r2, r2, r1, asr #6
	cmp	r0, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r1, r0, r2, asr #7
	subge	r1, r0, r2, asr #7
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r0, asr #7
	addge	r2, r2, r0, asr #7
	cmp	r1, #0
	ldrlt	r3, [sp, #20]
	ldrge	r3, [sp, #20]
	addlt	r0, r1, r2, asr #8
	subge	r0, r1, r2, asr #8
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r1, asr #8
	addge	r2, r2, r1, asr #8
	cmp	r0, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r1, r0, r2, asr #9
	subge	r1, r0, r2, asr #9
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r0, asr #9
	addge	r2, r2, r0, asr #9
	cmp	r1, #0
	ldrlt	r3, [sp, #24]
	ldrge	r3, [sp, #24]
	addlt	r0, r1, r2, asr #10
	subge	r0, r1, r2, asr #10
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r1, asr #10
	addge	r2, r2, r1, asr #10
	cmp	r0, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r1, r0, r2, asr #11
	subge	r1, r0, r2, asr #11
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r0, asr #11
	addge	r2, r2, r0, asr #11
	cmp	r1, #0
	ldrge	r3, [sp, #28]
	ldrlt	r3, [sp, #28]
	subge	r0, r1, r2, asr #12
	addlt	r0, r1, r2, asr #12
	addge	ip, ip, r3, asr #16
	sublt	ip, ip, r3, asr #16
	addge	r1, r2, r1, asr #12
	sublt	r1, r2, r1, asr #12
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	subge	r2, r0, r1, asr #13
	addlt	r2, r0, r1, asr #13
	addge	r1, r1, r0, asr #13
	sublt	r1, r1, r0, asr #13
	addge	r3, r3, ip
	rsblt	r3, r3, ip
	stmia	r8, {r1, r2, r3}	@ phole stm
	mov	r0, r8
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L76:
	.align	2
.L75:
	.word	.LANCHOR0+28
	.size	cordic_V_fixed_point_vector, .-cordic_V_fixed_point_vector
	.align	2
	.global	cosine
	.type	cosine, %function
cosine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldr	ip, .L109
	mov	r5, ip
	mov	r6, r0
	sub	sp, sp, #36
	ldmia	r5!, {r0, r1, r2, r3}
	add	r4, sp, #4
	stmia	r4!, {r0, r1, r2, r3}
	cmp	r6, #0
	ldmia	r5, {r0, r1, r2}
	ldrge	r3, [sp, #4]
	ldrlt	r3, [sp, #4]
	stmia	r4, {r0, r1, r2}
	subge	r0, r6, r3, asr #16
	movlt	r1, #-2147483648
	addlt	r0, r6, r3, asr #16
	movge	r1, #16384
	movlt	r1, r1, asr #17
	cmp	r0, #0
	movge	r3, r3, asl #16
	movge	r2, r1, asr #1
	movge	r3, r3, lsr #16
	rsbge	ip, r2, #16384
	rsbge	r0, r3, r0
	addge	r2, r1, #8192
	blt	.L108
.L81:
	cmp	r0, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	r4, r2, ip, asr #2
	sublt	r4, r2, ip, asr #2
	subge	r2, ip, r2, asr #2
	addlt	r2, ip, r2, asr #2
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, r4, r2, asr #3
	sublt	r1, r4, r2, asr #3
	subge	r2, r2, r4, asr #3
	addlt	r2, r2, r4, asr #3
	cmp	r0, #0
	ldrge	r3, [sp, #12]
	ldrlt	r3, [sp, #12]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	ip, r1, r2, asr #4
	sublt	ip, r1, r2, asr #4
	subge	r2, r2, r1, asr #4
	addlt	r2, r2, r1, asr #4
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, ip, r2, asr #5
	sublt	r1, ip, r2, asr #5
	subge	r2, r2, ip, asr #5
	addlt	r2, r2, ip, asr #5
	cmp	r0, #0
	ldrge	r3, [sp, #16]
	ldrlt	r3, [sp, #16]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	ip, r1, r2, asr #6
	sublt	ip, r1, r2, asr #6
	subge	r2, r2, r1, asr #6
	addlt	r2, r2, r1, asr #6
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, ip, r2, asr #7
	sublt	r1, ip, r2, asr #7
	subge	r2, r2, ip, asr #7
	addlt	r2, r2, ip, asr #7
	cmp	r0, #0
	ldrge	r3, [sp, #20]
	ldrlt	r3, [sp, #20]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	ip, r1, r2, asr #8
	sublt	ip, r1, r2, asr #8
	subge	r2, r2, r1, asr #8
	addlt	r2, r2, r1, asr #8
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, ip, r2, asr #9
	sublt	r1, ip, r2, asr #9
	subge	r2, r2, ip, asr #9
	addlt	r2, r2, ip, asr #9
	cmp	r0, #0
	ldrge	r3, [sp, #24]
	ldrlt	r3, [sp, #24]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	r4, r1, r2, asr #10
	sublt	r4, r1, r2, asr #10
	subge	r2, r2, r1, asr #10
	addlt	r2, r2, r1, asr #10
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	ip, r4, r2, asr #11
	sublt	ip, r4, r2, asr #11
	subge	r2, r2, r4, asr #11
	addlt	r2, r2, r4, asr #11
	cmp	r0, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r0, r3, asr #16
	subge	r3, r0, r3, asr #16
	sublt	r1, ip, r2, asr #12
	addlt	r0, r2, ip, asr #12
	addge	r1, ip, r2, asr #12
	subge	r0, r2, ip, asr #12
	cmp	r3, #0
	addlt	r0, r0, r1, asr #13
	subge	r0, r0, r1, asr #13
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L108:
	mov	r3, r3, asl #16
	mov	r2, r1, asr #1
	mov	r3, r3, lsr #16
	add	ip, r2, #16384
	add	r0, r3, r0
	sub	r2, r1, #8192
	b	.L81
.L110:
	.align	2
.L109:
	.word	.LANCHOR0
	.size	cosine, .-cosine
	.align	2
	.global	sine
	.type	sine, %function
sine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldr	ip, .L142
	mov	r5, ip
	mov	r6, r0
	sub	sp, sp, #36
	ldmia	r5!, {r0, r1, r2, r3}
	add	r4, sp, #4
	stmia	r4!, {r0, r1, r2, r3}
	cmp	r6, #0
	ldmia	r5, {r0, r1, r2}
	ldrge	r3, [sp, #4]
	ldrlt	r3, [sp, #4]
	stmia	r4, {r0, r1, r2}
	subge	r0, r6, r3, asr #16
	movlt	r1, #-2147483648
	addlt	r0, r6, r3, asr #16
	movge	r1, #16384
	movlt	r1, r1, asr #17
	cmp	r0, #0
	movge	r3, r3, asl #16
	movge	r2, r1, asr #1
	movge	r3, r3, lsr #16
	rsbge	ip, r2, #16384
	rsbge	r0, r3, r0
	addge	r2, r1, #8192
	blt	.L141
.L115:
	cmp	r0, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	r4, r2, ip, asr #2
	sublt	r4, r2, ip, asr #2
	subge	r2, ip, r2, asr #2
	addlt	r2, ip, r2, asr #2
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, r4, r2, asr #3
	sublt	r1, r4, r2, asr #3
	subge	r2, r2, r4, asr #3
	addlt	r2, r2, r4, asr #3
	cmp	r0, #0
	ldrge	r3, [sp, #12]
	ldrlt	r3, [sp, #12]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	ip, r1, r2, asr #4
	sublt	ip, r1, r2, asr #4
	subge	r2, r2, r1, asr #4
	addlt	r2, r2, r1, asr #4
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, ip, r2, asr #5
	sublt	r1, ip, r2, asr #5
	subge	r2, r2, ip, asr #5
	addlt	r2, r2, ip, asr #5
	cmp	r0, #0
	ldrge	r3, [sp, #16]
	ldrlt	r3, [sp, #16]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	ip, r1, r2, asr #6
	sublt	ip, r1, r2, asr #6
	subge	r2, r2, r1, asr #6
	addlt	r2, r2, r1, asr #6
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, ip, r2, asr #7
	sublt	r1, ip, r2, asr #7
	subge	r2, r2, ip, asr #7
	addlt	r2, r2, ip, asr #7
	cmp	r0, #0
	ldrge	r3, [sp, #20]
	ldrlt	r3, [sp, #20]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	ip, r1, r2, asr #8
	sublt	ip, r1, r2, asr #8
	subge	r2, r2, r1, asr #8
	addlt	r2, r2, r1, asr #8
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	r1, ip, r2, asr #9
	sublt	r1, ip, r2, asr #9
	subge	r2, r2, ip, asr #9
	addlt	r2, r2, ip, asr #9
	cmp	r0, #0
	ldrge	r3, [sp, #24]
	ldrlt	r3, [sp, #24]
	subge	r0, r0, r3, asr #16
	addlt	r0, r0, r3, asr #16
	addge	r4, r1, r2, asr #10
	sublt	r4, r1, r2, asr #10
	subge	r2, r2, r1, asr #10
	addlt	r2, r2, r1, asr #10
	cmp	r0, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r0, r3, r0
	addlt	r0, r3, r0
	addge	ip, r4, r2, asr #11
	sublt	ip, r4, r2, asr #11
	subge	r2, r2, r4, asr #11
	addlt	r2, r2, r4, asr #11
	cmp	r0, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r0, r3, asr #16
	subge	r3, r0, r3, asr #16
	sublt	r1, ip, r2, asr #12
	addlt	r0, r2, ip, asr #12
	addge	r1, ip, r2, asr #12
	subge	r0, r2, ip, asr #12
	cmp	r3, #0
	sublt	r0, r1, r0, asr #13
	addge	r0, r1, r0, asr #13
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L141:
	mov	r3, r3, asl #16
	mov	r2, r1, asr #1
	mov	r3, r3, lsr #16
	add	ip, r2, #16384
	add	r0, r3, r0
	sub	r2, r1, #8192
	b	.L115
.L143:
	.align	2
.L142:
	.word	.LANCHOR0
	.size	sine, .-sine
	.align	2
	.global	arctan_y_x
	.type	arctan_y_x, %function
arctan_y_x:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldr	r4, .L174
	sub	sp, sp, #36
	mov	r5, r1
	mov	r6, r0
	ldmia	r4!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2}
	cmp	r5, #0
	stmia	ip, {r0, r1, r2}
	ldrlt	r2, [sp, #4]
	ldrge	r2, [sp, #4]
	movlt	r3, r2, asr #16
	addlt	r1, r6, r5
	rsbge	r1, r6, r5
	rsblt	r0, r3, #0
	movge	r0, r2, asr #16
	rsblt	ip, r5, r6
	addge	ip, r6, r5
	cmp	r1, #0
	movlt	r3, r2, asl #16
	movge	r3, r2, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	rsblt	r4, r3, r0
	addge	r4, r3, r0
	addlt	r0, r1, ip, asr #1
	subge	r0, r1, ip, asr #1
	sublt	r1, ip, r1, asr #1
	addge	r1, ip, r1, asr #1
	cmp	r0, #0
	ldrlt	r3, [sp, #8]
	ldrge	r3, [sp, #8]
	addlt	r2, r0, r1, asr #2
	subge	r2, r0, r1, asr #2
	sublt	ip, r4, r3, asr #16
	addge	ip, r4, r3, asr #16
	sublt	r1, r1, r0, asr #2
	addge	r1, r1, r0, asr #2
	cmp	r2, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r2, r1, asr #3
	subge	r0, r2, r1, asr #3
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r1, r1, r2, asr #3
	addge	r1, r1, r2, asr #3
	cmp	r0, #0
	ldrlt	r3, [sp, #12]
	ldrge	r3, [sp, #12]
	addlt	r2, r0, r1, asr #4
	subge	r2, r0, r1, asr #4
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r1, r1, r0, asr #4
	addge	r1, r1, r0, asr #4
	cmp	r2, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r2, r1, asr #5
	subge	r0, r2, r1, asr #5
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r1, r1, r2, asr #5
	addge	r1, r1, r2, asr #5
	cmp	r0, #0
	ldrlt	r3, [sp, #16]
	ldrge	r3, [sp, #16]
	addlt	r2, r0, r1, asr #6
	subge	r2, r0, r1, asr #6
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r1, r1, r0, asr #6
	addge	r1, r1, r0, asr #6
	cmp	r2, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r2, r1, asr #7
	subge	r0, r2, r1, asr #7
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r1, r1, r2, asr #7
	addge	r1, r1, r2, asr #7
	cmp	r0, #0
	ldrlt	r3, [sp, #20]
	ldrge	r3, [sp, #20]
	addlt	r2, r0, r1, asr #8
	subge	r2, r0, r1, asr #8
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r1, r1, r0, asr #8
	addge	r1, r1, r0, asr #8
	cmp	r2, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r2, r1, asr #9
	subge	r0, r2, r1, asr #9
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r1, r1, r2, asr #9
	addge	r1, r1, r2, asr #9
	cmp	r0, #0
	ldrlt	r3, [sp, #24]
	ldrge	r3, [sp, #24]
	addlt	r2, r0, r1, asr #10
	subge	r2, r0, r1, asr #10
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r1, r1, r0, asr #10
	addge	r1, r1, r0, asr #10
	cmp	r2, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r2, r1, asr #11
	subge	r0, r2, r1, asr #11
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r1, r1, r2, asr #11
	addge	r1, r1, r2, asr #11
	cmp	r0, #0
	ldrge	r3, [sp, #28]
	ldrlt	r3, [sp, #28]
	subge	r1, r0, r1, asr #12
	addlt	r1, r0, r1, asr #12
	addge	r0, ip, r3, asr #16
	sublt	r0, ip, r3, asr #16
	cmp	r1, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	addge	r0, r3, r0
	rsblt	r0, r3, r0
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L175:
	.align	2
.L174:
	.word	.LANCHOR0+28
	.size	arctan_y_x, .-arctan_y_x
	.align	2
	.global	arctan_x
	.type	arctan_x, %function
arctan_x:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	ldr	r4, .L206
	sub	sp, sp, #32
	mov	r5, r0
	ldmia	r4!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2}
	cmp	r5, #0
	stmia	ip, {r0, r1, r2}
	ldrlt	r1, [sp, #4]
	ldrge	r1, [sp, #4]
	movlt	r3, r1, asr #16
	addlt	r2, r5, #16384
	subge	r2, r5, #16384
	rsblt	r0, r3, #0
	movge	r0, r1, asr #16
	rsblt	ip, r5, #16384
	addge	ip, r5, #16384
	cmp	r2, #0
	movlt	r3, r1, asl #16
	movge	r3, r1, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	rsblt	r4, r3, r0
	addge	r4, r3, r0
	addlt	r0, r2, ip, asr #1
	subge	r0, r2, ip, asr #1
	sublt	r2, ip, r2, asr #1
	addge	r2, ip, r2, asr #1
	cmp	r0, #0
	ldrlt	r3, [sp, #8]
	ldrge	r3, [sp, #8]
	addlt	r1, r0, r2, asr #2
	subge	r1, r0, r2, asr #2
	sublt	ip, r4, r3, asr #16
	addge	ip, r4, r3, asr #16
	sublt	r2, r2, r0, asr #2
	addge	r2, r2, r0, asr #2
	cmp	r1, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r1, r2, asr #3
	subge	r0, r1, r2, asr #3
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r1, asr #3
	addge	r2, r2, r1, asr #3
	cmp	r0, #0
	ldrlt	r3, [sp, #12]
	ldrge	r3, [sp, #12]
	addlt	r1, r0, r2, asr #4
	subge	r1, r0, r2, asr #4
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r0, asr #4
	addge	r2, r2, r0, asr #4
	cmp	r1, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r1, r2, asr #5
	subge	r0, r1, r2, asr #5
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r1, asr #5
	addge	r2, r2, r1, asr #5
	cmp	r0, #0
	ldrlt	r3, [sp, #16]
	ldrge	r3, [sp, #16]
	addlt	r1, r0, r2, asr #6
	subge	r1, r0, r2, asr #6
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r0, asr #6
	addge	r2, r2, r0, asr #6
	cmp	r1, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r1, r2, asr #7
	subge	r0, r1, r2, asr #7
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r1, asr #7
	addge	r2, r2, r1, asr #7
	cmp	r0, #0
	ldrlt	r3, [sp, #20]
	ldrge	r3, [sp, #20]
	addlt	r1, r0, r2, asr #8
	subge	r1, r0, r2, asr #8
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r0, asr #8
	addge	r2, r2, r0, asr #8
	cmp	r1, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r1, r2, asr #9
	subge	r0, r1, r2, asr #9
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r1, asr #9
	addge	r2, r2, r1, asr #9
	cmp	r0, #0
	ldrlt	r3, [sp, #24]
	ldrge	r3, [sp, #24]
	addlt	r1, r0, r2, asr #10
	subge	r1, r0, r2, asr #10
	sublt	ip, ip, r3, asr #16
	addge	ip, ip, r3, asr #16
	sublt	r2, r2, r0, asr #10
	addge	r2, r2, r0, asr #10
	cmp	r1, #0
	movlt	r3, r3, asl #16
	movge	r3, r3, asl #16
	movlt	r3, r3, lsr #16
	movge	r3, r3, lsr #16
	addlt	r0, r1, r2, asr #11
	subge	r0, r1, r2, asr #11
	rsblt	ip, r3, ip
	addge	ip, r3, ip
	sublt	r2, r2, r1, asr #11
	addge	r2, r2, r1, asr #11
	cmp	r0, #0
	ldrge	r3, [sp, #28]
	ldrlt	r3, [sp, #28]
	subge	r2, r0, r2, asr #12
	addlt	r2, r0, r2, asr #12
	addge	r0, ip, r3, asr #16
	sublt	r0, ip, r3, asr #16
	cmp	r2, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	addge	r0, r3, r0
	rsblt	r0, r3, r0
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5}
	bx	lr
.L207:
	.align	2
.L206:
	.word	.LANCHOR0+28
	.size	arctan_x, .-arctan_x
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r0, .L366+8
	sub	sp, sp, #32
	bl	puts
	ldr	ip, .L366+12
	mov	r4, ip
	ldmia	r4!, {r0, r1, r2, r3}
	add	r6, sp, #4
	mov	ip, r6
	stmia	ip!, {r0, r1, r2, r3}
	mov	r3, r0, asr #16
	rsb	lr, r3, #12864
	add	lr, lr, #3
	cmp	lr, #0
	mov	r5, r0
	movge	r3, r5, asl #16
	ldmia	r4, {r0, r1, r2}
	movlt	r3, r5, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	rsbge	r1, r3, lr
	addlt	r1, lr, r3
	movge	r2, #24576
	movlt	r2, #8192
	movge	r0, #8192
	movlt	r0, #24576
	cmp	r1, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r1, r1, r3, asr #16
	addlt	r1, r1, r3, asr #16
	addge	lr, r2, r0, lsr #2
	sublt	lr, r2, r0, lsr #2
	subge	r2, r0, r2, lsr #2
	addlt	r2, r0, r2, lsr #2
	cmp	r1, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r1
	addlt	r3, r3, r1
	subge	r1, r2, lr, asr #3
	addlt	r1, r2, lr, asr #3
	addge	ip, lr, r2, asr #3
	sublt	ip, lr, r2, asr #3
	cmp	r3, #0
	ldrge	r2, [sp, #12]
	ldrlt	r2, [sp, #12]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #4
	sublt	lr, ip, r1, asr #4
	subge	r1, r1, ip, asr #4
	addlt	r1, r1, ip, asr #4
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #5
	sublt	ip, lr, r1, asr #5
	subge	r1, r1, lr, asr #5
	addlt	r1, r1, lr, asr #5
	cmp	r3, #0
	ldrge	r2, [sp, #16]
	ldrlt	r2, [sp, #16]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #6
	sublt	lr, ip, r1, asr #6
	subge	r1, r1, ip, asr #6
	addlt	r1, r1, ip, asr #6
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #7
	sublt	ip, lr, r1, asr #7
	subge	r1, r1, lr, asr #7
	addlt	r1, r1, lr, asr #7
	cmp	r3, #0
	ldrge	r2, [sp, #20]
	ldrlt	r2, [sp, #20]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #8
	sublt	lr, ip, r1, asr #8
	subge	r1, r1, ip, asr #8
	addlt	r1, r1, ip, asr #8
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #9
	sublt	ip, lr, r1, asr #9
	subge	r1, r1, lr, asr #9
	addlt	r1, r1, lr, asr #9
	cmp	r3, #0
	ldrge	r2, [sp, #24]
	ldrlt	r2, [sp, #24]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	r4, ip, r1, asr #10
	sublt	r4, ip, r1, asr #10
	subge	r1, r1, ip, asr #10
	addlt	r1, r1, ip, asr #10
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r2, r3, r0
	addlt	r2, r3, r0
	addge	lr, r4, r1, asr #11
	sublt	lr, r4, r1, asr #11
	subge	r1, r1, r4, asr #11
	addlt	r1, r1, r4, asr #11
	cmp	r2, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r2, r3, asr #16
	subge	r3, r2, r3, asr #16
	sublt	ip, lr, r1, asr #12
	addge	ip, lr, r1, asr #12
	addlt	r0, r1, lr, asr #12
	subge	r0, r1, lr, asr #12
	cmp	r3, #0
	addlt	r0, r0, ip, asr #13
	subge	r0, r0, ip, asr #13
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L366
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L366+16
	bl	printf
	ldr	ip, .L366+12
	mov	r4, ip
	ldmia	r4!, {r0, r1, r2, r3}
	mov	r5, r6
	stmia	r5!, {r0, r1, r2, r3}
	ldr	lr, [sp, #4]
	mov	r3, lr, asr #16
	rsb	ip, r3, #8576
	add	ip, ip, #2
	cmp	ip, #0
	ldmia	r4, {r0, r1, r2}
	movge	r3, lr, asl #16
	movlt	r3, lr, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	stmia	r5, {r0, r1, r2}
	rsbge	r1, r3, ip
	addlt	r1, ip, r3
	movge	r2, #24576
	movlt	r2, #8192
	movge	r0, #8192
	movlt	r0, #24576
	cmp	r1, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r1, r1, r3, asr #16
	addlt	r1, r1, r3, asr #16
	addge	lr, r2, r0, lsr #2
	sublt	lr, r2, r0, lsr #2
	subge	r2, r0, r2, lsr #2
	addlt	r2, r0, r2, lsr #2
	cmp	r1, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r1
	addlt	r3, r3, r1
	subge	r1, r2, lr, asr #3
	addlt	r1, r2, lr, asr #3
	addge	ip, lr, r2, asr #3
	sublt	ip, lr, r2, asr #3
	cmp	r3, #0
	ldrge	r2, [sp, #12]
	ldrlt	r2, [sp, #12]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #4
	sublt	lr, ip, r1, asr #4
	subge	r1, r1, ip, asr #4
	addlt	r1, r1, ip, asr #4
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #5
	sublt	ip, lr, r1, asr #5
	subge	r1, r1, lr, asr #5
	addlt	r1, r1, lr, asr #5
	cmp	r3, #0
	ldrge	r2, [sp, #16]
	ldrlt	r2, [sp, #16]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #6
	sublt	lr, ip, r1, asr #6
	subge	r1, r1, ip, asr #6
	addlt	r1, r1, ip, asr #6
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #7
	sublt	ip, lr, r1, asr #7
	subge	r1, r1, lr, asr #7
	addlt	r1, r1, lr, asr #7
	cmp	r3, #0
	ldrge	r2, [sp, #20]
	ldrlt	r2, [sp, #20]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #8
	sublt	lr, ip, r1, asr #8
	subge	r1, r1, ip, asr #8
	addlt	r1, r1, ip, asr #8
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #9
	sublt	ip, lr, r1, asr #9
	subge	r1, r1, lr, asr #9
	addlt	r1, r1, lr, asr #9
	cmp	r3, #0
	ldrge	r2, [sp, #24]
	ldrlt	r2, [sp, #24]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	r4, ip, r1, asr #10
	sublt	r4, ip, r1, asr #10
	subge	r1, r1, ip, asr #10
	addlt	r1, r1, ip, asr #10
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r2, r3, r0
	addlt	r2, r3, r0
	addge	lr, r4, r1, asr #11
	sublt	lr, r4, r1, asr #11
	subge	r1, r1, r4, asr #11
	addlt	r1, r1, r4, asr #11
	cmp	r2, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r2, r3, asr #16
	subge	r3, r2, r3, asr #16
	sublt	ip, lr, r1, asr #12
	addge	ip, lr, r1, asr #12
	addlt	r0, r1, lr, asr #12
	subge	r0, r1, lr, asr #12
	cmp	r3, #0
	addlt	r0, r0, ip, asr #13
	subge	r0, r0, ip, asr #13
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L366
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L366+20
	bl	printf
	ldr	ip, .L366+12
	mov	r4, ip
	ldmia	r4!, {r0, r1, r2, r3}
	mov	r5, r6
	stmia	r5!, {r0, r1, r2, r3}
	ldr	lr, [sp, #4]
	mov	r3, lr, asr #16
	rsb	ip, r3, #4288
	add	ip, ip, #1
	cmp	ip, #0
	ldmia	r4, {r0, r1, r2}
	movge	r3, lr, asl #16
	movlt	r3, lr, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	stmia	r5, {r0, r1, r2}
	rsbge	r1, r3, ip
	addlt	r1, ip, r3
	movge	r2, #24576
	movlt	r2, #8192
	movge	r0, #8192
	movlt	r0, #24576
	cmp	r1, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r1, r1, r3, asr #16
	addlt	r1, r1, r3, asr #16
	addge	lr, r2, r0, lsr #2
	sublt	lr, r2, r0, lsr #2
	subge	r2, r0, r2, lsr #2
	addlt	r2, r0, r2, lsr #2
	cmp	r1, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r1
	addlt	r3, r3, r1
	subge	r1, r2, lr, asr #3
	addlt	r1, r2, lr, asr #3
	addge	ip, lr, r2, asr #3
	sublt	ip, lr, r2, asr #3
	cmp	r3, #0
	ldrge	r2, [sp, #12]
	ldrlt	r2, [sp, #12]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #4
	sublt	lr, ip, r1, asr #4
	subge	r1, r1, ip, asr #4
	addlt	r1, r1, ip, asr #4
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #5
	sublt	ip, lr, r1, asr #5
	subge	r1, r1, lr, asr #5
	addlt	r1, r1, lr, asr #5
	cmp	r3, #0
	ldrge	r2, [sp, #16]
	ldrlt	r2, [sp, #16]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #6
	sublt	lr, ip, r1, asr #6
	subge	r1, r1, ip, asr #6
	addlt	r1, r1, ip, asr #6
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #7
	sublt	ip, lr, r1, asr #7
	subge	r1, r1, lr, asr #7
	addlt	r1, r1, lr, asr #7
	cmp	r3, #0
	ldrge	r2, [sp, #20]
	ldrlt	r2, [sp, #20]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #8
	sublt	lr, ip, r1, asr #8
	subge	r1, r1, ip, asr #8
	addlt	r1, r1, ip, asr #8
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #9
	sublt	ip, lr, r1, asr #9
	subge	r1, r1, lr, asr #9
	b	.L367
.L368:
	.align	3
.L366:
	.word	59098750
	.word	1073371425
	.word	.LC0
	.word	.LANCHOR0
	.word	.LC1
	.word	.LC2
.L367:
	addlt	r1, r1, lr, asr #9
	cmp	r3, #0
	ldrge	r2, [sp, #24]
	ldrlt	r2, [sp, #24]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	r4, ip, r1, asr #10
	sublt	r4, ip, r1, asr #10
	subge	r1, r1, ip, asr #10
	addlt	r1, r1, ip, asr #10
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r2, r3, r0
	addlt	r2, r3, r0
	addge	lr, r4, r1, asr #11
	sublt	lr, r4, r1, asr #11
	subge	r1, r1, r4, asr #11
	addlt	r1, r1, r4, asr #11
	cmp	r2, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r2, r3, asr #16
	subge	r3, r2, r3, asr #16
	sublt	ip, lr, r1, asr #12
	addge	ip, lr, r1, asr #12
	addlt	r0, r1, lr, asr #12
	subge	r0, r1, lr, asr #12
	cmp	r3, #0
	addlt	r0, r0, ip, asr #13
	subge	r0, r0, ip, asr #13
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L369
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L369+8
	bl	printf
	ldr	r0, .L369+12
	bl	puts
	ldr	ip, .L369+16
	mov	r4, ip
	ldmia	r4!, {r0, r1, r2, r3}
	mov	r5, r6
	stmia	r5!, {r0, r1, r2, r3}
	ldr	lr, [sp, #4]
	mov	r3, lr, asr #16
	rsb	ip, r3, #12864
	add	ip, ip, #3
	cmp	ip, #0
	ldmia	r4, {r0, r1, r2}
	movge	r3, lr, asl #16
	movlt	r3, lr, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	stmia	r5, {r0, r1, r2}
	rsbge	r1, r3, ip
	addlt	r1, ip, r3
	movge	r2, #24576
	movlt	r2, #8192
	movge	r0, #8192
	movlt	r0, #24576
	cmp	r1, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r1, r1, r3, asr #16
	addlt	r1, r1, r3, asr #16
	addge	lr, r2, r0, lsr #2
	sublt	lr, r2, r0, lsr #2
	subge	r2, r0, r2, lsr #2
	addlt	r2, r0, r2, lsr #2
	cmp	r1, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r1
	addlt	r3, r3, r1
	subge	r1, r2, lr, asr #3
	addlt	r1, r2, lr, asr #3
	addge	ip, lr, r2, asr #3
	sublt	ip, lr, r2, asr #3
	cmp	r3, #0
	ldrge	r2, [sp, #12]
	ldrlt	r2, [sp, #12]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #4
	sublt	lr, ip, r1, asr #4
	subge	r1, r1, ip, asr #4
	addlt	r1, r1, ip, asr #4
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #5
	sublt	ip, lr, r1, asr #5
	subge	r1, r1, lr, asr #5
	addlt	r1, r1, lr, asr #5
	cmp	r3, #0
	ldrge	r2, [sp, #16]
	ldrlt	r2, [sp, #16]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #6
	sublt	lr, ip, r1, asr #6
	subge	r1, r1, ip, asr #6
	addlt	r1, r1, ip, asr #6
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #7
	sublt	ip, lr, r1, asr #7
	subge	r1, r1, lr, asr #7
	addlt	r1, r1, lr, asr #7
	cmp	r3, #0
	ldrge	r2, [sp, #20]
	ldrlt	r2, [sp, #20]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #8
	sublt	lr, ip, r1, asr #8
	subge	r1, r1, ip, asr #8
	addlt	r1, r1, ip, asr #8
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #9
	sublt	ip, lr, r1, asr #9
	subge	r1, r1, lr, asr #9
	addlt	r1, r1, lr, asr #9
	cmp	r3, #0
	ldrge	r2, [sp, #24]
	ldrlt	r2, [sp, #24]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	r4, ip, r1, asr #10
	sublt	r4, ip, r1, asr #10
	subge	r1, r1, ip, asr #10
	addlt	r1, r1, ip, asr #10
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r2, r3, r0
	addlt	r2, r3, r0
	addge	lr, r4, r1, asr #11
	sublt	lr, r4, r1, asr #11
	subge	r1, r1, r4, asr #11
	addlt	r1, r1, r4, asr #11
	cmp	r2, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r2, r3, asr #16
	subge	r3, r2, r3, asr #16
	sublt	ip, lr, r1, asr #12
	addge	ip, lr, r1, asr #12
	addlt	r0, r1, lr, asr #12
	subge	r0, r1, lr, asr #12
	cmp	r3, #0
	sublt	r0, ip, r0, asr #13
	addge	r0, ip, r0, asr #13
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L369
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L369+20
	bl	printf
	ldr	ip, .L369+16
	mov	r4, ip
	ldmia	r4!, {r0, r1, r2, r3}
	mov	r5, r6
	stmia	r5!, {r0, r1, r2, r3}
	ldr	lr, [sp, #4]
	mov	r3, lr, asr #16
	rsb	ip, r3, #8576
	add	ip, ip, #2
	cmp	ip, #0
	ldmia	r4, {r0, r1, r2}
	movge	r3, lr, asl #16
	movlt	r3, lr, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	stmia	r5, {r0, r1, r2}
	rsbge	r1, r3, ip
	addlt	r1, ip, r3
	movge	r2, #24576
	movlt	r2, #8192
	movge	r0, #8192
	movlt	r0, #24576
	cmp	r1, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r1, r1, r3, asr #16
	addlt	r1, r1, r3, asr #16
	addge	lr, r2, r0, lsr #2
	sublt	lr, r2, r0, lsr #2
	subge	r2, r0, r2, lsr #2
	addlt	r2, r0, r2, lsr #2
	cmp	r1, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r1
	addlt	r3, r3, r1
	subge	r1, r2, lr, asr #3
	addlt	r1, r2, lr, asr #3
	addge	ip, lr, r2, asr #3
	sublt	ip, lr, r2, asr #3
	cmp	r3, #0
	ldrge	r2, [sp, #12]
	ldrlt	r2, [sp, #12]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #4
	sublt	lr, ip, r1, asr #4
	subge	r1, r1, ip, asr #4
	addlt	r1, r1, ip, asr #4
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #5
	sublt	ip, lr, r1, asr #5
	subge	r1, r1, lr, asr #5
	addlt	r1, r1, lr, asr #5
	cmp	r3, #0
	ldrge	r2, [sp, #16]
	ldrlt	r2, [sp, #16]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #6
	sublt	lr, ip, r1, asr #6
	subge	r1, r1, ip, asr #6
	addlt	r1, r1, ip, asr #6
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #7
	sublt	ip, lr, r1, asr #7
	subge	r1, r1, lr, asr #7
	addlt	r1, r1, lr, asr #7
	cmp	r3, #0
	ldrge	r2, [sp, #20]
	ldrlt	r2, [sp, #20]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #8
	sublt	lr, ip, r1, asr #8
	subge	r1, r1, ip, asr #8
	addlt	r1, r1, ip, asr #8
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #9
	b	.L370
.L371:
	.align	3
.L369:
	.word	59098750
	.word	1073371425
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR0
	.word	.LC5
.L370:
	sublt	ip, lr, r1, asr #9
	subge	r1, r1, lr, asr #9
	addlt	r1, r1, lr, asr #9
	cmp	r3, #0
	ldrge	r2, [sp, #24]
	ldrlt	r2, [sp, #24]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	r4, ip, r1, asr #10
	sublt	r4, ip, r1, asr #10
	subge	r1, r1, ip, asr #10
	addlt	r1, r1, ip, asr #10
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r2, r3, r0
	addlt	r2, r3, r0
	addge	lr, r4, r1, asr #11
	sublt	lr, r4, r1, asr #11
	subge	r1, r1, r4, asr #11
	addlt	r1, r1, r4, asr #11
	cmp	r2, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r2, r3, asr #16
	subge	r3, r2, r3, asr #16
	sublt	ip, lr, r1, asr #12
	addge	ip, lr, r1, asr #12
	addlt	r0, r1, lr, asr #12
	subge	r0, r1, lr, asr #12
	cmp	r3, #0
	sublt	r0, ip, r0, asr #13
	addge	r0, ip, r0, asr #13
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L372
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L372+16
	bl	printf
	ldr	ip, .L372+20
	mov	r4, ip
	ldmia	r4!, {r0, r1, r2, r3}
	mov	r5, r6
	stmia	r5!, {r0, r1, r2, r3}
	ldr	lr, [sp, #4]
	mov	r3, lr, asr #16
	rsb	ip, r3, #4288
	add	ip, ip, #1
	cmp	ip, #0
	ldmia	r4, {r0, r1, r2}
	movge	r3, lr, asl #16
	movlt	r3, lr, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	stmia	r5, {r0, r1, r2}
	rsbge	r1, r3, ip
	addlt	r1, ip, r3
	movge	r2, #24576
	movlt	r2, #8192
	movge	r0, #8192
	movlt	r0, #24576
	cmp	r1, #0
	ldrge	r3, [sp, #8]
	ldrlt	r3, [sp, #8]
	subge	r1, r1, r3, asr #16
	addlt	r1, r1, r3, asr #16
	addge	lr, r2, r0, lsr #2
	sublt	lr, r2, r0, lsr #2
	subge	r2, r0, r2, lsr #2
	addlt	r2, r0, r2, lsr #2
	cmp	r1, #0
	movge	r3, r3, asl #16
	movlt	r3, r3, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r1
	addlt	r3, r3, r1
	subge	r1, r2, lr, asr #3
	addlt	r1, r2, lr, asr #3
	addge	ip, lr, r2, asr #3
	sublt	ip, lr, r2, asr #3
	cmp	r3, #0
	ldrge	r2, [sp, #12]
	ldrlt	r2, [sp, #12]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #4
	sublt	lr, ip, r1, asr #4
	subge	r1, r1, ip, asr #4
	addlt	r1, r1, ip, asr #4
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #5
	sublt	ip, lr, r1, asr #5
	subge	r1, r1, lr, asr #5
	addlt	r1, r1, lr, asr #5
	cmp	r3, #0
	ldrge	r2, [sp, #16]
	ldrlt	r2, [sp, #16]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #6
	sublt	lr, ip, r1, asr #6
	subge	r1, r1, ip, asr #6
	addlt	r1, r1, ip, asr #6
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #7
	sublt	ip, lr, r1, asr #7
	subge	r1, r1, lr, asr #7
	addlt	r1, r1, lr, asr #7
	cmp	r3, #0
	ldrge	r2, [sp, #20]
	ldrlt	r2, [sp, #20]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	lr, ip, r1, asr #8
	sublt	lr, ip, r1, asr #8
	subge	r1, r1, ip, asr #8
	addlt	r1, r1, ip, asr #8
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r3, r3, r0
	addlt	r3, r3, r0
	addge	ip, lr, r1, asr #9
	sublt	ip, lr, r1, asr #9
	subge	r1, r1, lr, asr #9
	addlt	r1, r1, lr, asr #9
	cmp	r3, #0
	ldrge	r2, [sp, #24]
	ldrlt	r2, [sp, #24]
	subge	r0, r3, r2, asr #16
	addlt	r0, r3, r2, asr #16
	addge	r4, ip, r1, asr #10
	sublt	r4, ip, r1, asr #10
	subge	r1, r1, ip, asr #10
	addlt	r1, r1, ip, asr #10
	cmp	r0, #0
	movge	r3, r2, asl #16
	movlt	r3, r2, asl #16
	movge	r3, r3, lsr #16
	movlt	r3, r3, lsr #16
	rsbge	r2, r3, r0
	addlt	r2, r3, r0
	addge	lr, r4, r1, asr #11
	sublt	lr, r4, r1, asr #11
	subge	r1, r1, r4, asr #11
	addlt	r1, r1, r4, asr #11
	cmp	r2, #0
	ldrlt	r3, [sp, #28]
	ldrge	r3, [sp, #28]
	addlt	r3, r2, r3, asr #16
	subge	r3, r2, r3, asr #16
	sublt	ip, lr, r1, asr #12
	addge	ip, lr, r1, asr #12
	addlt	r0, r1, lr, asr #12
	subge	r0, r1, lr, asr #12
	cmp	r3, #0
	sublt	r0, ip, r0, asr #13
	addge	r0, ip, r0, asr #13
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L372
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	ldr	r5, .L372+24
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L372+28
	bl	printf
	ldr	r0, .L372+32
	bl	puts
	ldmia	r5!, {r0, r1, r2, r3}
	mov	ip, r6
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r4, [sp, #4]
	ldmia	r5, {r0, r1, r2}
	ldr	r6, [sp, #8]
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	add	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	sub	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	rsb	r3, r1, r3
	mov	r2, ip, asl #16
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	add	r3, r3, r2
	mov	r1, r0, asl #16
	add	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	add	r3, r3, r1
	ldr	r1, [sp, #28]
	add	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	add	r3, r3, r2
	mov	r0, r1, asl #16
	sub	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	add	r0, r3, r0
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L372+8
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L372+36
	bl	printf
	sub	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	mov	r4, r0
	ldr	r6, [sp, #8]
	mov	r3, r0, asl #16
	ldmia	r5, {r0, r1, r2}
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	rsb	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	add	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	add	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	rsb	r3, r1, r3
	mov	r2, ip, asl #16
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	add	r3, r3, r2
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	add	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	add	r3, r3, r2
	mov	r0, r1, asl #16
	add	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	add	r0, r3, r0
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	b	.L373
.L374:
	.align	3
.L372:
	.word	59098750
	.word	1073371425
	.word	1293080650
	.word	1074340347
	.word	.LC6
	.word	.LANCHOR0
	.word	.LANCHOR0+28
	.word	.LC7
	.word	.LC8
	.word	.LC9
.L373:
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L375
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L375+8
	bl	printf
	sub	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	mov	r4, r0
	ldr	r6, [sp, #8]
	mov	r3, r0, asl #16
	ldmia	r5, {r0, r1, r2}
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	rsb	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	add	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	rsb	r3, r1, r3
	mov	r2, ip, asl #16
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	add	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	rsb	r3, r2, r3
	mov	r0, r1, asl #16
	sub	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	add	r0, r3, r0
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L375
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L375+12
	bl	printf
	sub	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	mov	r4, r0
	ldr	r6, [sp, #8]
	mov	r3, r0, asl #16
	ldmia	r5, {r0, r1, r2}
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	add	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	sub	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	add	r3, r3, r2
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	add	r3, r3, r1
	mov	r2, ip, asl #16
	add	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	add	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	rsb	r3, r1, r3
	ldr	r1, [sp, #28]
	add	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	rsb	r3, r2, r3
	mov	r0, r1, asl #16
	sub	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	rsb	r0, r0, r3
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L375
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L375+16
	bl	printf
	sub	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	mov	r4, r0
	ldr	r6, [sp, #8]
	mov	r3, r0, asl #16
	ldmia	r5, {r0, r1, r2}
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	add	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	add	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	rsb	r3, r1, r3
	mov	r2, ip, asl #16
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	add	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	rsb	r3, r2, r3
	mov	r0, r1, asl #16
	sub	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	add	r0, r3, r0
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L375
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L375+20
	bl	printf
	ldr	r0, .L375+24
	bl	puts
	sub	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	mov	r4, r0
	ldr	r6, [sp, #8]
	mov	r3, r0, asl #16
	ldmia	r5, {r0, r1, r2}
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	add	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	sub	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	rsb	r3, r1, r3
	mov	r2, ip, asl #16
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	add	r3, r3, r2
	mov	r1, r0, asl #16
	add	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	add	r3, r3, r1
	ldr	r1, [sp, #28]
	add	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	add	r3, r3, r2
	mov	r0, r1, asl #16
	sub	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	add	r0, r3, r0
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L375
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L375+28
	bl	printf
	sub	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	mov	r4, r0
	ldr	r6, [sp, #8]
	mov	r3, r0, asl #16
	ldmia	r5, {r0, r1, r2}
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	add	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	sub	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	add	r3, r3, r2
	mov	r1, r0, asl #16
	b	.L376
.L377:
	.align	3
.L375:
	.word	1293080650
	.word	1074340347
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
.L376:
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	add	r3, r3, r1
	mov	r2, ip, asl #16
	add	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	add	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	rsb	r3, r1, r3
	ldr	r1, [sp, #28]
	add	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	rsb	r3, r2, r3
	mov	r0, r1, asl #16
	sub	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	rsb	r0, r0, r3
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L378
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L378+8
	bl	printf
	sub	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	mov	r4, r0
	ldr	r6, [sp, #8]
	mov	r3, r0, asl #16
	ldmia	r5, {r0, r1, r2}
	mov	r3, r3, lsr #16
	stmia	ip, {r0, r1, r2}
	add	r3, r3, r4, asr #16
	ldr	r0, [sp, #12]
	mov	r2, r6, asl #16
	add	r3, r3, r6, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #16]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	ldr	r0, [sp, #20]
	rsb	r3, r1, r3
	mov	r2, ip, asl #16
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #24]
	rsb	r3, r2, r3
	mov	r1, r0, asl #16
	sub	r3, r3, r0, asr #16
	mov	r1, r1, lsr #16
	mov	r2, ip, asl #16
	add	r3, r3, r1
	ldr	r1, [sp, #28]
	sub	r3, r3, ip, asr #16
	mov	r2, r2, lsr #16
	rsb	r3, r2, r3
	mov	r0, r1, asl #16
	sub	r3, r3, r1, asr #16
	mov	r0, r0, lsr #16
	add	r0, r3, r0
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	mov	r1, #1124073472
	add	r1, r1, #3407872
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	adr	r3, .L378
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	bl	__aeabi_d2f
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L378+12
	bl	printf
	mov	r0, #0
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L379:
	.align	3
.L378:
	.word	1293080650
	.word	1074340347
	.word	.LC16
	.word	.LC17
	.size	main, .-main
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.11.2306, %object
	.size	C.11.2306, 28
C.11.2306:
	.word	843259308
	.word	262998005
	.word	66978303
	.word	16711807
	.word	4128799
	.word	983047
	.word	196609
	.type	C.19.2336, %object
	.size	C.19.2336, 28
C.19.2336:
	.word	843259308
	.word	262998005
	.word	66978303
	.word	16711807
	.word	4128799
	.word	983047
	.word	196609
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
	.ascii	"Cos(15deg): %.15lf\012\000"
.LC4:
	.ascii	"TESTING: Sine:\000"
	.space	1
.LC5:
	.ascii	"Sin(45deg): %.15lf\012\000"
.LC6:
	.ascii	"Sin(30deg): %.15lf\012\000"
.LC7:
	.ascii	"Sin(15deg): %.15lf\012\000"
.LC8:
	.ascii	"TESTING: Arctan Y/X:\000"
	.space	3
.LC9:
	.ascii	"Arctan(1/1): %.15lf\012\000"
	.space	3
.LC10:
	.ascii	"Arctan(1/2): %.15lf\012\000"
	.space	3
.LC11:
	.ascii	"Arctan(1/3): %.15lf\012\000"
	.space	3
.LC12:
	.ascii	"Arctan(2/1): %.15lf\012\000"
	.space	3
.LC13:
	.ascii	"Arctan(3/1): %.15lf\012\000"
	.space	3
.LC14:
	.ascii	"TESTING: Arctan X:\000"
	.space	1
.LC15:
	.ascii	"Arctan(1): %.15lf\012\000"
	.space	1
.LC16:
	.ascii	"Arctan(2): %.15lf\012\000"
	.space	1
.LC17:
	.ascii	"Arctan(3): %.15lf\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
