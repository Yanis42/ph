    .include "macros/function.inc"
    .include "ov00/ov00_020b1498.inc"

	.text

	.global func_ov00_020b1498
	arm_func_start func_ov00_020b1498
func_ov00_020b1498: ; 0x020b1498
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r2, lsl #0x10
	mov r4, r4, lsr #0x10
	mov r4, r4, asr #0x4
	mov r6, r0
	mov r0, r2
	mov r7, r4, lsl #0x1
	mov r5, r1
	mov r4, r3
	bl func_0202bbbc
	add r1, r7, #1
	mov lr, r0
	mov ip, r7, lsl #0x1
	mov r2, r1, lsl #0x1
	mov r0, #0
	str r0, [sp]
	mov r0, #9
	ldr r1, _020b1520 ; =data_ov00_020dc6ec
	ldr r3, _020b1524 ; =data_02050f54
	add r1, r1, lr, lsl #1
	ldrb r1, [r4, r1]
	ldrsh r4, [r3, ip]
	ldrsh r3, [r3, r2]
	mov r2, #0x30
	smulbb ip, r4, r2
	smulbb r4, r3, r2
	mov r2, ip, asr #0xb
	add r2, ip, r2, lsr #20
	add r2, r6, r2, asr #12
	mov r3, r4, asr #0xb
	add r3, r4, r3, lsr #20
	add r3, r5, r3, asr #12
	bl func_02034984
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b1498
_020b1520: .word data_ov00_020dc6ec
_020b1524: .word data_02050f54

	.global func_ov00_020b1528
	thumb_func_start func_ov00_020b1528
func_ov00_020b1528: ; 0x020b1528
	ldr r1, _020b1538 ; =data_ov00_020e6158
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	str r1, [r0, #0x14]
	bx lr
	nop
	thumb_func_end func_ov00_020b1528
_020b1538: .word data_ov00_020e6158

	.global func_ov00_020b153c
	thumb_func_start func_ov00_020b153c
func_ov00_020b153c: ; 0x020b153c
	ldr r1, _020b154c ; =data_ov00_020e6158
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	str r1, [r0, #0x14]
	bx lr
	nop
	thumb_func_end func_ov00_020b153c
_020b154c: .word data_ov00_020e6158

	.global func_ov00_020b1550
	thumb_func_start func_ov00_020b1550
func_ov00_020b1550: ; 0x020b1550
	push {r4, lr}
	add r4, r0, #0
	blx func_ov00_02081f4c
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end func_ov00_020b1550

	.global func_ov00_020b155c
	thumb_func_start func_ov00_020b155c
func_ov00_020b155c: ; 0x020b155c
	push {r4, lr}
	add r4, r0, #0
	blx func_ov00_02081f4c
	add r0, r4, #0
	blx _ZN9SysObjectdlEPv
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020b155c

	.global func_ov00_020b1570
	thumb_func_start func_ov00_020b1570
func_ov00_020b1570: ; 0x020b1570
	push {r4, lr}
	add r4, r0, #0
	blx func_ov00_02081f4c
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end func_ov00_020b1570

	.global func_ov00_020b157c
	arm_func_start func_ov00_020b157c
func_ov00_020b157c: ; 0x020b157c
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	str r1, [r0, #0x14]
	sub r1, r1, #1
	str r1, [r0, #0x18]
	bx lr
	arm_func_end func_ov00_020b157c

	.global func_ov00_020b1598
	arm_func_start func_ov00_020b1598
func_ov00_020b1598: ; 0x020b1598
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b1598

	.global func_ov00_020b15a0
	arm_func_start func_ov00_020b15a0
func_ov00_020b15a0: ; 0x020b15a0
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b15a0

	.global func_ov00_020b15a8
	arm_func_start func_ov00_020b15a8
func_ov00_020b15a8: ; 0x020b15a8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq r2, #0
	ldrne r2, [r0, #0xc]
	mov r0, r4
	ldr r1, [r0]
	str r2, [sp]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x5f
	bgt _020b1644
	bge _020b1694
	cmp r0, #0x27
	bgt _020b1618
	bge _020b1694
	cmp r0, #0xf
	bgt _020b160c
	beq _020b1694
	b _020b16e0
_020b160c:
	cmp r0, #0x1a
	beq _020b1694
	b _020b16e0
_020b1618:
	cmp r0, #0x2e
	bgt _020b1628
	beq _020b1694
	b _020b16e0
_020b1628:
	cmp r0, #0x3d
	bgt _020b16e0
	cmp r0, #0x3c
	blt _020b16e0
	cmpne r0, #0x3d
	beq _020b1694
	b _020b16e0
_020b1644:
	cmp r0, #0x72
	bgt _020b167c
	bge _020b1694
	cmp r0, #0x65
	bgt _020b1670
	cmp r0, #0x61
	blt _020b16e0
	cmpne r0, #0x64
	cmpne r0, #0x65
	beq _020b1694
	b _020b16e0
_020b1670:
	cmp r0, #0x71
	beq _020b1694
	b _020b16e0
_020b167c:
	cmp r0, #0x94
	bgt _020b168c
	beq _020b1694
	b _020b16e0
_020b168c:
	cmp r0, #0x99
	bne _020b16e0
_020b1694:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	mov r1, r0, lsr #0x10
	tst r1, #0x3f
	strne r0, [r5, #0x14]
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x1a
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020b16e0:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	cmp r0, #0
	beq _020b1738
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	strh r0, [r5, #4]
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x68]
	blx r1
	strb r0, [r5, #6]
	mov r0, r4
	add r1, r5, #8
	bl func_ov00_0208b988
	add r0, r5, #8
	mov r1, r0
	bl func_01ff9d4c
_020b1738:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b15a8

	.global func_ov00_020b1740
	arm_func_start func_ov00_020b1740
func_ov00_020b1740: ; 0x020b1740
	stmdb sp!, {r3}
	sub sp, sp, #4
	ldr r3, _020b1788 ; =data_027e0f6c
	ldrh r1, [r1]
	ldr r3, [r3]
	ldr r3, [r3, #0x40]
	ldr r1, [r3, r1, lsl #2]
	cmp r1, #0
	beq _020b1778
	ldr r3, [r1, #0xc]
	mov r1, r3, lsr #0x10
	tst r1, #0x3f
	strne r3, [r0, #0x14]
	strne r2, [r0, #0x18]
_020b1778:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b1740
_020b1788: .word data_027e0f6c

	.global func_ov00_020b178c
	arm_func_start func_ov00_020b178c
func_ov00_020b178c: ; 0x020b178c
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	ldr r3, _020b17e8 ; =data_027e0e60
	ldrb r1, [sp, #0xc]
	mov r4, r0
	ldrb r2, [sp, #0xd]
	ldr r0, [r3]
	bl func_ov00_02083e34
	cmp r0, r4
	bgt _020b17d8
	ldr r0, _020b17e8 ; =data_027e0e60
	add r1, sp, #0xc
	ldr r0, [r0]
	bl func_ov00_020840c4
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020b17d8:
	mov r0, #0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b178c
_020b17e8: .word data_027e0e60

	.global func_ov00_020b17ec
	arm_func_start func_ov00_020b17ec
func_ov00_020b17ec: ; 0x020b17ec
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x6c
	ldrh r1, [sp, #0x88]
	mov r4, r0
	ldr r2, _020b18d4 ; =data_02050f54
	mov r0, r1, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	mov r1, r1, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r0, sp, #0x48
	blx func_01ff81f8
	ldrh r1, [sp, #0x8c]
	ldr r3, _020b18d4 ; =data_02050f54
	add r0, sp, #0x24
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	mov ip, r2, lsl #0x1
	mov r2, r1, lsl #0x1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	blx func_01ff8214
	add r0, sp, #0x48
	add r1, sp, #0x24
	mov r2, r0
	bl func_01ff8690
	ldrh r1, [sp, #0x90]
	ldr r3, _020b18d4 ; =data_02050f54
	add r0, sp, #0
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	add r2, r2, #1
	mov r2, r2, lsl #0x1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	blx func_01ff8230
	add r0, sp, #0x48
	add r1, sp, #0
	mov r2, r0
	bl func_01ff8690
	add r0, sp, #0x48
	mov r1, r4
	bl func_01ff80f8
	ldr r1, [sp, #0x7c]
	ldr r0, [sp, #0x80]
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x84]
	str r0, [r4, #0x2c]
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b17ec
_020b18d4: .word data_02050f54

	.global func_ov00_020b18d8
	arm_func_start func_ov00_020b18d8
func_ov00_020b18d8: ; 0x020b18d8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, r1
	add r1, sp, #0
	mov r5, r2
	bl func_01ff9d4c
	add r1, sp, #0
	mov r0, r4
	bl func_01ff9c2c
	cmp r0, #0
	addge sp, sp, #0xc
	ldmgeia sp!, {r4, r5, pc}
	add r1, r5, #0x1000
	rsb r1, r1, #0
	smull r2, r1, r0, r1
	adds r0, r2, #0x800
	adc ip, r1, #0
	mov r0, r0, lsr #0xc
	add r1, sp, #0
	mov r2, r4
	mov r3, r4
	orr r0, r0, ip, lsl #20
	bl func_01ff9e64
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end func_ov00_020b18d8

	.global func_ov00_020b1940
	arm_func_start func_ov00_020b1940
func_ov00_020b1940: ; 0x020b1940
	cmp r0, #0x42
	bgt _020b1974
	bge _020b198c
	cmp r0, #5
	bgt _020b1968
	cmp r0, #1
	blt _020b1994
	cmpne r0, #5
	beq _020b198c
	b _020b1994
_020b1968:
	cmp r0, #0x38
	beq _020b198c
	b _020b1994
_020b1974:
	cmp r0, #0x61
	bgt _020b1984
	beq _020b198c
	b _020b1994
_020b1984:
	cmp r0, #0x81
	bne _020b1994
_020b198c:
	mov r0, #1
	bx lr
_020b1994:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020b1940

	.global func_ov00_020b199c
	arm_func_start func_ov00_020b199c
func_ov00_020b199c: ; 0x020b199c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bmi _020b19e4
	ldr r0, _020b1a48 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_0208335c
	cmp r0, r6
	ble _020b19e4
	cmp r5, #0
	blt _020b19e4
	ldr r0, _020b1a48 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083368
	cmp r0, r5
	bgt _020b19f0
_020b19e4:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_020b19f0:
	ldr r0, _020b1a48 ; =data_027e0e60
	add r1, sp, #0
	ldr r0, [r0]
	strb r6, [sp]
	strb r5, [sp, #1]
	bl func_ov00_020840c4
	cmp r0, #0
	beq _020b1a30
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	blx r4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_020b1a30:
	ldr r0, _020b1a48 ; =data_027e0e60
	add r1, sp, #0
	ldr r0, [r0]
	bl func_ov00_02084164
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020b199c
_020b1a48: .word data_027e0e60

	.global func_ov00_020b1a4c
	arm_func_start func_ov00_020b1a4c
func_ov00_020b1a4c: ; 0x020b1a4c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xc0
	ldr r2, _020b1b48 ; =data_027e0e60
	mov r8, r1
	mov sb, r0
	ldr r0, [r2]
	ldr r1, [r8]
	bl func_ov00_020839d4
	ldr r1, _020b1b48 ; =data_027e0e60
	mov r5, r0
	ldr r0, [r1]
	ldr r1, [r8, #8]
	bl func_ov00_020839f8
	mov r6, r0
	ldr r0, [r8]
	ldr r2, _020b1b4c ; =func_ov00_020b1940
	str r0, [sb]
	ldr r1, [r8, #4]
	mov r0, r5
	str r1, [sb, #4]
	ldr r3, [r8, #8]
	mov r1, r6
	str r3, [sb, #8]
	bl func_ov00_020b199c
	cmp r0, #0
	addne sp, sp, #0xc0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr sl, _020b1b50 ; =data_ov00_020dc704
	add r7, sp, #0
	mov r4, #0xc
_020b1ac4:
	ldmia sl!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020b1ac4
	ldr sl, _020b1b4c ; =func_ov00_020b1940
	mov r7, #0
	add r4, sp, #0
_020b1ae0:
	add r0, r4, r7, lsl #3
	ldr r3, [r4, r7, lsl #3]
	ldr r1, [r0, #4]
	mov r2, sl
	add r0, r5, r3
	add r1, r6, r1
	bl func_ov00_020b199c
	cmp r0, #0
	beq _020b1b34
	add r0, sp, #0
	ldr r1, [r0, r7, lsl #3]
	ldr r2, [r8]
	add r0, sp, #4
	add r1, r2, r1, lsl #12
	str r1, [sb]
	ldr r1, [r8, #8]
	ldr r0, [r0, r7, lsl #3]
	add sp, sp, #0xc0
	add r0, r1, r0, lsl #12
	str r0, [sb, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020b1b34:
	add r7, r7, #1
	cmp r7, #0x18
	blt _020b1ae0
	add sp, sp, #0xc0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020b1a4c
_020b1b48: .word data_027e0e60
_020b1b4c: .word func_ov00_020b1940
_020b1b50: .word data_ov00_020dc704

	.global func_ov00_020b1b54
	arm_func_start func_ov00_020b1b54
func_ov00_020b1b54: ; 0x020b1b54
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r0, _020b1ba0 ; =data_027e0e60
	ldrb r1, [sp, #8]
	ldrb r2, [sp, #9]
	ldr r0, [r0]
	bl func_ov00_020840a0
	cmp r0, #0x18
	cmpne r0, #0x2c
	cmpne r0, #0x2d
	bne _020b1b90
	mov r0, #1
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_020b1b90:
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b1b54
_020b1ba0: .word data_027e0e60

	.global func_ov00_020b1ba4
	arm_func_start func_ov00_020b1ba4
func_ov00_020b1ba4: ; 0x020b1ba4
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r2, [r0]
	ldr r1, _020b1bf8 ; =data_027e0e60
	str r2, [sp, #4]
	ldr r2, [r0, #4]
	ldr r1, [r1]
	str r2, [sp, #8]
	ldr r3, [r0, #8]
	add r0, sp, #0
	add r2, sp, #4
	str r3, [sp, #0xc]
	bl func_ov00_02083fb0
	ldr r0, [sp]
	mov r0, r0, lsr #0x9
	and r0, r0, #3
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b1ba4
_020b1bf8: .word data_027e0e60

	.global func_ov00_020b1bfc
	arm_func_start func_ov00_020b1bfc
func_ov00_020b1bfc: ; 0x020b1bfc
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldrb r5, [sp, #0x1d]
	ldrb r6, [sp, #0x1c]
	ldr r1, _020b1d38 ; =data_027e0e60
	mov r7, r0
	ldr r0, [r1]
	mov r1, r6
	mov r2, r5
	bl func_ov00_02083e34
	ldrb r2, [sp, #0x1c]
	add r1, r5, #1
	sub r3, sp, #4
	strb r2, [r7]
	strb r1, [r7, #1]
	ldrb r2, [r7]
	and r1, r1, #0xff
	mov r4, r0
	strb r2, [r3]
	strb r1, [r3, #1]
	ldr r1, [r3]
	bl func_ov00_020b178c
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, r6, #1
	strb r0, [r7]
	strb r5, [r7, #1]
	ldrb r1, [r7]
	sub r2, sp, #4
	and r0, r5, #0xff
	strb r1, [r2]
	strb r0, [r2, #1]
	ldr r1, [r2]
	mov r0, r4
	bl func_ov00_020b178c
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, lr}
	addne sp, sp, #0x10
	bxne lr
	sub r0, r6, #1
	strb r0, [r7]
	strb r5, [r7, #1]
	ldrb r1, [r7]
	sub r2, sp, #4
	and r0, r5, #0xff
	strb r1, [r2]
	strb r0, [r2, #1]
	ldr r1, [r2]
	mov r0, r4
	bl func_ov00_020b178c
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, lr}
	addne sp, sp, #0x10
	bxne lr
	ldrb r1, [sp, #0x1c]
	sub r0, r5, #1
	sub r3, sp, #4
	strb r1, [r7]
	strb r0, [r7, #1]
	ldrb r2, [r7]
	and r1, r0, #0xff
	mov r0, r4
	strb r2, [r3]
	strb r1, [r3, #1]
	ldr r1, [r3]
	bl func_ov00_020b178c
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, lr}
	addne sp, sp, #0x10
	bxne lr
	ldrb r1, [sp, #0x1c]
	ldrb r0, [sp, #0x1d]
	strb r1, [r7]
	strb r0, [r7, #1]
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b1bfc
_020b1d38: .word data_027e0e60

	.global func_ov00_020b1d3c
	arm_func_start func_ov00_020b1d3c
func_ov00_020b1d3c: ; 0x020b1d3c
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x30
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	bl func_0201b1bc
	bl func_02018450
	mov r1, r0
	add r0, sp, #0x24
	mov r2, r4
	bl func_01ff9158
	add sp, sp, #0x30
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b1d3c

	.global func_ov00_020b1d70
	arm_func_start func_ov00_020b1d70
func_ov00_020b1d70: ; 0x020b1d70
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	ldr r3, _020b1e10 ; =data_027e0ff0
	mvn r5, #0
	strb r0, [sp, #0x14]
	mov lr, #1
	mov ip, #0
	ldr r6, _020b1e14 ; =data_ov00_020e8398
	ldr r0, [r3]
	mov r4, r2
	add r2, sp, #0x10
	add r3, sp, #0
	str r6, [sp, #0x10]
	strb lr, [sp, #0x15]
	strb ip, [sp, #0x16]
	strb ip, [sp, #0x17]
	strb lr, [sp, #0x2c]
	strb r5, [sp]
	strb r5, [sp, #1]
	strb r5, [sp, #2]
	strb r5, [sp, #3]
	bl func_ov00_020c4ae8
	cmp r0, #0
	beq _020b1e04
	cmp r4, #0
	beq _020b1de8
	ldrsb r0, [sp]
	strb r0, [r4]
	ldrsb r0, [sp, #1]
	strb r0, [r4, #1]
_020b1de8:
	ldr r0, _020b1e10 ; =data_027e0ff0
	ldrb r1, [sp]
	ldr r0, [r0]
	add sp, sp, #0x30
	ldr r0, [r0]
	add r0, r0, r1, lsl #3
	ldmia sp!, {r4, r5, r6, pc}
_020b1e04:
	mov r0, #0
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020b1d70
_020b1e10: .word data_027e0ff0
_020b1e14: .word data_ov00_020e8398

	.global func_ov00_020b1e18
	arm_func_start func_ov00_020b1e18
func_ov00_020b1e18: ; 0x020b1e18
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	ldr r3, [r1]
	subs ip, ip, r3
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	rsbmi ip, ip, #0
	subs lr, r3, r0
	rsbmi lr, lr, #0
	cmp ip, r2
	cmplt lr, r2
	movge r0, #0
	ldmgeia sp!, {r3, pc}
	mul r3, r2, r2
	mul r1, ip, ip
	mul r0, lr, lr
	sub r1, r3, r1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b1e18

	.global func_ov00_020b1e6c
	thumb_func_start func_ov00_020b1e6c
func_ov00_020b1e6c: ; 0x020b1e6c
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020b1e6c

	.global func_ov00_020b1e70
	arm_func_start func_ov00_020b1e70
func_ov00_020b1e70: ; 0x020b1e70
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #0x20]
	bl func_02037844
	ldr r0, _020b1e94 ; =data_027e0c68
	mov r1, r4
	bl func_02036d30
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b1e70
_020b1e94: .word data_027e0c68

	.global func_ov00_020b1e98
	arm_func_start func_ov00_020b1e98
func_ov00_020b1e98: ; 0x020b1e98
	ldr r1, _020b1eb0 ; =data_027e0f74
	mov r2, r0
	ldr r0, [r1]
	ldr ip, _020b1eb4 ; =func_ov00_02097b9c
	ldr r1, [r2, #0x38]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b1e98
_020b1eb0: .word data_027e0f74
_020b1eb4: .word func_ov00_02097b9c

	.global func_ov00_020b1eb8
	arm_func_start func_ov00_020b1eb8
func_ov00_020b1eb8: ; 0x020b1eb8
	ldr r1, [r0, #4]
	mov r2, #0
	cmp r1, #3
	mov r3, #1
	cmpne r1, #4
	movne r3, r2
	cmp r3, #0
	beq _020b1ee4
	ldr r0, [r0, #0x60]
	cmp r0, #0xfd
	moveq r2, #1
_020b1ee4:
	mov r0, r2
	bx lr
	arm_func_end func_ov00_020b1eb8

	.global func_ov00_020b1eec
	arm_func_start func_ov00_020b1eec
func_ov00_020b1eec: ; 0x020b1eec
	ldr r1, [r0, #4]
	cmp r1, #3
	beq _020b1f04
	cmp r1, #4
	beq _020b1f34
	b _020b1f3c
_020b1f04:
	ldr r1, [r0, #0x60]
	cmp r1, #0x12
	cmpne r1, #0x18
	cmpne r1, #0x19
	bne _020b1f2c
	ldrsh r0, [r0, #0x80]
	cmp r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
_020b1f2c:
	mov r0, #0
	bx lr
_020b1f34:
	mov r0, #0
	bx lr
_020b1f3c:
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b1eec

	.global func_ov00_020b1f44
	thumb_func_start func_ov00_020b1f44
func_ov00_020b1f44: ; 0x020b1f44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add r0, r5, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add r0, r5, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add r0, r5, #0
	ldr r6, _020b2074 ; =data_ov00_020e6380
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	ldr r3, [r0]
	ldr r1, _020b2078 ; =0x4c474e52
	ldr r2, _020b207c ; =data_ov00_020e61c4
	ldr r3, [r3, #0x3c]
	add r4, r0, #0
	blx r3
	ldr r0, _020b207c ; =data_ov00_020e61c4
	mov r1, #0
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	lsl r0, r0, #0xa
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r4, #0
	ldr r4, [r0]
	ldr r3, _020b2078 ; =0x4c474e52
	ldr r4, [r4, #0x34]
	mov r1, #1
	add r2, r6, #0
	blx r4
	add r0, r5, #0
	ldr r6, _020b2080 ; =data_ov00_020e6398
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	ldr r3, [r0]
	ldr r1, _020b2084 ; =0x4c494754
	ldr r2, _020b2088 ; =data_ov00_020e61b4
	ldr r3, [r3, #0x3c]
	add r4, r0, #0
	blx r3
	ldr r0, _020b2088 ; =data_ov00_020e61b4
	mov r1, #8
	str r0, [sp]
	ldr r0, _020b208c ; =0xfffff000
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r1, #9
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	ldr r4, [r0]
	ldr r3, _020b2084 ; =0x4c494754
	ldr r4, [r4, #0x34]
	mov r1, #1
	add r2, r6, #0
	blx r4
	add r0, r5, #0
	ldr r6, _020b2090 ; =data_ov00_020e63a8
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	ldr r3, [r0]
	ldr r1, _020b2084 ; =0x4c494754
	ldr r2, _020b2094 ; =data_ov00_020e61b8
	ldr r3, [r3, #0x3c]
	add r4, r0, #0
	blx r3
	ldr r0, _020b2094 ; =data_ov00_020e61b8
	mov r1, #0
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	lsl r0, r0, #0xa
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r4, #0
	ldr r4, [r0]
	ldr r3, _020b2084 ; =0x4c494754
	ldr r4, [r4, #0x34]
	mov r1, #1
	add r2, r6, #0
	blx r4
	add r0, r5, #0
	ldr r6, _020b2098 ; =data_ov00_020e63b8
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	ldr r3, [r0]
	ldr r1, _020b2084 ; =0x4c494754
	ldr r2, _020b209c ; =data_ov00_020e61bc
	ldr r3, [r3, #0x3c]
	add r4, r0, #0
	blx r3
	ldr r0, _020b209c ; =data_ov00_020e61bc
	mov r1, #8
	str r0, [sp]
	ldr r0, _020b208c ; =0xfffff000
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r1, #9
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	ldr r4, [r0]
	ldr r3, _020b2084 ; =0x4c494754
	ldr r4, [r4, #0x34]
	mov r1, #1
	add r2, r6, #0
	blx r4
	add r0, r5, #0
	ldr r4, _020b20a0 ; =data_ov00_020e63c8
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	ldr r1, _020b20a4 ; =data_ov00_020e61c0
	ldr r2, _020b20a8 ; =0x00001555
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	add r2, r4, #0
	ldr r4, [r0]
	ldr r3, _020b2084 ; =0x4c494754
	ldr r4, [r4, #0x34]
	blx r4
	add r0, r5, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add r0, r5, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add r0, r5, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add r0, r5, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add r0, r5, #0
	blx _ZN13LinkStateBase18GetDebugHierarchy0Ev
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end func_ov00_020b1f44
_020b2074: .word data_ov00_020e6380
_020b2078: .word 0x4c474e52
_020b207c: .word data_ov00_020e61c4
_020b2080: .word data_ov00_020e6398
_020b2084: .word 0x4c494754
_020b2088: .word data_ov00_020e61b4
_020b208c: .word 0xfffff000
_020b2090: .word data_ov00_020e63a8
_020b2094: .word data_ov00_020e61b8
_020b2098: .word data_ov00_020e63b8
_020b209c: .word data_ov00_020e61bc
_020b20a0: .word data_ov00_020e63c8
_020b20a4: .word data_ov00_020e61c0
_020b20a8: .word 0x00001555

	.global func_ov00_020b20ac
	arm_func_start func_ov00_020b20ac
func_ov00_020b20ac: ; 0x020b20ac
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r2, #0
	strb r2, [r4, #0xa4]
	strh r2, [r4, #0x3c]
	ldr r1, [r4, #4]
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_020b20d0: ; jump table
	ldmia sp!, {r3, r4, r5, pc} ; case 0
	b _020b23b0 ; case 1
	b _020b23b0 ; case 2
	b _020b2144 ; case 3
	b _020b2338 ; case 4
	b _020b213c ; case 5
	b _020b2114 ; case 6
	b _020b23bc ; case 7
	b _020b23e0 ; case 8
	b _020b243c ; case 9
	b _020b2444 ; case 10
	b _020b244c ; case 11
	b _020b2454 ; case 12
	b _020b2464 ; case 13
	b _020b246c ; case 14
	ldmia sp!, {r3, r4, r5, pc} ; case 15
	ldmia sp!, {r3, r4, r5, pc} ; case 16
_020b2114:
	ldr r0, [r4, #0x30]
	blx func_0202ab78
	ldr r0, _020b2474 ; =data_ov00_020ee698
	ldr r0, [r0, #0x2c]
	cmp r0, #3
	moveq r0, #0x14
	streqh r0, [r4, #0x34]
	movne r0, #0x5a
	strneh r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
_020b213c:
	bl _ZN13LinkStateBase18func_ov00_020a82acEv
	ldmia sp!, {r3, r4, r5, pc}
_020b2144:
	strb r2, [r4, #0xa4]
	strh r2, [r4, #0x80]
	bl _ZN13LinkStateBase18func_ov00_020a82acEv
	mov r0, r4
	mov r1, #0x3f
	bl _ZN13LinkStateBase26Clear_PlayerLinkBase_Unk48Et
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerVelEv
	ldr r1, _020b2478 ; =data_027e0d0c
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r1, [r1, #8]
	str r1, [r0, #8]
	ldr r0, [r4, #0x60]
	cmp r0, #0x12
	bgt _020b21e4
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020b232c
_020b2198: ; jump table
	b _020b232c ; case 0
	b _020b232c ; case 1
	b _020b232c ; case 2
	b _020b22bc ; case 3
	b _020b232c ; case 4
	b _020b232c ; case 5
	b _020b232c ; case 6
	b _020b232c ; case 7
	b _020b2200 ; case 8
	b _020b2200 ; case 9
	b _020b22c8 ; case 10
	b _020b232c ; case 11
	b _020b22f4 ; case 12
	b _020b232c ; case 13
	b _020b232c ; case 14
	b _020b232c ; case 15
	b _020b22c8 ; case 16
	b _020b232c ; case 17
	b _020b2320 ; case 18
_020b21e4:
	cmp r0, #0x19
	bgt _020b232c
	cmp r0, #0x18
	blt _020b232c
	cmpne r0, #0x19
	beq _020b2320
	b _020b232c
_020b2200:
	mov r0, r4
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	mov r1, #0x8000
	rsb r1, r1, #0
	strh r1, [r0]
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0]
	str r1, [r4, #0x40]
	ldr r1, [r0, #4]
	str r1, [r4, #0x44]
	ldr r1, [r0, #8]
	mov r0, r4
	str r1, [r4, #0x48]
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	ldrh r1, [r0]
	ldr r5, _020b247c ; =data_02050f54
	mov r0, #0x800
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r3, [r5, r1]
	add r1, r2, #1
	mov r1, r1, lsl #0x1
	mov r2, r3, asr #0x1f
	mov ip, r2, lsl #0xd
	ldrsh r2, [r5, r1]
	adds r1, r0, r3, lsl #13
	orr ip, ip, r3, lsr #19
	adc r5, ip, #0
	mov ip, r1, lsr #0xc
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	adds r3, r0, r2, lsl #13
	orr r1, r1, r2, lsr #19
	ldr r2, [r4, #0x40]
	orr ip, ip, r5, lsl #20
	add r2, r2, ip
	str r2, [r4, #0x40]
	mov r2, r3, lsr #0xc
	adc r1, r1, #0
	ldr r3, [r4, #0x48]
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	str r1, [r4, #0x48]
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b22bc:
	mov r0, #0x800
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b22c8:
	mov r0, r4
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r5, r0
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0, #4]
	mov r0, r5
	bl func_ov00_020b542c
	mov r0, #0x800
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b22f4:
	mov r0, r4
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r5, r0
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0, #4]
	mov r0, r5
	bl func_ov00_020b542c
	ldr r0, _020b2480 ; =0x00000ccd
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b2320:
	ldr r0, _020b2484 ; =0x000004cd
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b232c:
	ldr r0, _020b2480 ; =0x00000ccd
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b2338:
	bl _ZN13LinkStateBase18func_ov00_020a82acEv
	bl func_020385b8
	mov r1, #0
	bl _ZN17LinkStateInteract15SetBombVelocityEP5Vec3p
	ldr r0, [r4, #0x64]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _020b23a4
_020b2358: ; jump table
	b _020b23a4 ; case 0
	b _020b23a4 ; case 1
	b _020b23a4 ; case 2
	b _020b2398 ; case 3
	b _020b23a4 ; case 4
	ldmia sp!, {r3, r4, r5, pc} ; case 5
	b _020b23a4 ; case 6
	b _020b23a4 ; case 7
	b _020b23a4 ; case 8
	b _020b23a4 ; case 9
	b _020b2398 ; case 10
	b _020b2398 ; case 11
	b _020b23a4 ; case 12
	b _020b23a4 ; case 13
	b _020b2398 ; case 14
	b _020b2398 ; case 15
_020b2398:
	mov r0, #0x800
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b23a4:
	ldr r0, _020b2480 ; =0x00000ccd
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b23b0:
	strh r2, [r4, #0x34]
	bl _ZN13LinkStateBase18func_ov00_020a82acEv
	ldmia sp!, {r3, r4, r5, pc}
_020b23bc:
	ldr r0, _020b2488 ; =data_ov00_020eec68
	mov r1, #0x4a
	mov r3, #0x7f
	bl func_ov00_020d70a4
	ldr r0, [r4, #0x30]
	blx func_0202ab78
	mov r0, #0x31
	strh r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
_020b23e0:
	ldr ip, _020b248c ; =0x00000129
	ldr r0, _020b2488 ; =data_ov00_020eec68
	mov r1, #0x4b
	mov r3, #0x7f
	strh ip, [r4, #0x34]
	bl func_ov00_020d70a4
	ldr r0, _020b2490 ; =data_027e0f64
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	ldr r0, [r0, #4]
	mov r1, #0xb
	bl func_ov00_020872e8
	ldr r0, _020b2494 ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020b2498 ; =data_027e0f74
	mov r1, #0x104
	ldr r0, [r0]
	mov r2, #1
	bl func_ov00_0209779c
	ldmia sp!, {r3, r4, r5, pc}
_020b243c:
	bl func_ov05_021089c0
	ldmia sp!, {r3, r4, r5, pc}
_020b2444:
	bl func_ov05_021089f4
	ldmia sp!, {r3, r4, r5, pc}
_020b244c:
	bl func_ov05_02108d08
	ldmia sp!, {r3, r4, r5, pc}
_020b2454:
	bl _ZN13LinkStateBase18func_ov00_020a82acEv
	ldr r0, _020b249c ; =0x0000099a
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020b2464:
	bl _ZN13LinkStateBase18func_ov00_020a82acEv
	ldmia sp!, {r3, r4, r5, pc}
_020b246c:
	bl func_ov05_02108e08
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b20ac
_020b2474: .word data_ov00_020ee698
_020b2478: .word data_027e0d0c
_020b247c: .word data_02050f54
_020b2480: .word 0x00000ccd
_020b2484: .word 0x000004cd
_020b2488: .word data_ov00_020eec68
_020b248c: .word 0x00000129
_020b2490: .word data_027e0f64
_020b2494: .word data_ov09_0211f5b4
_020b2498: .word data_027e0f74
_020b249c: .word 0x0000099a

	.global func_ov00_020b24a0
	arm_func_start func_ov00_020b24a0
func_ov00_020b24a0: ; 0x020b24a0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl _ZN13LinkStateBase12OnStateLeaveEi
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	cmp r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	cmp r0, #4
	beq _020b24e0
	cmp r0, #7
	beq _020b24ec
	ldmia sp!, {r3, r4, r5, pc}
_020b24e0:
	mov r0, r5
	bl func_ov00_020b2e84
	ldmia sp!, {r3, r4, r5, pc}
_020b24ec:
	ldr r0, _020b24fc ; =data_027e103c
	ldr r0, [r0]
	bl func_ov05_02104070
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b24a0
_020b24fc: .word data_027e103c

	.global func_ov00_020b2500
	arm_func_start func_ov00_020b2500
func_ov00_020b2500: ; 0x020b2500
	mov r0, #6
	bx lr
	arm_func_end func_ov00_020b2500

	.global func_ov00_020b2508
	arm_func_start func_ov00_020b2508
func_ov00_020b2508: ; 0x020b2508
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r1, #1
	strb r1, [r0, #0xba]
	ldr r0, [r4, #4]
	ldr r1, _020b2550 ; =data_ov00_020e61f8
	add r1, r1, r0, lsl #3
	ldr r0, [r1, #4]
	tst r0, #1
	add r0, r4, r0, asr #1
	ldreq r1, [r1]
	beq _020b2548
	ldr r2, [r0]
	ldr r1, [r1]
	ldr r1, [r2, r1]
_020b2548:
	blx r1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b2508
_020b2550: .word data_ov00_020e61f8

	.global func_ov00_020b2554
	arm_func_start func_ov00_020b2554
func_ov00_020b2554: ; 0x020b2554
	stmdb sp!, {r3, lr}
	bl _ZN13LinkStateBase12GetPlayerVelEv
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b2554

	.global func_ov00_020b2568
	arm_func_start func_ov00_020b2568
func_ov00_020b2568: ; 0x020b2568
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x40
	bl _ZN13LinkStateBase6LookAtEP5Vec3p
	mov r0, r4
	bl func_ov00_020b2d8c
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl _ZN13LinkStateBase15ChangeLinkStateEi
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b2568

	.global func_ov00_020b2598
	arm_func_start func_ov00_020b2598
func_ov00_020b2598: ; 0x020b2598
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r4, r0
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r1, #2
	strh r1, [r0, #0xa4]
	ldrsh r0, [r4, #0x34]
	cmp r0, #0
	bne _020b26b8
	mov r3, #0
	sub r2, r3, #2
	mov r5, #0x47
	ldr r0, _020b2b90 ; =data_027e0e60
	mov r1, #0xff
	str r2, [sp, #0xc]
	str r5, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	strh r3, [sp, #0x10]
	strb r3, [sp, #0x13]
	strb r3, [sp, #0x14]
	strb r3, [sp, #0x15]
	strb r1, [sp, #0x12]
	ldr r0, [r0]
	ldr r1, [r4, #0x5c]
	add r2, sp, #0
	bl func_ov00_020838e8
	cmp r0, #0
	beq _020b26b8
	ldr r0, _020b2b94 ; =data_027e0d38
	ldr r1, [r0]
	ldr r0, [r1, #0x28]
	ldrb r0, [r0, #0x34]
	cmp r0, #0
	bne _020b26b8
	ldr r0, [r4, #0x60]
	sub r0, r0, #0x12
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020b2688
_020b2638: ; jump table
	b _020b2664 ; case 0
	b _020b2688 ; case 1
	b _020b2658 ; case 2
	b _020b2658 ; case 3
	b _020b2688 ; case 4
	b _020b2688 ; case 5
	b _020b2664 ; case 6
	b _020b2664 ; case 7
_020b2658:
	mov r0, r4
	bl func_ov12_021343bc
	b _020b26b8
_020b2664:
	bl func_020385b8
	mov r1, #0
	bl _ZN17LinkStateInteract20SetGrabActorVelocityEP5Vec3p
	ldr r0, _020b2b94 ; =data_027e0d38
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #1
	bl func_ov05_02100ae0
	b _020b26b8
_020b2688:
	add r0, r1, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #7
	beq _020b26a4
	bl func_020385b8
	mov r1, #0
	bl _ZN17LinkStateInteract15SetBombVelocityEP5Vec3p
_020b26a4:
	ldr r0, _020b2b94 ; =data_027e0d38
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #1
	bl func_ov05_02100ae0
_020b26b8:
	ldrsh r0, [r4, #0x34]
	cmp r0, #0
	subgt r0, r0, #1
	strgth r0, [r4, #0x34]
	ldr r1, [r4, #0x60]
	cmp r1, #0x12
	bgt _020b26e4
	bge _020b26fc
	cmp r1, #5
	beq _020b270c
	b _020b275c
_020b26e4:
	cmp r1, #0x19
	bgt _020b275c
	cmp r1, #0x18
	blt _020b275c
	cmpne r1, #0x19
	bne _020b275c
_020b26fc:
	mov r0, r4
	bl func_ov05_021099dc
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020b270c:
	mov r0, r4
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r1, #0
	strh r1, [r0, #0xa4]
	mov r0, r4
	bl _ZN13LinkStateBase12GetGrabActorEv
	cmp r0, #0
	movne r3, #1
	mov r1, #0
	moveq r3, #0
	mov r0, r4
	mov r2, r1
	bl func_ov05_0210f808
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	add r1, r4, #0x40
	mov r2, #0x148
	bl func_0202b2e8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020b275c:
	ldrb r0, [r4, #0xa4]
	cmp r0, #0
	bne _020b2b70
	mov r0, r4
	bl func_ov00_020b2d8c
	cmp r0, #0
	ldr r0, [r4, #0x60]
	beq _020b297c
	sub r0, r0, #0xa
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020b28f4
_020b278c: ; jump table
	b _020b27a8 ; case 0
	b _020b28f4 ; case 1
	b _020b27a8 ; case 2
	b _020b28f4 ; case 3
	b _020b28f4 ; case 4
	b _020b2810 ; case 5
	b _020b27a8 ; case 6
_020b27a8:
	ldr r1, _020b2b98 ; =data_02052f54
	mov r0, #0x800
	ldrsh r3, [r1]
	ldrsh r2, [r1, #2]
	ldr ip, [r4, #0x40]
	mov r1, r3, asr #0x1f
	mov r1, r1, lsl #0xd
	adds r5, r0, r3, lsl #13
	orr r1, r1, r3, lsr #19
	adc r1, r1, #0
	mov r3, r5, lsr #0xc
	orr r3, r3, r1, lsl #20
	mov r1, r2, asr #0x1f
	add r3, ip, r3
	mov r1, r1, lsl #0xd
	str r3, [r4, #0x40]
	adds r3, r0, r2, lsl #13
	orr r1, r1, r2, lsr #19
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r4, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	add sp, sp, #0x18
	str r0, [r4, #0x48]
	ldmia sp!, {r3, r4, r5, pc}
_020b2810:
	ldr r0, _020b2b94 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #7
	mov r0, #0x800
	bne _020b2890
	ldr r1, _020b2b9c ; =data_02051f54
	ldr ip, [r4, #0x40]
	ldrsh r3, [r1]
	ldrsh r2, [r1, #2]
	add sp, sp, #0x18
	mov r1, r3, asr #0x1f
	mov r1, r1, lsl #0xd
	adds r5, r0, r3, lsl #13
	orr r1, r1, r3, lsr #19
	adc r1, r1, #0
	mov r3, r5, lsr #0xc
	orr r3, r3, r1, lsl #20
	mov r1, r2, asr #0x1f
	add r3, ip, r3
	mov r1, r1, lsl #0xd
	str r3, [r4, #0x40]
	adds r3, r0, r2, lsl #13
	orr r1, r1, r2, lsr #19
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r4, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r4, #0x48]
	ldmia sp!, {r3, r4, r5, pc}
_020b2890:
	ldr r1, _020b2b98 ; =data_02052f54
	ldr ip, [r4, #0x40]
	ldrsh r3, [r1]
	ldrsh r2, [r1, #2]
	add sp, sp, #0x18
	mov r1, r3, asr #0x1f
	mov r1, r1, lsl #0xd
	adds r5, r0, r3, lsl #13
	orr r1, r1, r3, lsr #19
	adc r1, r1, #0
	mov r3, r5, lsr #0xc
	orr r3, r3, r1, lsl #20
	mov r1, r2, asr #0x1f
	add r3, ip, r3
	mov r1, r1, lsl #0xd
	str r3, [r4, #0x40]
	adds r3, r0, r2, lsl #13
	orr r1, r1, r2, lsr #19
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r4, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r4, #0x48]
	ldmia sp!, {r3, r4, r5, pc}
_020b28f4:
	mov r0, r4
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	ldrh r1, [r0]
	ldr r5, _020b2ba0 ; =data_02050f54
	mov r0, #0x800
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r3, [r5, r1]
	add r1, r2, #1
	mov r1, r1, lsl #0x1
	mov r2, r3, asr #0x1f
	mov ip, r2, lsl #0xd
	ldrsh r2, [r5, r1]
	adds r1, r0, r3, lsl #13
	orr ip, ip, r3, lsr #19
	adc r5, ip, #0
	mov ip, r1, lsr #0xc
	adds r3, r0, r2, lsl #13
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	ldr r0, [r4, #0x40]
	orr ip, ip, r5, lsl #20
	add r0, r0, ip
	orr r1, r1, r2, lsr #19
	str r0, [r4, #0x40]
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r4, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	add sp, sp, #0x18
	str r0, [r4, #0x48]
	ldmia sp!, {r3, r4, r5, pc}
_020b297c:
	cmp r0, #0x14
	bgt _020b29c0
	addge sp, sp, #0x18
	ldmgeia sp!, {r3, r4, r5, pc}
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020b2b48
_020b2998: ; jump table
	b _020b2b48 ; case 0
	b _020b2b48 ; case 1
	b _020b2b48 ; case 2
	b _020b2b48 ; case 3
	b _020b2b48 ; case 4
	b _020b2b88 ; case 5
	b _020b2b88 ; case 6
	b _020b2b88 ; case 7
	b _020b29d0 ; case 8
	b _020b2a8c ; case 9
_020b29c0:
	cmp r0, #0x15
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	b _020b2b48
_020b29d0:
	mov r0, r4
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	ldrsh r1, [r0]
	add r1, r1, #0x200
	strh r1, [r0]
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0]
	str r1, [r4, #0x40]
	ldr r1, [r0, #4]
	str r1, [r4, #0x44]
	ldr r1, [r0, #8]
	mov r0, r4
	str r1, [r4, #0x48]
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	ldrh r1, [r0]
	ldr r5, _020b2ba0 ; =data_02050f54
	mov r0, #0x800
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r3, [r5, r1]
	add r1, r2, #1
	mov r1, r1, lsl #0x1
	mov r2, r3, asr #0x1f
	mov ip, r2, lsl #0xd
	ldrsh r2, [r5, r1]
	adds r1, r0, r3, lsl #13
	orr ip, ip, r3, lsr #19
	adc r5, ip, #0
	mov ip, r1, lsr #0xc
	adds r3, r0, r2, lsl #13
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	ldr r0, [r4, #0x40]
	orr ip, ip, r5, lsl #20
	add r0, r0, ip
	orr r1, r1, r2, lsr #19
	str r0, [r4, #0x40]
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r4, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	add sp, sp, #0x18
	str r0, [r4, #0x48]
	ldmia sp!, {r3, r4, r5, pc}
_020b2a8c:
	mov r0, r4
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	ldrsh r1, [r0]
	sub r1, r1, #0x200
	strh r1, [r0]
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0]
	str r1, [r4, #0x40]
	ldr r1, [r0, #4]
	str r1, [r4, #0x44]
	ldr r1, [r0, #8]
	mov r0, r4
	str r1, [r4, #0x48]
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	ldrh r1, [r0]
	ldr r5, _020b2ba0 ; =data_02050f54
	mov r0, #0x800
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r3, [r5, r1]
	add r1, r2, #1
	mov r1, r1, lsl #0x1
	mov r2, r3, asr #0x1f
	mov ip, r2, lsl #0xd
	ldrsh r2, [r5, r1]
	adds r1, r0, r3, lsl #13
	orr ip, ip, r3, lsr #19
	adc r5, ip, #0
	mov ip, r1, lsr #0xc
	adds r3, r0, r2, lsl #13
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	ldr r0, [r4, #0x40]
	orr ip, ip, r5, lsl #20
	add r0, r0, ip
	orr r1, r1, r2, lsr #19
	str r0, [r4, #0x40]
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r4, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	add sp, sp, #0x18
	str r0, [r4, #0x48]
	ldmia sp!, {r3, r4, r5, pc}
_020b2b48:
	mov r0, r4
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r5, r0
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0, #4]
	mov r0, r5
	bl func_ov00_020b542c
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020b2b70:
	cmp r1, #0x14
	cmpne r1, #0x15
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl func_ov00_020b2d8c
_020b2b88:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b2598
_020b2b90: .word data_027e0e60
_020b2b94: .word data_027e0d38
_020b2b98: .word data_02052f54
_020b2b9c: .word data_02051f54
_020b2ba0: .word data_02050f54

	.global func_ov00_020b2ba4
	arm_func_start func_ov00_020b2ba4
func_ov00_020b2ba4: ; 0x020b2ba4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r1, #2
	strh r1, [r0, #0xa4]
	mov r0, r4
	add r1, r4, #0x40
	bl _ZN13LinkStateBase6LookAtEP5Vec3p
	ldr r0, [r4, #0x64]
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _020b2c84
_020b2bd4: ; jump table
	b _020b2c84 ; case 0
	b _020b2c84 ; case 1
	b _020b2c84 ; case 2
	b _020b2c84 ; case 3
	b _020b2c84 ; case 4
	b _020b2c24 ; case 5
	b _020b2c44 ; case 6
	b _020b2c44 ; case 7
	b _020b2c44 ; case 8
	b _020b2c44 ; case 9
	b _020b2c84 ; case 10
	b _020b2c84 ; case 11
	b _020b2c84 ; case 12
	b _020b2c84 ; case 13
	b _020b2c84 ; case 14
	b _020b2c84 ; case 15
	b _020b2c84 ; case 16
	b _020b2c84 ; case 17
	b _020b2c44 ; case 18
	b _020b2c44 ; case 19
_020b2c24:
	mov r0, r4
	bl func_ov00_020b1e98
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0
	bl _ZN13LinkStateBase15ChangeLinkStateEi
	ldmia sp!, {r3, r4, r5, pc}
_020b2c44:
	mov r0, r4
	bl func_ov00_020b2d8c
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r2, [r4, #0x40]
	mov r1, #0
	str r2, [r0]
	ldr r2, [r4, #0x44]
	str r2, [r0, #4]
	ldr r2, [r4, #0x48]
	str r2, [r0, #8]
	mov r0, r4
	bl _ZN13LinkStateBase15ChangeLinkStateEi
	ldmia sp!, {r3, r4, r5, pc}
_020b2c84:
	mov r0, r4
	bl _ZN13LinkStateBase18func_ov00_020a8d40Ev
	mov r5, r0
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0, #4]
	mov r0, r5
	bl func_ov00_020b542c
	mov r0, r4
	bl func_ov00_020b2d8c
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r2, [r4, #0x40]
	mov r1, #0
	str r2, [r0]
	ldr r2, [r4, #0x44]
	str r2, [r0, #4]
	ldr r2, [r4, #0x48]
	str r2, [r0, #8]
	mov r0, r4
	bl _ZN13LinkStateBase15ChangeLinkStateEi
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b2ba4

	.global func_ov00_020b2ce4
	arm_func_start func_ov00_020b2ce4
func_ov00_020b2ce4: ; 0x020b2ce4
	str r1, [r0, #0xa0]
	strh r2, [r0, #0x34]
	bx lr
	arm_func_end func_ov00_020b2ce4

	.global func_ov00_020b2cf0
	arm_func_start func_ov00_020b2cf0
func_ov00_020b2cf0: ; 0x020b2cf0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsh r1, [r4, #0x34]
	cmp r1, #0
	ble _020b2d2c
	sub r1, r1, #1
	strh r1, [r4, #0x34]
	ldrsh r1, [r4, #0x34]
	cmp r1, #0
	bne _020b2d2c
	bl _ZN13LinkStateBase12GetPlayerPosEv
	mov r2, r0
	ldr r1, [r4, #0xa0]
	ldr r0, _020b2d5c ; =data_ov00_020eec9c
	bl func_ov00_020d7b20
_020b2d2c:
	mov r0, r4
	mov r1, #0
	bl _ZN13LinkStateBase18func_ov00_020a8b3cEi
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #0xaa]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl _ZN13LinkStateBase15ChangeLinkStateEi
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b2cf0
_020b2d5c: .word data_ov00_020eec9c

	.global func_ov00_020b2d60
	arm_func_start func_ov00_020b2d60
func_ov00_020b2d60: ; 0x020b2d60
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x84]
	cmp r1, #0
	ldmleia sp!, {r3, pc}
	sub r1, r1, #1
	str r1, [r0, #0x84]
	cmp r1, #0
	ldmgtia sp!, {r3, pc}
	mov r1, #0
	bl _ZN13LinkStateBase15ChangeLinkStateEi
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b2d60

	.global func_ov00_020b2d8c
	arm_func_start func_ov00_020b2d8c
func_ov00_020b2d8c: ; 0x020b2d8c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0
	blt _020b2db8
	bl func_ov00_020b1e98
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_020b2db8:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	addne r5, r4, #0x4c
	addeq r5, r4, #0x40
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	mov r1, r0
	add r2, sp, #8
	mov r0, r5
	bl func_01ff9bf8
	mov r1, #0
	mov r0, r4
	str r1, [sp, #0xc]
	bl _ZN13LinkStateBase28Get_PlayerControlData_Unk004Ev
	ldr r2, [r0]
	ldr r1, [r4, #0x58]
	ldr r0, [sp, #8]
	smull r3, r2, r1, r2
	adds r3, r3, #0x800
	adc r1, r2, #0
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	mov r5, r3, lsr #0xc
	orr r5, r5, r1, lsl #20
	cmpeq r0, #0
	beq _020b2e68
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	bl func_01ffa0f4
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r6, r1, asr #0x10
	bl _ZN13LinkStateBase12GetGrabActorEv
	cmp r0, #0
	movne ip, #1
	moveq ip, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r6
	str ip, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl func_ov05_02110228
_020b2e68:
	add r0, sp, #8
	bl func_01ff9cec
	cmp r0, r5
	movle r0, #1
	movgt r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end func_ov00_020b2d8c

	.global func_ov00_020b2e84
	arm_func_start func_ov00_020b2e84
func_ov00_020b2e84: ; 0x020b2e84
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0
	blt _020b2ea4
	ldr r0, _020b2eb0 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097bcc
_020b2ea4:
	mvn r0, #0
	str r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b2e84
_020b2eb0: .word data_027e0f74

	.global func_ov00_020b2eb4
	arm_func_start func_ov00_020b2eb4
func_ov00_020b2eb4: ; 0x020b2eb4
	stmdb sp!, {r3, lr}
	cmp r1, #3
	beq _020b2ed4
	cmp r1, #4
	beq _020b2ee8
	cmp r1, #5
	beq _020b2f10
	b _020b2f24
_020b2ed4:
	ldr r2, [r0, #4]
	cmp r2, #4
	bne _020b2f2c
	mov r0, #0
	ldmia sp!, {r3, pc}
_020b2ee8:
	ldr r1, [r0, #4]
	cmp r1, #0xe
	bne _020b2f08
	bl _ZN13LinkStateBase28Get_PlayerControlData_Unk120Ev
	cmp r0, #0x4f
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
_020b2f08:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020b2f10:
	ldr r0, [r0, #4]
	cmp r0, #0x10
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
_020b2f24:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020b2f2c:
	bl _ZN13LinkStateBase8vfunc_24Ei
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b2eb4

	.global func_ov00_020b2f34
	arm_func_start func_ov00_020b2f34
func_ov00_020b2f34: ; 0x020b2f34
	ldr r0, [r0, #0x38]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	bx lr
	arm_func_end func_ov00_020b2f34

	.global func_ov00_020b2f48
	arm_func_start func_ov00_020b2f48
func_ov00_020b2f48: ; 0x020b2f48
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN13LinkStateBase18func_ov00_020a8a4cEii
	mov r3, #0
	mov r0, r4
	mov r1, #6
	mov r2, #1
	strb r3, [r4, #0xaa]
	bl _ZN13LinkStateBase18ChangeLinkSubStateEii
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b2f48

	.global func_ov00_020b2f70
	arm_func_start func_ov00_020b2f70
func_ov00_020b2f70: ; 0x020b2f70
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r0
	mov r2, r3
	bl _ZN13LinkStateBase18func_ov00_020a8a4cEii
	mov r0, r5
	mov r1, #6
	mov r2, #2
	str r4, [r5, #0x84]
	bl _ZN13LinkStateBase18ChangeLinkSubStateEii
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b2f70

	.global func_ov00_020b2f9c
	arm_func_start func_ov00_020b2f9c
func_ov00_020b2f9c: ; 0x020b2f9c
	ldr ip, _020b2fa8 ; =_ZN13LinkStateBase15ChangeLinkStateEi
	mov r1, #0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b2f9c
_020b2fa8: .word _ZN13LinkStateBase15ChangeLinkStateEi

	.global func_ov00_020b2fac
	arm_func_start func_ov00_020b2fac
func_ov00_020b2fac: ; 0x020b2fac
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN13LinkStateBase10GetStateIdEv
	cmp r0, #6
	bne _020b3018
	ldr r0, _020b3020 ; =data_027e0c68
	bl func_020367ec
	cmp r0, #0
	bne _020b3018
	ldr r0, [r4, #4]
	cmp r0, #0xb
	bne _020b2ffc
	ldrb r0, [r4, #0xa5]
	cmp r0, #0
	beq _020b2ffc
	ldr r0, _020b3020 ; =data_027e0c68
	bl func_020367ec
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_020b2ffc:
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bne _020b3018
	ldrb r0, [r4, #0xa6]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020b3018:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b2fac
_020b3020: .word data_027e0c68

	.global func_ov00_020b3024
	arm_func_start func_ov00_020b3024
func_ov00_020b3024: ; 0x020b3024
	stmdb sp!, {r3}
	sub sp, sp, #0xc
	mov r3, #5
	str r3, [r0, #4]
	ldr ip, [r1, #4]
	ldr r3, [r1, #8]
	ldr r1, [r1]
	str r1, [r0, #0x40]
	str ip, [r0, #0x44]
	str r3, [r0, #0x48]
	str r2, [r0, #0x58]
	add sp, sp, #0xc
	ldmia sp!, {r3}
	bx lr
	arm_func_end func_ov00_020b3024

	.global func_ov00_020b305c
	arm_func_start func_ov00_020b305c
func_ov00_020b305c: ; 0x020b305c
	sub sp, sp, #0x18
	mov r3, #0xc
	str r3, [r0, #4]
	ldr ip, [r1, #4]
	ldr r3, [r1, #8]
	ldr r1, [r1]
	str r1, [r0, #0x40]
	str ip, [r0, #0x44]
	str r3, [r0, #0x48]
	ldr r3, [r2, #8]
	ldmia r2, {r1, ip}
	str r1, [r0, #0x4c]
	str ip, [r0, #0x50]
	str r3, [r0, #0x54]
	add sp, sp, #0x18
	bx lr
	arm_func_end func_ov00_020b305c

	.global func_ov00_020b309c
	arm_func_start func_ov00_020b309c
func_ov00_020b309c: ; 0x020b309c
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	mov r0, r5
	bl _ZN13LinkStateBase14GetPlayerAngleEv
	ldrsh r1, [r4, #0xc]
	strh r1, [r0]
	ldrb r1, [r4, #0xe]
	mov r0, r5
	bl _ZN13LinkStateBase18func_ov00_020a84bcEi
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b309c

	.global func_ov00_020b30e4
	arm_func_start func_ov00_020b30e4
func_ov00_020b30e4: ; 0x020b30e4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xc8
	ldr r4, _020b3268 ; =data_027e0d38
	mov r7, #0
	sub r6, r7, #2
	mov ip, #0x47
	mov r5, #0xff
	ldr r4, [r4]
	str ip, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	strh r7, [sp, #0x10]
	strb r5, [sp, #0x12]
	strb r7, [sp, #0x13]
	strb r7, [sp, #0x14]
	strb r7, [sp, #0x15]
	ldr r4, [r4, #0x28]
	mov r7, r0
	ldrb r0, [r4, #0x34]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	bne _020b325c
	ldr r0, _020b326c ; =data_027e077c
	ldr r2, [r0]
	ldr r0, [r0, #4]
	cmp r2, r0
	bne _020b325c
	ldr r0, _020b3270 ; =data_027e0e60
	add r2, sp, #0
	ldr r0, [r0]
	bl func_ov00_020838e8
	cmp r0, #0
	beq _020b325c
	str r6, [r7, #0x5c]
	mov r0, #3
	str r0, [r7, #4]
	mov r3, #0xd
	strh r3, [r7, #0x34]
	add r1, sp, #0
	mov r0, r7
	mov r2, r5
	str r4, [r7, #0x68]
	sub r3, r3, #0xe
	str r3, [r7, #0x60]
	bl func_ov00_020b3278
	cmp r0, #0
	bne _020b31cc
	add r1, sp, #0
	mov r0, r7
	mov r2, r4
	bl func_ov00_020b35d8
	cmp r0, #0
	addeq sp, sp, #0xc8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020b31cc:
	ldr r0, [r7, #0x60]
	cmp r0, #0
	addlt sp, sp, #0xc8
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020b3268 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #4
	beq _020b3250
	add r0, sp, #0x18
	bl func_ov00_0209a4f4
	mov r2, #0
	ldr r0, _020b3274 ; =data_027e0f74
	mvn r4, #0
	mov r3, #0x19
	ldr r0, [r0]
	add r1, sp, #0x18
	str r4, [sp, #0x1c]
	strb r3, [sp, #0x21]
	strb r2, [sp, #0x22]
	strb r2, [sp, #0x23]
	strb r2, [sp, #0x2e]
	bl func_ov00_02097810
	str r0, [r7, #0x38]
	cmp r0, #0
	add r0, sp, #0x18
	bge _020b324c
	bl func_ov00_0209a508
	add sp, sp, #0xc8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b324c:
	bl func_ov00_0209a508
_020b3250:
	add sp, sp, #0xc8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b325c:
	mov r0, #0
	add sp, sp, #0xc8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b30e4
_020b3268: .word data_027e0d38
_020b326c: .word data_027e077c
_020b3270: .word data_027e0e60
_020b3274: .word data_027e0f74

	.global func_ov00_020b3278
	arm_func_start func_ov00_020b3278
func_ov00_020b3278: ; 0x020b3278
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	movs r6, r2
	mov r5, r0
	mov r4, r1
	beq _020b35c0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	bne _020b32bc
	mov r0, #0
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	str r0, [r5, #0x48]
	b _020b32cc
_020b32bc:
	ldr r2, [r0]
	add r1, r5, #0x40
	ldr r2, [r2, #0x3c]
	blx r2
_020b32cc:
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x3c
	bgt _020b3330
	bge _020b345c
	cmp r0, #0x1a
	bgt _020b3300
	bge _020b353c
	cmp r0, #0xf
	beq _020b3528
	b _020b35c0
_020b3300:
	cmp r0, #0x27
	bgt _020b3310
	beq _020b3528
	b _020b35c0
_020b3310:
	cmp r0, #0x30
	bgt _020b35c0
	cmp r0, #0x2e
	blt _020b35c0
	beq _020b3528
	cmp r0, #0x30
	beq _020b3390
	b _020b35c0
_020b3330:
	cmp r0, #0x65
	bgt _020b3374
	cmp r0, #0x61
	blt _020b3358
	beq _020b35ac
	cmp r0, #0x64
	beq _020b353c
	cmp r0, #0x65
	beq _020b3470
	b _020b35c0
_020b3358:
	cmp r0, #0x3d
	bgt _020b3368
	beq _020b3528
	b _020b35c0
_020b3368:
	cmp r0, #0x5f
	beq _020b3558
	b _020b35c0
_020b3374:
	cmp r0, #0x72
	bgt _020b3384
	beq _020b33a4
	b _020b35c0
_020b3384:
	cmp r0, #0x94
	beq _020b345c
	b _020b35c0
_020b3390:
	mov r0, #0xa
	str r0, [r5, #0x60]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b33a4:
	mov r1, #0xb
	mov r0, r5
	str r1, [r5, #0x60]
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0]
	ldr r3, _020b35cc ; =data_02050f54
	str r0, [r5, #0x40]
	str r2, [r5, #0x44]
	str r1, [r5, #0x48]
	ldrh r2, [r4, #0x10]
	ldr r0, _020b35d0 ; =0x00000ccd
	mov r1, #0
	mov r2, r2, asr #0x4
	mov r4, r2, lsl #0x1
	mov r2, r4, lsl #0x1
	ldrsh r6, [r3, r2]
	add r2, r4, #1
	mov r2, r2, lsl #0x1
	umull r4, ip, r6, r0
	mla ip, r6, r1, ip
	mov r6, r6, asr #0x1f
	ldrsh r2, [r3, r2]
	adds lr, r4, #0x800
	mla ip, r6, r0, ip
	umull r4, r3, r2, r0
	adc r6, ip, #0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	mov ip, lr, lsr #0xc
	adds r4, r4, #0x800
	ldr r0, [r5, #0x40]
	orr ip, ip, r6, lsl #20
	add r0, r0, ip
	str r0, [r5, #0x40]
	adc r0, r3, #0
	mov r1, r4, lsr #0xc
	ldr r2, [r5, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r5, #0x48]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b345c:
	mov r0, #0xc
	str r0, [r5, #0x60]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b3470:
	mov r1, #0xd
	mov r0, r5
	str r1, [r5, #0x60]
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0]
	ldr r3, _020b35cc ; =data_02050f54
	str r0, [r5, #0x40]
	str r2, [r5, #0x44]
	str r1, [r5, #0x48]
	ldrh r2, [r4, #0x10]
	ldr r0, _020b35d0 ; =0x00000ccd
	mov r1, #0
	mov r2, r2, asr #0x4
	mov r4, r2, lsl #0x1
	mov r2, r4, lsl #0x1
	ldrsh ip, [r3, r2]
	add r2, r4, #1
	mov r2, r2, lsl #0x1
	umull r4, lr, ip, r0
	mla lr, ip, r1, lr
	adds r6, r4, #0x800
	ldrsh r2, [r3, r2]
	mov ip, ip, asr #0x1f
	mla lr, ip, r0, lr
	umull r4, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adc ip, lr, #0
	mov r6, r6, lsr #0xc
	adds r4, r4, #0x800
	ldr r0, [r5, #0x40]
	orr r6, r6, ip, lsl #20
	add r0, r0, r6
	str r0, [r5, #0x40]
	adc r0, r3, #0
	mov r1, r4, lsr #0xc
	ldr r2, [r5, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r5, #0x48]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b3528:
	mov r0, #4
	str r0, [r5, #0x60]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b353c:
	ldr r1, [r4, #4]
	mov r0, #0xa
	str r1, [r5, #0x60]
	strh r0, [r5, #0x34]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b3558:
	mov r0, r5
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r5, #0x40]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, _020b35d4 ; =0x000009c3
	rsbmi r1, r1, #0
	cmp r1, r0
	ble _020b3590
	mvn r0, #0
	str r0, [r5, #0x60]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b3590:
	ldr r1, [r4, #4]
	mov r0, #0xa
	str r1, [r5, #0x60]
	strh r0, [r5, #0x34]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b35ac:
	mov r0, #5
	str r0, [r5, #0x60]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020b35c0:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020b3278
_020b35cc: .word data_02050f54
_020b35d0: .word 0x00000ccd
_020b35d4: .word 0x000009c3

	.global func_ov00_020b35d8
	arm_func_start func_ov00_020b35d8
func_ov00_020b35d8: ; 0x020b35d8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r1, [r5, #4]
	mov r6, r0
	str r1, [r6, #0x60]
	mov r4, r2
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0]
	str r0, [r6, #0x40]
	str r2, [r6, #0x44]
	str r1, [r6, #0x48]
	ldr r0, [r6, #0x60]
	cmp r0, #0x19
	bgt _020b3690
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020b38c4
_020b3628: ; jump table
	b _020b38c4 ; case 0
	b _020b38c4 ; case 1
	b _020b38c4 ; case 2
	b _020b369c ; case 3
	b _020b3718 ; case 4
	b _020b38c4 ; case 5
	b _020b384c ; case 6
	b _020b384c ; case 7
	b _020b38c4 ; case 8
	b _020b38c4 ; case 9
	b _020b369c ; case 10
	b _020b369c ; case 11
	b _020b38c4 ; case 12
	b _020b38c4 ; case 13
	b _020b38c4 ; case 14
	b _020b369c ; case 15
	b _020b369c ; case 16
	b _020b369c ; case 17
	b _020b3818 ; case 18
	b _020b38c4 ; case 19
	b _020b38c4 ; case 20
	b _020b38c4 ; case 21
	b _020b38c4 ; case 22
	b _020b38c4 ; case 23
	b _020b3818 ; case 24
	b _020b3818 ; case 25
_020b3690:
	cmp r0, #0xfd
	beq _020b37a0
	b _020b38c4
_020b369c:
	ldrh r1, [r5, #0x10]
	ldr r4, _020b38d0 ; =data_02050f54
	mov r0, #0x800
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r3, [r4, r1]
	add r1, r2, #1
	mov r1, r1, lsl #0x1
	mov r2, r3, asr #0x1f
	mov r5, r2, lsl #0xb
	ldrsh r2, [r4, r1]
	adds r1, r0, r3, lsl #11
	orr r5, r5, r3, lsr #21
	adc r4, r5, #0
	mov r5, r1, lsr #0xc
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r3, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	ldr r0, [r6, #0x40]
	orr r5, r5, r4, lsl #20
	add r0, r0, r5
	str r0, [r6, #0x40]
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r6, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r6, #0x48]
	b _020b38c4
_020b3718:
	ldrh r1, [r5, #0x10]
	ldr r3, _020b38d0 ; =data_02050f54
	ldr r0, _020b38d4 ; =0x00000ccd
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r5, [r3, r1]
	add r2, r2, #1
	mov r1, #0
	umull lr, ip, r5, r0
	mov r2, r2, lsl #0x1
	ldrsh r2, [r3, r2]
	mla ip, r5, r1, ip
	umull r4, r3, r2, r0
	mov r5, r5, asr #0x1f
	adds lr, lr, #0x800
	mla ip, r5, r0, ip
	adc r5, ip, #0
	mov ip, lr, lsr #0xc
	adds r4, r4, #0x800
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	ldr r0, [r6, #0x40]
	orr ip, ip, r5, lsl #20
	add r0, r0, ip
	str r0, [r6, #0x40]
	adc r0, r3, #0
	mov r1, r4, lsr #0xc
	ldr r2, [r6, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r6, #0x48]
	b _020b38c4
_020b37a0:
	ldrh r1, [r5, #0x10]
	ldr r0, _020b38d8 ; =data_ov00_020e6194
	ldr r2, _020b38d0 ; =data_02050f54
	mov r1, r1, asr #0x4
	mov r3, r1, lsl #0x1
	mov r1, r3, lsl #0x1
	ldrsh r1, [r2, r1]
	ldr r5, [r0, #0x30]
	add r0, r3, #1
	smull r4, r3, r1, r5
	adds r1, r4, #0x800
	mov r0, r0, lsl #0x1
	ldrsh r0, [r2, r0]
	adc r3, r3, #0
	mov r4, r1, lsr #0xc
	smull r2, r1, r0, r5
	adds r2, r2, #0x800
	ldr r0, [r6, #0x40]
	orr r4, r4, r3, lsl #20
	add r0, r0, r4
	str r0, [r6, #0x40]
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	ldr r2, [r6, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r6, #0x48]
	mov r0, #0xf
	strh r0, [r6, #0x34]
	b _020b38c4
_020b3818:
	cmp r4, #0
	beq _020b38c4
	ldr r3, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r1, [r4, #0x48]
	mov r0, r4
	str r1, [r6, #0x40]
	str r3, [r6, #0x44]
	str r2, [r6, #0x48]
	mvn r1, #0
	strh r1, [r6, #0x34]
	bl func_ov17_02165e48
	b _020b38c4
_020b384c:
	ldrh r1, [r5, #0x10]
	ldr r4, _020b38d0 ; =data_02050f54
	mov r0, #0x800
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r3, [r4, r1]
	add r1, r2, #1
	mov r1, r1, lsl #0x1
	mov r2, r3, asr #0x1f
	mov r5, r2, lsl #0xd
	ldrsh r2, [r4, r1]
	adds r1, r0, r3, lsl #13
	orr r5, r5, r3, lsr #19
	adc r4, r5, #0
	mov r5, r1, lsr #0xc
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	adds r3, r0, r2, lsl #13
	orr r1, r1, r2, lsr #19
	ldr r0, [r6, #0x40]
	orr r5, r5, r4, lsl #20
	add r0, r0, r5
	str r0, [r6, #0x40]
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	ldr r2, [r6, #0x48]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r6, #0x48]
_020b38c4:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020b35d8
_020b38d0: .word data_02050f54
_020b38d4: .word 0x00000ccd
_020b38d8: .word data_ov00_020e6194

	.global func_ov00_020b38dc
	arm_func_start func_ov00_020b38dc
func_ov00_020b38dc: ; 0x020b38dc
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc8
	mov r5, r2
	mov r4, r0
	mov r6, r1
	bl func_ov00_020b2e84
	cmp r5, #0x14
	bgt _020b3920
	bge _020b3938
	cmp r5, #2
	bgt _020b3968
	cmp r5, #0
	blt _020b3968
	cmpne r5, #1
	cmpne r5, #2
	beq _020b392c
	b _020b3968
_020b3920:
	cmp r5, #0x15
	beq _020b3950
	b _020b3968
_020b392c:
	add sp, sp, #0xc8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020b3938:
	mov r0, r4
	mov r1, #1
	bl _ZN13LinkStateBase18SetPlayerCharacterEi
	add sp, sp, #0xc8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020b3950:
	mov r0, r4
	mov r1, #0
	bl _ZN13LinkStateBase18SetPlayerCharacterEi
	add sp, sp, #0xc8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020b3968:
	mov r1, #4
	mov r0, r4
	str r1, [r4, #4]
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r2, [r0, #8]
	ldmia r0, {r1, r3}
	str r1, [r4, #0x40]
	str r3, [r4, #0x44]
	str r2, [r4, #0x48]
	ldr r0, _020b3d48 ; =data_027e0d38
	str r5, [r4, #0x64]
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #4
	beq _020b39f0
	add r0, sp, #0x18
	bl func_ov00_0209a4f4
	mov r3, #0
	mvn r1, #0
	mov r0, #0x19
	str r1, [sp, #0x1c]
	strb r0, [sp, #0x21]
	strb r3, [sp, #0x22]
	strb r3, [sp, #0x23]
	ldrb r2, [r4, #0xa8]
	ldr r0, _020b3d4c ; =data_027e0f74
	add r1, sp, #0x18
	strb r2, [sp, #0x2e]
	strb r3, [r4, #0xa8]
	ldr r0, [r0]
	bl func_ov00_02097810
	str r0, [r4, #0x38]
	add r0, sp, #0x18
	bl func_ov00_0209a508
_020b39f0:
	ldr r0, [r4, #0x64]
	cmp r0, #0x13
	bgt _020b3a58
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020b3ce4
_020b3a08: ; jump table
	b _020b3ce4 ; case 0
	b _020b3ce4 ; case 1
	b _020b3ce4 ; case 2
	b _020b3a64 ; case 3
	b _020b3bb0 ; case 4
	b _020b3cc4 ; case 5
	b _020b3af8 ; case 6
	b _020b3af8 ; case 7
	b _020b3af8 ; case 8
	b _020b3af8 ; case 9
	b _020b3a64 ; case 10
	b _020b3a64 ; case 11
	b _020b3bb0 ; case 12
	b _020b3bb0 ; case 13
	b _020b3a64 ; case 14
	b _020b3a64 ; case 15
	b _020b3ce4 ; case 16
	b _020b3ce4 ; case 17
	b _020b3af8 ; case 18
	b _020b3af8 ; case 19
_020b3a58:
	cmp r0, #0xfd
	beq _020b3c44
	b _020b3ce4
_020b3a64:
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	mov r1, r6, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r1, r1, lsl #0x1
	add r2, r1, #1
	ldr r3, _020b3d50 ; =data_02050f54
	mov r1, r1, lsl #0x1
	ldrsh r7, [r3, r1]
	ldr r1, _020b3d54 ; =0xffffee66
	mov r2, r2, lsl #0x1
	ldrsh r3, [r3, r2]
	umull sb, r8, r7, r1
	mvn r2, #0
	umull r6, r5, r3, r1
	adds sb, sb, #0x800
	mla r8, r7, r2, r8
	mov r7, r7, asr #0x1f
	mla r8, r7, r1, r8
	adc r7, r8, #0
	mov r8, sb, lsr #0xc
	adds r6, r6, #0x800
	mla r5, r3, r2, r5
	mov r2, r3, asr #0x1f
	mla r5, r2, r1, r5
	ldr r1, [r0]
	orr r8, r8, r7, lsl #20
	add r1, r1, r8
	str r1, [r0]
	adc r1, r5, #0
	mov r2, r6, lsr #0xc
	ldr r3, [r0, #8]
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	str r1, [r0, #8]
	b _020b3ce4
_020b3af8:
	ldr r0, _020b3d58 ; =data_027e0618
	ldr r0, [r0]
	cmp r0, #6
	bne _020b3b14
	ldr r0, _020b3d5c ; =data_ov00_020eec9c
	mov r1, #0x6b
	bl func_ov00_020d77e4
_020b3b14:
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	mov r1, r6, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r1, r1, lsl #0x1
	mvn ip, #0
	add r2, r1, #1
	ldr r7, _020b3d50 ; =data_02050f54
	mov r1, r1, lsl #0x1
	ldrsh r1, [r7, r1]
	mov r5, ip, lsl #0xc
	mov r6, r2, lsl #0x1
	umull r3, r2, r1, r5
	ldrsh r7, [r7, r6]
	mov r6, #0x800
	sub r6, r6, #0x1800
	umull lr, r8, r7, r6
	adds sb, r3, #0x800
	mla r2, r1, ip, r2
	mov r1, r1, asr #0x1f
	mla r2, r1, r5, r2
	adc r3, r2, #0
	mov r5, sb, lsr #0xc
	adds r2, lr, #0x800
	mla r8, r7, ip, r8
	mov r1, r7, asr #0x1f
	mla r8, r1, r6, r8
	ldr r1, [r0]
	orr r5, r5, r3, lsl #20
	add r1, r1, r5
	str r1, [r0]
	adc r1, r8, #0
	mov r2, r2, lsr #0xc
	ldr r3, [r0, #8]
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	str r1, [r0, #8]
	b _020b3ce4
_020b3bb0:
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	mov r1, r6, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r1, r1, lsl #0x1
	add r2, r1, #1
	ldr r3, _020b3d50 ; =data_02050f54
	mov r1, r1, lsl #0x1
	ldrsh ip, [r3, r1]
	ldr r1, _020b3d60 ; =0xffffe4cd
	mov r2, r2, lsl #0x1
	ldrsh r3, [r3, r2]
	umull r7, lr, ip, r1
	mvn r2, #0
	umull r6, r5, r3, r1
	adds r8, r7, #0x800
	mla lr, ip, r2, lr
	mov ip, ip, asr #0x1f
	mla lr, ip, r1, lr
	adc r7, lr, #0
	mov r8, r8, lsr #0xc
	adds r6, r6, #0x800
	mla r5, r3, r2, r5
	mov r2, r3, asr #0x1f
	mla r5, r2, r1, r5
	ldr r1, [r0]
	orr r8, r8, r7, lsl #20
	add r1, r1, r8
	str r1, [r0]
	adc r1, r5, #0
	mov r2, r6, lsr #0xc
	ldr r3, [r0, #8]
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	str r1, [r0, #8]
	b _020b3ce4
_020b3c44:
	ldr r1, _020b3d64 ; =data_ov00_020e6194
	mov r0, r4
	ldr r1, [r1, #0x30]
	rsb r5, r1, #0
	bl _ZN13LinkStateBase12GetPlayerPosEv
	mov r1, r6, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	ldr r3, _020b3d50 ; =data_02050f54
	mov r2, r2, lsl #0x1
	ldrsh r2, [r3, r2]
	mov r1, r1, lsl #0x1
	ldrsh r1, [r3, r1]
	smull r3, r6, r2, r5
	adds ip, r3, #0x800
	smull r3, r2, r1, r5
	adc r1, r6, #0
	adds r3, r3, #0x800
	mov r5, ip, lsr #0xc
	ldr r6, [r0]
	orr r5, r5, r1, lsl #20
	add r1, r6, r5
	str r1, [r0]
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	ldr r3, [r0, #8]
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	str r1, [r0, #8]
	b _020b3ce4
_020b3cc4:
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0, #4]
	add sp, sp, #0xc8
	add r1, r1, #0x2000
	str r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020b3ce4:
	mov r0, r4
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, [r0]
	str r1, [sp]
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	ldr r1, [r0, #8]
	mov r0, r4
	str r1, [sp, #8]
	bl _ZN13LinkStateBase12GetPlayerPosEv
	ldr r1, _020b3d68 ; =data_027e0e60
	ldr r5, [r0, #4]
	ldr r0, [r1]
	add r1, sp, #0
	mov r2, #1
	bl func_ov00_02083f44
	mov r6, r0
	cmp r6, r5
	mov r0, r4
	movge r6, r5
	bl _ZN13LinkStateBase12GetPlayerPosEv
	str r6, [r0, #4]
	mov r0, #1
	add sp, sp, #0xc8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020b38dc
_020b3d48: .word data_027e0d38
_020b3d4c: .word data_027e0f74
_020b3d50: .word data_02050f54
_020b3d54: .word 0xffffee66
_020b3d58: .word data_027e0618
_020b3d5c: .word data_ov00_020eec9c
_020b3d60: .word 0xffffe4cd
_020b3d64: .word data_ov00_020e6194
_020b3d68: .word data_027e0e60

	.global func_ov00_020b3d6c
	arm_func_start func_ov00_020b3d6c
func_ov00_020b3d6c: ; 0x020b3d6c
	ldr r0, [r0, #4]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _020b3dc4
_020b3d7c: ; jump table
	b _020b3dbc ; case 0
	b _020b3dc4 ; case 1
	b _020b3dc4 ; case 2
	b _020b3dbc ; case 3
	b _020b3dbc ; case 4
	b _020b3dbc ; case 5
	b _020b3dc4 ; case 6
	b _020b3dc4 ; case 7
	b _020b3dc4 ; case 8
	b _020b3dc4 ; case 9
	b _020b3dc4 ; case 10
	b _020b3dc4 ; case 11
	b _020b3dbc ; case 12
	b _020b3dbc ; case 13
	b _020b3dc4 ; case 14
	b _020b3dbc ; case 15
_020b3dbc:
	mov r0, #0
	bx lr
_020b3dc4:
	ldr r0, _020b3de0 ; =data_027e0fb8
	ldr r0, [r0]
	ldrb r0, [r0, #0x7d]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b3d6c
_020b3de0: .word data_027e0fb8

	.global func_ov00_020b3de4
	arm_func_start func_ov00_020b3de4
func_ov00_020b3de4: ; 0x020b3de4
	ldr r1, [r0, #4]
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	b _020b3e70
_020b3df4: ; jump table
	b _020b3e70 ; case 0
	b _020b3e38 ; case 1
	b _020b3e38 ; case 2
	b _020b3e40 ; case 3
	b _020b3e70 ; case 4
	b _020b3e70 ; case 5
	b _020b3e70 ; case 6
	b _020b3e70 ; case 7
	b _020b3e70 ; case 8
	b _020b3e38 ; case 9
	b _020b3e38 ; case 10
	b _020b3e38 ; case 11
	b _020b3e70 ; case 12
	b _020b3e70 ; case 13
	b _020b3e38 ; case 14
	b _020b3e38 ; case 15
	b _020b3e38 ; case 16
_020b3e38:
	mov r0, #0
	bx lr
_020b3e40:
	ldr r1, [r0, #0x60]
	cmp r1, #0x12
	cmpne r1, #0x18
	cmpne r1, #0x19
	bne _020b3e68
	ldrsh r0, [r0, #0x80]
	cmp r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
_020b3e68:
	mov r0, #1
	bx lr
_020b3e70:
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b3de4

	.global func_ov00_020b3e78
	arm_func_start func_ov00_020b3e78
func_ov00_020b3e78: ; 0x020b3e78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b3e78

	.global func_ov00_020b3e94
	arm_func_start func_ov00_020b3e94
func_ov00_020b3e94: ; 0x020b3e94
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b3e94

	.global func_ov00_020b3ea8
	thumb_func_start func_ov00_020b3ea8
func_ov00_020b3ea8: ; 0x020b3ea8
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020b3ea8

	.global func_ov00_020b3eac
	arm_func_start func_ov00_020b3eac
func_ov00_020b3eac: ; 0x020b3eac
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, r0, #0x14
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b3eac

	.global func_ov00_020b3ec4
	arm_func_start func_ov00_020b3ec4
func_ov00_020b3ec4: ; 0x020b3ec4
	stmdb sp!, {r3, lr}
	bl func_ov00_020b3eac
	ldrsh r1, [r0, #0x1a]
	ldrsh r0, [r0, #0x20]
	add r0, r1, r0
	cmp r1, r0
	movge r1, r0
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b3ec4

	.global func_ov00_020b3ee8
	arm_func_start func_ov00_020b3ee8
func_ov00_020b3ee8: ; 0x020b3ee8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _020b3f20 ; =data_027e03c8
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b3ee8
_020b3f20: .word data_027e03c8

	.global func_ov00_020b3f24
	arm_func_start func_ov00_020b3f24
func_ov00_020b3f24: ; 0x020b3f24
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r2
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	mov r1, r4
	mov r0, #0x1b
	mov r2, #3
	bl func_01ffa9fc
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _020b3f74 ; =data_027e03c8
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b3f24
_020b3f74: .word data_027e03c8

	.global func_ov00_020b3f78
	arm_func_start func_ov00_020b3f78
func_ov00_020b3f78: ; 0x020b3f78
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r2
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	mov r2, #1
	add r1, sp, #4
	mov r0, #0x10
	str r2, [sp, #4]
	bl func_01ffa9fc
	mov r1, r4
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	mov r0, #2
	str r0, [sp]
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	bl func_01ffa9fc
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _020b3ff8 ; =data_027e03c8
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b3f78
_020b3ff8: .word data_027e03c8

	.global func_ov00_020b3ffc
	arm_func_start func_ov00_020b3ffc
func_ov00_020b3ffc: ; 0x020b3ffc
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r1, #0
	mov r5, r2
	mov r4, r3
	mov r2, r1
	mov r0, #0x11
	bl func_01ffa9fc
	mov r1, r4
	mov r0, #0x1c
	mov r2, #3
	bl func_01ffa9fc
	mov r1, r5
	mov r0, #0x1a
	mov r2, #9
	bl func_01ffa9fc
	mov r1, r6
	mov r0, #0x1b
	mov r2, #3
	bl func_01ffa9fc
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl func_01ffa9fc
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020b3ffc

	.global func_ov00_020b4078
	arm_func_start func_ov00_020b4078
func_ov00_020b4078: ; 0x020b4078
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r6, r0
	mov r1, #0
	mov r4, r2
	mov r2, r1
	mov r0, #0x11
	bl func_01ffa9fc
	mov r1, r4
	mov r0, #0x1c
	mov r2, #3
	bl func_01ffa9fc
	mov r1, r5
	mov r0, #0x1a
	mov r2, #9
	bl func_01ffa9fc
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl func_01ffa9fc
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end func_ov00_020b4078

	.global func_ov00_020b40e8
	arm_func_start func_ov00_020b40e8
func_ov00_020b40e8: ; 0x020b40e8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0
	mov r5, r0
	mov r2, r1
	mov r0, #0x11
	bl func_01ffa9fc
	mov r1, r4
	mov r0, #0x1c
	mov r2, #3
	bl func_01ffa9fc
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r2, #1
	add r1, sp, #0
	mov r0, #0x12
	str r2, [sp]
	bl func_01ffa9fc
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b40e8

	.global func_ov00_020b413c
	arm_func_start func_ov00_020b413c
func_ov00_020b413c: ; 0x020b413c
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov ip, r1, lsl #0x1
	add r1, ip, #1
	mov r5, r0
	ldr r3, _020b419c ; =data_02050f54
	mov ip, ip, lsl #0x1
	mov r0, r1, lsl #0x1
	mov r4, r2
	ldrsh r2, [r3, r0]
	ldrsh r1, [r3, ip]
	add r0, sp, #0
	blx func_01ff8214
	mov r0, r5
	ldr r3, [r0]
	add r1, sp, #0
	ldr r3, [r3, #0x14]
	mov r2, r4
	blx r3
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b413c
_020b419c: .word data_02050f54

	.global func_ov00_020b41a0
	arm_func_start func_ov00_020b41a0
func_ov00_020b41a0: ; 0x020b41a0
	ldr ip, _020b41b4 ; =func_ov00_020b3ffc
	ldr r1, _020b41b8 ; =data_027e0468
	ldr r2, _020b41bc ; =data_027e0438
	ldr r3, _020b41c0 ; =data_027e045c
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b41a0
_020b41b4: .word func_ov00_020b3ffc
_020b41b8: .word data_027e0468
_020b41bc: .word data_027e0438
_020b41c0: .word data_027e045c

	.global func_ov00_020b41c4
	arm_func_start func_ov00_020b41c4
func_ov00_020b41c4: ; 0x020b41c4
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _020b41e8 ; =data_027e03c8
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b41c4
_020b41e8: .word data_027e03c8

	.global func_ov00_020b41ec
	arm_func_start func_ov00_020b41ec
func_ov00_020b41ec: ; 0x020b41ec
	stmdb sp!, {r4, lr}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	ldr r0, _020b4218 ; =data_ov00_020e9360
	bl func_ov00_02079eb4
	mov r1, r0
	mov r0, r4
	bl func_020197bc
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b41ec
_020b4218: .word data_ov00_020e9360

	.global func_ov00_020b421c
	arm_func_start func_ov00_020b421c
func_ov00_020b421c: ; 0x020b421c
	stmdb sp!, {r4, lr}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	ldr r0, _020b424c ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r1, r0
	mov r0, r4
	bl func_020197bc
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b421c
_020b424c: .word data_ov00_020e9360

	.global func_ov00_020b4250
	arm_func_start func_ov00_020b4250
func_ov00_020b4250: ; 0x020b4250
	mov r2, #0
	strh r2, [r0, #0x14]
	mov r1, #0x1000
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	strb r2, [r0, #0x16]
	strb r2, [r0, #0x17]
	str r2, [r0]
	bx lr
	arm_func_end func_ov00_020b4250

	.global func_ov00_020b4274
	arm_func_start func_ov00_020b4274
func_ov00_020b4274: ; 0x020b4274
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrne r1, [r4]
	cmpne r1, #0
	beq _020b4294
	bl func_ov00_020c0e04
_020b4294:
	mov r0, #0
	strh r0, [r4, #0x12]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b4274

	.global func_ov00_020b42a0
	arm_func_start func_ov00_020b42a0
func_ov00_020b42a0: ; 0x020b42a0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrsh r0, [r5, #0x14]
	ldr r2, [r5]
	mov r4, r1
	cmp r2, r0
	ldreqb r0, [r5, #0x16]
	cmpeq r0, #0
	beq _020b4354
	ldrsh r0, [r5, #0x12]
	cmp r0, #0
	bne _020b4354
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _020b434c
	mov r0, #0
	strh r0, [r5, #0x10]
	ldr r1, [r5, #0x18]
	cmp r1, #0
	ldrne r0, [r5, #0x1c]
	cmpne r0, #0
	ldrne r2, [r1, #4]
	ldrne r2, [r2, #8]
	cmpne r2, #0
	beq _020b4354
	bl func_ov00_020c0d1c
	ldr r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xe]
	strh r0, [r1, #0xe]
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r2, #0x1c]
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0x20]
	str r0, [r1, #0x20]
	b _020b4354
_020b434c:
	mov r0, #0x1000
	strh r0, [r5, #0x10]
_020b4354:
	ldr r1, [r5]
	mov r0, #0
	strh r1, [r5, #0x14]
	strb r0, [r5, #0x17]
	ldrsh r0, [r5, #0x10]
	add r0, r0, r4
	strh r0, [r5, #0x10]
	ldrsh r0, [r5, #0x10]
	cmp r0, #0x1000
	movge r0, #0x1000
	strh r0, [r5, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b42a0

	.global func_ov00_020b4384
	arm_func_start func_ov00_020b4384
func_ov00_020b4384: ; 0x020b4384
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrsh r0, [r5, #0x12]
	mov r4, #0
	cmp r0, #0
	ble _020b43a8
	cmp r0, #0x1000
	movlt r4, r0
	blt _020b43c8
_020b43a8:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	ldrne r0, [r5, #0x1c]
	cmpne r0, #0
	ldrne r0, [r1, #4]
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrnesh r4, [r5, #0x10]
_020b43c8:
	cmp r4, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x18]
	bl func_ov00_020c0d4c
	str r4, [r0, #4]
	ldr r0, [r5, #0x1c]
	bl func_ov00_020c0d4c
	rsb r1, r4, #0x1000
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b4384

	.global func_ov00_020b43f0
	arm_func_start func_ov00_020b43f0
func_ov00_020b43f0: ; 0x020b43f0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strh r0, [r4, #0x12]
	mov r0, #0x1000
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020b4420
	bl func_ov00_020c0d4c
	mov r1, #0x1000
	str r1, [r0, #4]
_020b4420:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl func_ov00_020c0d4c
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b43f0

	.global func_ov00_020b443c
	arm_func_start func_ov00_020b443c
func_ov00_020b443c: ; 0x020b443c
	bx lr
	arm_func_end func_ov00_020b443c

	.global func_ov00_020b4440
	arm_func_start func_ov00_020b4440
func_ov00_020b4440: ; 0x020b4440
	add r1, r0, #0x100
	mov r3, #0x1000
	strh r3, [r1, #0x10]
	mov r2, #0
	strb r2, [r0, #0x117]
	strh r3, [r1, #0x30]
	strb r2, [r0, #0x137]
	bx lr
	arm_func_end func_ov00_020b4440

	.global func_ov00_020b4460
	arm_func_start func_ov00_020b4460
func_ov00_020b4460: ; 0x020b4460
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r2
	cmp r1, #0
	mov r5, #0
	beq _020b44a4
	ldr r1, _020b44d0 ; =data_027e0e58
	add r6, r0, #0x168
	ldr r4, [r1]
_020b4480:
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl func_ov00_0207c474
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #0xc
	blo _020b4480
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b44a4:
	ldr r1, _020b44d0 ; =data_027e0e58
	add r6, r0, #0x168
	ldr r4, [r1]
_020b44b0:
	mov r0, r4
	mov r1, r6
	bl func_ov00_0207c444
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #0xc
	blo _020b44b0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b4460
_020b44d0: .word data_027e0e58

	.global func_ov00_020b44d4
	arm_func_start func_ov00_020b44d4
func_ov00_020b44d4: ; 0x020b44d4
	stmdb sp!, {r4, lr}
	ldr r3, _020b4550 ; =0x00001c72
	cmp r1, r3
	movgt r1, r3
	bgt _020b44f8
	mov r3, #0x2000
	rsb r3, r3, #0
	cmp r1, r3
	movlt r1, r3
_020b44f8:
	ldr r3, _020b4554 ; =0x0000071c
	mov ip, #0
	umull r4, lr, r2, r3
	mla lr, r2, ip, lr
	mov r2, r2, asr #0x1f
	mla lr, r2, r3, lr
	adds r4, r4, #0x800
	ldrsh ip, [r0, #0x2e]
	adc r2, lr, #0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	subs r2, r1, ip
	rsbmi r2, r2, #0
	cmp r2, r3
	strleh r1, [r0, #0x2c]
	ldmleia sp!, {r4, pc}
	cmp ip, r1
	addlt r1, ip, r3
	strlth r1, [r0, #0x2c]
	subge r1, ip, r3
	strgeh r1, [r0, #0x2c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b44d4
_020b4550: .word 0x00001c72
_020b4554: .word 0x0000071c

	.global func_ov00_020b4558
	arm_func_start func_ov00_020b4558
func_ov00_020b4558: ; 0x020b4558
	stmdb sp!, {r4, lr}
	ldr ip, _020b45d8 ; =0x00002e39
	cmp r1, ip
	movgt r1, ip
	bgt _020b4578
	rsb r3, ip, #0
	cmp r1, r3
	movlt r1, r3
_020b4578:
	ldr r3, _020b45dc ; =0x00001111
	mov ip, #0
	umull r4, lr, r2, r3
	mla lr, r2, ip, lr
	mov r2, r2, asr #0x1f
	mla lr, r2, r3, lr
	adds r4, r4, #0x800
	ldrsh ip, [r0, #0x32]
	adc r2, lr, #0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	subs r2, r1, ip
	rsbmi r2, r2, #0
	cmp r2, r3
	strleh r1, [r0, #0x30]
	ble _020b45cc
	cmp ip, r1
	addlt r1, ip, r3
	strlth r1, [r0, #0x30]
	subge r1, ip, r3
	strgeh r1, [r0, #0x30]
_020b45cc:
	mov r1, #1
	strb r1, [r0, #0x148]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b4558
_020b45d8: .word 0x00002e39
_020b45dc: .word 0x00001111

	.global func_ov00_020b45e0
	arm_func_start func_ov00_020b45e0
func_ov00_020b45e0: ; 0x020b45e0
	mov r1, #0
	strh r1, [r0, #0x32]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x2e]
	strh r1, [r0, #0x2c]
	bx lr
	arm_func_end func_ov00_020b45e0

	.global func_ov00_020b45f8
	arm_func_start func_ov00_020b45f8
func_ov00_020b45f8: ; 0x020b45f8
	ldr ip, [r1]
	str ip, [r0, #0x100]
	ldr ip, [r1, #4]
	str ip, [r0, #0x104]
	ldr ip, [r1, #8]
	str ip, [r0, #0x108]
	ldr ip, [r1, #0xc]
	str ip, [r0, #0x10c]
	strb r2, [r0, #0x116]
	strb r3, [r0, #0x117]
	ldr ip, [r1]
	str ip, [r0, #0x120]
	ldr ip, [r1, #4]
	str ip, [r0, #0x124]
	ldr ip, [r1, #8]
	str ip, [r0, #0x128]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x12c]
	strb r2, [r0, #0x136]
	strb r3, [r0, #0x137]
	bx lr
	arm_func_end func_ov00_020b45f8

	.global func_ov00_020b464c
	arm_func_start func_ov00_020b464c
func_ov00_020b464c: ; 0x020b464c
	ldr ip, [r1]
	str ip, [r0, #0x100]
	ldr ip, [r1, #4]
	str ip, [r0, #0x104]
	ldr ip, [r1, #8]
	str ip, [r0, #0x108]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x10c]
	strb r2, [r0, #0x116]
	strb r3, [r0, #0x117]
	bx lr
	arm_func_end func_ov00_020b464c

	.global func_ov00_020b4678
	arm_func_start func_ov00_020b4678
func_ov00_020b4678: ; 0x020b4678
	stmdb sp!, {r3, lr}
	cmp r3, #0x800
	mov r3, #1
	bge _020b4694
	mov r2, #0
	bl func_ov00_020b45f8
	ldmia sp!, {r3, pc}
_020b4694:
	mov r1, r2
	mov r2, #0
	bl func_ov00_020b45f8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b4678

	.global func_ov00_020b46a4
	arm_func_start func_ov00_020b46a4
func_ov00_020b46a4: ; 0x020b46a4
	stmdb sp!, {r3, lr}
	add r3, r0, #0x100
	ldrsh r3, [r3, #0x32]
	cmp r3, #0x800
	mov r3, #1
	bge _020b46c8
	mov r2, #0
	bl func_ov00_020b464c
	ldmia sp!, {r3, pc}
_020b46c8:
	mov r1, r2
	mov r2, #0
	bl func_ov00_020b464c
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b46a4

	.global func_ov00_020b46d8
	arm_func_start func_ov00_020b46d8
func_ov00_020b46d8: ; 0x020b46d8
	bx lr
	arm_func_end func_ov00_020b46d8

	.global func_ov00_020b46dc
	arm_func_start func_ov00_020b46dc
func_ov00_020b46dc: ; 0x020b46dc
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x14b]
	cmp r0, #0
	bne _020b4700
	add r0, r4, #0x100
	bl func_ov00_020b4274
	add r0, r4, #0x120
	bl func_ov00_020b4274
_020b4700:
	ldrsh r1, [r4, #0x30]
	mov r0, #0
	strh r1, [r4, #0x32]
	ldrsh r1, [r4, #0x2c]
	strh r1, [r4, #0x2e]
	strb r0, [r4, #0x148]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b46dc

	.global func_ov00_020b471c
	arm_func_start func_ov00_020b471c
func_ov00_020b471c: ; 0x020b471c
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b471c

	.global func_ov00_020b4730
	arm_func_start func_ov00_020b4730
func_ov00_020b4730: ; 0x020b4730
	bx lr
	arm_func_end func_ov00_020b4730

	.global func_ov00_020b4734
	arm_func_start func_ov00_020b4734
func_ov00_020b4734: ; 0x020b4734
	bx lr
	arm_func_end func_ov00_020b4734

	.global func_ov00_020b4738
	arm_func_start func_ov00_020b4738
func_ov00_020b4738: ; 0x020b4738
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x50]
	add r0, r4, #0x120
	bl func_ov00_020b42a0
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x50]
	bl func_ov00_020b42a0
	ldrb r0, [r4, #0x14b]
	cmp r0, #0
	bne _020b4800
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldr r1, [r4, #0x118]
	cmp r1, #0
	beq _020b47bc
	mov r0, r4
	ldr r3, [r0]
	ldr r2, [r4, #0x100]
	ldr r3, [r3, #0x38]
	blx r3
	ldrb r3, [r4, #0x116]
	ldr r1, [r4, #0x118]
	mov r0, r4
	add r2, r4, #0x100
	bl func_ov00_020b484c
	add r0, r4, #0x100
	bl func_ov00_020b4384
	mov r0, #0
	strb r0, [r4, #0x116]
_020b47bc:
	ldr r1, [r4, #0x138]
	cmp r1, #0
	beq _020b4800
	mov r0, r4
	ldr r3, [r0]
	ldr r2, [r4, #0x120]
	ldr r3, [r3, #0x38]
	blx r3
	ldrb r3, [r4, #0x136]
	ldr r1, [r4, #0x138]
	mov r0, r4
	add r2, r4, #0x120
	bl func_ov00_020b484c
	add r0, r4, #0x120
	bl func_ov00_020b4384
	mov r0, #0
	strb r0, [r4, #0x136]
_020b4800:
	ldrsh r1, [r4, #0x2c]
	ldr r0, _020b482c ; =0x00001c72
	cmp r1, r0
	movgt r1, r0
	bgt _020b4824
	mov r0, #0x2000
	rsb r0, r0, #0
	cmp r1, r0
	movlt r1, r0
_020b4824:
	strh r1, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b4738
_020b482c: .word 0x00001c72

	.global func_ov00_020b4830
	arm_func_start func_ov00_020b4830
func_ov00_020b4830: ; 0x020b4830
	bx lr
	arm_func_end func_ov00_020b4830

	.global func_ov00_020b4834
	arm_func_start func_ov00_020b4834
func_ov00_020b4834: ; 0x020b4834
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b4834

	.global func_ov00_020b483c
	arm_func_start func_ov00_020b483c
func_ov00_020b483c: ; 0x020b483c
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b483c

	.global func_ov00_020b4844
	arm_func_start func_ov00_020b4844
func_ov00_020b4844: ; 0x020b4844
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b4844

	.global func_ov00_020b484c
	arm_func_start func_ov00_020b484c
func_ov00_020b484c: ; 0x020b484c
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, [r0]
	mov r6, r1
	ldr ip, [ip, #0x7c]
	mov r5, r2
	mov r4, r3
	blx ip
	cmp r0, #0
	beq _020b48c4
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r0, r1
	bgt _020b4894
	str r0, [r6, #0x18]
	ldr r1, [r5, #0xc]
	mov r0, r6
	bl func_ov00_020c0d94
	b _020b48a4
_020b4894:
	str r1, [r6, #0x18]
	ldr r1, [r5, #8]
	mov r0, r6
	bl func_ov00_020c0d94
_020b48a4:
	ldr r0, [r5, #4]
	cmp r4, #0
	str r0, [r6, #0x10]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #8]
	mov r0, r6
	bl func_ov00_020c0e24
	ldmia sp!, {r4, r5, r6, pc}
_020b48c4:
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, #0
	bl func_ov00_020c0e24
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020b484c

	.global func_ov00_020b48dc
	arm_func_start func_ov00_020b48dc
func_ov00_020b48dc: ; 0x020b48dc
	stmdb sp!, {r3, lr}
	cmp r1, #0
	add r0, r0, #0x154
	beq _020b48f8
	mov r1, #1
	bl func_ov00_0207a1c8
	ldmia sp!, {r3, pc}
_020b48f8:
	mov r1, #0
	mov r2, #1
	bl func_ov00_0207a1a4
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b48dc

	.global func_ov00_020b4908
	arm_func_start func_ov00_020b4908
func_ov00_020b4908: ; 0x020b4908
	bx lr
	arm_func_end func_ov00_020b4908

	.global func_ov00_020b490c
	arm_func_start func_ov00_020b490c
func_ov00_020b490c: ; 0x020b490c
	bx lr
	arm_func_end func_ov00_020b490c

	.global func_ov00_020b4910
	arm_func_start func_ov00_020b4910
func_ov00_020b4910: ; 0x020b4910
	bx lr
	arm_func_end func_ov00_020b4910

	.global func_ov00_020b4914
	arm_func_start func_ov00_020b4914
func_ov00_020b4914: ; 0x020b4914
	bx lr
	arm_func_end func_ov00_020b4914

	.global func_ov00_020b4918
	arm_func_start func_ov00_020b4918
func_ov00_020b4918: ; 0x020b4918
	ldr ip, _020b492c ; =func_ov00_020b4944
	mov r1, r2
	mov r2, r3
	ldrsh r3, [sp]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b4918
_020b492c: .word func_ov00_020b4944

	.global func_ov00_020b4930
	arm_func_start func_ov00_020b4930
func_ov00_020b4930: ; 0x020b4930
	bx lr
	arm_func_end func_ov00_020b4930

	.global func_ov00_020b4934
	arm_func_start func_ov00_020b4934
func_ov00_020b4934: ; 0x020b4934
	bx lr
	arm_func_end func_ov00_020b4934

	.global func_ov00_020b4938
	arm_func_start func_ov00_020b4938
func_ov00_020b4938: ; 0x020b4938
	bx lr
	arm_func_end func_ov00_020b4938

	.global func_ov00_020b493c
	arm_func_start func_ov00_020b493c
func_ov00_020b493c: ; 0x020b493c
	bx lr
	arm_func_end func_ov00_020b493c

	.global func_ov00_020b4940
	arm_func_start func_ov00_020b4940
func_ov00_020b4940: ; 0x020b4940
	bx lr
	arm_func_end func_ov00_020b4940

	.global func_ov00_020b4944
	arm_func_start func_ov00_020b4944
func_ov00_020b4944: ; 0x020b4944
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #0x4
	mov r4, r2, lsl #0x1
	add r2, r4, #1
	mov r5, r0
	mov r0, r4, lsl #0x1
	ldr ip, _020b49fc ; =data_02050f54
	mov r2, r2, lsl #0x1
	mov r4, r1
	ldrsh r1, [ip, r0]
	ldrsh r2, [ip, r2]
	add r0, sp, #0x24
	mov r6, r3
	blx func_01ff8214
	cmp r6, #0
	beq _020b49dc
	rsb r0, r6, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	ldr r2, _020b49fc ; =data_02050f54
	mov r1, r1, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r0, sp, #0
	blx func_01ff81f8
	add r1, sp, #0x24
	add r0, sp, #0
	mov r2, r1
	bl func_01ff8690
_020b49dc:
	ldr r0, [r5, #0x18c]
	add r1, sp, #0x24
	ldr r3, [r0]
	mov r2, r4
	ldr r3, [r3, #0x14]
	blx r3
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020b4944
_020b49fc: .word data_02050f54

	.global func_ov00_020b4a00
	arm_func_start func_ov00_020b4a00
func_ov00_020b4a00: ; 0x020b4a00
	stmdb sp!, {r4, r5, r6, lr}
	ldr r6, [sp, #0x10]
	mov r5, r1
	cmp r6, #0x800
	movlt r4, r2
	movlt lr, r3
	movge r4, r3
	movge lr, r2
	cmp r6, #0
	ble _020b4a8c
	cmp r6, #0x1000
	bge _020b4a8c
	ldrsh ip, [r5, #0x14]
	ldr r1, [r2]
	cmp r1, ip
	ldrne r1, [r3]
	cmpne r1, ip
	bne _020b4a8c
	ldrsh r1, [r5, #0x10]
	cmp r1, #0x800
	ble _020b4a8c
	cmp r6, #0x800
	rsblt r1, r6, #0x1000
	strlth r1, [r5, #0x12]
	strgeh r6, [r5, #0x12]
	ldr r3, [r0]
	ldr r1, [r5, #0x1c]
	ldr r2, [lr]
	ldr r3, [r3, #0x38]
	blx r3
	ldr r0, [r5, #0x18]
	bl func_ov00_020c0d68
	mov r1, r0
	ldr r0, [r5, #0x1c]
	bl func_ov00_020c0e24
_020b4a8c:
	ldr r1, [r4]
	mov r0, #1
	str r1, [r5]
	ldr r1, [r4, #4]
	str r1, [r5, #4]
	ldr r1, [r4, #8]
	str r1, [r5, #8]
	ldr r1, [r4, #0xc]
	str r1, [r5, #0xc]
	strb r0, [r5, #0x17]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020b4a00

	.global func_ov00_020b4ab8
	arm_func_start func_ov00_020b4ab8
func_ov00_020b4ab8: ; 0x020b4ab8
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020b4ab8

	.global func_ov00_020b4ac0
	arm_func_start func_ov00_020b4ac0
func_ov00_020b4ac0: ; 0x020b4ac0
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #3
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _020b4afc ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r0]
	add r0, sp, #0
	bl func_ov00_02093a1c
	ldr r0, [sp]
	tst r0, #0x1f
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b4ac0
_020b4afc: .word data_027e0f6c

	.global func_ov00_020b4b00
	arm_func_start func_ov00_020b4b00
func_ov00_020b4b00: ; 0x020b4b00
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #3
	mov r0, r1
	ldr r1, [r0]
	bne _020b4b30
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x1a
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
_020b4b30:
	ldr r1, [r1, #0x1c]
	blx r1
	bl func_ov00_020b1940
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b4b00

	.global func_ov00_020b4b4c
	arm_func_start func_ov00_020b4b4c
func_ov00_020b4b4c: ; 0x020b4b4c
	ldr r0, [r0, #4]
	cmp r0, #3
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020b4b4c

	.global func_ov00_020b4b60
	arm_func_start func_ov00_020b4b60
func_ov00_020b4b60: ; 0x020b4b60
	mul r2, r0, r1
	cmp r2, #0
	addle r0, r0, r1
	bxle lr
	cmp r0, #0
	blt _020b4b84
	cmp r0, r1
	movle r0, r1
	bx lr
_020b4b84:
	cmp r0, r1
	movge r0, r1
	bx lr
	arm_func_end func_ov00_020b4b60

	.global func_ov00_020b4b90
	thumb_func_start func_ov00_020b4b90
func_ov00_020b4b90: ; 0x020b4b90
	push {r4, lr}
	add r4, r0, #0
	bl func_ov00_020b1528
	ldr r0, _020b4bfc ; =data_ov00_020e64c8
	add r1, r4, #0
	str r0, [r4]
	mov r2, #0
	strb r2, [r4, #0x1c]
	add r0, r4, #0
	strb r2, [r4, #0x1d]
	add r0, #0x54
	strb r2, [r0]
	mov r0, #1
	add r1, #0x55
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x5a
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x5c
	strh r2, [r1]
	str r2, [r4, #0x70]
	add r1, r4, #0
	str r2, [r4, #0x74]
	add r1, #0x98
	str r2, [r1]
	add r1, r4, #0
	add r1, #0xa0
	strh r2, [r1]
	sub r1, r0, #2
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xc5
	strb r2, [r0]
	add r0, r4, #0
	ldr r1, _020b4c00 ; =0xffffb000
	add r0, #0xd0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe0
	str r2, [r0]
	ldr r1, _020b4c04 ; =data_027e0d0c
	add r0, r4, #0
	bl func_ov00_020b4c4c
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020b4b90
_020b4bfc: .word data_ov00_020e64c8
_020b4c00: .word 0xffffb000
_020b4c04: .word data_027e0d0c

	.global func_ov00_020b4c08
	thumb_func_start func_ov00_020b4c08
func_ov00_020b4c08: ; 0x020b4c08
	push {r4, lr}
	add r4, r0, #0
	bl func_ov00_020b1570
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end func_ov00_020b4c08

	.global func_ov00_020b4c14
	thumb_func_start func_ov00_020b4c14
func_ov00_020b4c14: ; 0x020b4c14
	push {r4, lr}
	add r4, r0, #0
	bl func_ov00_020b1570
	add r0, r4, #0
	blx _ZN9SysObjectdlEPv
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020b4c14

	.global func_ov00_020b4c28
	thumb_func_start func_ov00_020b4c28
func_ov00_020b4c28: ; 0x020b4c28
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020b4c28

	.global func_ov00_020b4c2c
	arm_func_start func_ov00_020b4c2c
func_ov00_020b4c2c: ; 0x020b4c2c
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #0x120]
	ldr r1, [r1, #0x128]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b4c2c

	.global func_ov00_020b4c4c
	thumb_func_start func_ov00_020b4c4c
func_ov00_020b4c4c: ; 0x020b4c4c
	push {r3, r4, r5, lr}
	add r4, r0, #0
	str r2, [r4, #0x2c]
	ldr r5, [r1, #4]
	ldr r3, [r1, #8]
	ldr r1, [r1]
	add r2, r5, r2
	str r1, [r4, #0x20]
	str r2, [r4, #0x24]
	str r3, [r4, #0x28]
	ldr r1, [r4, #0x20]
	add r2, r4, #0
	str r1, [r4, #0x30]
	ldr r1, [r4, #0x24]
	add r2, #0xfc
	str r1, [r4, #0x34]
	ldr r1, [r4, #0x28]
	str r1, [r4, #0x38]
	ldr r1, [r4, #0x2c]
	str r1, [r4, #0x3c]
	mov r1, #0
	str r1, [r2]
	mov r2, #1
	lsl r2, r2, #8
	str r1, [r4, r2]
	add r3, r2, #4
	str r1, [r4, r3]
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x64]
	str r1, [r4, #0x68]
	add r3, r4, #0
	str r1, [r4, #0x6c]
	add r3, #0x5c
	strh r1, [r3]
	lsl r3, r2, #4
	add r2, r4, #0
	str r1, [r4, #0x40]
	add r2, #0xa6
	strh r3, [r2]
	add r2, r4, #0
	add r2, #0xa8
	strh r3, [r2]
	add r2, r4, #0
	sub r3, r1, #1
	add r2, #0xc8
	strh r3, [r2]
	add r2, r4, #0
	add r2, #0x5e
	strh r1, [r2]
	add r2, r4, #0
	add r2, #0x60
	strh r1, [r2]
	add r2, r4, #0
	add r2, #0xdc
	str r1, [r2]
	add r2, r4, #0
	add r2, #0xbe
	strb r1, [r2]
	add r2, r4, #0
	add r2, #0x59
	strb r1, [r2]
	add r2, r4, #0
	add r2, #0x5a
	strh r1, [r2]
	add r2, r4, #0
	ldr r3, _020b4cfc ; =0xffffb000
	add r2, #0x94
	str r3, [r2]
	add r2, r4, #0
	add r2, #0x56
	strb r1, [r2]
	add r2, r4, #0
	str r1, [r4, #0x50]
	add r2, #0x57
	strb r1, [r2]
	add r2, r4, #0
	add r2, #0x58
	strb r1, [r2]
	blx func_ov00_020b54c8
	add r0, r4, #0
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov00_020b4c4c
_020b4cfc: .word 0xffffb000

	.global func_ov00_020b4d00
	thumb_func_start func_ov00_020b4d00
func_ov00_020b4d00: ; 0x020b4d00
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _020b4d24 ; =data_027e0e60
	add r4, r0, #0
	add r2, r4, #0
	ldr r1, [r1]
	add r0, sp, #0
	add r2, #0x20
	blx func_ov00_02083a1c
	add r0, sp, #0
	ldrb r1, [r0]
	strb r1, [r4, #0x1c]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x1d]
	add sp, #4
	pop {r3, r4, pc}
	nop
	thumb_func_end func_ov00_020b4d00
_020b4d24: .word data_027e0e60

	.global func_ov00_020b4d28
	arm_func_start func_ov00_020b4d28
func_ov00_020b4d28: ; 0x020b4d28
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, [r2, #8]
	ldr r5, [r2]
	rsbs r4, r4, #0
	mov r7, r0
	cmpeq r5, #0
	mov r6, r1
	mov sb, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r5, #0
	movge r0, r5
	rsblt r0, r5, #0
	cmp r4, #0
	movge r1, r4
	rsblt r1, r4, #0
	cmp r1, r0
	ble _020b4ec8
	ldr r0, _020b502c ; =data_027e0e60
	ldr r2, [r7, #0x20]
	ldr r1, [r7, #0x2c]
	ldr r0, [r0]
	add r1, r2, r1
	sub r1, r1, #0x1000
	bl func_ov00_020839d4
	ldr r3, [r7, #0x20]
	ldr r2, [r7, #0x2c]
	ldr r1, _020b502c ; =data_027e0e60
	mov r8, r0
	sub r2, r3, r2
	ldr r0, [r1]
	add r1, r2, #0x1000
	bl func_ov00_020839d4
	ldr r2, [sb]
	mov r1, r0
	cmp r2, #0
	ble _020b4dd0
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083c24
	mov r8, r0
	b _020b4e60
_020b4dd0:
	bge _020b4dec
	ldr r0, _020b502c ; =data_027e0e60
	mov r1, r8
	ldr r0, [r0]
	bl func_ov00_02083c24
	mov r8, r0
	b _020b4e60
_020b4dec:
	ldr r3, _020b5030 ; =data_027e0764
	ldr r2, [r3]
	ldmib r3, {r0, sb}
	umull lr, ip, sb, r2
	mla ip, sb, r0, ip
	ldr r0, [r3, #0xc]
	ldr sb, [r3, #0x10]
	mla ip, r0, r2, ip
	ldr r2, [r3, #0x14]
	adds r0, sb, lr
	adc ip, r2, ip
	mov r2, ip, lsr #0x18
	and sb, r2, #0xff
	str r0, [r3]
	mov r2, sb, lsr #0x1f
	rsb r0, r2, sb, lsl #31
	str ip, [r3, #4]
	adds r0, r2, r0, ror #31
	bne _020b4e4c
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083c24
	mov r8, r0
	b _020b4e60
_020b4e4c:
	ldr r0, _020b502c ; =data_027e0e60
	mov r1, r8
	ldr r0, [r0]
	bl func_ov00_02083c24
	mov r8, r0
_020b4e60:
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020833c4
	cmp r8, r0
	ble _020b4e88
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020833dc
	cmp r8, r0
	blt _020b4e90
_020b4e88:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020b4e90:
	ldr r1, [r7, #0x20]
	mov r0, r4
	sub r1, r8, r1
	bl Divide
	smull r1, r0, r5, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r6, #8]
	ldr r0, [r7, #0x20]
	sub r0, r8, r0
	str r0, [r6]
	b _020b501c
_020b4ec8:
	ldr r0, _020b502c ; =data_027e0e60
	ldr r2, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	ldr r0, [r0]
	add r1, r2, r1
	sub r1, r1, #0x1000
	bl func_ov00_020839f8
	ldr r3, [r7, #0x28]
	ldr r2, [r7, #0x2c]
	ldr r1, _020b502c ; =data_027e0e60
	mov r8, r0
	sub r2, r3, r2
	ldr r0, [r1]
	add r1, r2, #0x1000
	bl func_ov00_020839f8
	ldr r2, [sb, #8]
	mov r1, r0
	cmp r2, #0
	ble _020b4f28
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083c50
	mov r8, r0
	b _020b4fb8
_020b4f28:
	bge _020b4f44
	ldr r0, _020b502c ; =data_027e0e60
	mov r1, r8
	ldr r0, [r0]
	bl func_ov00_02083c50
	mov r8, r0
	b _020b4fb8
_020b4f44:
	ldr r3, _020b5030 ; =data_027e0764
	ldr r2, [r3]
	ldmib r3, {r0, sb}
	umull lr, ip, sb, r2
	mla ip, sb, r0, ip
	ldr r0, [r3, #0xc]
	ldr sb, [r3, #0x10]
	mla ip, r0, r2, ip
	ldr r2, [r3, #0x14]
	adds r0, sb, lr
	adc ip, r2, ip
	mov r2, ip, lsr #0x18
	and sb, r2, #0xff
	str r0, [r3]
	mov r2, sb, lsr #0x1f
	rsb r0, r2, sb, lsl #31
	str ip, [r3, #4]
	adds r0, r2, r0, ror #31
	bne _020b4fa4
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083c50
	mov r8, r0
	b _020b4fb8
_020b4fa4:
	ldr r0, _020b502c ; =data_027e0e60
	mov r1, r8
	ldr r0, [r0]
	bl func_ov00_02083c50
	mov r8, r0
_020b4fb8:
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020833d0
	cmp r8, r0
	ble _020b4fe0
	ldr r0, _020b502c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020833e8
	cmp r8, r0
	blt _020b4fe8
_020b4fe0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020b4fe8:
	ldr r1, [r7, #0x28]
	mov r0, r5
	sub r1, r8, r1
	bl Divide
	smull r1, r0, r4, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r6]
	ldr r0, [r7, #0x28]
	sub r0, r8, r0
	str r0, [r6, #8]
_020b501c:
	mov r0, #0
	str r0, [r6, #4]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020b4d28
_020b502c: .word data_027e0e60
_020b5030: .word data_027e0764

	.global func_ov00_020b5034
	arm_func_start func_ov00_020b5034
func_ov00_020b5034: ; 0x020b5034
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrsh r0, [r6, #0xc6]
	mov r5, r1
	ldr r4, [r5, #4]
	cmp r0, #0
	blt _020b50cc
	ldr r0, _020b50d4 ; =data_027e0e60
	ldrb r3, [r6, #0x1c]
	ldrb r2, [r6, #0x1d]
	ldr r0, [r0]
	sub ip, sp, #4
	strb r3, [ip]
	strb r2, [ip, #1]
	ldr r2, [ip]
	bl func_ov00_02083c7c
	ldr r7, [r5, #4]
	mov r0, r6
	mov r1, r5
	bl func_ov00_020b6af0
	cmp r7, r0
	ldrge r0, _020b50d8 ; =0xfffff333
	cmpge r7, r0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #0xcd
	add r0, r0, #0xc00
	cmp r4, r0
	ldrlesh r0, [r6, #0x5c]
	cmple r0, #0
	bgt _020b50cc
	ldrb r0, [r6, #0x1c]
	ldrb r1, [r6, #0x1d]
	ldr r2, _020b50dc ; =func_ov00_020b1940
	bl func_ov00_020b199c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_020b50cc:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b5034
_020b50d4: .word data_027e0e60
_020b50d8: .word 0xfffff333
_020b50dc: .word func_ov00_020b1940

	.global func_ov00_020b50e0
	arm_func_start func_ov00_020b50e0
func_ov00_020b50e0: ; 0x020b50e0
	ldr r1, [r0, #0xc0]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020b50e0

	.global func_ov00_020b50f8
	arm_func_start func_ov00_020b50f8
func_ov00_020b50f8: ; 0x020b50f8
	ldr r0, [r0, #0xc0]
	cmp r0, #0x1e
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end func_ov00_020b50f8

	.global func_ov00_020b510c
	arm_func_start func_ov00_020b510c
func_ov00_020b510c: ; 0x020b510c
	stmdb sp!, {r4, lr}
	ldr r1, _020b515c ; =data_027e0d38
	mov r4, r0
	ldr r0, [r1]
	bl func_ov00_02078b40
	cmp r0, #4
	bne _020b513c
	add r0, r4, #0x20
	bl func_ov00_020b1ba4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020b513c:
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r4, #0x1d]
	sub r2, sp, #4
	strb r1, [r2]
	strb r0, [r2, #1]
	ldr r0, [r2]
	bl func_ov00_020b1b54
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b510c
_020b515c: .word data_027e0d38

	.global func_ov00_020b5160
	arm_func_start func_ov00_020b5160
func_ov00_020b5160: ; 0x020b5160
	stmdb sp!, {r3, r4, r5, lr}
	ldr lr, [r1]
	cmp lr, #0
	blt _020b51a0
	mov r0, r2, asr #0x1f
	rsbs r4, r2, #0
	umull ip, r5, lr, r4
	rsc r3, r0, #0
	mla r5, lr, r3, r5
	mov r3, lr, asr #0x1f
	mla r5, r3, r4, r5
	mov r3, ip, lsr #0xc
	orr r3, r3, r5, lsl #20
	add r3, lr, r3
	str r3, [r1]
	b _020b51b8
_020b51a0:
	smull r3, r0, lr, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	sub r0, lr, r3
	str r0, [r1]
	mov r0, r2, asr #0x1f
_020b51b8:
	ldr r5, [r1, #4]
	cmp r5, #0
	blt _020b51ec
	rsbs ip, r2, #0
	rsc r3, r0, #0
	umull r4, lr, r5, ip
	mla lr, r5, r3, lr
	mov r3, r5, asr #0x1f
	mla lr, r3, ip, lr
	mov r3, r4, lsr #0xc
	orr r3, r3, lr, lsl #20
	add r3, r5, r3
	b _020b5208
_020b51ec:
	umull lr, ip, r5, r2
	mla ip, r5, r0, ip
	mov r3, r5, asr #0x1f
	mla ip, r3, r2, ip
	mov r3, lr, lsr #0xc
	orr r3, r3, ip, lsl #20
	sub r3, r5, r3
_020b5208:
	str r3, [r1, #4]
	ldr lr, [r1, #8]
	cmp lr, #0
	blt _020b5244
	rsbs r2, r2, #0
	rsc r0, r0, #0
	umull ip, r3, lr, r2
	mla r3, lr, r0, r3
	mov r0, lr, asr #0x1f
	mla r3, r0, r2, r3
	mov r0, ip, lsr #0xc
	orr r0, r0, r3, lsl #20
	add r0, lr, r0
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_020b5244:
	umull ip, r3, lr, r2
	mla r3, lr, r0, r3
	mov r0, lr, asr #0x1f
	mla r3, r0, r2, r3
	mov r0, ip, lsr #0xc
	orr r0, r0, r3, lsl #20
	sub r0, lr, r0
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b5160

	.global func_ov00_020b5268
	arm_func_start func_ov00_020b5268
func_ov00_020b5268: ; 0x020b5268
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x34
	mov r4, r2
	ldr r2, [r4]
	mov r5, r1
	str r2, [sp, #0x28]
	ldr r2, [r4, #4]
	ldr r1, _020b5340 ; =data_027e0e60
	str r2, [sp, #0x2c]
	ldr r2, [r4, #8]
	mov r6, r0
	ldr r0, [r1]
	str r2, [sp, #0x30]
	add r1, sp, #0x28
	mov r2, #0
	bl func_ov00_02083ee0
	ldr r2, [r4, #4]
	ldr r1, _020b5344 ; =0xfffff667
	add r1, r2, r1
	cmp r0, r1
	ble _020b52c4
	cmp r0, r2
	ble _020b52d0
_020b52c4:
	add sp, sp, #0x34
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020b52d0:
	ldr r0, _020b5348 ; =data_ov00_020e64a8
	mov ip, #0
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r3, #0xdf
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	str r0, [sp, #0x20]
	ldr r2, [r4, #8]
	ldr r0, _020b5340 ; =data_027e0e60
	str r2, [sp, #0x24]
	ldr r4, [r6, #0x2c]
	add r2, sp, #0x1c
	stmia sp, {r4, ip}
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	str ip, [sp, #0x10]
	ldr r0, [r0]
	mov r1, r5
	add r3, r6, #0x20
	bl func_01ffbf5c
	mov r4, r0
	add r0, sp, #0x14
	bl func_ov00_02081f4c
	mov r0, r4
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020b5268
_020b5340: .word data_027e0e60
_020b5344: .word 0xfffff667
_020b5348: .word data_ov00_020e64a8

	.global func_ov00_020b534c
	arm_func_start func_ov00_020b534c
func_ov00_020b534c: ; 0x020b534c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b534c

	.global func_ov00_020b5360
	arm_func_start func_ov00_020b5360
func_ov00_020b5360: ; 0x020b5360
	ldrsh r3, [r0, #0xc6]
	cmp r3, #0
	blt _020b53bc
	ldr r3, [r0, #0x74]
	mov r3, r3, lsr #0xb
	and r3, r3, #3
	cmp r3, #2
	bne _020b53bc
	cmp r2, #0
	movne r0, #0
	bxne lr
	rsb r2, r1, #0x2000
	mov r0, #0x52
	mov r1, #0
	umull ip, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adds r2, ip, #0x800
	adc r1, r3, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	bx lr
_020b53bc:
	ldrsh r0, [r0, #0xa8]
	bx lr
	arm_func_end func_ov00_020b5360

	.global func_ov00_020b53c4
	arm_func_start func_ov00_020b53c4
func_ov00_020b53c4: ; 0x020b53c4
	ldr r2, _020b53f0 ; =data_027e077c
	ldr r2, [r2]
	cmp r2, #1
	bxne lr
	ldr r2, [r1]
	str r2, [r0, #0xac]
	ldr r2, [r1, #4]
	str r2, [r0, #0xb0]
	ldr r1, [r1, #8]
	str r1, [r0, #0xb4]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b53c4
_020b53f0: .word data_027e077c

	.global func_ov00_020b53f4
	arm_func_start func_ov00_020b53f4
func_ov00_020b53f4: ; 0x020b53f4
	stmdb sp!, {r3, lr}
	mov r1, r0
	add r0, sp, #0
	bl func_ov00_020b5420
	ldr r0, [sp]
	and r0, r0, #0x1f
	cmp r0, #5
	cmpne r0, #0xa
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b53f4

	.global func_ov00_020b5420
	arm_func_start func_ov00_020b5420
func_ov00_020b5420: ; 0x020b5420
	ldr r1, [r1, #0x74]
	str r1, [r0]
	bx lr
	arm_func_end func_ov00_020b5420

	.global func_ov00_020b542c
	arm_func_start func_ov00_020b542c
func_ov00_020b542c: ; 0x020b542c
	mov r2, #0x5000
	rsb r2, r2, #0
	cmp r1, r2
	movle r1, r2
	str r1, [r0, #0x94]
	bx lr
	arm_func_end func_ov00_020b542c

	.global func_ov00_020b5444
	arm_func_start func_ov00_020b5444
func_ov00_020b5444: ; 0x020b5444
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020b157c
	mov r2, #0
	str r2, [r4, #0x74]
	sub r1, r2, #1
	str r1, [r4, #0xc0]
	strh r1, [r4, #0xc6]
	strb r2, [r4, #0xcc]
	strb r2, [r4, #0xcd]
	strb r2, [r4, #0xce]
	sub r0, r2, #0x5000
	str r0, [r4, #0xd0]
	str r2, [r4, #0xd4]
	str r2, [r4, #0xd8]
	strh r1, [r4, #0xca]
	str r2, [r4, #0xe0]
	str r2, [r4, #0xf0]
	str r2, [r4, #0xf4]
	str r2, [r4, #0xf8]
	str r2, [r4, #0xe4]
	str r2, [r4, #0xe8]
	str r2, [r4, #0xec]
	str r2, [r4, #0x108]
	str r2, [r4, #0x10c]
	str r2, [r4, #0x110]
	str r2, [r4, #0x114]
	str r2, [r4, #0x118]
	str r2, [r4, #0x11c]
	str r2, [r4, #0xac]
	str r2, [r4, #0xb0]
	str r2, [r4, #0xb4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b5444

	.global func_ov00_020b54c8
	arm_func_start func_ov00_020b54c8
func_ov00_020b54c8: ; 0x020b54c8
	mov r1, #0x5000
	rsb r1, r1, #0
	str r1, [r0, #0x9c]
	mov r1, #0x1000
	mov r2, #0
	str r1, [r0, #0x90]
	str r2, [r0, #0x98]
	sub r1, r2, #1
	strh r1, [r0, #0xa2]
	mov r1, #0xdf
	strh r1, [r0, #0xa4]
	strb r2, [r0, #0xb8]
	strb r2, [r0, #0xb9]
	strb r2, [r0, #0xba]
	mov r1, #1
	strb r1, [r0, #0xbb]
	strb r1, [r0, #0xbc]
	strb r2, [r0, #0xbd]
	bx lr
	arm_func_end func_ov00_020b54c8

	.global func_ov00_020b5514
	arm_func_start func_ov00_020b5514
func_ov00_020b5514: ; 0x020b5514
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x70
	mov r6, r0
	ldr r0, [r6, #0x50]
	mov r5, r1
	mov r8, r2
	cmp r0, #0
	bgt _020b5540
	ldrb r0, [r6, #0x56]
	cmp r0, #0
	beq _020b5630
_020b5540:
	ldr r0, _020b5c80 ; =data_027e0fb8
	ldr r0, [r0]
	bl _ZN13PlayerControl18func_ov00_020b034cEv
	cmp r0, #0
	ble _020b5620
	ldr r1, [r5]
	add r0, sp, #0x64
	str r1, [sp, #0x64]
	ldr r2, [r5, #4]
	mov r1, #0
	str r2, [sp, #0x68]
	ldr r2, [r5, #8]
	str r2, [sp, #0x6c]
	str r1, [sp, #0x68]
	bl func_01ff9cec
	ldr r1, _020b5c80 ; =data_027e0fb8
	mov r7, r0
	ldr r0, [r1]
	bl _ZN13PlayerControl13GetTouchAngleEv
	mov r8, r0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x6c]
	bl func_01ffa0f4
	strh r0, [sp, #2]
	ldr r2, _020b5c84 ; =0x0000071c
	mov r1, r8
	add r0, sp, #2
	bl func_0202b154
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #8]
	ldrh r1, [sp, #2]
	ldr r3, _020b5c88 ; =data_02050f54
	ldr r0, [r5]
	mov r1, r1, asr #0x4
	mov r8, r1, lsl #0x1
	mov r1, r8, lsl #0x1
	ldrsh r2, [r3, r1]
	add r1, r8, #1
	mov r1, r1, lsl #0x1
	ldrsh r1, [r3, r1]
	smull ip, r8, r2, r7
	smull r3, r2, r1, r7
	adds r7, ip, #0x800
	adc r1, r8, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, r1, lsl #20
	add r0, r0, r7
	adds r1, r3, #0x800
	str r0, [r5]
	adc r0, r2, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [r5, #8]
	add r0, r0, r1
	str r0, [r5, #8]
_020b5620:
	mov r0, #0
	str r0, [r6, #0x40]
	str r0, [r6, #0x90]
	b _020b572c
_020b5630:
	ldrsh r0, [r6, #0xc6]
	cmp r0, #0
	blt _020b572c
	mov r1, r8
	add r0, r6, #0xe4
	bl func_01ff9c2c
	rsbs r7, r0, #0
	beq _020b5708
	ldr r0, [r6, #0xe8]
	cmp r0, #0
	ble _020b5670
	mov r0, r7
	mov r2, r8
	mov r3, r8
	add r1, r6, #0xe4
	bl func_01ff9e64
_020b5670:
	ldr r0, [r6, #0x108]
	cmp r0, #0
	ldreq r0, [r6, #0x110]
	cmpeq r0, #0
	beq _020b5708
	mov r0, r7
	mov r2, r8
	mov r3, r8
	add r1, r6, #0x108
	bl func_01ff9e64
	ldr r2, [r8]
	mov r0, #0x800
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r3, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	adc r1, r1, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r8]
	ldr r2, [r8, #4]
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r3, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	adc r1, r1, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r8, #4]
	ldr r2, [r8, #8]
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r3, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r8, #8]
_020b5708:
	ldr r7, [r6, #0x40]
	mov r1, r8
	rsb r0, r7, #0x1000
	mov r0, r0, lsl #0x6
	add r0, r0, #0x800
	mov r2, r5
	mov r3, r5
	add r0, r7, r0, asr #12
	bl func_01ff9e64
_020b572c:
	ldrsh r0, [r6, #0x5a]
	cmp r0, #4
	bne _020b57a0
	ldr r1, [r5]
	add r0, sp, #0x58
	str r1, [sp, #0x58]
	ldr r2, [r5, #4]
	mov r1, #0
	str r2, [sp, #0x5c]
	ldr r2, [r5, #8]
	str r2, [sp, #0x60]
	str r1, [sp, #0x5c]
	bl func_01ff9cec
	mov r7, r0
	bl func_ov23_02177e7c
	cmp r7, r0, lsl #1
	ble _020b57a0
	add r0, sp, #0x58
	mov r1, r0
	bl func_01ff9d4c
	bl func_ov23_02177e7c
	mov r1, r0
	add r0, sp, #0x58
	mov r1, r1, lsl #0x1
	bl func_01fffbec
	ldr r0, [sp, #0x58]
	str r0, [r5]
	ldr r0, [sp, #0x60]
	str r0, [r5, #8]
_020b57a0:
	ldr r0, [r6, #0x50]
	cmp r0, #0
	bgt _020b5a04
	ldrb r0, [r6, #0x56]
	cmp r0, #0
	bne _020b5a04
	ldr r0, _020b5c8c ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020b5a04
	ldr r0, _020b5c8c ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097750
	cmp r0, #0
	ldreqsh r0, [r6, #0x5a]
	cmpeq r0, #0
	bne _020b5a04
	ldrsh r1, [r6, #0x5c]
	mov r0, #1
	cmp r1, #0
	ble _020b584c
	ldr r2, [r6, #0x64]
	ldr r1, _020b5c90 ; =0x00000ccd
	str r2, [sp, #0x4c]
	ldr r2, [r6, #0x68]
	mov r4, #0x5000
	str r2, [sp, #0x50]
	ldr r2, [r6, #0x6c]
	str r2, [sp, #0x54]
	ldr r2, [r6, #0x90]
	cmp r2, r1
	strgt r1, [r6, #0x90]
	ldrsh r1, [r6, #0xc6]
	cmp r1, #0
	bge _020b5884
	ldrsh r1, [r6, #0x5c]
	cmp r1, #2
	bne _020b5884
	ldr r1, [sp, #0x50]
	add r1, r1, #0x66
	str r1, [sp, #0x50]
	b _020b5884
_020b584c:
	ldr r1, [r6, #0xd0]
	cmp r1, #0
	ble _020b5880
	ldr r1, [r5, #4]
	cmp r1, #0
	bgt _020b5880
	mov r2, #0
	mov r1, #0x214
	str r2, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	mov r4, #0x3000
	b _020b5884
_020b5880:
	mov r0, #0
_020b5884:
	cmp r0, #0
	beq _020b5a04
	ldr r1, [r5, #4]
	ldr r0, [sp, #0x50]
	mov r2, r4
	cmp r0, r1
	strlt r1, [sp, #0x50]
	add r1, sp, #0x4c
	mov r0, r5
	bl func_0202b308
	ldrsh r0, [r6, #0x5c]
	cmp r0, #1
	bne _020b5a04
	add r0, sp, #0x4c
	mov r1, r0
	bl func_01ff9d4c
	add r1, sp, #0x4c
	mov r0, r5
	bl func_01ff9c2c
	ldr r3, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	smull r4, r7, r3, r0
	adds r8, r4, #0x800
	ldr r1, [sp, #0x54]
	smull r4, r3, r2, r0
	smull r2, r0, r1, r0
	adc r1, r7, #0
	mov r7, r8, lsr #0xc
	adds r4, r4, #0x800
	orr r7, r7, r1, lsl #20
	adc r3, r3, #0
	adds r1, r2, #0x800
	mov r2, r4, lsr #0xc
	orr r2, r2, r3, lsl #20
	mov r3, r1, lsr #0xc
	adc r0, r0, #0
	orr r3, r3, r0, lsl #20
	str r2, [sp, #0x44]
	add r1, sp, #0x40
	add r2, sp, #0x34
	mov r0, r5
	str r7, [sp, #0x40]
	str r3, [sp, #0x48]
	bl func_01ff9bf8
	ldr r0, _020b5c94 ; =data_027e0fc8
	ldr r4, [r0]
	mov r0, r4
	bl func_ov00_020bc46c
	add r1, r4, #0x2c
	add r2, r1, r0, lsl #1
	ldrb r4, [r1, r0, lsl #1]
	ldrb r3, [r2, #1]
	ldr r0, _020b5c98 ; =data_027e0e60
	sub r2, sp, #4
	ldr r0, [r0]
	add r1, sp, #0x28
	strb r4, [r2]
	strb r3, [r2, #1]
	ldr r2, [r2]
	strb r4, [sp]
	strb r3, [sp, #1]
	bl func_ov00_02083c7c
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, _020b5c9c ; =data_027e0f78
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r0, [r0]
	str r1, [sp, #0xc]
	add r1, sp, #4
	add r2, sp, #0x1c
	bl func_ov00_0209cbd4
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020b5a04
	add r0, sp, #0x28
	add r1, r6, #0x20
	mov r2, r0
	bl func_01ff9bf8
	mov r2, #0
	add r0, sp, #0x34
	add r1, sp, #0x28
	str r2, [sp, #0x38]
	str r2, [sp, #0x2c]
	bl func_01ff9c2c
	cmp r0, #0
	bge _020b5a04
	ldr r0, [sp, #0x40]
	str r0, [r5]
	ldr r0, [sp, #0x44]
	str r0, [r5, #4]
	ldr r0, [sp, #0x48]
	str r0, [r5, #8]
_020b5a04:
	ldr r0, _020b5ca0 ; =gItemManager
	mov r1, #6
	ldr r0, [r0]
	bl _ZN11ItemManager12GetEquipItemEi
	ldrsh r1, [r6, #0x5a]
	mov r4, r0
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _020b5c18
_020b5a28: ; jump table
	b _020b5a40 ; case 0
	b _020b5b70 ; case 1
	b _020b5b8c ; case 2
	b _020b5a40 ; case 3
	b _020b5c18 ; case 4
	b _020b5a40 ; case 5
_020b5a40:
	mov r1, #0
	str r1, [r6, #0xdc]
	cmp r4, #0
	mov r7, #1
	beq _020b5b40
	ldrb r1, [r6, #0xba]
	cmp r1, #0
	bne _020b5b40
	ldrsh r2, [r6, #0x5e]
	add r1, r6, #0x20
	add r3, r6, #0x120
	bl func_ov14_0213dfbc
	cmp r0, #0
	beq _020b5b40
	mov r0, r4
	add r1, r6, #0x20
	add r2, r6, #0x120
	add r3, r6, #0xdc
	bl func_ov14_0213e144
	ldrsh r0, [r6, #0xa6]
	ldr r2, [r6, #0xdc]
	ldr r1, _020b5ca4 ; =0x0000019a
	smull r4, r3, r2, r0
	adds r4, r4, #0x800
	adc r2, r3, #0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	umull r7, r4, r3, r1
	mov r2, #0
	adds r7, r7, #0x800
	mla r4, r3, r2, r4
	mov r2, r3, asr #0x1f
	mla r4, r2, r1, r4
	adc r1, r4, #0
	mov r4, r7, lsr #0xc
	cmp r0, #0x1000
	orr r4, r4, r1, lsl #20
	ble _020b5b1c
	mov r0, r5
	add r1, r6, #0x120
	bl func_01ff9c2c
	ldr r1, [r6, #0x120]
	smull r2, r1, r0, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r5]
	ldr r1, [r6, #0x128]
	smull r2, r1, r0, r1
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r5, #8]
_020b5b1c:
	ldr r0, _020b5ca8 ; =0x000004cd
	mov r2, r5
	cmp r4, r0
	movge r4, r0
	mov r0, r4
	mov r3, r5
	add r1, r6, #0x120
	bl func_01ff9e64
	mov r7, #0
_020b5b40:
	cmp r7, #0
	beq _020b5c18
	ldr r0, [r5]
	cmp r0, #0
	ldreq r0, [r5, #4]
	cmpeq r0, #0
	beq _020b5c18
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl func_01ffa0f4
	strh r0, [r6, #0x5e]
	b _020b5c18
_020b5b70:
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _020b5c18
	ldrh r0, [r6, #0xa4]
	bic r0, r0, #0x84
	strh r0, [r6, #0xa4]
	b _020b5c18
_020b5b8c:
	bl func_ov14_0213d420
	movs r4, r0
	moveq r0, #0
	streqh r0, [r6, #0x5a]
	beq _020b5c18
	add r0, r6, #0x20
	add r3, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r2, [sp, #0x14]
	ldr r1, [r6, #0x2c]
	mov r0, r4
	sub r2, r2, r1
	mov r1, r3
	str r2, [sp, #0x14]
	bl func_ov14_021238f0
	mov r7, r0
	ldr r1, _020b5cac ; =0xfffffa66
	mov r0, r6
	add r1, r7, r1
	bl func_ov00_020b542c
	ldr r0, [sp, #0x14]
	cmp r0, r7
	bge _020b5c0c
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [r4, #0x174]
	ldr r1, [sp, #0x14]
	str r1, [r4, #0x178]
	ldr r1, [sp, #0x18]
	str r1, [r4, #0x17c]
	strb r0, [r4, #0x16b]
_020b5c0c:
	ldrh r0, [r6, #0xa4]
	bic r0, r0, #1
	strh r0, [r6, #0xa4]
_020b5c18:
	mov r0, #0x1000
	strh r0, [r6, #0xa6]
	ldrb r0, [r6, #0xb8]
	cmp r0, #0
	beq _020b5c40
	ldr r0, [r6, #0xac]
	str r0, [r5]
	ldr r0, [r6, #0xb4]
	str r0, [r5, #8]
	b _020b5c68
_020b5c40:
	ldrh r0, [r6, #0xa4]
	tst r0, #0xcd
	beq _020b5c68
	ldrsh r0, [r6, #0x5a]
	cmp r0, #0
	bne _020b5c68
	ldr r1, _020b5cb0 ; =0x00000666
	mov r0, r5
	mov r2, r5
	bl func_0202dc38
_020b5c68:
	ldr r0, [r5]
	str r0, [r6, #0x44]
	ldr r0, [r5, #8]
	str r0, [r6, #0x4c]
	add sp, sp, #0x70
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020b5514
_020b5c80: .word data_027e0fb8
_020b5c84: .word 0x0000071c
_020b5c88: .word data_02050f54
_020b5c8c: .word data_027e0f74
_020b5c90: .word 0x00000ccd
_020b5c94: .word data_027e0fc8
_020b5c98: .word data_027e0e60
_020b5c9c: .word data_027e0f78
_020b5ca0: .word gItemManager
_020b5ca4: .word 0x0000019a
_020b5ca8: .word 0x000004cd
_020b5cac: .word 0xfffffa66
_020b5cb0: .word 0x00000666

	.global func_ov00_020b5cb4
	arm_func_start func_ov00_020b5cb4
func_ov00_020b5cb4: ; 0x020b5cb4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x244
	mov r6, r2
	mov r5, r3
	mov sl, r1
	mov r1, r6
	mov r2, r5
	mov r7, r0
	ldr r4, [sp, #0x268]
	bl func_ov00_020b5514
	add r3, sp, #0x118
	ldmia sl, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r7
	bl func_ov00_020b510c
	cmp r0, #0
	bne _020b5d08
	mov r0, r7
	bl func_ov00_020b50f8
	cmp r0, #0
	beq _020b5d10
_020b5d08:
	mov r0, #1
	b _020b5d14
_020b5d10:
	mov r0, #0
_020b5d14:
	strb r0, [r7, #0x54]
	ldrsh r0, [r7, #0xc6]
	ldr lr, _020b6ac0 ; =data_027e0ff8
	add r1, sp, #0x30
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	strb r0, [r7, #0x58]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x100
	str r0, [r7, #0x2c]
	ldr r0, [r7, #0x20]
	mvn r8, #0
	str r0, [r7, #0x30]
	ldr r0, [r7, #0x24]
	mov r3, #0
	str r0, [r7, #0x34]
	ldr r0, [r7, #0x28]
	str r0, [r7, #0x38]
	ldr r0, [r7, #0x2c]
	str r0, [r7, #0x3c]
	ldr sb, [r7, #0x2c]
	ldmia sl, {r0, fp, ip}
	add sb, fp, sb
	str r0, [r7, #0x20]
	str sb, [r7, #0x24]
	str ip, [r7, #0x28]
	ldr sb, [r6]
	ldr r0, [lr]
	str sb, [sp, #0x10c]
	ldr sb, [r6, #4]
	str sb, [sp, #0x110]
	ldr sb, [r6, #8]
	str sb, [sp, #0x114]
	str r3, [sp, #0x30]
	str r8, [sp, #0x34]
	bl func_ov05_0210826c
	ldr r0, [sp, #0x100]
	cmp r0, #0
	ldreq r0, [sp, #0x104]
	cmpeq r0, #0
	ldreq r0, [sp, #0x108]
	cmpeq r0, #0
	movne r8, #1
	moveq r8, #0
	cmp r8, #0
	beq _020b5e00
	ldr r0, [sp, #0x100]
	ldr r1, [sp, #0x10c]
	bl func_ov00_020b4b60
	str r0, [sp, #0x10c]
	ldr r0, [sp, #0x104]
	ldr r1, [sp, #0x110]
	bl func_ov00_020b4b60
	str r0, [sp, #0x110]
	ldr r0, [sp, #0x108]
	ldr r1, [sp, #0x114]
	bl func_ov00_020b4b60
	str r0, [sp, #0x114]
_020b5e00:
	add r1, r7, #0x20
	add r0, sp, #0x10c
	mov r2, r1
	bl func_01ff9bc4
	ldr r3, _020b6ac4 ; =0x0000ffff
	add r1, sp, #0x114
	strh r3, [r1, #0xf4]
	strh r3, [r1, #0xf6]
	strh r3, [r1, #0xf8]
	mov r2, #0
	strh r3, [r1, #0xfa]
	strh r2, [r1, #0xfc]
	mov r0, r7
	strb r2, [sp, #0x232]
	strb r2, [sp, #0x233]
	strb r2, [sp, #0x234]
	strb r2, [sp, #0x235]
	strb r2, [sp, #0x23c]
	strb r2, [sp, #0x23d]
	strb r2, [sp, #0x23e]
	strb r2, [sp, #0x23f]
	strb r2, [sp, #0x240]
	strb r2, [sp, #0x241]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	cmp r8, #0
	bne _020b5e7c
	ldr r0, [r7, #0x9c]
	cmp r0, #0
	blt _020b5e84
_020b5e7c:
	mov r3, #1
	b _020b5e88
_020b5e84:
	mov r3, #0
_020b5e88:
	ldr r1, [r7, #0x2c]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r2, [r7, #0xa4]
	ldr r0, _020b6ac8 ; =data_027e0e60
	add r1, sp, #0x1e4
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r0]
	add r2, r7, #0x20
	add r3, r7, #0x30
	bl func_01ffbf5c
	cmp r0, #0
	beq _020b5f34
	add r2, sp, #0x1e4
	mov r0, r7
	mov r1, r6
	bl func_ov00_020b6ba4
	ldrsh r0, [r7, #0x5a]
	cmp r0, #2
	beq _020b5f00
	ldr r0, [sp, #0x1e4]
	str r0, [r7, #0x20]
	ldr r0, [sp, #0x1e8]
	str r0, [r7, #0x24]
	ldr r0, [sp, #0x1ec]
	str r0, [r7, #0x28]
	b _020b5f34
_020b5f00:
	ldr r1, [r7, #0x30]
	ldr r0, _020b6acc ; =data_027e0d0c
	str r1, [r7, #0x20]
	ldr r1, [r7, #0x34]
	str r1, [r7, #0x24]
	ldr r1, [r7, #0x38]
	str r1, [r7, #0x28]
	ldr r1, [r0]
	str r1, [r6]
	ldr r1, [r0, #4]
	str r1, [r6, #4]
	ldr r0, [r0, #8]
	str r0, [r6, #8]
_020b5f34:
	ldr r1, [r7, #0x9c]
	ldr r0, [r7, #0x2c]
	cmp r1, #0
	add sb, r1, r0
	ldrge r0, [r7, #0x24]
	cmpge r0, sb
	blt _020b6038
	ldr r2, _020b6ac4 ; =0x0000ffff
	add r0, sp, #0x114
	strh r2, [r0, #0x94]
	strh r2, [r0, #0x96]
	strh r2, [r0, #0x98]
	mov r8, #0
	strh r2, [r0, #0x9a]
	strh r8, [r0, #0x9c]
	ldr r1, _020b6ad0 ; =data_ov00_020e64a8
	add fp, sp, #0xf0
	strb r8, [sp, #0x1d2]
	strb r8, [sp, #0x1d3]
	strb r8, [sp, #0x1d4]
	strb r8, [sp, #0x1d5]
	strb r8, [sp, #0x1dc]
	strb r8, [sp, #0x1dd]
	strb r8, [sp, #0x1de]
	strb r8, [sp, #0x1df]
	strb r8, [sp, #0x1e0]
	strb r8, [sp, #0x1e1]
	add r0, r7, #0x30
	str r1, [sp, #0x28]
	ldmia r0, {r0, r1, r2}
	stmia fp, {r0, r1, r2}
	ldr r0, [r7, #0x3c]
	add r3, sp, #0xe0
	str r0, [sp, #0xfc]
	add r0, r7, #0x20
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr ip, [r7, #0x2c]
	mov r2, fp
	str ip, [sp, #0xec]
	ldrh fp, [r7, #0xa4]
	add r0, sp, #0x28
	ldr lr, _020b6ac8 ; =data_027e0e60
	bic fp, fp, #2
	mov fp, fp, lsl #0x10
	str sb, [sp, #0xf4]
	str sb, [sp, #0xe4]
	ldrsh sb, [r7, #0x5a]
	mov fp, fp, lsr #0x10
	add r1, sp, #0x184
	str sb, [sp, #0x2c]
	str ip, [sp]
	stmib sp, {r8, fp}
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	ldr r0, [lr]
	bl func_01ffbf5c
	cmp r0, #0
	beq _020b6030
	ldr r0, [sp, #0x184]
	str r0, [r7, #0x20]
	ldr r0, [sp, #0x18c]
	str r0, [r7, #0x28]
_020b6030:
	add r0, sp, #0x28
	bl func_ov00_02081f4c
_020b6038:
	ldr r0, _020b6ad4 ; =data_027e0d38
	ldr r2, [r7, #0x24]
	ldr r0, [r0]
	ldr r1, [r7, #0x2c]
	add r0, r0, #0xc
	sub r8, r2, r1
	ldrb sb, [sp, #0x23d]
	bl func_ov00_020a5e9c
	cmp r0, #0x2e
	bne _020b6084
	mov r0, #0x3000
	rsb r0, r0, #0
	cmp r8, r0
	bgt _020b6084
	ldrsh r0, [r7, #0xc8]
	cmp r0, #0
	movlt r0, #0
	strlth r0, [r7, #0xc8]
	blt _020b6110
_020b6084:
	cmp sb, #0
	bne _020b60d4
	mov r0, #0xa000
	ldr r2, [r7, #0x94]
	rsb r0, r0, #0
	cmp r2, r0
	movgt r0, r2
	cmp r8, r0
	bge _020b60d4
	ldr r0, [r7, #0x2c]
	mov r1, #0
	add r0, r2, r0
	str r0, [r7, #0x24]
	mov r0, #0x1000
	mov r8, r2
	str r1, [sp, #0x1fc]
	str r0, [sp, #0x200]
	str r1, [sp, #0x204]
	mov sb, #1
	b _020b6110
_020b60d4:
	ldrsh r0, [r7, #0xc8]
	cmp r0, #0
	bge _020b6110
	mov r0, #0x3000
	rsb r0, r0, #0
	cmp r8, r0
	movle r0, #0
	strleh r0, [r7, #0xc8]
	ble _020b6110
	mov r0, r7
	add r1, r7, #0x20
	bl func_ov00_020b6af0
	cmp r8, r0
	movlt r0, #8
	strlth r0, [r7, #0xc8]
_020b6110:
	ldrsh r0, [r7, #0x5a]
	cmp r0, #4
	bne _020b61e0
	ldr r1, [r7, #0x20]
	add r0, sp, #0xd4
	str r1, [sp, #0xd4]
	ldr r1, [r7, #0x24]
	mov r2, r0
	str r1, [sp, #0xd8]
	ldr r3, [r7, #0x28]
	add r1, r7, #0x30
	str r3, [sp, #0xdc]
	bl func_01ff9bf8
	mov r0, #0
	str r0, [sp, #0xd8]
	ldrsh r0, [r7, #0x60]
	cmp r0, #0
	ble _020b6168
	ldr r1, [r7, #0x34]
	str r1, [r7, #0x24]
	ldr r0, [r7, #0x2c]
	sub r8, r1, r0
_020b6168:
	add r0, sp, #0xd4
	bl func_01ff9cec
	mov fp, r0
	bl func_ov23_02177e7c
	add r1, r0, r0, lsl #2
	mov r0, r1, asr #0x1
	add r0, r1, r0, lsr #30
	cmp fp, r0, asr #2
	ble _020b61d4
	add r0, sp, #0xd4
	mov r1, r0
	bl func_01ff9d4c
	bl func_ov23_02177e7c
	add r1, r0, r0, lsl #2
	mov r0, r1, asr #0x1
	add r1, r1, r0, lsr #30
	add r0, sp, #0xd4
	mov r1, r1, asr #0x2
	bl func_01fffbec
	ldr r1, [r7, #0x30]
	ldr r0, [sp, #0xd4]
	add r0, r1, r0
	str r0, [r7, #0x20]
	ldr r1, [r7, #0x38]
	ldr r0, [sp, #0xdc]
	add r0, r1, r0
	str r0, [r7, #0x28]
_020b61d4:
	ldrsh r0, [r7, #0x60]
	sub r0, r0, #1
	strh r0, [r7, #0x60]
_020b61e0:
	ldr r0, [r7, #0x20]
	ldr r1, _020b6ac8 ; =data_027e0e60
	stmia sl, {r0, r8}
	ldr r2, [r7, #0x28]
	add r0, sp, #0x14
	str r2, [sl, #8]
	ldr r1, [r1]
	add r2, r7, #0x20
	bl func_ov00_02083a1c
	ldrb r2, [sp, #0x14]
	ldr r0, _020b6ac8 ; =data_027e0e60
	add r1, r7, #0x1c
	strb r2, [r7, #0x1c]
	ldrb r2, [sp, #0x15]
	strb r2, [r7, #0x1d]
	ldr r0, [r0]
	bl func_ov00_02084088
	ldrb r0, [r7, #0xbc]
	cmp r0, #0
	beq _020b62ec
	mov r0, r7
	bl func_ov00_020b510c
	cmp r0, #0
	bne _020b62ec
	mov r0, r7
	bl func_ov00_020b50f8
	cmp r0, #0
	bne _020b62ec
	add fp, r7, #0x20
	add r8, sp, #0xc4
	ldmia fp, {r0, r1, r2}
	stmia r8, {r0, r1, r2}
	ldr r3, [r7, #0x2c]
	mov r0, fp
	mov r1, sl
	mov r2, r8
	str r3, [sp, #0xd0]
	bl func_01ff9bf8
	mov r0, #0
	mvn r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	ldrb r1, [r7, #0xbe]
	ldr r3, [sp, #0xd0]
	ldr ip, [sp, #0xc4]
	ldr fp, [sp, #0xc8]
	ldr r8, [sp, #0xcc]
	mov r2, r3, lsl #0x1
	cmp r1, #0
	mov r0, #2
	str r3, [sp, #0x98]
	str r2, [sp, #0x9c]
	add r1, sp, #0x8c
	str ip, [sp, #0x8c]
	str fp, [sp, #0x90]
	str r8, [sp, #0x94]
	str r1, [sp]
	movne r0, #3
	str r0, [sp, #4]
	ldr r1, _020b6ad8 ; =0x0000063d
	ldr r0, _020b6ac0 ; =data_027e0ff8
	str r1, [sp, #8]
	ldr r0, [r0]
	add r1, sp, #0x20
	add r3, sp, #0x118
	mov r2, sl
	bl func_ov05_021082e4
_020b62ec:
	ldrsh r0, [r7, #0xc8]
	cmp r0, #0
	bge _020b6304
	ldrb r0, [r7, #0xbb]
	cmp r0, #0
	bne _020b6310
_020b6304:
	mov r0, #0
	strh r0, [r7, #0x5c]
	b _020b64f8
_020b6310:
	ldrsh r0, [r7, #0x5c]
	mov r8, #0
	cmp r0, #1
	bne _020b632c
	ldr r0, [r7, #0x68]
	cmp r0, #0
	movgt r8, #1
_020b632c:
	ldr r1, [sl]
	ldr r0, _020b6adc ; =data_027e0f78
	str r1, [sp, #0x80]
	ldr r1, [sl, #4]
	ldr r0, [r0]
	str r1, [sp, #0x84]
	ldr r2, [sl, #8]
	add r1, sp, #0x80
	str r2, [sp, #0x88]
	add r2, r7, #0x64
	bl func_ov00_0209cbd4
	strh r0, [r7, #0x5c]
	ldrsh r0, [r7, #0x5c]
	cmp r0, #1
	cmpne r8, #0
	beq _020b64f8
	add r8, sp, #0x38
	ldmia sl, {r0, r1, r2}
	stmia r8, {r0, r1, r2}
	add r3, sp, #0xb8
	ldmia r8, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r3, sp, #0xac
	ldmia r8, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #0xb4]
	ldr r0, _020b6ac8 ; =data_027e0e60
	sub r1, r1, #0x1000
	str r1, [sp, #0xb4]
	ldr r2, [sl]
	ldr r0, [r0]
	str r2, [sp, #0x74]
	ldr r3, [sl, #4]
	add r1, sp, #0x74
	str r3, [sp, #0x78]
	ldr r3, [sl, #8]
	mov r2, #1
	str r3, [sp, #0x7c]
	bl func_ov00_02083ee0
	add r0, r0, #0xcc
	add r0, r0, #0x1c00
	ldr r2, _020b6ac4 ; =0x0000ffff
	add r1, sp, #0x114
	strh r2, [r1, #0x34]
	str r0, [sp, #0xbc]
	str r0, [sp, #0xb0]
	str r0, [sp, #0x6c]
	str r0, [sp, #0x60]
	strh r2, [r1, #0x36]
	strh r2, [r1, #0x38]
	mov r0, #0
	strh r2, [r1, #0x3a]
	strh r0, [r1, #0x3c]
	ldr r1, [sp, #0xb4]
	ldr r2, [sp, #0xac]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0xc0]
	str r2, [sp, #0x68]
	ldr r2, [sp, #0xb8]
	str r1, [sp, #0x64]
	strb r0, [sp, #0x172]
	strb r0, [sp, #0x173]
	strb r0, [sp, #0x174]
	strb r0, [sp, #0x175]
	strb r0, [sp, #0x17c]
	strb r0, [sp, #0x17d]
	strb r0, [sp, #0x17e]
	strb r0, [sp, #0x17f]
	strb r0, [sp, #0x180]
	strb r0, [sp, #0x181]
	str r2, [sp, #0x5c]
	ldr r2, [r7, #0x2c]
	mov r1, #4
	str r2, [sp]
	stmib sp, {r0, r1}
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020b6ac8 ; =data_027e0e60
	add r1, sp, #0x124
	ldr r0, [r0]
	add r2, sp, #0x68
	add r3, sp, #0x5c
	bl func_01ffbf5c
	ldrb r1, [r7, #0x55]
	cmp r1, #0
	beq _020b6494
	cmp r0, #0
	ldreq r0, _020b6ae0 ; =0xfffffd9a
	streq r0, [r6, #8]
	beq _020b64a4
_020b6494:
	ldr r1, _020b6ae4 ; =0x00000266
	mov r0, #0
	str r1, [r6, #8]
	strb r0, [r7, #0x55]
_020b64a4:
	ldr r0, _020b6ac8 ; =data_027e0e60
	ldr r1, [sl]
	ldr r8, [r0]
	mov r0, r8
	bl func_ov00_020839d4
	mov r1, r0
	mov r0, r8
	bl func_ov00_02083c24
	ldr r2, [sl]
	mov r1, #0
	sub r2, r0, r2
	mov r0, #0x148
	umull r8, r3, r2, r0
	adds r8, r8, #0x800
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adc r0, r3, #0
	mov r1, r8, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r6]
_020b64f8:
	mov r8, #0
	mov fp, r8
	cmp sb, #0
	beq _020b6830
	ldrsh r0, [r7, #0xc6]
	mov sl, r8
	cmp r0, #0
	blt _020b6538
	ldr r0, [r7, #0x74]
	mov sl, #1
	mov r0, r0, lsr #0xb
	and r0, r0, #3
	cmp r0, #1
	streq r8, [r7, #0x90]
	moveq r8, #1
	b _020b65c0
_020b6538:
	strh r8, [r7, #0xc6]
	ldrb r0, [sp, #0x240]
	cmp r0, #0
	ldrne r1, [r7, #0xc0]
	subne r0, r8, #1
	cmpne r1, r0
	beq _020b65c0
	ldr r0, _020b6ac8 ; =data_027e0e60
	add r1, r7, #0xc4
	ldr r0, [r0]
	bl func_ov00_020840c4
	ldr r1, [r0]
	mov sb, r0
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq r0, r8
	ldrneb r0, [r0, #5]
	cmp r0, #0
	beq _020b65c0
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	mov sl, #1
	and r0, r0, #0x1f
	strh r0, [r7, #0xc6]
	strb sl, [r7, #0xcc]
	ldrsb r0, [sb, #0x12]
	cmp r0, #0xd
	moveq sl, #0
_020b65c0:
	cmp sl, #0
	beq _020b65e0
	ldrsh r0, [r7, #0x5a]
	cmp r0, #2
	cmpne r0, #1
	cmpne r0, #5
	moveq r0, #0
	streqh r0, [r7, #0x5a]
_020b65e0:
	ldr r2, [r7, #0x90]
	mov r0, #0x800
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r3, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x40]
	ldrsh r0, [r7, #0xc6]
	cmp r0, #0xc
	bne _020b6658
	ldrb r0, [r7, #0xbd]
	cmp r0, #0
	bne _020b6658
	ldrb r0, [r7, #0x58]
	cmp r0, #0
	bne _020b6650
	ldrsh r0, [r7, #0xc6]
	cmp r0, #0
	blt _020b6650
	ldr r1, [r7, #0x40]
	ldr r0, _020b6ae8 ; =0x00000333
	cmp r1, r0
	movlt r1, r0
	str r1, [r7, #0x40]
	b _020b6658
_020b6650:
	mov r0, #0x52
	str r0, [r7, #0x40]
_020b6658:
	add r1, sp, #0x1fc
	mov r0, r6
	bl func_01ff9c2c
	mov sb, r0
	add r0, sp, #0x1fc
	bl func_01ff9cec
	mov r1, r0
	rsb r0, sb, #0
	bl Divide
	add r1, sp, #0x1fc
	mov r2, r6
	mov r3, r6
	bl func_01ff9e64
	ldr r0, [r5]
	cmp r0, #0
	ldreq r0, [r5, #4]
	cmpeq r0, #0
	ldreq r0, [r5, #8]
	cmpeq r0, #0
	bne _020b66e0
	ldr r2, [r7, #0x40]
	mov r0, #0x800
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0x9
	adds r0, r0, r2, lsl #9
	orr r1, r1, r2, lsr #23
	adc r1, r1, #0
	mov r5, r0, lsr #0xc
	mov r0, r6
	orr r5, r5, r1, lsl #20
	add r1, r7, #0xac
	bl func_01ff9ec0
	cmp r0, r5
	blt _020b6808
_020b66e0:
	ldr r2, [r7, #0x40]
	ldr r3, [r7, #0xac]
	ldr r0, [r6]
	mov r1, r2, asr #0x1f
	cmp r0, r3
	blt _020b671c
	sub r5, r3, r0
	mov r3, r5, asr #0x1f
	umull sl, sb, r2, r5
	mla sb, r2, r3, sb
	mla sb, r1, r5, sb
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	add r0, r0, r1
	b _020b673c
_020b671c:
	sub r5, r0, r3
	mov r3, r5, asr #0x1f
	umull sl, sb, r2, r5
	mla sb, r2, r3, sb
	mla sb, r1, r5, sb
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	sub r0, r0, r1
_020b673c:
	str r0, [r6]
	ldr r2, [r7, #0x40]
	ldr r3, [r7, #0xb4]
	ldr r0, [r6, #8]
	mov r1, r2, asr #0x1f
	cmp r0, r3
	blt _020b677c
	sub r5, r3, r0
	mov r3, r5, asr #0x1f
	umull sl, sb, r2, r5
	mla sb, r2, r3, sb
	mla sb, r1, r5, sb
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	add r0, r0, r1
	b _020b679c
_020b677c:
	sub r5, r0, r3
	mov r3, r5, asr #0x1f
	umull sl, sb, r2, r5
	mla sb, r2, r3, sb
	mla sb, r1, r5, sb
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	sub r0, r0, r1
_020b679c:
	str r0, [r6, #8]
	ldr r2, [r7, #0x40]
	ldr r3, [r7, #0xb0]
	ldr r0, [r6, #4]
	mov r1, r2, asr #0x1f
	cmp r0, r3
	blt _020b67e0
	sub r5, r3, r0
	mov r3, r5, asr #0x1f
	umull sl, sb, r2, r5
	mla sb, r2, r3, sb
	mla sb, r1, r5, sb
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	add r0, r0, r1
	str r0, [r6, #4]
	b _020b6824
_020b67e0:
	sub r5, r0, r3
	mov r3, r5, asr #0x1f
	umull sl, sb, r2, r5
	mla sb, r2, r3, sb
	mla sb, r1, r5, sb
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	sub r0, r0, r1
	str r0, [r6, #4]
	b _020b6824
_020b6808:
	ldr r0, [r7, #0xac]
	mov fp, #1
	str r0, [r6]
	ldr r0, [r7, #0xb0]
	str r0, [r6, #4]
	ldr r0, [r7, #0xb4]
	str r0, [r6, #8]
_020b6824:
	mov r0, #1
	strb r0, [r7, #0x55]
	b _020b68e8
_020b6830:
	ldr r0, [r6, #4]
	cmp r0, #0
	ldrlt r1, [sl, #4]
	sublt r0, r8, #0x1800
	cmplt r1, r0
	bge _020b68c0
	ldr r1, [sp, #0x11c]
	cmp r1, r0
	blt _020b68c0
	ldr r1, [sl]
	ldr r0, _020b6ac8 ; =data_027e0e60
	str r1, [sp, #0x50]
	ldr r2, [sl, #4]
	ldr r1, [r0]
	str r2, [sp, #0x54]
	ldr r3, [sl, #8]
	add r0, sp, #0x1c
	add r2, sp, #0x50
	str r3, [sp, #0x58]
	bl func_ov00_02083fb0
	ldr r0, [sp, #0x1c]
	mov r1, r0
	mov r0, r0, lsr #0x5
	and r0, r0, #3
	cmp r0, #2
	bne _020b68c0
	and r0, r1, #0x1f
	cmp r0, #0xf
	cmpne r0, #0xa
	beq _020b68c0
	mov r0, r4
	ldr r3, [r0]
	mov r2, sl
	ldr r3, [r3, #0x70]
	mov r1, #4
	blx r3
_020b68c0:
	ldr r1, [r6, #4]
	cmp r1, #0
	movgt r0, #0
	strgtb r0, [r7, #0x59]
	bgt _020b68e8
	mov r0, #0x400
	rsb r0, r0, #0
	cmp r1, r0
	movlt r0, #1
	strltb r0, [r7, #0x59]
_020b68e8:
	ldrsh r0, [r7, #0xc8]
	cmp r0, #0
	blt _020b6918
	mov r0, #0xd
	strh r0, [r7, #4]
	mov r0, #2
	strb r0, [r7, #6]
	ldr r1, [r6, #8]
	ldmia r6, {r0, r2}
	str r0, [r7, #8]
	str r2, [r7, #0xc]
	str r1, [r7, #0x10]
_020b6918:
	mov r1, #0x5000
	rsb r1, r1, #0
	ldr r0, _020b6ad4 ; =data_027e0d38
	str r1, [r7, #0x94]
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x2f
	moveq r0, #0xa000
	rsbeq r0, r0, #0
	streq r0, [r7, #0x94]
	ldrsh r0, [r7, #0xc8]
	cmp r0, #8
	beq _020b6964
	cmp r0, #0xa
	beq _020b698c
	cmp r0, #0xf
	beq _020b6978
	b _020b69a0
_020b6964:
	mov r0, r7
	mov r1, r6
	mov r2, #0x200
	bl func_ov00_020b5160
	b _020b69c4
_020b6978:
	mov r0, r7
	mov r1, r6
	mov r2, #0x400
	bl func_ov00_020b5160
	b _020b69c4
_020b698c:
	mov r0, r7
	mov r1, r6
	mov r2, #0x400
	bl func_ov00_020b5160
	b _020b69c4
_020b69a0:
	ldrsh r0, [r7, #0x5c]
	cmp r0, #0
	cmpeq fp, #0
	bne _020b69c4
	ldr r1, _020b6aec ; =data_ov00_020e647c
	mov r0, r7
	ldr r2, [r1, #0x20]
	mov r1, r6
	bl func_ov00_020b5160
_020b69c4:
	ldr r1, [r7, #0x20]
	ldr r0, [r7, #0x30]
	cmp r1, r0
	ldreq r1, [r7, #0x28]
	ldreq r0, [r7, #0x38]
	cmpeq r1, r0
	movne r0, #0
	strneb r0, [r7, #0xbe]
	mov r0, r7
	bl func_ov00_020b54c8
	cmp r8, #0
	beq _020b6a08
	ldrh r0, [r7, #0xa4]
	add sp, sp, #0x244
	bic r0, r0, #8
	strh r0, [r7, #0xa4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b6a08:
	ldrsh r2, [r7, #0xc6]
	cmp r2, #0
	addge sp, sp, #0x244
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r7, #0x34]
	ldr r0, [r7, #0x24]
	cmp r1, r0
	bne _020b6aa0
	ldr r1, [r6, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	bge _020b6aa0
	ldrb r0, [r7, #0x58]
	cmp r0, #0
	bne _020b6aa0
	cmp r2, #0
	bge _020b6aa0
	ldrb r0, [sp, #0x23e]
	cmp r0, #0
	beq _020b6a74
	ldrh r1, [r7, #0xa4]
	mov r0, #0
	add sp, sp, #0x244
	bic r1, r1, #4
	strh r1, [r7, #0xa4]
	str r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b6a74:
	ldrb r0, [sp, #0x23f]
	cmp r0, #0
	addeq sp, sp, #0x244
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r1, [r7, #0xa4]
	mov r0, #0
	add sp, sp, #0x244
	bic r1, r1, #8
	strh r1, [r7, #0xa4]
	str r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b6aa0:
	ldrb r0, [sp, #0x23c]
	cmp r0, #0
	ldrneb r0, [sp, #0x23f]
	cmpne r0, #0
	movne r0, #0
	strneb r0, [r7, #0xbc]
	add sp, sp, #0x244
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020b5cb4
_020b6ac0: .word data_027e0ff8
_020b6ac4: .word 0x0000ffff
_020b6ac8: .word data_027e0e60
_020b6acc: .word data_027e0d0c
_020b6ad0: .word data_ov00_020e64a8
_020b6ad4: .word data_027e0d38
_020b6ad8: .word 0x0000063d
_020b6adc: .word data_027e0f78
_020b6ae0: .word 0xfffffd9a
_020b6ae4: .word 0x00000266
_020b6ae8: .word 0x00000333
_020b6aec: .word data_ov00_020e647c

	.global func_ov00_020b6af0
	arm_func_start func_ov00_020b6af0
func_ov00_020b6af0: ; 0x020b6af0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r0, _020b6b94 ; =data_027e0e60
	mov r5, r1
	ldr r0, [r0]
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _020b6b84
	bl func_ov00_0208412c
	ldr r1, _020b6b98 ; =data_027e0fe4
	mov r4, r0
	ldr r1, [r1]
	ldr r2, _020b6b9c ; =0x574c4354
	add r0, sp, #0
	ldr r6, _020b6ba0 ; =0xfffff666
	bl func_ov00_020c3894
	ldr r0, _020b6b98 ; =data_027e0fe4
	add r1, sp, #0
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020b6b84
	ldrh r1, [r0, #0x20]
	ldr r2, [r5]
	ldr r0, _020b6b94 ; =data_027e0e60
	str r2, [sp, #8]
	ldr r2, [r5, #4]
	ldr r0, [r0]
	str r2, [sp, #0xc]
	ldr r3, [r5, #8]
	add r2, sp, #8
	str r3, [sp, #0x10]
	bl func_ov00_02083770
	cmp r0, #0
	addne sp, sp, #0x14
	addne r0, r4, r6
	ldmneia sp!, {r3, r4, r5, r6, pc}
_020b6b84:
	mov r0, #0x5000
	rsb r0, r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020b6af0
_020b6b94: .word data_027e0e60
_020b6b98: .word data_027e0fe4
_020b6b9c: .word 0x574c4354
_020b6ba0: .word 0xfffff666

	.global func_ov00_020b6ba4
	arm_func_start func_ov00_020b6ba4
func_ov00_020b6ba4: ; 0x020b6ba4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xbc
	mov r4, r2
	ldrb r2, [r4, #0x59]
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	beq _020b6bdc
	add r0, r4, #0x18
	add r1, r6, #0xf0
	bl func_01ff9d4c
	add r0, r4, #0x18
	add r1, r6, #0xe4
	bl func_01ff9d4c
_020b6bdc:
	ldrb r0, [r4, #0x58]
	cmp r0, #0
	ldreqb r0, [r4, #0x5a]
	cmpeq r0, #0
	ldreqb r0, [r4, #0x5b]
	cmpeq r0, #0
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrsh r0, [r6, #0x5a]
	cmp r0, #4
	bne _020b6c3c
	ldrb r0, [r4, #0x5a]
	cmp r0, #0
	ldreqb r0, [r4, #0x5b]
	cmpeq r0, #0
	beq _020b6c3c
	add r0, r4, #0xc
	add r1, r6, #0x44
	ldr r7, [r6, #0xd8]
	bl func_01ff9c2c
	rsb r0, r0, #0
	cmp r0, r7
	movle r0, r7
	str r0, [r6, #0xd8]
_020b6c3c:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldreq r0, [r4, #0x14]
	cmpeq r0, #0
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrsh r1, [r6, #0x5a]
	cmp r1, #0
	bne _020b6de0
	ldrb r0, [r4, #0x59]
	cmp r0, #0
	beq _020b6de0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldreq r0, [r4, #0x20]
	cmpeq r0, #0
	bne _020b6de0
	add r1, sp, #0x50
	add r0, r4, #0xc
	bl func_01ff9d4c
	ldr r0, [r5, #4]
	cmp r0, #0
	addgt sp, sp, #0xbc
	ldmgtia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0x44
	add r2, sp, #0x50
	mov r0, r6
	mov r3, r5
	bl func_ov00_020b4d28
	cmp r0, #0
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0x44
	add r2, sp, #0x38
	add r1, r6, #0x20
	bl func_01ff9bc4
	add r0, sp, #0x44
	add r2, sp, #0x2c
	add r1, r6, #0x30
	bl func_01ff9bc4
	mov r0, #0
	ldr r4, _020b6e68 ; =0x0000ffff
	ldr r3, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	str r3, [sp, #0x20]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #0x24]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x34]
	str r2, [sp, #0x18]
	str r3, [sp, #0x14]
	strh r4, [sp, #0x80]
	strh r4, [sp, #0x82]
	strh r4, [sp, #0x84]
	strh r4, [sp, #0x86]
	strh r0, [sp, #0x88]
	strb r0, [sp, #0xaa]
	strb r0, [sp, #0xab]
	strb r0, [sp, #0xac]
	strb r0, [sp, #0xad]
	strb r0, [sp, #0xb4]
	strb r0, [sp, #0xb5]
	strb r0, [sp, #0xb6]
	strb r0, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r0, [sp, #0xb9]
	str r1, [sp, #0x1c]
	ldr r1, [r6, #0x2c]
	ldr r4, _020b6e6c ; =data_027e0e60
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r3, [r6, #0xa4]
	add r1, sp, #0x5c
	add r2, sp, #0x20
	bic r3, r3, #2
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r3, sp, #0x14
	bl func_01ffbf5c
	cmp r0, #0
	addne sp, sp, #0xbc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x50]
	add r0, r6, #0x108
	str r1, [r6, #0xe4]
	ldr r2, [sp, #0x54]
	mov r1, #0x1000
	str r2, [r6, #0xe8]
	ldr r2, [sp, #0x58]
	str r2, [r6, #0xec]
	ldr r2, [sp, #0x44]
	str r2, [r6, #0x108]
	ldr r2, [sp, #0x48]
	str r2, [r6, #0x10c]
	ldr r2, [sp, #0x4c]
	str r2, [r6, #0x110]
	bl func_0202d95c
	add sp, sp, #0xbc
	ldmia sp!, {r4, r5, r6, r7, pc}
_020b6de0:
	ldrb r0, [r4, #0x58]
	cmp r0, #0
	beq _020b6dfc
	ldr r0, [r6, #0x70]
	tst r0, #0x1f
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_020b6dfc:
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _020b6e28
	sub r0, r1, #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	addhi sp, sp, #0xbc
	ldmhiia sp!, {r4, r5, r6, r7, pc}
_020b6e28:
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #0
	bl func_ov00_020b18d8
	ldr r0, [r6, #0xd8]
	cmp r0, #0
	addle sp, sp, #0xbc
	ldmleia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	str r0, [r6, #0xfc]
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x100]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x104]
	add sp, sp, #0xbc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b6ba4
_020b6e68: .word 0x0000ffff
_020b6e6c: .word data_027e0e60

	.global func_ov00_020b6e70
	arm_func_start func_ov00_020b6e70
func_ov00_020b6e70: ; 0x020b6e70
	ldr r2, [r0, #0xd4]
	ldr r1, _020b6e9c ; =0x00000e66
	cmp r2, r1
	bge _020b6e8c
	ldrb r0, [r0, #0xcd]
	cmp r0, #0
	beq _020b6e94
_020b6e8c:
	mov r0, #1
	bx lr
_020b6e94:
	mov r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b6e70
_020b6e9c: .word 0x00000e66

	.global func_ov00_020b6ea0
	arm_func_start func_ov00_020b6ea0
func_ov00_020b6ea0: ; 0x020b6ea0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc4
	mov r6, r1
	ldr r1, _020b7324 ; =data_027e0f6c
	ldrh r2, [r6]
	mov r4, r0
	ldr r1, [r1]
	add r0, sp, #4
	bl func_ov00_02093a1c
	ldr r1, [sp, #4]
	str r1, [r4, #0x70]
	tst r1, #0x1f
	bne _020b71f0
	ldr r0, [r4, #0x98]
	cmp r0, #0
	ble _020b71e4
	mov r0, r1, lsr #0x7
	and r5, r0, #3
	cmp r5, #1
	moveq r0, #1
	streqb r0, [r4, #0xce]
	ldr r1, _020b7328 ; =func_ov00_0207e968
	ldr r3, _020b732c ; =func_ov00_0207e96c
	str r1, [sp]
	add r0, sp, #0x90
	mov r1, #3
	mov r2, #0x10
	bl func_0204f614
	ldr r1, _020b7324 ; =data_027e0f6c
	ldrh r2, [r6]
	mov r0, #0x4c
	ldr r1, [r1]
	mul r0, r2, r0
	ldr r3, [r1, #0x20]
	mov r2, #0
	add r1, r3, r0
	ldrh r3, [r3, r0]
	ldrh r0, [r1, #2]
	strh r3, [sp, #0x78]
	strh r0, [sp, #0x7a]
	ldrh r0, [r1, #4]
	strh r0, [sp, #0x7c]
	ldrh r0, [r1, #6]
	strh r0, [sp, #0x7e]
	ldr r0, [r1, #8]
	str r0, [sp, #0x80]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x84]
	ldr r0, [r1, #0x10]
	str r0, [sp, #0x88]
	ldr r3, [r1, #0x14]
	str r3, [sp, #0x8c]
	ldr r3, [r1, #0x18]
	str r3, [sp, #0x90]
	ldr r3, [r1, #0x1c]
	str r3, [sp, #0x94]
	ldr r3, [r1, #0x20]
	str r3, [sp, #0x98]
	ldr r3, [r1, #0x24]
	str r3, [sp, #0x9c]
	ldr r3, [r1, #0x28]
	str r3, [sp, #0xa0]
	ldr r3, [r1, #0x2c]
	str r3, [sp, #0xa4]
	ldr r3, [r1, #0x30]
	str r3, [sp, #0xa8]
	ldr r3, [r1, #0x34]
	str r3, [sp, #0xac]
	ldr r3, [r1, #0x38]
	str r3, [sp, #0xb0]
	ldr r3, [r1, #0x3c]
	str r3, [sp, #0xb4]
	ldr r3, [r1, #0x40]
	str r3, [sp, #0xb8]
	ldr r3, [r1, #0x44]
	str r3, [sp, #0xbc]
	ldr r1, [r1, #0x48]
	str r1, [sp, #0xc0]
	ldrsh r1, [r4, #0xa2]
	cmp r1, #0
	cmpne r1, r5
	moveq r2, #1
	beq _020b7000
	cmp r1, #1
	cmpeq r5, #0
	bne _020b7000
	cmp r0, #0
	movgt r2, #1
_020b7000:
	cmp r2, #0
	beq _020b71b0
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldrh r1, [r4, #0xa0]
	mov r0, #0x800
	ldr r3, _020b7330 ; =data_02050f54
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	mov r2, r2, lsl #0x1
	mov r1, r1, lsl #0x1
	ldrsh r2, [r3, r2]
	ldr r7, [r4, #0x98]
	ldrsh r1, [r3, r1]
	smull r3, ip, r2, r7
	adds lr, r3, #0x800
	smull r3, r2, r1, r7
	adc r1, ip, #0
	mov ip, lr, lsr #0xc
	orr ip, ip, r1, lsl #20
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add lr, r2, #0
	add ip, ip, #0
	add r1, sp, #0x80
	add r3, sp, #0x14
	sub r0, r0, #0x1000
	add r2, r6, #4
	str ip, [sp, #0x20]
	str lr, [sp, #0x28]
	bl func_01ff9e64
	ldr r0, _020b7334 ; =data_027e0e60
	ldr r6, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0]
	str r2, [sp, #0x10]
	add r1, sp, #8
	str r6, [sp, #8]
	str r3, [sp, #0xc]
	mov r2, #1
	bl func_ov00_02083ee0
	ldr r2, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	sub r1, r2, r1
	cmp r0, r1
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	beq _020b70fc
	ldr r3, _020b7328 ; =func_ov00_0207e968
	add r0, sp, #0x90
	mov r1, #3
	mov r2, #0x10
	bl func_0204f754
	add sp, sp, #0xc4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_020b70fc:
	add r0, sp, #0x80
	add r1, sp, #0x20
	bl func_01ff9c2c
	ldr r1, [r4, #0xd4]
	rsb r2, r0, #0
	cmp r2, r1
	ble _020b7138
	str r2, [r4, #0xd4]
	ldr r0, [sp, #0x80]
	str r0, [r4, #0x114]
	ldr r0, [sp, #0x84]
	str r0, [r4, #0x118]
	ldr r0, [sp, #0x88]
	str r0, [r4, #0x11c]
	b _020b7160
_020b7138:
	cmp r2, #0
	bge _020b7160
	ldr r3, _020b7328 ; =func_ov00_0207e968
	add r0, sp, #0x90
	mov r1, #3
	mov r2, #0x10
	bl func_0204f754
	add sp, sp, #0xc4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_020b7160:
	cmp r5, #2
	mov r1, #3
	bne _020b7188
	ldr r3, _020b7328 ; =func_ov00_0207e968
	add r0, sp, #0x90
	mov r2, #0x10
	bl func_0204f754
	add sp, sp, #0xc4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_020b7188:
	ldr r0, _020b7338 ; =0x00000e66
	cmp r2, r0
	add r0, sp, #0x90
	mov r2, #0x10
	blt _020b71d8
	ldr r3, _020b7328 ; =func_ov00_0207e968
	bl func_0204f754
	add sp, sp, #0xc4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_020b71b0:
	ldr r3, _020b7328 ; =func_ov00_0207e968
	mov r5, #1
	add r0, sp, #0x90
	mov r1, #3
	mov r2, #0x10
	strb r5, [r4, #0xcd]
	bl func_0204f754
	add sp, sp, #0xc4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_020b71d8:
	ldr r3, _020b7328 ; =func_ov00_0207e968
	bl func_0204f754
	b _020b7318
_020b71e4:
	add sp, sp, #0xc4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_020b71f0:
	ldrh r0, [r6]
	strh r0, [r4, #0xca]
	ldrsh r0, [r4, #0x5a]
	cmp r0, #4
	bne _020b7318
	ldr r1, _020b7328 ; =func_ov00_0207e968
	ldr r3, _020b732c ; =func_ov00_0207e96c
	str r1, [sp]
	add r0, sp, #0x44
	mov r1, #3
	mov r2, #0x10
	bl func_0204f614
	ldr r1, _020b7324 ; =data_027e0f6c
	ldrh r2, [r6]
	ldr r3, [r1]
	mov r0, #0x4c
	mul r1, r2, r0
	ldr r3, [r3, #0x20]
	add r0, sp, #0x34
	add r2, r3, r1
	ldrh r5, [r3, r1]
	ldrh r3, [r2, #2]
	add r1, r4, #0x44
	strh r5, [sp, #0x2c]
	strh r3, [sp, #0x2e]
	ldrh r3, [r2, #4]
	strh r3, [sp, #0x30]
	ldrh r3, [r2, #6]
	strh r3, [sp, #0x32]
	ldr r3, [r2, #8]
	str r3, [sp, #0x34]
	ldr r3, [r2, #0xc]
	str r3, [sp, #0x38]
	ldr r3, [r2, #0x10]
	str r3, [sp, #0x3c]
	ldr r3, [r2, #0x14]
	str r3, [sp, #0x40]
	ldr r3, [r2, #0x18]
	str r3, [sp, #0x44]
	ldr r3, [r2, #0x1c]
	str r3, [sp, #0x48]
	ldr r3, [r2, #0x20]
	str r3, [sp, #0x4c]
	ldr r3, [r2, #0x24]
	str r3, [sp, #0x50]
	ldr r3, [r2, #0x28]
	str r3, [sp, #0x54]
	ldr r3, [r2, #0x2c]
	str r3, [sp, #0x58]
	ldr r3, [r2, #0x30]
	str r3, [sp, #0x5c]
	ldr r3, [r2, #0x34]
	str r3, [sp, #0x60]
	ldr r3, [r2, #0x38]
	str r3, [sp, #0x64]
	ldr r3, [r2, #0x3c]
	str r3, [sp, #0x68]
	ldr r3, [r2, #0x40]
	str r3, [sp, #0x6c]
	ldr r3, [r2, #0x44]
	str r3, [sp, #0x70]
	ldr r2, [r2, #0x48]
	str r2, [sp, #0x74]
	ldr r5, [r4, #0xd8]
	bl func_01ff9c2c
	rsb r6, r0, #0
	cmp r6, r5
	movle r6, r5
	ldr r3, _020b7328 ; =func_ov00_0207e968
	add r0, sp, #0x44
	mov r1, #3
	mov r2, #0x10
	str r6, [r4, #0xd8]
	bl func_0204f754
_020b7318:
	mov r0, #1
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b6ea0
_020b7324: .word data_027e0f6c
_020b7328: .word func_ov00_0207e968
_020b732c: .word func_ov00_0207e96c
_020b7330: .word data_02050f54
_020b7334: .word data_027e0e60
_020b7338: .word 0x00000e66

	.global func_ov00_020b733c
	arm_func_start func_ov00_020b733c
func_ov00_020b733c: ; 0x020b733c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _020b73ac ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #0
	bl func_ov00_02093a1c
	ldr r1, [sp]
	mov r0, r1, lsr #0x5
	and r0, r0, #3
	str r1, [r4, #0x74]
	cmp r0, #2
	bne _020b7390
	ldrsh r0, [r4, #0xc6]
	add sp, sp, #4
	cmp r0, #0
	andlt r0, r1, #0x1f
	strlth r0, [r4, #0xc8]
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_020b7390:
	and r0, r1, #0x1f
	strh r0, [r4, #0xc6]
	mvn r0, #0
	strh r0, [r4, #0xc8]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b733c
_020b73ac: .word data_027e0f6c

	.global func_ov00_020b73b0
	arm_func_start func_ov00_020b73b0
func_ov00_020b73b0: ; 0x020b73b0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r5, r1
	mov r6, r0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x1c
	bgt _020b7404
	bge _020b741c
	cmp r0, #3
	bgt _020b73f8
	cmp r0, #2
	blt _020b743c
	cmpne r0, #3
	beq _020b741c
	b _020b743c
_020b73f8:
	cmp r0, #0xe
	beq _020b741c
	b _020b743c
_020b7404:
	cmp r0, #0x35
	bgt _020b7414
	beq _020b741c
	b _020b743c
_020b7414:
	cmp r0, #0x67
	bne _020b743c
_020b741c:
	ldrb r0, [r6, #0xba]
	cmp r0, #0
	beq _020b743c
	mov r0, r5
	bl func_ov14_021474ac
	add sp, sp, #0x20
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b743c:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x1c
	bgt _020b74b0
	bge _020b7568
	cmp r0, #0x10
	bgt _020b7494
	bge _020b7534
	cmp r0, #5
	bgt _020b7488
	cmp r0, #2
	blt _020b75b0
	cmpne r0, #3
	beq _020b7568
	cmp r0, #5
	beq _020b74f4
	b _020b75b0
_020b7488:
	cmp r0, #0xe
	beq _020b7568
	b _020b75b0
_020b7494:
	cmp r0, #0x17
	bgt _020b74a4
	beq _020b7534
	b _020b75b0
_020b74a4:
	cmp r0, #0x19
	beq _020b759c
	b _020b75b0
_020b74b0:
	cmp r0, #0x67
	bgt _020b74d8
	bge _020b7568
	cmp r0, #0x24
	bgt _020b74cc
	beq _020b7568
	b _020b75b0
_020b74cc:
	cmp r0, #0x40
	beq _020b7568
	b _020b75b0
_020b74d8:
	cmp r0, #0x81
	bgt _020b74e8
	beq _020b74f4
	b _020b75b0
_020b74e8:
	cmp r0, #0x90
	beq _020b759c
	b _020b75b0
_020b74f4:
	mov r0, r5
	add r1, r6, #0x20
	bl func_ov00_0208b73c
	cmp r0, #0
	beq _020b7528
	ldr r0, _020b774c ; =data_027e0fa0
	ldr r0, [r0, #4]
	cmp r0, #0
	bgt _020b7528
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
_020b7528:
	add sp, sp, #0x20
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b7534:
	ldrsh r0, [r6, #0x5a]
	cmp r0, #4
	bne _020b75b0
	ldrb r0, [r6, #0xb9]
	cmp r0, #0
	beq _020b75b0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add sp, sp, #0x20
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b7568:
	ldrsh r0, [r6, #0x5a]
	cmp r0, #4
	bne _020b75b0
	ldrb r0, [r6, #0xb9]
	cmp r0, #0
	beq _020b75b0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add sp, sp, #0x20
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b759c:
	ldrsh r0, [r6, #0x5a]
	cmp r0, #2
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020b75b0:
	ldr r1, [r6, #0xc0]
	mvn r0, #0
	cmp r1, r0
	beq _020b7714
	ldr r0, [r6, #0x14]
	mov r0, r0, lsr #0x10
	tst r0, #0x3f
	addne sp, sp, #0x20
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq r1, #0
	ldrne r1, [r0, #0xc]
	mov r0, r1, lsr #0x10
	str r1, [sp, #4]
	tst r0, #0x3f
	bne _020b7714
	ldr r0, _020b7750 ; =data_027e0e60
	ldrb r4, [r5, #0x14]
	ldrb r3, [r5, #0x15]
	ldr r0, [r0]
	sub r1, sp, #4
	strb r4, [r1]
	strb r3, [r1, #1]
	ldr r2, [r1]
	add r1, sp, #0x14
	strb r4, [sp]
	strb r3, [sp, #1]
	bl func_ov00_02083c7c
	add r0, sp, #0x14
	add r1, r6, #0x20
	mov r2, r0
	bl func_01ff9bf8
	ldr r0, _020b7750 ; =data_027e0e60
	ldrb r2, [r6, #0xc4]
	ldrb r1, [r6, #0xc5]
	ldr r0, [r0]
	sub r3, sp, #4
	strb r2, [r3]
	strb r1, [r3, #1]
	ldr r2, [r3]
	add r1, sp, #8
	bl func_ov00_02083c7c
	add r0, sp, #8
	add r1, r6, #0x20
	mov r2, r0
	bl func_01ff9bf8
	ldr r0, [r6, #0x44]
	cmp r0, #0
	ldreq r0, [r6, #0x48]
	cmpeq r0, #0
	ldreq r0, [r6, #0x4c]
	cmpeq r0, #0
	beq _020b7714
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	bl func_01ffa0f4
	mov r7, r0, lsl #0x10
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	sub r0, r0, r7, asr #16
	mov r2, r0, lsl #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	mov r4, r2, asr #0x10
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	sub r0, r0, r7, asr #16
	mov r0, r0, lsl #0x10
	movs r1, r0, asr #0x10
	rsbmi r0, r1, #0
	movmi r0, r0, lsl #0x10
	movmi r1, r0, asr #0x10
	cmp r4, #0
	rsblt r0, r4, #0
	movlt r0, r0, lsl #0x10
	movlt r4, r0, asr #0x10
	cmp r4, r1
	addge sp, sp, #0x20
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
_020b7714:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	str r0, [r6, #0xc0]
	ldrb r3, [r5, #0x15]
	ldrb r2, [r5, #0x14]
	mov r0, r6
	mov r1, r5
	strb r2, [r6, #0xc4]
	strb r3, [r6, #0xc5]
	bl func_ov00_020b15a8
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b73b0
_020b774c: .word data_027e0fa0
_020b7750: .word data_027e0e60

	.global func_ov00_020b7754
	arm_func_start func_ov00_020b7754
func_ov00_020b7754: ; 0x020b7754
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020b7838 ; =data_027e0f6c
	mov r6, r1
	ldr r3, [r3]
	ldrh r1, [r6]
	ldr r3, [r3, #0x40]
	mov r5, r2
	ldr r4, [r3, r1, lsl #2]
	mov r7, r0
	ldr r1, [r4, #0xc]
	cmp r5, #8
	str r1, [sp]
	bne _020b779c
	ldrsh r0, [r7, #0xc6]
	cmp r0, #0
	andge r0, r1, #0x1f
	strgeh r0, [r7, #0xc6]
	b _020b7814
_020b779c:
	ldr r0, _020b783c ; =data_027e0fe4
	mov r1, r5
	ldr r0, [r0]
	bl func_ov00_020c35d8
	cmp r0, #0
	beq _020b7814
	ldr r1, [r0, #0x12c]
	cmp r1, #3
	streq r0, [r7, #0xe0]
	beq _020b7814
	ldr r2, [r0, #4]
	ldr r1, _020b7840 ; =0x464c4e4b
	cmp r2, r1
	beq _020b77e4
	ldr r1, _020b7844 ; =0x54534e4d
	cmp r2, r1
	beq _020b77f8
	b _020b7814
_020b77e4:
	ldrsh r0, [r7, #0xc6]
	cmp r0, #0
	blt _020b7814
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b77f8:
	ldr r1, [sp]
	and r1, r1, #0x1f
	cmp r1, #8
	ldreqsh r1, [r7, #0x5a]
	cmpeq r1, #0
	ldreq r0, [r0, #0x2c4]
	streq r0, [r7, #0xd0]
_020b7814:
	ldrb r0, [r4, #5]
	mov r1, r6
	mov r2, r5
	cmp r0, #0
	ldrne r0, [sp]
	strne r0, [r7, #0x74]
	mov r0, r7
	bl func_ov00_020b1740
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b7754
_020b7838: .word data_027e0f6c
_020b783c: .word data_027e0fe4
_020b7840: .word 0x464c4e4b
_020b7844: .word 0x54534e4d

	.global func_ov00_020b7848
	arm_func_start func_ov00_020b7848
func_ov00_020b7848: ; 0x020b7848
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b7848

	.global func_ov00_020b7864
	arm_func_start func_ov00_020b7864
func_ov00_020b7864: ; 0x020b7864
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b7864

	.global func_ov00_020b786c
	arm_func_start func_ov00_020b786c
func_ov00_020b786c: ; 0x020b786c
	cmp r0, #0xf8
	movge r0, #0
	bxge lr
	cmp r0, #8
	movlt r0, #1
	bxlt lr
	cmp r1, #0xb8
	movge r0, #2
	bxge lr
	cmp r1, #8
	movlt r0, #3
	movge r0, #4
	bx lr
	arm_func_end func_ov00_020b786c

	.global func_ov00_020b78a0
	arm_func_start func_ov00_020b78a0
func_ov00_020b78a0: ; 0x020b78a0
	mov r2, #0
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	mov r1, #0x1000
	str r1, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x58]
	strh r2, [r0, #0x6a]
	mov r1, #0x80
	strh r1, [r0, #0x66]
	mov r1, #0x60
	strh r1, [r0, #0x68]
	ldr ip, _020b78e4 ; =func_ov00_020b78e8
	strh r2, [r0, #0x6c]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b78a0
_020b78e4: .word func_ov00_020b78e8

	.global func_ov00_020b78e8
	arm_func_start func_ov00_020b78e8
func_ov00_020b78e8: ; 0x020b78e8
	mov r2, #0
	str r2, [r0, #0x50]
	str r2, [r0, #0x54]
	sub r1, r2, #1
	strh r1, [r0, #0x60]
	strh r2, [r0, #0x62]
	strh r1, [r0, #0x64]
	str r2, [r0, #0x5c]
	mov r1, #4
	strh r1, [r0, #0x6e]
	strh r1, [r0, #0x70]
	strh r2, [r0, #0x72]
	strh r2, [r0, #0x74]
	strb r2, [r0, #0x76]
	bx lr
	arm_func_end func_ov00_020b78e8

	.global func_ov00_020b7924
	arm_func_start func_ov00_020b7924
func_ov00_020b7924: ; 0x020b7924
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r6, r1
	ldr r1, _020b7d38 ; =data_027e0d84
	mov r2, #2
	mov r4, r0
	bl _ZN12TouchControl19UpdateConditionallyEP10TouchStatet
	ldr r0, _020b7d3c ; =data_027e0f64
	ldr r0, [r0]
	bl func_ov00_0208b180
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	mov r3, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	ldr r1, _020b7d40 ; =data_027e0f90
	mov r5, r0
	ldr r0, [r1]
	add r1, sp, #0x2c
	ldr ip, [r0]
	mov r8, r2, asr #0x10
	ldr ip, [ip, #0x14]
	mov r7, r3, asr #0x10
	blx ip
	ldrsh r1, [r4, #0x62]
	add r0, r1, #2
	mov r0, r0, lsl #0x10
	cmp r1, r0, asr #16
	mov r0, r0, asr #0x10
	movle r1, r0
	strh r1, [r4, #0x62]
	cmp r6, #0
	ldrneb r0, [r4, #0xc]
	cmpne r0, #0
	beq _020b79dc
	cmp r8, #0
	cmpge r7, #0
	blt _020b79dc
	mov r6, #0
	add r1, sp, #0x2c
	add r2, sp, #0x1c
	add r3, sp, #0x18
	mov r0, r5
	str r6, [sp]
	bl func_01ffe468
	cmp r0, #0
	bne _020b7a1c
_020b79dc:
	ldrh r0, [r4, #0x34]
	tst r0, #2
	beq _020b7a0c
	ldrsh r1, [r4, #0x60]
	add sp, sp, #0x3c
	add r0, r1, #2
	mov r0, r0, lsl #0x10
	cmp r1, r0, asr #16
	mov r0, r0, asr #0x10
	movle r1, r0
	strh r1, [r4, #0x60]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b7a0c:
	mov r0, r4
	bl func_ov00_020b78e8
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b7a1c:
	ldrsh r6, [r4, #0x6e]
	mov r0, r8
	mov r1, r7
	bl func_ov00_020b786c
	strh r0, [r4, #0x6e]
	ldrh r0, [r4, #0x34]
	tst r0, #1
	bne _020b7a64
	ldrsh r0, [r4, #0x6e]
	cmp r0, #4
	beq _020b7a64
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl func_ov00_020b786c
	cmp r0, #4
	moveq r0, #1
	streqb r0, [r4, #0x76]
	beq _020b7a6c
_020b7a64:
	mov r0, #0
	strb r0, [r4, #0x76]
_020b7a6c:
	cmp r6, #4
	movne r0, #0
	strneh r0, [r4, #0x62]
	strneh r6, [r4, #0x70]
	ldr r0, [sp, #0x1c]
	cmp r0, #0xf7
	movgt r0, #0xf7
	bgt _020b7a94
	cmp r0, #8
	movlt r0, #8
_020b7a94:
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	cmp r1, #0xb7
	movgt r1, #0xb7
	bgt _020b7ab0
	cmp r1, #8
	movlt r1, #8
_020b7ab0:
	str r1, [sp, #0x18]
	ldrsh r0, [r5, #4]
	add r2, r5, #0x260
	add r1, r5, #0x1c
	str r0, [sp]
	ldr r3, [r5, #8]
	add r0, r4, #0x38
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r1, r4, #0x44
	str r1, [sp, #0x14]
	ldr r0, _020b7d44 ; =data_027e0f94
	mov r1, r7
	ldr r2, [r0, #4]
	mov r0, r8
	mov r3, #0x59
	bl func_01ffb7ec
	ldr r1, [sp, #0x1c]
	mov r5, #0x1000
	cmp r8, r1
	mov r6, r5
	cmplt r1, #0x50
	bge _020b7b24
	mov r0, #0x50
	bl Divide
	mov r5, r0
	b _020b7b44
_020b7b24:
	cmp r8, r1
	ble _020b7b44
	cmp r1, #0xb0
	blt _020b7b44
	rsb r1, r1, #0xff
	mov r0, #0x50
	bl Divide
	mov r5, r0
_020b7b44:
	ldr r1, [sp, #0x18]
	cmp r7, r1
	cmplt r1, #0x50
	bge _020b7b64
	mov r0, #0x50
	bl Divide
	mov r6, r0
	b _020b7b84
_020b7b64:
	cmp r7, r1
	ble _020b7b84
	cmp r1, #0x70
	blt _020b7b84
	rsb r1, r1, #0xbf
	mov r0, #0x50
	bl Divide
	mov r6, r0
_020b7b84:
	ldr r0, _020b7d48 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #1
	bne _020b7bc0
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	sub r1, r8, r1
	sub r0, r7, r0
	mul r2, r5, r1
	mul r0, r6, r0
	mov r1, #0
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	b _020b7be0
_020b7bc0:
	mov r1, #0
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [r4, #0x44]
	mov r0, #0x1000
	str r0, [r4, #0x48]
	str r1, [r4, #0x4c]
_020b7be0:
	add r0, sp, #0x20
	bl func_01ff9cec
	str r0, [r4, #0x58]
	cmp r0, #0
	ble _020b7c20
	ldr r0, _020b7d3c ; =data_027e0f64
	ldr r0, [r0]
	bl func_ov00_0208b180
	add r0, r0, #0x200
	ldrsh r5, [r0, #0x26]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	add r0, r5, r0, asr #16
	strh r0, [r4, #0x6a]
_020b7c20:
	ldrsh r0, [r4, #0x60]
	cmp r0, #0
	bge _020b7c60
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #0
	strh r0, [r4, #0x60]
	strh r0, [r4, #0x64]
	strh r8, [r4, #0x66]
	strh r7, [r4, #0x68]
	ldrsh r0, [r4, #0x6a]
	add sp, sp, #0x3c
	strh r0, [r4, #0x6c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b7c60:
	ldr r0, [r4, #0x1c]
	sub r0, r8, r0
	strh r0, [r4, #0x72]
	ldr r0, [r4, #0x20]
	sub r0, r7, r0
	strh r0, [r4, #0x74]
	ldr r0, [r4, #0x5c]
	cmp r0, #0x800
	ble _020b7c9c
	ldrsh r0, [r4, #0x60]
	strh r0, [r4, #0x64]
	ldrsh r0, [r4, #0x6a]
	strh r0, [r4, #0x6c]
	strh r8, [r4, #0x66]
	strh r7, [r4, #0x68]
_020b7c9c:
	ldrsh r2, [r4, #0x74]
	ldrsh r1, [r4, #0x72]
	smulbb r0, r2, r2
	mla r0, r1, r1, r0
	cmp r0, #8
	movle r0, #0
	strle r0, [r4, #0x5c]
	ble _020b7d24
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldrne r0, [r4, #0x54]
	cmpne r0, #0
	beq _020b7d0c
	mov r0, r1, lsl #0xc
	mov r1, r2, lsl #0xc
	bl func_01ffa0f4
	mov r5, r0, lsl #0x10
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	rsb r0, r0, r5, asr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	movs r0, r0, asr #0x3
	rsbmi r0, r0, #0
	str r0, [r4, #0x5c]
_020b7d0c:
	ldrsh r0, [r4, #0x72]
	ldrsh r1, [r4, #0x74]
	mov r0, r0, lsl #0xc
	str r0, [r4, #0x50]
	mov r0, r1, lsl #0xc
	str r0, [r4, #0x54]
_020b7d24:
	ldrsh r0, [r4, #0x60]
	add r0, r0, #2
	strh r0, [r4, #0x60]
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020b7924
_020b7d38: .word data_027e0d84
_020b7d3c: .word data_027e0f64
_020b7d40: .word data_027e0f90
_020b7d44: .word data_027e0f94
_020b7d48: .word data_027e077c

	.global func_ov00_020b7d4c
	arm_func_start func_ov00_020b7d4c
func_ov00_020b7d4c: ; 0x020b7d4c
	stmdb sp!, {r3, lr}
	mov ip, r0
	mov r3, r1
	mov r0, r2
	add r1, ip, #0x44
	add r2, ip, #0x38
	bl func_01ff9e64
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b7d4c

	.global func_ov00_020b7d6c
	arm_func_start func_ov00_020b7d6c
func_ov00_020b7d6c: ; 0x020b7d6c
	ldrb r0, [r0, #0x76]
	bx lr
	arm_func_end func_ov00_020b7d6c

	.global func_ov00_020b7d74
	arm_func_start func_ov00_020b7d74
func_ov00_020b7d74: ; 0x020b7d74
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	cmp r2, #0
	beq _020b7de0
	ldr r1, [r2, #0x24]
	ldr r0, _020b7de8 ; =data_027e0d38
	bic r1, r1, #4
	str r1, [r2, #0x24]
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x28]
	ldrneb r0, [r0, #0x35]
	cmpne r0, #0
	beq _020b7dc4
	ldr r0, _020b7dec ; =data_027e0e58
	mov r1, r4
	ldr r0, [r0]
	bl func_ov00_0207c444
	b _020b7de0
_020b7dc4:
	ldr r2, [r4]
	mov r0, #0
	ldr r1, [r2, #0x24]
	bic r1, r1, #1
	orr r1, r1, #1
	str r1, [r2, #0x24]
	str r0, [r4]
_020b7de0:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b7d74
_020b7de8: .word data_027e0d38
_020b7dec: .word data_027e0e58

	.global func_ov00_020b7df0
	arm_func_start func_ov00_020b7df0
func_ov00_020b7df0: ; 0x020b7df0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	cmp r2, #0
	beq _020b7e5c
	ldr r1, [r2, #0x24]
	ldr r0, _020b7e64 ; =data_027e0d38
	bic r1, r1, #4
	str r1, [r2, #0x24]
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x28]
	ldrneb r0, [r0, #0x35]
	cmpne r0, #0
	beq _020b7e40
	ldr r0, _020b7e68 ; =data_027e0e58
	mov r1, r4
	ldr r0, [r0]
	bl func_ov00_0207c444
	b _020b7e5c
_020b7e40:
	ldr r2, [r4]
	mov r0, #0
	ldr r1, [r2, #0x24]
	bic r1, r1, #1
	orr r1, r1, #1
	str r1, [r2, #0x24]
	str r0, [r4]
_020b7e5c:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b7df0
_020b7e64: .word data_027e0d38
_020b7e68: .word data_027e0e58

	.global func_ov00_020b7e6c
	arm_func_start func_ov00_020b7e6c
func_ov00_020b7e6c: ; 0x020b7e6c
	ldr r3, [r0]
	cmp r3, #0
	bxeq lr
	ldr r2, [r3, #0x24]
	mov r1, #0
	bic r2, r2, #4
	str r2, [r3, #0x24]
	ldr r3, [r0]
	ldr r2, [r3, #0x24]
	bic r2, r2, #1
	orr r2, r2, #1
	str r2, [r3, #0x24]
	str r1, [r0]
	bx lr
	arm_func_end func_ov00_020b7e6c

	.global func_ov00_020b7ea4
	arm_func_start func_ov00_020b7ea4
func_ov00_020b7ea4: ; 0x020b7ea4
	ldr ip, [r0]
	cmp ip, #0
	bxeq lr
	ldmia r1, {r0, r2, r3}
	strh r0, [ip, #0x50]
	strh r2, [ip, #0x52]
	strh r3, [ip, #0x54]
	bx lr
	arm_func_end func_ov00_020b7ea4

	.global func_ov00_020b7ec4
	thumb_func_start func_ov00_020b7ec4
func_ov00_020b7ec4: ; 0x020b7ec4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl func_ov00_020bd604
	ldr r0, _020b7ee4 ; =data_ov00_020e64f0
	add r1, r4, #0
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #0x10]
	add r0, r5, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020b7ec4
_020b7ee4: .word data_ov00_020e64f0

	.global func_ov00_020b7ee8
	arm_func_start func_ov00_020b7ee8
func_ov00_020b7ee8: ; 0x020b7ee8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020bd634
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0xc]
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020b3ec4
	rsb r0, r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b7ee8

	.global func_ov00_020b7f28
	arm_func_start func_ov00_020b7f28
func_ov00_020b7f28: ; 0x020b7f28
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x70
	mov r4, r0
	ldr ip, [r4, #0xc]
	mov r3, #0
	ldr r1, _020b7fc4 ; =data_027e03c8
	add r0, sp, #0x64
	add r2, sp, #0x24
	str r3, [sp, #0x64]
	str ip, [sp, #0x68]
	str r3, [sp, #0x6c]
	bl func_0202b7e4
	add r1, sp, #0x24
	mov r0, #0x18
	mov r2, #0x10
	bl func_01ffa9fc
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	beq _020b7fb4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	ldr r2, _020b7fc8 ; =data_02050f54
	mov r1, r1, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r0, sp, #0
	blx func_01ff8230
	add r1, sp, #0
	mov r0, #0x1a
	mov r2, #9
	bl func_01ffa9fc
_020b7fb4:
	mov r0, r4
	bl func_ov00_020bd63c
	add sp, sp, #0x70
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b7f28
_020b7fc4: .word data_027e03c8
_020b7fc8: .word data_02050f54

	.global func_ov00_020b7fcc
	arm_func_start func_ov00_020b7fcc
func_ov00_020b7fcc: ; 0x020b7fcc
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020b3ea8
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b7fcc

	.global func_ov00_020b7fe8
	arm_func_start func_ov00_020b7fe8
func_ov00_020b7fe8: ; 0x020b7fe8
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020b3ea8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b7fe8

	.global func_ov00_020b7ffc
	thumb_func_start func_ov00_020b7ffc
func_ov00_020b7ffc: ; 0x020b7ffc
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	ldrsh r2, [r0, r1]
	add r1, r4, #0
	add r1, #0x90
	strb r2, [r1]
	mov r1, #2
	ldrsh r2, [r0, r1]
	cmp r2, #0xc
	bge _020b8016
	mov r2, #0xc
	b _020b8016
_020b8016:
	add r1, r4, #0
	add r1, #0x91
	strb r2, [r1]
	mov r1, #8
	ldrsh r2, [r0, r1]
	add r1, r4, #0
	add r1, #0x92
	strb r2, [r1]
	ldrh r2, [r0, #0xa]
	add r1, r4, #0
	add r1, #0xa6
	strh r2, [r1]
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x7c
	mov r2, #4
	blx func_020078d8
	ldr r0, _020b8048 ; =gItemManager
	add r1, r4, #0
	ldr r0, [r0]
	bl _ZN11ItemManager4SaveEP15SaveItemManager
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020b7ffc
_020b8048: .word gItemManager

	.global func_ov00_020b804c
	thumb_func_start func_ov00_020b804c
func_ov00_020b804c: ; 0x020b804c
	mov r2, #0
	ldrsh r3, [r0, r2]
	add r1, r3, r1
	strh r1, [r0]
	ldrsh r1, [r0, r2]
	cmp r1, #0x40
	ble _020b805e
	mov r1, #0x40
	strh r1, [r0]
_020b805e:
	bx lr
	thumb_func_end func_ov00_020b804c

	.global func_ov00_020b8060
	thumb_func_start func_ov00_020b8060
func_ov00_020b8060: ; 0x020b8060
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	mov r0, #0
	add r1, sp, #0
	add r5, r0, #0
_020b806c:
	add r0, r0, #1
	stmia r1!, {r5}
	cmp r0, #9
	blt _020b806c
	ldr r6, _020b80dc ; =gItemManager
	add r4, sp, #0
_020b8078:
	ldr r0, [r6]
	add r1, r5, #0
	bl _ZNK11ItemManager19GetEquippedShipPartEj
	lsl r1, r0, #2
	ldr r0, [r4, r1]
	add r5, r5, #1
	add r0, r0, #1
	str r0, [r4, r1]
	cmp r5, #8
	blt _020b8078
	mov r1, #0x10
	mov r2, #1
	add r3, sp, #4
_020b8094:
	ldr r0, [r3]
	cmp r0, #8
	blt _020b809e
	add r1, #0xc
	b _020b80ac
_020b809e:
	cmp r0, #6
	blt _020b80a6
	add r1, #8
	b _020b80ac
_020b80a6:
	cmp r0, #3
	blt _020b80ac
	add r1, r1, #4
_020b80ac:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #8
	blt _020b8094
	ldr r0, [sp, #0x20]
	cmp r0, #8
	blt _020b80be
	add r1, #0x10
	b _020b80d4
_020b80be:
	cmp r0, #6
	blt _020b80c6
	add r1, #0xc
	b _020b80d4
_020b80c6:
	cmp r0, #4
	blt _020b80ce
	add r1, #8
	b _020b80d4
_020b80ce:
	cmp r0, #2
	blt _020b80d4
	add r1, r1, #4
_020b80d4:
	strh r1, [r7, #4]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
	thumb_func_end func_ov00_020b8060
_020b80dc: .word gItemManager

	.global func_ov00_020b80e0
	arm_func_start func_ov00_020b80e0
func_ov00_020b80e0: ; 0x020b80e0
	stmdb sp!, {r3, lr}
	ldr r1, _020b810c ; =data_027e0fe0
	mov r0, #0x3c8
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	blx func_ov04_02107aa0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b80e0
_020b810c: .word data_027e0fe0

	.global func_ov00_020b8110
	arm_func_start func_ov00_020b8110
func_ov00_020b8110: ; 0x020b8110
	stmdb sp!, {r4, lr}
	mov r1, #7
	mov r4, r0
	bl func_ov00_020beba8
	ldr r1, _020b8130 ; =data_ov00_020e6658
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8110
_020b8130: .word data_ov00_020e6658

	.global func_ov00_020b8134
	arm_func_start func_ov00_020b8134
func_ov00_020b8134: ; 0x020b8134
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b8134

	.global func_ov00_020b8148
	arm_func_start func_ov00_020b8148
func_ov00_020b8148: ; 0x020b8148
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b8148

	.global func_ov00_020b8164
	arm_func_start func_ov00_020b8164
func_ov00_020b8164: ; 0x020b8164
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _020b81b0 ; =data_027e0f6c
	ldrh r2, [r4]
	mov r5, r0
	ldr r1, [r1]
	add r0, sp, #0
	bl func_ov00_02093a1c
	ldr r0, [sp]
	tst r0, #0x1f
	moveq r0, r0, lsr #0x7
	andeq r0, r0, #3
	cmpeq r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl func_ov00_020bebd8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8164
_020b81b0: .word data_027e0f6c

	.global func_ov00_020b81b4
	arm_func_start func_ov00_020b81b4
func_ov00_020b81b4: ; 0x020b81b4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x10
	cmpne r0, #0x17
	bne _020b81e4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020b81e4:
	mov r0, r5
	mov r1, r4
	bl func_ov00_020bed7c
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b81b4

	.global func_ov00_020b81f4
	arm_func_start func_ov00_020b81f4
func_ov00_020b81f4: ; 0x020b81f4
	ldr ip, _020b81fc ; =func_ov00_020bedcc
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b81f4
_020b81fc: .word func_ov00_020bedcc

	.global func_ov00_020b8200
	arm_func_start func_ov00_020b8200
func_ov00_020b8200: ; 0x020b8200
	ldr r1, _020b820c ; =data_ov00_020ee1cc
	str r1, [r0, #0xa0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b8200
_020b820c: .word data_ov00_020ee1cc

	.global func_ov00_020b8210
	arm_func_start func_ov00_020b8210
func_ov00_020b8210: ; 0x020b8210
	stmdb sp!, {r3, lr}
	ldr r1, _020b8244 ; =data_027e0618
	ldr r1, [r1]
	cmp r1, #6
	beq _020b8238
	ldrb r1, [r0, #0x3c1]
	cmp r1, #0
	bne _020b8238
	bl func_ov00_020b885c
	ldmia sp!, {r3, pc}
_020b8238:
	add r0, r0, #0x300
	ldrh r0, [r0, #0xc4]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8210
_020b8244: .word data_027e0618

	.global func_ov00_020b8248
	arm_func_start func_ov00_020b8248
func_ov00_020b8248: ; 0x020b8248
	stmdb sp!, {r3, lr}
	ldr r1, _020b827c ; =data_027e0618
	ldr r1, [r1]
	cmp r1, #6
	beq _020b8270
	ldrb r1, [r0, #0x3c1]
	cmp r1, #0
	bne _020b8270
	bl func_ov00_020b8888
	ldmia sp!, {r3, pc}
_020b8270:
	add r0, r0, #0x300
	ldrh r0, [r0, #0xc6]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8248
_020b827c: .word data_027e0618

	.global func_ov00_020b8280
	arm_func_start func_ov00_020b8280
func_ov00_020b8280: ; 0x020b8280
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020b8280

	.global func_ov00_020b8288
	arm_func_start func_ov00_020b8288
func_ov00_020b8288: ; 0x020b8288
	mov r0, #0x3a
	bx lr
	arm_func_end func_ov00_020b8288

	.global func_ov00_020b8290
	arm_func_start func_ov00_020b8290
func_ov00_020b8290: ; 0x020b8290
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x3b4]
	cmp r1, #0
	beq _020b82b0
	bl func_ov59_0219af14
	cmp r0, #0
	ldmneia sp!, {r4, pc}
_020b82b0:
	mov r0, r4
	bl func_ov00_020b8d34
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b8290

	.global func_ov00_020b82bc
	arm_func_start func_ov00_020b82bc
func_ov00_020b82bc: ; 0x020b82bc
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x3b4]
	cmp r1, #0
	beq _020b82dc
	bl func_ov59_0219afc4
	cmp r0, #0
	ldmneia sp!, {r4, pc}
_020b82dc:
	mov r0, r4
	bl func_ov00_020b8bc4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b82bc

	.global func_ov00_020b82e8
	arm_func_start func_ov00_020b82e8
func_ov00_020b82e8: ; 0x020b82e8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r5, r7, #0x34c
	add r4, r7, #0x35c
	mov r6, r1
	cmp r5, r4
	beq _020b8318
_020b8304:
	mov r0, r5
	bl func_ov00_020b7e6c
	add r5, r5, #4
	cmp r5, r4
	bne _020b8304
_020b8318:
	ldr r0, [r7, #0x3b4]
	cmp r0, #0
	beq _020b8330
	mov r0, r7
	mov r1, r6
	bl func_ov59_0219aba8
_020b8330:
	mov r0, r7
	mov r1, r6
	bl func_ov00_020b917c
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020b82e8

	.global func_ov00_020b8340
	arm_func_start func_ov00_020b8340
func_ov00_020b8340: ; 0x020b8340
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x3b8]
	cmp r1, #0
	beq _020b839c
	ldr r1, [r4, #0x130]
	cmp r1, #0
	bne _020b8374
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xdc]
	blx r2
	b _020b839c
_020b8374:
	ldr r0, [r4, #0x3bc]
	tst r0, #1
	add r0, r4, r0, asr #1
	ldreq r1, [r4, #0x3b8]
	beq _020b8394
	ldr r2, [r0]
	ldr r1, [r4, #0x3b8]
	ldr r1, [r2, r1]
_020b8394:
	blx r1
	ldmia sp!, {r4, pc}
_020b839c:
	ldr r0, [r4, #0x3b4]
	cmp r0, #0
	beq _020b83ec
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	cmp r0, #0
	bne _020b83c8
	mov r0, r4
	bl func_ov00_020b853c
	b _020b83ec
_020b83c8:
	ldr r0, [r4, #0x130]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	ldr r2, [r0]
	mov r1, #3
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r4, pc}
_020b83ec:
	mov r0, r4
	bl func_ov00_020b9330
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b8340

	.global func_ov00_020b83f8
	arm_func_start func_ov00_020b83f8
func_ov00_020b83f8: ; 0x020b83f8
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x3b4]
	cmp r1, #0
	beq _020b8410
	bl func_ov59_0219a0ac
	ldmia sp!, {r3, pc}
_020b8410:
	bl func_ov00_020b9178
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b83f8

	.global func_ov00_020b8418
	arm_func_start func_ov00_020b8418
func_ov00_020b8418: ; 0x020b8418
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl func_ov00_020ba0d4
	cmp r4, #0
	ldrneb r0, [r5, #0xa5]
	ldreqb r0, [r5, #0xa4]
	cmp r0, #0
	ldrne r0, [r5, #0x3b4]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl func_ov59_0219aa08
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b8418

	.global func_ov00_020b8454
	arm_func_start func_ov00_020b8454
func_ov00_020b8454: ; 0x020b8454
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x3b4]
	cmp r2, #0
	ldreq r2, [r0, #0x3b8]
	cmpeq r2, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl func_ov00_020b88c4
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b8454

	.global func_ov00_020b8478
	arm_func_start func_ov00_020b8478
func_ov00_020b8478: ; 0x020b8478
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x3b4]
	cmp r2, #0
	ldreq r2, [r0, #0x3b8]
	cmpeq r2, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl func_ov00_020ba364
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b8478

	.global func_ov00_020b849c
	arm_func_start func_ov00_020b849c
func_ov00_020b849c: ; 0x020b849c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020b97e0
	ldr r0, [r4, #0x3b4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _020b84cc ; =data_ov00_020e6534
	add r0, r4, #0x2f0
	ldr r1, [r1, #0x20]
	str r1, [r4, #0x300]
	bl func_ov00_020c0e04
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b849c
_020b84cc: .word data_ov00_020e6534

	.global func_ov00_020b84d0
	arm_func_start func_ov00_020b84d0
func_ov00_020b84d0: ; 0x020b84d0
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b84d0

	.global func_ov00_020b84d8
	arm_func_start func_ov00_020b84d8
func_ov00_020b84d8: ; 0x020b84d8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3b8]
	cmp r0, #0
	ldreq r0, [r4, #0x3b4]
	cmpeq r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _020b8528 ; =data_027e0618
	ldr r0, [r0]
	cmp r0, #6
	ldmeqia sp!, {r4, pc}
	bl func_ov00_020b852c
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl func_ov59_0219b020
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b84d8
_020b8528: .word data_027e0618

	.global func_ov00_020b852c
	arm_func_start func_ov00_020b852c
func_ov00_020b852c: ; 0x020b852c
	ldr ip, _020b8538 ; =func_01fffcec
	mov r0, #8
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b852c
_020b8538: .word func_01fffcec

	.global func_ov00_020b853c
	arm_func_start func_ov00_020b853c
func_ov00_020b853c: ; 0x020b853c
	mov r1, #0
	str r1, [r0, #0x3b4]
	strb r1, [r0, #0x3c0]
	str r1, [r0, #0x348]
	bx lr
	arm_func_end func_ov00_020b853c

	.global func_ov00_020b8550
	arm_func_start func_ov00_020b8550
func_ov00_020b8550: ; 0x020b8550
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #4
	ldr r3, _020b8594 ; =func_ov00_020b7d74
	mov r2, r1
	add r0, r4, #0x34c
	bl func_0204f754
	add r0, r4, #0x2f0
	blx func_ov00_020a9aac
	add r0, r4, #0x294
	blx func_ov00_020a95a4
	mov r0, r4
	blx func_ov04_02107994
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8550
_020b8594: .word func_ov00_020b7d74

	.global func_ov00_020b8598
	arm_func_start func_ov00_020b8598
func_ov00_020b8598: ; 0x020b8598
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #4
	ldr r3, _020b85d4 ; =func_ov00_020b7d74
	mov r2, r1
	add r0, r4, #0x34c
	bl func_0204f754
	add r0, r4, #0x2f0
	blx func_ov00_020a9aac
	add r0, r4, #0x294
	blx func_ov00_020a95a4
	mov r0, r4
	blx func_ov04_02107994
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8598
_020b85d4: .word func_ov00_020b7d74

	.global func_ov00_020b85d8
	thumb_func_start func_ov00_020b85d8
func_ov00_020b85d8: ; 0x020b85d8
	ldr r1, _020b85f4 ; =data_ov00_020dc7f8
	mov r2, #1
	ldrh r1, [r1]
	add r3, r0, #2
	strh r1, [r0, #4]
	ldr r1, _020b85f8 ; =0x0000190a
_020b85e4:
	add r2, r2, #1
	strh r1, [r3, #4]
	add r3, r3, #2
	cmp r2, #8
	blt _020b85e4
	ldr r3, _020b85fc ; =func_ov00_020b8600
	mov r1, #0
	bx r3
	.align 2, 0
	thumb_func_end func_ov00_020b85d8
_020b85f4: .word data_ov00_020dc7f8
_020b85f8: .word 0x0000190a
_020b85fc: .word func_ov00_020b8600

	.global func_ov00_020b8600
	arm_func_start func_ov00_020b8600
func_ov00_020b8600: ; 0x020b8600
	ldr ip, _020b860c ; =func_020059ec
	add r0, r0, #4
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b8600
_020b860c: .word func_020059ec

	.global func_ov00_020b8610
	arm_func_start func_ov00_020b8610
func_ov00_020b8610: ; 0x020b8610
	ldr r2, _020b8628 ; =data_ov00_020dc7f8
	mov r3, r1, lsl #0x1
	ldrh r2, [r2, r3]
	str r1, [r0, #0x14]
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b8610
_020b8628: .word data_ov00_020dc7f8

	.global func_ov00_020b862c
	arm_func_start func_ov00_020b862c
func_ov00_020b862c: ; 0x020b862c
	stmdb sp!, {r4, lr}
	ldr r1, _020b8664 ; =data_027e0fe0
	mov r0, #0x294
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	movs r4, r0
	beq _020b865c
	blx func_ov04_02107810
	ldr r0, _020b8668 ; =data_ov00_020e667c
	str r0, [r4]
_020b865c:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b862c
_020b8664: .word data_027e0fe0
_020b8668: .word data_ov00_020e667c

	.global func_ov00_020b866c
	arm_func_start func_ov00_020b866c
func_ov00_020b866c: ; 0x020b866c
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b866c

	.global func_ov00_020b8674
	arm_func_start func_ov00_020b8674
func_ov00_020b8674: ; 0x020b8674
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov04_02107994
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b8674

	.global func_ov00_020b8690
	arm_func_start func_ov00_020b8690
func_ov00_020b8690: ; 0x020b8690
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov04_02107994
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020b8690

	.global func_ov00_020b86a4
	arm_func_start func_ov00_020b86a4
func_ov00_020b86a4: ; 0x020b86a4
	stmdb sp!, {r3, lr}
	mov r2, r1
	ldr r1, [r2, #8]
	mov r3, r0
	add r0, r1, #0x33
	ldr r1, [r3, #8]
	add r0, r0, #0x300
	cmp r0, r1
	ble _020b86dc
	ldr r1, [r3, #0x10]
	ldr r0, _020b86e4 ; =0x00000333
	add r2, r2, #4
	add r3, r3, #4
	bl func_01ff9e64
_020b86dc:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b86a4
_020b86e4: .word 0x00000333

	.global func_ov00_020b86e8
	arm_func_start func_ov00_020b86e8
func_ov00_020b86e8: ; 0x020b86e8
	ldr r3, [r1, #8]
	ldr r2, [r0, #8]
	cmp r3, r2
	ble _020b8710
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0xc]
_020b8710:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020b86e8

	.global func_ov00_020b8718
	arm_func_start func_ov00_020b8718
func_ov00_020b8718: ; 0x020b8718
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020b8718

	.global func_ov00_020b8720
	thumb_func_start func_ov00_020b8720
func_ov00_020b8720: ; 0x020b8720
	push {r3, lr}
	ldr r0, _020b8744 ; =data_027e0fec
	ldr r1, [r0]
	ldr r0, _020b8748 ; =0x00001110
	add r0, r1, r0
	blx func_ov00_020c4588
	ldr r1, _020b874c ; =data_ov00_020ee1f8
	str r0, [r1]
	ldr r0, _020b8744 ; =data_027e0fec
	ldr r1, [r0]
	ldr r0, _020b8748 ; =0x00001110
	add r0, r1, r0
	blx func_ov00_020c45b0
	ldr r1, _020b8750 ; =data_ov00_020e678c
	str r0, [r1, #0x20]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov00_020b8720
_020b8744: .word data_027e0fec
_020b8748: .word 0x00001110
_020b874c: .word data_ov00_020ee1f8
_020b8750: .word data_ov00_020e678c

	.global func_ov00_020b8754
	thumb_func_start func_ov00_020b8754
func_ov00_020b8754: ; 0x020b8754
	ldr r0, _020b8760 ; =data_ov00_020e678c
	mov r1, #0
	str r1, [r0, #0x20]
	ldr r0, _020b8764 ; =data_ov00_020ee1f8
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020b8754
_020b8760: .word data_ov00_020e678c
_020b8764: .word data_ov00_020ee1f8

	.global func_ov00_020b8768
	arm_func_start func_ov00_020b8768
func_ov00_020b8768: ; 0x020b8768
	stmdb sp!, {r3, lr}
	ldr r2, [r1, #8]
	tst r2, #0x10
	ldrneb r1, [r1, #0xae]
	mvneq r1, #0
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	add r0, r0, #0x5c
	bl func_ov00_020b1d3c
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b8768

	.global func_ov00_020b8790
	arm_func_start func_ov00_020b8790
func_ov00_020b8790: ; 0x020b8790
	stmdb sp!, {r4, lr}
	movs r4, r0
	bne _020b87b4
	ldr r0, _020b87c4 ; =gItemManager
	mov r1, #0x14
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	movne r4, #3
_020b87b4:
	ldr r0, _020b87c8 ; =data_ov00_020dc800
	mov r1, r4, lsl #0x1
	ldrh r0, [r0, r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8790
_020b87c4: .word gItemManager
_020b87c8: .word data_ov00_020dc800

	.global func_ov00_020b87cc
	arm_func_start func_ov00_020b87cc
func_ov00_020b87cc: ; 0x020b87cc
	stmdb sp!, {r4, lr}
	movs r4, r0
	bne _020b87f0
	ldr r0, _020b8800 ; =gItemManager
	mov r1, #0x14
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	movne r4, #3
_020b87f0:
	ldr r0, _020b8804 ; =data_ov00_020dc808
	mov r1, r4, lsl #0x1
	ldrh r0, [r0, r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b87cc
_020b8800: .word gItemManager
_020b8804: .word data_ov00_020dc808

	.global func_ov00_020b8808
	arm_func_start func_ov00_020b8808
func_ov00_020b8808: ; 0x020b8808
	ldr r1, _020b8818 ; =data_ov00_020dc810
	mov r0, r0, lsl #0x1
	ldrh r0, [r1, r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b8808
_020b8818: .word data_ov00_020dc810

	.global func_ov00_020b881c
	arm_func_start func_ov00_020b881c
func_ov00_020b881c: ; 0x020b881c
	ldr r1, _020b882c ; =data_ov00_020dc816
	mov r0, r0, lsl #0x1
	ldrh r0, [r1, r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020b881c
_020b882c: .word data_ov00_020dc816

	.global func_ov00_020b8830
	arm_func_start func_ov00_020b8830
func_ov00_020b8830: ; 0x020b8830
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r2, r1
	mov r5, r0
	mov r1, #0
	bl func_020193f0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl func_020193f0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020b8830

	.global func_ov00_020b885c
	arm_func_start func_ov00_020b885c
func_ov00_020b885c: ; 0x020b885c
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x28d]
	cmp r1, #0
	ldrne r0, _020b8884 ; =0x00006318
	ldmneia sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	bl func_ov00_020b8790
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b885c
_020b8884: .word 0x00006318

	.global func_ov00_020b8888
	arm_func_start func_ov00_020b8888
func_ov00_020b8888: ; 0x020b8888
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x28d]
	cmp r1, #0
	ldrne r0, _020b88b0 ; =0x0000739c
	ldmneia sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	bl func_ov00_020b87cc
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8888
_020b88b0: .word 0x0000739c

	.global func_ov00_020b88b4
	arm_func_start func_ov00_020b88b4
func_ov00_020b88b4: ; 0x020b88b4
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020b88b4

	.global func_ov00_020b88bc
	arm_func_start func_ov00_020b88bc
func_ov00_020b88bc: ; 0x020b88bc
	mvn r0, #0
	bx lr
	arm_func_end func_ov00_020b88bc

	.global func_ov00_020b88c4
	arm_func_start func_ov00_020b88c4
func_ov00_020b88c4: ; 0x020b88c4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sb, r1
	mov sl, r0
	movne r0, #0
	strne r0, [sb]
	ldrb r0, [sl, #0x290]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _020b8b78 ; =data_027e0618
	ldr r0, [r0]
	cmp r0, #6
	bne _020b8908
	bl func_ov00_02079e3c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b8908:
	ldr r0, _020b8b7c ; =data_027e0f90
	ldr r0, [r0]
	ldrsh r0, [r0, #0xa]
	cmp r0, #0
	movle r0, #1
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _020b8b80 ; =data_027e0f64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x15c]
	cmp r0, #0x45
	bgt _020b8958
	cmp r0, #0x44
	blt _020b894c
	cmpne r0, #0x45
	beq _020b8970
	b _020b8978
_020b894c:
	cmp r0, #0xa
	beq _020b8970
	b _020b8978
_020b8958:
	cmp r0, #0x4b
	bgt _020b8968
	beq _020b8970
	b _020b8978
_020b8968:
	cmp r0, #0x4c
	bne _020b8978
_020b8970:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b8978:
	ldr r0, _020b8b84 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020b8a04
	ldr r0, _020b8b84 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097750
	cmp r0, #0
	bne _020b8a04
	ldrb r0, [sl, #0x11c]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl _ZN13LinkStateBase16GetLinkItemStateEv
	bl _ZN13LinkStateItem16IsHammerEquippedEv
	mvn r1, #0
	cmp r0, r1
	bne _020b89f0
	bne _020b8b70
	ldr r0, _020b8b88 ; =gItemManager
	ldr r0, [r0]
	bl _ZNK11ItemManager16GetEquippedFairyEv
	mov r4, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r4, r0
	beq _020b8b70
_020b89f0:
	cmp sb, #0
	movne r0, #6
	strne r0, [sb]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b8a04:
	ldr r0, _020b8b8c ; =data_ov00_020e8b08
	ldr r7, [r0]
	cmp r7, #0
	beq _020b8ae0
	ldr r2, [sl, #8]
	mov r1, #0
_020b8a1c:
	add r0, r7, r1, lsl #3
	ldr r0, [r0, #0x20]
	cmp r2, r0
	moveq r0, #1
	beq _020b8a40
	add r1, r1, #1
	cmp r1, #4
	blt _020b8a1c
	mov r0, #0
_020b8a40:
	cmp r0, #0
	ldreqb r0, [sl, #0x28e]
	cmpeq r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r8, #0
	ldr r4, _020b8b88 ; =gItemManager
	mov r6, r8
	mov fp, r8
	mov r5, #1
_020b8a68:
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r8, r0
	beq _020b8ad4
	ldr r0, [r4]
	mov r1, r8
	bl _ZNK11ItemManager8GetFairyEi
	ldr r2, [r0, #8]
	mov r1, r6
_020b8a94:
	add r0, r7, r1, lsl #3
	ldr r0, [r0, #0x20]
	cmp r2, r0
	moveq r0, r5
	beq _020b8ab8
	add r1, r1, #1
	cmp r1, #4
	blt _020b8a94
	mov r0, fp
_020b8ab8:
	cmp r0, #0
	beq _020b8ad4
	cmp sb, #0
	movne r0, #6
	strne r0, [sb]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b8ad4:
	add r8, r8, #1
	cmp r8, #3
	blt _020b8a68
_020b8ae0:
	ldr r0, _020b8b88 ; =gItemManager
	ldr r0, [r0]
	bl _ZNK11ItemManager16GetEquippedFairyEv
	mov r4, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r4, r0
	bne _020b8b5c
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _020b8b88 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldrb r0, [r0, #0x28e]
	cmp r0, #0
	beq _020b8b54
	cmp sb, #0
	movne r0, #6
	strne r0, [sb]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b8b54:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b8b5c:
	cmp sb, #0
	movne r0, #6
	strne r0, [sb]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020b8b70:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020b88c4
_020b8b78: .word data_027e0618
_020b8b7c: .word data_027e0f90
_020b8b80: .word data_027e0f64
_020b8b84: .word data_027e0f74
_020b8b88: .word gItemManager
_020b8b8c: .word data_ov00_020e8b08

	.global func_ov00_020b8b90
	arm_func_start func_ov00_020b8b90
func_ov00_020b8b90: ; 0x020b8b90
	ldr r2, [r0, #0x158]
	str r2, [r1]
	ldr r2, [r0, #0x15c]
	str r2, [r1, #4]
	ldr r0, [r0, #0x160]
	str r0, [r1, #8]
	bx lr
	arm_func_end func_ov00_020b8b90

	.global func_ov00_020b8bac
	arm_func_start func_ov00_020b8bac
func_ov00_020b8bac: ; 0x020b8bac
	stmdb sp!, {r3, lr}
	bl func_ov00_02087e8c
	cmp r0, #0
	movne r0, #0x22
	moveq r0, #0x20
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b8bac

	.global func_ov00_020b8bc4
	arm_func_start func_ov00_020b8bc4
func_ov00_020b8bc4: ; 0x020b8bc4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	add r1, sp, #0
	mov r4, r0
	bl func_ov00_020c3230
	ldr r0, [r4, #0x130]
	cmp r0, #1
	beq _020b8bf4
	cmp r0, #6
	beq _020b8c24
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_020b8bf4:
	ldr r0, [sp]
	str r0, [r4, #0x158]
	ldr r0, [sp, #4]
	str r0, [r4, #0x15c]
	ldr r0, [sp, #8]
	add sp, sp, #0xc
	str r0, [r4, #0x160]
	ldr r0, [r4, #0x15c]
	add r0, r0, #0x9a
	add r0, r0, #0x1900
	str r0, [r4, #0x15c]
	ldmia sp!, {r3, r4, pc}
_020b8c24:
	ldr r0, [sp]
	str r0, [r4, #0x158]
	ldr r0, [sp, #4]
	str r0, [r4, #0x15c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x160]
	ldr r0, [r4, #0x15c]
	add r0, r0, #0x800
	str r0, [r4, #0x15c]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov00_020b8bc4

	.global func_ov00_020b8c50
	arm_func_start func_ov00_020b8c50
func_ov00_020b8c50: ; 0x020b8c50
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	add r3, sp, #0
	mov ip, r1
	add r0, r4, #0x48
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	mov r2, ip
	add r1, r4, #0x158
	bl func_0202b2e8
	add r0, sp, #0
	add r1, r4, #0x48
	add r2, r4, #0x60
	bl func_01ff9bf8
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov00_020b8c50

	.global func_ov00_020b8c98
	arm_func_start func_ov00_020b8c98
func_ov00_020b8c98: ; 0x020b8c98
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	add ip, sp, #4
	add r0, r4, #0x48
	mov r7, r1
	mov r6, r2
	ldmia r0, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	mov r5, r3
	str r5, [sp]
	ldr r1, [r4, #0x158]
	mov r0, ip
	mov r2, r7
	mov r3, r6
	bl func_0202b418
	mvn r0, #0x80000000
	str r0, [sp]
	ldr r1, [r4, #0x15c]
	add r0, sp, #8
	mov r2, #0x400
	mov r3, #0
	bl func_0202b418
	str r5, [sp]
	ldr r1, [r4, #0x160]
	mov r2, r7
	mov r3, r6
	add r0, sp, #0xc
	bl func_0202b418
	add r0, sp, #4
	add r1, r4, #0x48
	add r2, r4, #0x60
	bl func_01ff9bf8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020b8c98

	.global func_ov00_020b8d34
	arm_func_start func_ov00_020b8d34
func_ov00_020b8d34: ; 0x020b8d34
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r1, [r4, #0x130]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _020b9138
_020b8d50: ; jump table
	b _020b9138 ; case 0
	b _020b8d78 ; case 1
	b _020b8d78 ; case 2
	b _020b9108 ; case 3
	b _020b8f6c ; case 4
	b _020b90e8 ; case 5
	b _020b9120 ; case 6
	b _020b9108 ; case 7
	b _020b8f7c ; case 8
	b _020b90f8 ; case 9
_020b8d78:
	mov r6, #0x31
	cmp r1, #2
	ldr r5, _020b9150 ; =0x0000019a
	add r7, r6, #0xee
	addeq r5, r6, #0x20c
	add r2, sp, #8
	add r0, r4, #0x158
	add r1, r4, #0x48
	ldreq r7, _020b9154 ; =0x00000333
	moveq r6, #0x6a
	bl func_01ff9bf8
	ldr r1, [sp, #8]
	ldr ip, [sp, #0xc]
	smull r3, r0, r1, r5
	adds r1, r3, #0x800
	ldr r2, [sp, #0x10]
	smull r8, lr, ip, r5
	smull ip, r5, r2, r5
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r2, r8, #0x800
	str r1, [sp, #8]
	adc r0, lr, #0
	adds r1, ip, #0x800
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0xc]
	adc r0, r5, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r3, #0
	str r1, [sp, #0x10]
	sub r0, r3, #0x80000001
	str r0, [sp]
	add r1, sp, #8
	mov r2, r7
	add r0, r4, #0x60
	bl func_0202b4e4
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	cmp r6, #0
	mov r5, r0, asr #0x10
	movle r7, #0
	ble _020b8e80
	ldr r0, _020b9158 ; =data_027e0764
	ldr r2, [r0]
	ldmib r0, {r1, r3}
	umull ip, r7, r3, r2
	mla r7, r3, r1, r7
	ldr r1, [r0, #0xc]
	ldr r3, [r0, #0x10]
	mla r7, r1, r2, r7
	ldr r1, [r0, #0x14]
	adds r2, r3, ip
	adc r7, r1, r7
	stmia r0, {r2, r7}
	cmp r6, #0
	beq _020b8e80
	mov r2, #0
	umull r1, r0, r7, r6
	mla r0, r7, r2, r0
	mla r0, r2, r6, r0
	mov r7, r0
_020b8e80:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	rsb r0, r5, r0, asr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	cmp r0, #0
	ble _020b8ecc
	add r0, r5, #0x55
	add r0, r0, #0x1500
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r3, r0, lsl #0x1
	ldr r2, _020b915c ; =data_02050f54
	b _020b8ef0
_020b8ecc:
	ldr r0, _020b9160 ; =0xffffeaab
	ldr r2, _020b915c ; =data_02050f54
	add r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r3, r0, lsl #0x1
_020b8ef0:
	mov r0, r3, lsl #0x1
	ldrsh r1, [r2, r0]
	add r0, r3, #1
	mov r0, r0, lsl #0x1
	smull r5, r3, r1, r7
	adds r1, r5, #0x800
	ldrsh r0, [r2, r0]
	mov r5, r1, lsr #0xc
	adc r3, r3, #0
	smull r2, r1, r0, r7
	ldr r0, [r4, #0x60]
	orr r5, r5, r3, lsl #20
	add r0, r0, r5
	adds r2, r2, #0x800
	str r0, [r4, #0x60]
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	ldr r2, [r4, #0x68]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r4, #0x68]
	add r0, r4, #0x60
	bl func_01ff9cec
	ldr r1, _020b9164 ; =0x000004cd
	cmp r0, r1
	addle sp, sp, #0x14
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r4, #0x60
	bl func_0202d95c
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b8f6c:
	mov r1, #0x3000
	bl func_ov00_020b8c50
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b8f7c:
	ldr r2, [r4, #0x4c]
	add r1, r4, #0x200
	str r2, [sp, #4]
	ldrsh r1, [r1, #0x8a]
	cmp r1, #1
	beq _020b8fa8
	cmp r1, #2
	beq _020b9018
	cmp r1, #3
	beq _020b9060
	b _020b90d0
_020b8fa8:
	ldr r2, [r4, #0x138]
	ldr r0, _020b9168 ; =0x00001555
	ldr r1, _020b915c ; =data_02050f54
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x2
	ldrsh r2, [r1, r0]
	ldr r0, _020b916c ; =0x00000266
	mov r1, #0
	umull r5, r3, r2, r0
	mla r3, r2, r1, r3
	mov r2, r2, asr #0x1f
	mla r3, r2, r0, r3
	adds r5, r5, #0x800
	adc r0, r3, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r3, [r4, #0x15c]
	ldr r0, [r4, #0x4c]
	add r2, r3, r2
	str r1, [r4, #0x60]
	sub r0, r2, r0
	str r0, [r4, #0x64]
	add sp, sp, #0x14
	str r1, [r4, #0x68]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b9018:
	mvn r0, #0x80000000
	str r0, [sp]
	ldr r3, [r4, #0x15c]
	ldr r1, _020b9170 ; =0xfffffb33
	ldr r2, _020b9150 ; =0x0000019a
	add r1, r3, r1
	add r0, sp, #4
	mov r3, #0
	bl func_0202b418
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x4c]
	mov r0, #0
	str r0, [r4, #0x60]
	sub r1, r2, r1
	str r1, [r4, #0x64]
	add sp, sp, #0x14
	str r0, [r4, #0x68]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b9060:
	ldr r2, [r4, #0x138]
	ldr r0, _020b9174 ; =0x00000aab
	ldr r1, _020b915c ; =data_02050f54
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x2
	ldrsh r2, [r1, r0]
	ldr r0, _020b9154 ; =0x00000333
	mov r1, #0
	umull r5, r3, r2, r0
	mla r3, r2, r1, r3
	mov r2, r2, asr #0x1f
	mla r3, r2, r0, r3
	adds r5, r5, #0x800
	adc r0, r3, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r3, [r4, #0x15c]
	ldr r0, [r4, #0x4c]
	add r2, r3, r2
	str r1, [r4, #0x60]
	sub r0, r2, r0
	str r0, [r4, #0x64]
	add sp, sp, #0x14
	str r1, [r4, #0x68]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b90d0:
	mov r1, #0x400
	mov r2, #0x200
	mov r3, #0x1000
	bl func_ov00_020b8c98
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b90e8:
	mov r1, #0xcd
	bl func_ov00_020b8c50
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b90f8:
	ldr r1, _020b9154 ; =0x00000333
	bl func_ov00_020b8c50
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b9108:
	mov r1, #0x800
	mov r2, #0x200
	mov r3, #0x2000
	bl func_ov00_020b8c98
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b9120:
	mov r1, #0x400
	mov r2, #0x1000
	mov r3, #0x2000
	bl func_ov00_020b8c98
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020b9138:
	mov r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020b8d34
_020b9150: .word 0x0000019a
_020b9154: .word 0x00000333
_020b9158: .word data_027e0764
_020b915c: .word data_02050f54
_020b9160: .word 0xffffeaab
_020b9164: .word 0x000004cd
_020b9168: .word 0x00001555
_020b916c: .word 0x00000266
_020b9170: .word 0xfffffb33
_020b9174: .word 0x00000aab

	.global func_ov00_020b9178
	arm_func_start func_ov00_020b9178
func_ov00_020b9178: ; 0x020b9178
	bx lr
	arm_func_end func_ov00_020b9178

	.global func_ov00_020b917c
	arm_func_start func_ov00_020b917c
func_ov00_020b917c: ; 0x020b917c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r0
	ldr r0, [sb, #0x130]
	mov r8, r1
	cmp r0, #0
	bne _020b9214
	cmp r8, #0
	beq _020b9214
	mov r0, #1
	strb r0, [sb, #0x11a]
	mov r5, #0
	ldr sl, _020b92cc ; =data_ov00_020dc81c
	ldr fp, _020b92d0 ; =data_027e0e58
	strb r5, [sb, #0x290]
	add r7, sb, #0x218
	mov r4, #2
_020b91c0:
	ldr r0, [r7]
	cmp r0, #0
	bne _020b91fc
	mov r0, sb
	ldr r1, [r0]
	ldr r6, [fp]
	ldr r1, [r1, #0xb4]
	blx r1
	mov r1, r0
	mov r0, r6
	ldr r2, [sl, r1, lsl #2]
	str r4, [sp]
	mov r1, r7
	add r3, sb, #0x48
	bl func_ov00_0207c1f8
_020b91fc:
	add r5, r5, #1
	cmp r5, #2
	add r7, r7, #4
	blo _020b91c0
	mov r0, sb
	bl func_ov00_020b92d8
_020b9214:
	cmp r8, #9
	addls pc, pc, r8, lsl #2
	b _020b92b8
_020b9220: ; jump table
	b _020b9248 ; case 0
	b _020b9278 ; case 1
	b _020b92b8 ; case 2
	b _020b92b8 ; case 3
	b _020b92b8 ; case 4
	b _020b92b8 ; case 5
	b _020b92b8 ; case 6
	b _020b92b8 ; case 7
	b _020b92ac ; case 8
	b _020b92b8 ; case 9
_020b9248:
	mov r0, #0
	add r5, sb, #0x218
	add r4, sb, #0x220
	strb r0, [sb, #0x11a]
	cmp r5, r4
	beq _020b92b8
_020b9260:
	mov r0, r5
	bl func_ov00_020b7e6c
	add r5, r5, #4
	cmp r5, r4
	bne _020b9260
	b _020b92b8
_020b9278:
	mvn r1, #0
	str r1, [sb, #0x280]
	ldr r0, _020b92d4 ; =data_027e0e60
	str r1, [sb, #0x284]
	ldr r1, [r0]
	add r0, sp, #4
	add r2, sb, #0x48
	bl func_ov00_02083a1c
	ldrb r0, [sp, #4]
	strb r0, [sb, #0x288]
	ldrb r0, [sp, #5]
	strb r0, [sb, #0x289]
	b _020b92b8
_020b92ac:
	add r0, sb, #0x200
	mov r1, #0
	strh r1, [r0, #0x8a]
_020b92b8:
	mov r0, #0
	str r0, [sb, #0x138]
	str r8, [sb, #0x130]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020b917c
_020b92cc: .word data_ov00_020dc81c
_020b92d0: .word data_027e0e58
_020b92d4: .word data_027e0e60

	.global func_ov00_020b92d8
	arm_func_start func_ov00_020b92d8
func_ov00_020b92d8: ; 0x020b92d8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	add r1, sp, #0
	mov r4, r0
	bl func_ov00_020c3230
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r1, r1, #0x800
	str r1, [sp, #4]
	str r0, [r4, #0x48]
	ldr r0, [sp, #4]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x50]
	ldr r0, [sp]
	str r0, [r4, #0x54]
	ldr r0, [sp, #4]
	str r0, [r4, #0x58]
	ldr r0, [sp, #8]
	str r0, [r4, #0x5c]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov00_020b92d8

	.global func_ov00_020b9330
	arm_func_start func_ov00_020b9330
func_ov00_020b9330: ; 0x020b9330
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x40
	mov r7, r0
	ldr r1, [r7, #0x130]
	cmp r1, #0
	beq _020b9384
	ldr r2, [r0]
	add r1, sp, #4
	ldr r2, [r2, #0xcc]
	blx r2
	cmp r0, #0
	ldrne r1, [sp, #4]
	ldrne r0, [r7, #0x130]
	cmpne r1, r0
	beq _020b9384
	mov r0, r7
	ldr r2, [r0]
	ldr r2, [r2, #0xdc]
	blx r2
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b9384:
	ldr r0, _020b9740 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020b93b0
	ldr r0, _020b9740 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097750
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r7, #0x28e]
_020b93b0:
	ldr r0, _020b9744 ; =data_027e0c68
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _020b93d0
	add r0, r7, #0x224
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020b93d0:
	ldr r0, [r7, #0x130]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020b9738
_020b93e0: ; jump table
	b _020b9408 ; case 0
	b _020b9444 ; case 1
	b _020b9444 ; case 2
	b _020b9738 ; case 3
	b _020b9698 ; case 4
	b _020b96cc ; case 5
	b _020b9710 ; case 6
	b _020b9738 ; case 7
	b _020b964c ; case 8
	b _020b9738 ; case 9
_020b9408:
	mov r0, r7
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0xcc]
	blx r2
	cmp r0, #0
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xdc]
	blx r2
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b9444:
	ldr r0, _020b9748 ; =data_027e0fc8
	ldr r2, [r7, #0x160]
	ldr r1, [r7, #0x50]
	ldr r0, [r0]
	add r1, r2, r1
	add r1, r1, r1, lsr #31
	ldr r5, [r7, #0x15c]
	ldr r4, [r7, #0x4c]
	ldr r3, [r7, #0x158]
	ldr r2, [r7, #0x48]
	add r4, r5, r4
	add r3, r3, r2
	add r2, r4, r4, lsr #31
	add r3, r3, r3, lsr #31
	mov r4, #0x3000
	str r4, [sp]
	cmp r0, #0
	mov r6, r1, asr #0x1
	mov r5, r2, asr #0x1
	mov r4, r3, asr #0x1
	beq _020b95ec
	bl func_ov00_020bc46c
	cmp r0, #0
	bne _020b95ec
	ldrb r0, [r7, #0x28f]
	mov r2, #0
	cmp r0, #0
	beq _020b94e8
	ldr r0, _020b974c ; =data_027e0f94
	str r2, [sp]
	ldr r1, [r0]
	str r1, [r7, #0x158]
	ldr r1, [r0, #4]
	str r1, [r7, #0x15c]
	ldr r0, [r0, #8]
	str r0, [r7, #0x160]
	ldr r0, [r7, #0x15c]
	add r0, r0, #0x9a
	add r0, r0, #0x1900
	str r0, [r7, #0x15c]
	b _020b95ec
_020b94e8:
	ldr r0, _020b9750 ; =data_027e0fe4
	ldr ip, _020b9754 ; =data_ov00_020e67d8
	ldr r0, [r0]
	mov r3, #0x3000
	add r1, sp, #0x28
	str ip, [sp, #0x28]
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	str r6, [sp, #0x3c]
	bl func_ov00_020c37ec
	cmp r0, #0
	ble _020b956c
	ldr r2, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r1, sp, #0x18
	str r2, [sp]
	bl func_ov00_020c2a0c
	ldr r0, [sp, #0x18]
	str r0, [r7, #0x158]
	ldr r0, [sp, #0x1c]
	str r0, [r7, #0x15c]
	ldr r0, [sp, #0x20]
	str r0, [r7, #0x160]
	ldr r0, [sp, #0x2c]
	ldr r1, [r7, #0x15c]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x1e]
	add r0, r0, #0x66
	add r0, r0, #0x600
	add r0, r1, r0
	str r0, [r7, #0x15c]
_020b956c:
	ldr r0, _020b9758 ; =data_027e0e60
	ldr r3, [sp]
	ldr r0, [r0]
	add r1, sp, #8
	add r2, sp, #0
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	bl func_ov00_020853fc
	cmp r0, #0
	ldrnesb r1, [r0, #0x12]
	cmpne r1, #1
	beq _020b95ec
	ldr r1, [r0, #0x18]
	str r1, [r7, #0x158]
	ldr r1, [r0, #0x1c]
	str r1, [r7, #0x15c]
	ldr r1, [r0, #0x20]
	str r1, [r7, #0x160]
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq r0, #0
	beq _020b95e0
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
_020b95e0:
	ldr r1, [r7, #0x15c]
	add r0, r1, r0
	str r0, [r7, #0x15c]
_020b95ec:
	ldr r0, [sp]
	cmp r0, #0x3000
	ldr r0, [r7, #0x130]
	bge _020b9624
	cmp r0, #1
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xdc]
	blx r2
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b9624:
	cmp r0, #2
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xdc]
	blx r2
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b964c:
	mov r0, #0x10000
	ldr r1, [r7, #0x23c]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	ldreq r0, _020b9744 ; =data_027e0c68
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xdc]
	blx r2
	mov r0, #0
	add sp, sp, #0x40
	strb r0, [r7, #0x11c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b9698:
	mov r0, r7
	add r1, r7, #0x158
	bl func_ov00_020c288c
	cmp r0, #0x20
	addgt sp, sp, #0x40
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r2, [r0]
	mov r1, #5
	ldr r2, [r2, #0xdc]
	blx r2
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b96cc:
	ldr r0, _020b9748 ; =data_027e0fc8
	ldr r0, [r0]
	bl func_ov00_020bcf2c
	cmp r0, #0
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x138]
	cmp r0, #8
	addlt sp, sp, #0x40
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xdc]
	blx r2
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020b9710:
	mov r0, r7
	bl func_ov00_020c28ec
	cmp r0, #0x20
	addgt sp, sp, #0x40
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0xdc]
	blx r2
_020b9738:
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020b9330
_020b9740: .word data_027e0f74
_020b9744: .word data_027e0c68
_020b9748: .word data_027e0fc8
_020b974c: .word data_027e0f94
_020b9750: .word data_027e0fe4
_020b9754: .word data_ov00_020e67d8
_020b9758: .word data_027e0e60

	.global func_ov00_020b975c
	arm_func_start func_ov00_020b975c
func_ov00_020b975c: ; 0x020b975c
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0xe0]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020b975c

	.global func_ov00_020b9770
	arm_func_start func_ov00_020b9770
func_ov00_020b9770: ; 0x020b9770
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, #0x14
	mul r4, r1, r2
	ldr r2, _020b97d4 ; =data_ov00_020dc828
	ldr r1, _020b97d8 ; =data_ov00_020e678c
	mov r5, r0
	ldr r0, [r1, #0x20]
	add r1, r2, r4
	bl func_0201e544
	ldr r2, _020b97dc ; =data_ov00_020dc838
	mov r1, r0
	ldr r3, [r2, r4]
	add r0, r5, #0x1d0
	mov r2, #0
	bl func_ov00_020c0cc8
	add r0, r5, #0x168
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	add r0, r5, #0x168
	ldr r2, [r0]
	add r1, r5, #0x1d0
	ldr r2, [r2, #0x24]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b9770
_020b97d4: .word data_ov00_020dc828
_020b97d8: .word data_ov00_020e678c
_020b97dc: .word data_ov00_020dc838

	.global func_ov00_020b97e0
	arm_func_start func_ov00_020b97e0
func_ov00_020b97e0: ; 0x020b97e0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x130]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _020b9944
_020b97f8: ; jump table
	b _020b9944 ; case 0
	b _020b9944 ; case 1
	b _020b9944 ; case 2
	b _020b9944 ; case 3
	b _020b981c ; case 4
	b _020b994c ; case 5
	b _020b9944 ; case 6
	b _020b981c ; case 7
	b _020b988c ; case 8
_020b981c:
	cmp r1, #7
	bne _020b983c
	add r1, r4, #0x158
	bl func_ov00_020c288c
	cmp r0, #0x20
	movle r0, #0x1800
	strle r0, [r4, #0x1e0]
	ble _020b994c
_020b983c:
	mov r0, r4
	bl func_ov00_020c28ec
	mov r1, #0x4000
	bl Divide
	cmp r0, #0x1000
	movgt r0, #0x1000
	bgt _020b9860
	cmp r0, #0
	movlt r0, #0
_020b9860:
	mov r1, r0, asr #0x1f
	mov r2, r1, lsl #0xb
	mov r1, #0x800
	adds r1, r1, r0, lsl #11
	orr r2, r2, r0, lsr #21
	adc r0, r2, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, #0x1000
	str r0, [r4, #0x1e0]
	b _020b994c
_020b988c:
	add r0, r4, #0x200
	ldrsh r0, [r0, #0x8a]
	cmp r0, #1
	beq _020b98b0
	cmp r0, #2
	beq _020b990c
	cmp r0, #3
	beq _020b98bc
	b _020b9938
_020b98b0:
	mov r0, #0x2000
	str r0, [r4, #0x1e0]
	b _020b994c
_020b98bc:
	ldr r2, [r4, #0x138]
	ldr r0, _020b9958 ; =0x00000aab
	ldr r1, _020b995c ; =data_02050f54
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x2
	ldrsh r2, [r1, r0]
	mov r0, #0x800
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r3, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	rsb r0, r1, #0x1800
	str r0, [r4, #0x1e0]
	b _020b994c
_020b990c:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	ldrge r0, _020b9960 ; =0x00000b33
	strge r0, [r4, #0x1e0]
	bge _020b994c
	add r0, r4, #0x1d0
	mov r1, #0
	bl func_ov00_020c0e24
	mov r0, #0
	str r0, [r4, #0x1e0]
	b _020b994c
_020b9938:
	mov r0, #0x1000
	str r0, [r4, #0x1e0]
	b _020b994c
_020b9944:
	mov r0, #0x1000
	str r0, [r4, #0x1e0]
_020b994c:
	add r0, r4, #0x1d0
	bl func_ov00_020c0e04
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b97e0
_020b9958: .word 0x00000aab
_020b995c: .word data_02050f54
_020b9960: .word 0x00000b33

	.global func_ov00_020b9964
	arm_func_start func_ov00_020b9964
func_ov00_020b9964: ; 0x020b9964
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	bl func_ov00_020c313c
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #0x28d]
	cmp r0, #0
	beq _020b99c8
	add r3, r4, #0x218
	add r2, r4, #0x220
	cmp r3, r2
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, pc}
_020b99a0:
	ldr r1, [r3]
	add r3, r3, #4
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #8
	strne r0, [r1, #0x24]
	cmp r3, r2
	bne _020b99a0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
_020b99c8:
	ldr r1, [r4, #0x48]
	mov r0, r4
	str r1, [r4, #0x54]
	ldr r1, [r4, #0x4c]
	str r1, [r4, #0x58]
	ldr r1, [r4, #0x50]
	str r1, [r4, #0x5c]
	ldr r1, [r0]
	ldr r1, [r1, #0xec]
	blx r1
	ldrb r0, [r4, #0x11a]
	cmp r0, #0
	beq _020b9c14
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xd0]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xd4]
	blx r1
	add r0, r4, #0x48
	add r1, r4, #0x60
	mov r2, r0
	bl func_01ff9bc4
	mov r0, r4
	bl func_ov00_020c2bf4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xe0]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xd8]
	blx r1
	add r0, r4, #0x48
	ldmia r0, {r0, r1, r2}
	add r3, sp, #0xc
	stmia r3, {r0, r1, r2}
	add lr, r4, #0x54
	add ip, sp, #0
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r3, #0x33
	add r0, r0, #0x300
	add r1, r1, #0x33
	str r0, [sp, #0x10]
	add r1, r1, #0x300
	add r0, r4, #0x60
	str r1, [sp, #4]
	bl func_01ff9cec
	add r1, r4, #0x200
	ldrsh r3, [r1, #0x20]
	mov r1, #0x3000
	ldr r2, _020b9cc8 ; =0x55555556
	smulbb r1, r3, r1
	mov r3, r1, lsr #0x1
	smull r1, ip, r2, r3
	add ip, ip, r3, lsr #31
	sub r1, r0, ip
	ldr r0, [r4, #0x218]
	cmp r0, #0
	beq _020b9b14
	ldr r2, [r0, #0x20]
	ldr r3, [sp, #0xc]
	ldr r2, [r2]
	ldr r2, [r2, #4]
	add r2, r3, r2
	str r2, [r0, #0x28]
	ldr r2, [r0, #0x20]
	ldr r3, [sp, #0x10]
	ldr r2, [r2]
	ldr r2, [r2, #8]
	add r2, r3, r2
	str r2, [r0, #0x2c]
	ldr r2, [r0, #0x20]
	ldr r3, [sp, #0x14]
	ldr r2, [r2]
	ldr r2, [r2, #0xc]
	add r2, r3, r2
	str r2, [r0, #0x30]
_020b9b14:
	ldr r3, [r4, #0x218]
	cmp r3, #0
	beq _020b9b4c
	cmp r1, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	moveq r0, #1
	ldr r2, [r3, #0x24]
	movne r0, #0
	mov r0, r0, lsl #0x1f
	bic r2, r2, #2
	orr r0, r2, r0, lsr #30
	str r0, [r3, #0x24]
_020b9b4c:
	cmp r1, #0x1800
	blt _020b9bd4
	add r0, sp, #0xc
	add r1, sp, #0
	mov r2, #0x2000
	bl func_0202b308
	ldr r0, [r4, #0x21c]
	cmp r0, #0
	beq _020b9bb8
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0xc]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0x10]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0x14]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
_020b9bb8:
	ldr r1, [r4, #0x21c]
	cmp r1, #0
	beq _020b9be8
	ldr r0, [r1, #0x24]
	bic r0, r0, #2
	str r0, [r1, #0x24]
	b _020b9be8
_020b9bd4:
	ldr r1, [r4, #0x21c]
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #2
	strne r0, [r1, #0x24]
_020b9be8:
	add r3, r4, #0x200
	ldrsh r0, [r3, #0x20]
	ldr r1, _020b9cc8 ; =0x55555556
	mov r2, #3
	add ip, r0, #1
	smull r0, lr, r1, ip
	add lr, lr, ip, lsr #31
	smull r0, r1, r2, lr
	sub lr, ip, r0
	strh lr, [r3, #0x20]
	b _020b9c50
_020b9c14:
	ldr r0, [r4, #0x130]
	cmp r0, #0
	bne _020b9c50
	mov r0, r4
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0xcc]
	blx r2
	cmp r0, #0
	bne _020b9c50
	mov r0, r4
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xdc]
	blx r2
_020b9c50:
	add ip, r4, #0x218
	add r0, r4, #0x220
	cmp ip, r0
	ldrb r0, [r4, #0x11a]
	beq _020b9ca0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	mov r1, r0, lsl #0x1f
	add r0, r4, #0x220
_020b9c78:
	ldr r3, [ip]
	cmp r3, #0
	beq _020b9c94
	ldr r2, [r3, #0x24]
	bic r2, r2, #8
	orr r2, r2, r1, lsr #28
	str r2, [r3, #0x24]
_020b9c94:
	add ip, ip, #4
	cmp ip, r0
	bne _020b9c78
_020b9ca0:
	ldrb r0, [r4, #0x11a]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xe8]
	blx r1
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b9964
_020b9cc8: .word 0x55555556

	.global func_ov00_020b9ccc
	arm_func_start func_ov00_020b9ccc
func_ov00_020b9ccc: ; 0x020b9ccc
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl func_ov00_020c313c
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #0x28d]
	cmp r0, #0
	beq _020b9d30
	add r3, r4, #0x218
	add r2, r4, #0x220
	cmp r3, r2
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
_020b9d08:
	ldr r1, [r3]
	add r3, r3, #4
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #8
	strne r0, [r1, #0x24]
	cmp r3, r2
	bne _020b9d08
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_020b9d30:
	mov r0, #0x10000
	ldr r1, [r4, #0x23c]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	beq _020b9d58
	add r0, r4, #0x224
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020b9d58:
	ldrb r0, [r4, #0x11a]
	cmp r0, #0
	mov r0, r4
	ldr r1, [r0]
	beq _020b9ee0
	ldr r1, [r1, #0xd0]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xd4]
	blx r1
	add r0, r4, #0x48
	add r1, r4, #0x60
	mov r2, r0
	bl func_01ff9bc4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xd8]
	blx r1
	mov r0, r4
	bl func_ov00_020c2bf4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xe4]
	blx r1
	ldr r0, [r4, #0x130]
	cmp r0, #0
	beq _020b9e00
	mov r0, r4
	ldr r2, [r0]
	add r1, sp, #0
	ldr r2, [r2, #0xcc]
	blx r2
	cmp r0, #0
	ldrne r1, [sp]
	ldrne r0, [r4, #0x130]
	cmpne r1, r0
	beq _020b9e00
	mov r0, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xdc]
	blx r2
_020b9e00:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xe8]
	blx r1
	add r0, r4, #0x200
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	bne _020b9eb0
	add r0, r4, #0x48
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #8]
	add r0, r0, #0x33
	add r0, r0, #0x300
	str r0, [sp, #8]
	ldr r0, [r4, #0x218]
	cmp r0, #0
	beq _020b9e94
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0xc]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
_020b9e94:
	ldr r1, [r4, #0x218]
	cmp r1, #0
	beq _020b9ec4
	ldr r0, [r1, #0x24]
	bic r0, r0, #2
	str r0, [r1, #0x24]
	b _020b9ec4
_020b9eb0:
	ldr r1, [r4, #0x218]
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #2
	strne r0, [r1, #0x24]
_020b9ec4:
	ldr r1, [r4, #0x21c]
	cmp r1, #0
	beq _020b9ee8
	ldr r0, [r1, #0x24]
	orr r0, r0, #2
	str r0, [r1, #0x24]
	b _020b9ee8
_020b9ee0:
	ldr r1, [r1, #0xe4]
	blx r1
_020b9ee8:
	add r3, r4, #0x200
	ldrsh r0, [r3, #0x20]
	ldr r1, _020b9fd0 ; =0x55555556
	mov r2, #3
	add ip, r0, #1
	smull r0, lr, r1, ip
	add lr, lr, ip, lsr #31
	smull r0, r1, r2, lr
	sub lr, ip, r0
	ldr r0, _020b9fd4 ; =data_027e0fc8
	strh lr, [r3, #0x20]
	ldr r0, [r0]
	bl func_ov00_020bcefc
	cmp r0, #0
	bne _020b9f38
	ldr r0, _020b9fd8 ; =data_027e0fe4
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _020b9f74
_020b9f38:
	add r3, r4, #0x218
	add r2, r4, #0x220
	cmp r3, r2
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
_020b9f4c:
	ldr r1, [r3]
	add r3, r3, #4
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #8
	strne r0, [r1, #0x24]
	cmp r3, r2
	bne _020b9f4c
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_020b9f74:
	add ip, r4, #0x218
	add r0, r4, #0x220
	cmp ip, r0
	addeq sp, sp, #0x10
	ldrb r0, [r4, #0x11a]
	ldmeqia sp!, {r4, pc}
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	mov r1, r0, lsl #0x1f
	add r0, r4, #0x220
_020b9fa0:
	ldr r3, [ip]
	cmp r3, #0
	beq _020b9fbc
	ldr r2, [r3, #0x24]
	bic r2, r2, #8
	orr r2, r2, r1, lsr #28
	str r2, [r3, #0x24]
_020b9fbc:
	add ip, ip, #4
	cmp ip, r0
	bne _020b9fa0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020b9ccc
_020b9fd0: .word 0x55555556
_020b9fd4: .word data_027e0fc8
_020b9fd8: .word data_027e0fe4

	.global func_ov00_020b9fdc
	arm_func_start func_ov00_020b9fdc
func_ov00_020b9fdc: ; 0x020b9fdc
	ldr ip, _020b9fe4 ; =func_ov00_020b9fe8
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020b9fdc
_020b9fe4: .word func_ov00_020b9fe8

	.global func_ov00_020b9fe8
	arm_func_start func_ov00_020b9fe8
func_ov00_020b9fe8: ; 0x020b9fe8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0xc4]
	blx r1
	mov r5, r0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc8]
	blx r1
	ldr r1, _020ba0c0 ; =data_ov00_020ee1f8
	mov r2, r0
	ldr r0, [r1]
	mov r1, r5
	bl func_ov00_020b8830
	ldr r0, _020ba0c4 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r2, r0
	ldr r0, _020ba0c0 ; =data_ov00_020ee1f8
	mov r1, #0
	ldr r0, [r0]
	bl func_02019534
	ldr r1, [r4, #0x48]
	add r0, r4, #0x168
	str r1, [sp, #0xc]
	bl func_ov00_020b3ec4
	ldr r1, [r4, #0x4c]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x164]
	cmp r0, #0
	bne _020ba08c
	ldr r0, _020ba0c8 ; =0x00000e66
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	b _020ba09c
_020ba08c:
	ldr r0, _020ba0cc ; =0x0000119a
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
_020ba09c:
	add r0, r4, #0x168
	ldr r4, [r0]
	ldr r2, _020ba0d0 ; =data_027e0194
	ldr r4, [r4, #0x10]
	add r1, sp, #0
	add r3, sp, #0xc
	blx r4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020b9fe8
_020ba0c0: .word data_ov00_020ee1f8
_020ba0c4: .word data_ov00_020e9360
_020ba0c8: .word 0x00000e66
_020ba0cc: .word 0x0000119a
_020ba0d0: .word data_027e0194

	.global func_ov00_020ba0d4
	arm_func_start func_ov00_020ba0d4
func_ov00_020ba0d4: ; 0x020ba0d4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	movs r4, r1
	ldrneb r0, [r5, #0xa5]
	ldreqb r0, [r5, #0xa4]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020ba160 ; =data_027e0fc8
	ldr r0, [r0]
	bl func_ov00_020bcefc
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _020ba164 ; =data_ov00_020e9c88
	ldr r3, _020ba168 ; =func_ov00_020b9fdc
	mov r1, r4
	add r2, r5, #0x48
	str r5, [sp]
	bl func_ov00_0207b89c
	mov r3, #0x400
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, _020ba16c ; =data_ov00_020e9370
	add r2, r5, #0x48
	str r1, [sp, #0x14]
	bl func_ov05_02102c2c
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba0d4
_020ba160: .word data_027e0fc8
_020ba164: .word data_ov00_020e9c88
_020ba168: .word func_ov00_020b9fdc
_020ba16c: .word data_ov00_020e9370

	.global func_ov00_020ba170
	arm_func_start func_ov00_020ba170
func_ov00_020ba170: ; 0x020ba170
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x130]
	cmp r0, #0
	bne _020ba1c4
	ldr r0, _020ba200 ; =gItemManager
	ldr r0, [r0]
	bl _ZNK11ItemManager16GetEquippedFairyEv
	mov r4, r0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r4, r0
	bne _020ba1c4
	mov r0, r5
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
_020ba1c4:
	mov r0, r5
	bl func_ov00_020b92d8
	mov r0, r5
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0xcc]
	blx r2
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba170
_020ba200: .word gItemManager

	.global func_ov00_020ba204
	arm_func_start func_ov00_020ba204
func_ov00_020ba204: ; 0x020ba204
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xac
	mov r5, r1
	ldr ip, [r5, #4]
	mov r6, r0
	mov r4, r2
	cmp ip, r3
	bge _020ba32c
	sub r0, r3, ip
	add r3, sp, #0x40
	mov r1, r4
	mov r2, r5
	bl func_01ff9e64
	ldr r0, _020ba340 ; =data_ov00_020e67b8
	add lr, sp, #0x30
	str r0, [sp, #0x2c]
	ldmia r5, {r0, r1, r2}
	mov r3, #0
	ldr ip, _020ba344 ; =0x0000ffff
	stmia lr, {r0, r1, r2}
	str r4, [sp, #0x3c]
	strh ip, [sp, #0x70]
	strh ip, [sp, #0x72]
	strh ip, [sp, #0x74]
	strh ip, [sp, #0x76]
	strh r3, [sp, #0x78]
	strb r3, [sp, #0x9a]
	strb r3, [sp, #0x9b]
	strb r3, [sp, #0x9c]
	strb r3, [sp, #0x9d]
	strb r3, [sp, #0xa4]
	strb r3, [sp, #0xa5]
	strb r3, [sp, #0xa6]
	strb r3, [sp, #0xa7]
	strb r3, [sp, #0xa8]
	strb r3, [sp, #0xa9]
	ldr r0, [r5]
	ldr r4, [sp, #0x40]
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x44]
	str r0, [sp, #0x24]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x28]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _020ba348 ; =0x00000333
	str r4, [sp, #0x14]
	str r0, [sp]
	ldr r0, [r6, #8]
	mov r1, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, _020ba34c ; =data_027e0e60
	add r1, sp, #0x4c
	ldr r0, [r0]
	add r2, sp, #0x20
	add r3, sp, #0x14
	bl func_01ffbf5c
	mov r0, r6
	ldr r2, [r0]
	add r1, sp, #0x30
	ldr r2, [r2, #0xc0]
	blx r2
	mov r4, r0
	add r0, sp, #0x2c
	bl func_ov00_02081f4c
	add sp, sp, #0xac
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, pc}
_020ba32c:
	ldr r2, [r0]
	ldr r2, [r2, #0xc0]
	blx r2
	add sp, sp, #0xac
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba204
_020ba340: .word data_ov00_020e67b8
_020ba344: .word 0x0000ffff
_020ba348: .word 0x00000333
_020ba34c: .word data_027e0e60

	.global func_ov00_020ba350
	arm_func_start func_ov00_020ba350
func_ov00_020ba350: ; 0x020ba350
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ba350

	.global func_ov00_020ba364
	arm_func_start func_ov00_020ba364
func_ov00_020ba364: ; 0x020ba364
	stmdb sp!, {r4, lr}
	ldr r2, [r1]
	str r2, [r0, #0x158]
	ldr r2, [r1, #4]
	str r2, [r0, #0x15c]
	ldr r1, [r1, #8]
	str r1, [r0, #0x160]
	ldr r4, [r0, #0x130]
	cmp r4, #4
	beq _020ba3ac
	ldr r2, [r0]
	mov r1, #4
	ldr r2, [r2, #0xdc]
	blx r2
	cmp r4, #5
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
_020ba3ac:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ba364

	.global func_ov00_020ba3b4
	arm_func_start func_ov00_020ba3b4
func_ov00_020ba3b4: ; 0x020ba3b4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020ba410 ; =gItemManager
	mov r5, r0
	ldr r0, [r1]
	bl _ZNK11ItemManager16GetEquippedFairyEv
	mov r4, r0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r4, r0
	mov r0, r5
	ldr r2, [r0]
	bne _020ba3fc
	ldr r2, [r2, #0xdc]
	mov r1, #1
	blx r2
	b _020ba408
_020ba3fc:
	ldr r2, [r2, #0xdc]
	mov r1, #6
	blx r2
_020ba408:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba3b4
_020ba410: .word gItemManager

	.global func_ov00_020ba414
	arm_func_start func_ov00_020ba414
func_ov00_020ba414: ; 0x020ba414
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r2, _020ba454 ; =data_027e0f90
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	ldr r2, [r0]
	add r1, sp, #0
	ldr r2, [r2, #0x10]
	blx r2
	add r1, sp, #0
	mov r0, r4
	add r2, r5, #0x158
	bl func_01ff9bc4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba414
_020ba454: .word data_027e0f90

	.global func_ov00_020ba458
	arm_func_start func_ov00_020ba458
func_ov00_020ba458: ; 0x020ba458
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020ba4e0 ; =gItemManager
	mov r5, r0
	ldr r0, [r1]
	bl _ZNK11ItemManager16GetEquippedFairyEv
	mov r4, r0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r4, r0
	bne _020ba4d8
	mov r0, r5
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0xcc]
	blx r2
	cmp r0, #0
	bne _020ba4d8
	ldr r0, [r5, #0x130]
	cmp r0, #8
	cmpne r0, #9
	beq _020ba4d8
	mov r0, r5
	ldr r2, [r0]
	mov r1, #5
	ldr r2, [r2, #0xdc]
	blx r2
	mov r0, r5
	bl func_ov00_020ba53c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020ba4d8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba458
_020ba4e0: .word gItemManager

	.global func_ov00_020ba4e4
	arm_func_start func_ov00_020ba4e4
func_ov00_020ba4e4: ; 0x020ba4e4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r1, _020ba534 ; =data_ov00_020dc83c
	ldr r3, _020ba538 ; =data_027e0fac
	mov r4, r0
	add ip, sp, #0
	ldmia r1, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldrsh r0, [r3]
	cmp r0, #0
	ldrlt r1, [sp]
	rsblt r1, r1, #0
	strlt r1, [sp]
	add r1, sp, #0
	bl func_0202af4c
	add r1, sp, #0
	mov r0, r4
	bl func_ov00_020ba414
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba4e4
_020ba534: .word data_ov00_020dc83c
_020ba538: .word data_027e0fac

	.global func_ov00_020ba53c
	arm_func_start func_ov00_020ba53c
func_ov00_020ba53c: ; 0x020ba53c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r1, _020ba5a8 ; =data_ov00_020dc848
	ldr r3, _020ba5ac ; =data_027e0fac
	mov r4, r0
	add ip, sp, #0
	ldmia r1, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldrsh r0, [r3]
	cmp r0, #0
	ble _020ba570
	cmp r0, #0x4000
	blt _020ba580
_020ba570:
	mov r1, #0x4000
	rsb r1, r1, #0
	cmp r0, r1
	bge _020ba58c
_020ba580:
	ldr r1, [sp]
	rsb r1, r1, #0
	str r1, [sp]
_020ba58c:
	add r1, sp, #0
	bl func_0202af4c
	add r1, sp, #0
	mov r0, r4
	bl func_ov00_020ba414
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba53c
_020ba5a8: .word data_ov00_020dc848
_020ba5ac: .word data_027e0fac

	.global func_ov00_020ba5b0
	arm_func_start func_ov00_020ba5b0
func_ov00_020ba5b0: ; 0x020ba5b0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020ba4e4
	mov r0, r4
	ldr r2, [r0]
	mov r1, #8
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ba5b0

	.global func_ov00_020ba5d4
	arm_func_start func_ov00_020ba5d4
func_ov00_020ba5d4: ; 0x020ba5d4
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	mov r1, #5
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020ba5d4

	.global func_ov00_020ba5ec
	arm_func_start func_ov00_020ba5ec
func_ov00_020ba5ec: ; 0x020ba5ec
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _020ba868
_020ba600: ; jump table
	b _020ba618 ; case 0
	b _020ba6b0 ; case 1
	b _020ba6f0 ; case 2
	b _020ba730 ; case 3
	b _020ba790 ; case 4
	b _020ba7f0 ; case 5
_020ba618:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x15
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba650
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x24c]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x250]
_020ba650:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x16
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba688
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #2
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x254]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x258]
_020ba688:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x25c]
	ldr r1, [r0, #0xc]
	mov r0, #1
	str r1, [r4, #0x260]
	ldmia sp!, {r4, pc}
_020ba6b0:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x15
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba6e8
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x24c]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x250]
_020ba6e8:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020ba6f0:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x16
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba728
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #2
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x254]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x258]
_020ba728:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020ba730:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x15
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba768
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x24c]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x250]
_020ba768:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x25c]
	ldr r1, [r0, #0xc]
	mov r0, #1
	str r1, [r4, #0x260]
	ldmia sp!, {r4, pc}
_020ba790:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x16
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba7c8
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #2
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x254]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x258]
_020ba7c8:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x25c]
	ldr r1, [r0, #0xc]
	mov r0, #1
	str r1, [r4, #0x260]
	ldmia sp!, {r4, pc}
_020ba7f0:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x15
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba828
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x24c]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x250]
_020ba828:
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #0x16
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	beq _020ba860
	ldr r0, _020ba870 ; =gItemManager
	mov r1, #2
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r0, #8]
	str r1, [r4, #0x254]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x258]
_020ba860:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020ba868:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba5ec
_020ba870: .word gItemManager

	.global func_ov00_020ba874
	arm_func_start func_ov00_020ba874
func_ov00_020ba874: ; 0x020ba874
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	ldr r4, _020bac50 ; =data_027e0fc8
	mov r6, r0
	ldr r8, [r4]
	mov r7, r1
	mov r5, r2
	mov r4, r3
	cmp r8, #0
	beq _020ba8ac
	mov r0, r8
	bl func_ov00_020bd318
	cmp r0, #0
	bne _020ba8b8
_020ba8ac:
	add sp, sp, #0x24
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020ba8b8:
	mov r0, r8
	ldr r3, [r0]
	mov r1, #0
	ldr r3, [r3, #0x7c]
	mov r2, #1
	blx r3
	ldr r0, [r6, #0x130]
	cmp r0, #8
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _020bac54 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097bbc
	cmp r0, #0
	bne _020ba914
	ldr r0, _020bac58 ; =data_027e0c68
	add r1, r6, #0x224
	bl func_020368f4
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020ba914:
	ldr r0, _020bac58 ; =data_027e0c68
	mov r2, r7
	add r1, r6, #0x224
	bl func_02036ce4
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	mov r1, r0
	cmp r1, #0
	ble _020ba958
	ldr r0, _020bac5c ; =data_ov00_020eec9c
	bl func_ov00_020d77e4
_020ba958:
	ldr r0, _020bac60 ; =data_027e0f94
	add r3, sp, #0x18
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x1c]
	cmp r4, #0
	add r0, r0, #0xcd
	add r0, r0, #0xc00
	str r0, [sp, #0x1c]
	bne _020babe8
	ldr r0, _020bac64 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x31
	bne _020baab8
	ldr r1, _020bac68 ; =data_027e0f64
	ldr r0, _020bac6c ; =data_027e0e60
	ldr r1, [r1]
	ldr r2, _020bac70 ; =data_02050f54
	ldr r1, [r1, #4]
	mov r7, #0x800
	add r1, r1, #0x200
	ldrsh r1, [r1, #0x26]
	ldr r3, [sp, #0x1c]
	ldr ip, [sp, #0x18]
	add r4, r1, #0x2000
	mov r1, r4, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r8, r1, lsl #0x1
	mov r1, r8, lsl #0x1
	add lr, r8, #1
	mov lr, lr, lsl #0x1
	ldrsh r1, [r2, r1]
	ldrsh lr, [r2, lr]
	ldr r0, [r0]
	mov r2, r1, asr #0x1f
	mov sb, r2, lsl #0xc
	mov r2, lr, asr #0x1f
	mov r8, r2, lsl #0xc
	adds r2, r7, r1, lsl #12
	orr sb, sb, r1, lsr #20
	adc r1, sb, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add ip, ip, r2
	adds r7, r7, lr, lsl #12
	orr r8, r8, lr, lsr #20
	mov r2, r7, lsr #0xc
	adc r1, r8, #0
	orr r2, r2, r1, lsl #20
	ldr r7, [sp, #0x20]
	add r1, sp, #0xc
	add r7, r7, r2
	mov r2, #1
	str ip, [sp, #0x18]
	str r7, [sp, #0x20]
	str ip, [sp, #0xc]
	str r3, [sp, #0x10]
	str r7, [sp, #0x14]
	bl func_ov00_02083ee0
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	beq _020babcc
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #0x4
	ldr r0, _020bac70 ; =data_02050f54
	mov r1, r1, lsl #0x2
	ldrsh r2, [r0, r1]
	mov r0, #0x800
	ldr r4, [sp, #0x18]
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	adds r3, r0, r2, lsl #13
	orr r1, r1, r2, lsr #19
	adc r0, r1, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r4, r1
	str r0, [sp, #0x18]
	b _020babcc
_020baab8:
	ldrsh r0, [r6, #0x78]
	ldr r3, [sp, #0x1c]
	ldr r2, _020bac70 ; =data_02050f54
	add r0, r0, #0x2000
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r4, r0, lsl #0x1
	add r0, r4, #1
	mov r4, r4, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrsh r7, [r2, r4]
	ldrsh r4, [r2, r0]
	mov r0, #0x800
	mov r2, r7, asr #0x1f
	mov ip, r2, lsl #0xc
	mov r2, r4, asr #0x1f
	mov r2, r2, lsl #0xc
	orr ip, ip, r7, lsr #20
	adds lr, r0, r7, lsl #12
	adc ip, ip, #0
	adds r7, r0, r4, lsl #12
	orr r2, r2, r4, lsr #20
	mov r4, lr, lsr #0xc
	adc r0, r2, #0
	mov r2, r7, lsr #0xc
	ldr r7, [sp, #0x18]
	orr r4, r4, ip, lsl #20
	add r7, r7, r4
	ldr r1, _020bac6c ; =data_027e0e60
	orr r2, r2, r0, lsl #20
	ldr r4, [sp, #0x20]
	ldr r0, [r1]
	add r4, r4, r2
	add r1, sp, #0
	mov r2, #1
	str r7, [sp, #0x18]
	str r4, [sp, #0x20]
	str r7, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	bl func_ov00_02083ee0
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	beq _020babcc
	ldrsh r0, [r6, #0x78]
	ldr r2, _020bac70 ; =data_02050f54
	mov r1, #0x800
	add r0, r0, #0x2000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x2
	ldrsh r2, [r2, r0]
	ldr r3, [sp, #0x18]
	mov r0, r2, asr #0x1f
	mov r0, r0, lsl #0xd
	adds r1, r1, r2, lsl #13
	orr r0, r0, r2, lsr #19
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1
	str r0, [sp, #0x18]
_020babcc:
	ldr r0, [sp, #0x18]
	str r0, [r6, #0x158]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x15c]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0x160]
	b _020bac10
_020babe8:
	ldr r0, [sp, #0x18]
	mov r1, r4
	str r0, [r6, #0x158]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0x158
	str r2, [r6, #0x15c]
	ldr r3, [sp, #0x20]
	mov r2, #0x1000
	str r3, [r6, #0x160]
	bl func_0202b2f8
_020bac10:
	mov r1, #1
	mov r0, r6
	strb r1, [r6, #0x28c]
	bl func_ov00_020c1908
	bl func_020385b8
	add r1, r6, #8
	bl _ZN17LinkStateInteract4GrabEP8ActorRef
	mov r0, r6
	strb r5, [r6, #0x278]
	ldr r2, [r0]
	mov r1, #8
	ldr r2, [r2, #0xdc]
	blx r2
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020ba874
_020bac50: .word data_027e0fc8
_020bac54: .word data_027e0f74
_020bac58: .word data_027e0c68
_020bac5c: .word data_ov00_020eec9c
_020bac60: .word data_027e0f94
_020bac64: .word data_027e0d38
_020bac68: .word data_027e0f64
_020bac6c: .word data_027e0e60
_020bac70: .word data_02050f54

	.global func_ov00_020bac74
	arm_func_start func_ov00_020bac74
func_ov00_020bac74: ; 0x020bac74
	stmdb sp!, {r3, lr}
	ldr r2, [r1]
	ldr r1, [r0, #8]
	cmp r2, r1
	addne r0, r0, #0x200
	movne r1, #0
	strneh r1, [r0, #0x8a]
	ldmneia sp!, {r3, pc}
	ldr r2, [r0]
	mov r1, #8
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bac74

	.global func_ov00_020baca8
	arm_func_start func_ov00_020baca8
func_ov00_020baca8: ; 0x020baca8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x11c]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldreqb r0, [r6, #0x291]
	cmpeq r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _020bad14 ; =data_027e0fc8
	ldr r0, [r0]
	bl func_ov00_020bc46c
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r5]
	mov r0, r6
	str r1, [r6, #0x158]
	ldr r2, [r5, #4]
	mov r1, #7
	str r2, [r6, #0x15c]
	ldr r2, [r5, #8]
	str r2, [r6, #0x160]
	str r4, [r6, #0x164]
	ldr r2, [r0]
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020baca8
_020bad14: .word data_027e0fc8

	.global func_ov00_020bad18
	arm_func_start func_ov00_020bad18
func_ov00_020bad18: ; 0x020bad18
	stmdb sp!, {r3, lr}
	mov r1, #0
	str r1, [r0, #0x164]
	ldr r1, [r0, #0x130]
	cmp r1, #7
	ldmneia sp!, {r3, pc}
	ldr r2, [r0]
	mov r1, #5
	ldr r2, [r2, #0xdc]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bad18

	.global func_ov00_020bad44
	arm_func_start func_ov00_020bad44
func_ov00_020bad44: ; 0x020bad44
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r3, _020baf5c ; =data_ov00_020e8b08
	mov r6, r0
	ldr r3, [r3]
	mov r5, r2
	cmp r3, #0
	beq _020bad98
	ldr r4, [r6, #8]
	mov r2, #0
_020bad6c:
	add r0, r3, r2, lsl #3
	ldr r0, [r0, #0x20]
	cmp r4, r0
	moveq r0, #1
	beq _020bad90
	add r2, r2, #1
	cmp r2, #4
	blt _020bad6c
	mov r0, #0
_020bad90:
	cmp r0, #0
	bne _020bada0
_020bad98:
	mov r0, #1
	strb r0, [r6, #0x28e]
_020bada0:
	mov r0, r1
	add r1, r6, #0x48
	mov r2, #0
	bl func_ov00_020b1d70
	add r1, r6, #0x200
	ldrsh r1, [r1, #0x22]
	mov r4, r0
	cmp r1, #0
	blt _020badd0
	ldr r0, [r6, #0x130]
	cmp r0, #9
	beq _020bae68
_020badd0:
	cmp r5, #0
	addeq r0, r6, #0x200
	moveq r1, #0
	beq _020badf0
	ldr r1, [r4]
	add r0, r6, #0x200
	ldrb r1, [r1, #1]
	sub r1, r1, #1
_020badf0:
	strh r1, [r0, #0x22]
	add r0, r6, #0x200
	ldrsh r1, [r0, #0x22]
	ldr r2, [r4, #4]
	mov r0, #0x24
	smlabb r3, r1, r0, r2
	ldr r1, [r3, #4]
	ldr r0, _020baf60 ; =data_027e0e60
	str r1, [r6, #0x158]
	ldr r2, [r3, #8]
	add r1, sp, #0xc
	str r2, [r6, #0x15c]
	ldr r3, [r3, #0xc]
	mov r2, #1
	str r3, [r6, #0x160]
	ldr r3, [r6, #0x158]
	ldr r0, [r0]
	str r3, [sp, #0xc]
	ldr r3, [r6, #0x15c]
	str r3, [sp, #0x10]
	ldr r3, [r6, #0x160]
	str r3, [sp, #0x14]
	bl func_ov00_02083ee0
	add r1, r0, #0x1000
	str r1, [r6, #0x15c]
	mov r0, r6
	ldr r2, [r0]
	mov r1, #9
	ldr r2, [r2, #0xdc]
	blx r2
_020bae68:
	ldr r2, _020baf64 ; =0x00000333
	add r0, r6, #0x158
	add r1, r6, #0x48
	bl func_ov00_020b1e18
	cmp r0, #0
	beq _020baf50
	cmp r5, #0
	beq _020baeb8
	add r0, r6, #0x200
	ldrsh r1, [r0, #0x22]
	cmp r1, #0
	bne _020baeac
	mvn r1, #0
	strh r1, [r0, #0x22]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020baeac:
	sub r1, r1, #1
	strh r1, [r0, #0x22]
	b _020baef0
_020baeb8:
	ldr r1, [r4]
	add r0, r6, #0x200
	ldrb r1, [r1, #1]
	ldrsh r2, [r0, #0x22]
	sub r1, r1, #1
	cmp r2, r1
	bne _020baee8
	mvn r1, #0
	strh r1, [r0, #0x22]
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020baee8:
	add r1, r2, #1
	strh r1, [r0, #0x22]
_020baef0:
	add r0, r6, #0x200
	ldrsh r1, [r0, #0x22]
	ldr r2, [r4, #4]
	mov r0, #0x24
	smlabb r3, r1, r0, r2
	ldr r1, [r3, #4]
	ldr r0, _020baf60 ; =data_027e0e60
	str r1, [r6, #0x158]
	ldr r2, [r3, #8]
	add r1, sp, #0
	str r2, [r6, #0x15c]
	ldr r3, [r3, #0xc]
	mov r2, #1
	str r3, [r6, #0x160]
	ldr r3, [r6, #0x158]
	ldr r0, [r0]
	str r3, [sp]
	ldr r3, [r6, #0x15c]
	str r3, [sp, #4]
	ldr r3, [r6, #0x160]
	str r3, [sp, #8]
	bl func_ov00_02083ee0
	add r0, r0, #0x1000
	str r0, [r6, #0x15c]
_020baf50:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bad44
_020baf5c: .word data_ov00_020e8b08
_020baf60: .word data_027e0e60
_020baf64: .word 0x00000333

	.global func_ov00_020baf68
	arm_func_start func_ov00_020baf68
func_ov00_020baf68: ; 0x020baf68
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r3, _020bb0a4 ; =data_ov00_020e8b08
	mov r5, r0
	ldr r3, [r3]
	mov r4, r2
	cmp r3, #0
	beq _020bafbc
	ldr ip, [r5, #8]
	mov r2, #0
_020baf90:
	add r0, r3, r2, lsl #3
	ldr r0, [r0, #0x20]
	cmp ip, r0
	moveq r0, #1
	beq _020bafb4
	add r2, r2, #1
	cmp r2, #4
	blt _020baf90
	mov r0, #0
_020bafb4:
	cmp r0, #0
	bne _020bafc4
_020bafbc:
	mov r0, #1
	strb r0, [r5, #0x28e]
_020bafc4:
	mov r0, r1
	add r1, r5, #0x48
	mov r2, #0
	bl func_ov00_020b1d70
	cmp r4, #0
	beq _020baff8
	ldr r1, [r0, #4]
	ldr r0, [r1, #4]
	str r0, [r5, #0x158]
	ldr r0, [r1, #8]
	str r0, [r5, #0x15c]
	ldr r0, [r1, #0xc]
	b _020bb020
_020baff8:
	ldmia r0, {r1, r2}
	ldrb r1, [r1, #1]
	mov r0, #0x24
	sub r1, r1, #1
	mla r2, r1, r0, r2
	ldr r0, [r2, #4]
	str r0, [r5, #0x158]
	ldr r0, [r2, #8]
	str r0, [r5, #0x15c]
	ldr r0, [r2, #0xc]
_020bb020:
	str r0, [r5, #0x160]
	ldr r1, [r5, #0x158]
	ldr r0, _020bb0a8 ; =data_027e0e60
	str r1, [sp]
	ldr r1, [r5, #0x15c]
	ldr r0, [r0]
	str r1, [sp, #4]
	ldr r3, [r5, #0x160]
	add r1, sp, #0
	mov r2, #1
	str r3, [sp, #8]
	bl func_ov00_02083ee0
	add r0, r0, #0x1000
	str r0, [r5, #0x15c]
	ldr r1, [r5, #0x158]
	mov r0, r5
	str r1, [r5, #0x48]
	ldr r2, [r5, #0x15c]
	mov r1, #9
	str r2, [r5, #0x4c]
	ldr r2, [r5, #0x160]
	str r2, [r5, #0x50]
	ldr r2, [r5, #0x158]
	str r2, [r5, #0x54]
	ldr r2, [r5, #0x15c]
	str r2, [r5, #0x58]
	ldr r2, [r5, #0x160]
	str r2, [r5, #0x5c]
	ldr r2, [r0]
	ldr r2, [r2, #0xdc]
	blx r2
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020baf68
_020bb0a4: .word data_ov00_020e8b08
_020bb0a8: .word data_027e0e60

	.global func_ov00_020bb0ac
	arm_func_start func_ov00_020bb0ac
func_ov00_020bb0ac: ; 0x020bb0ac
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, _020bb0dc ; =gItemManager
	mov r6, #0
	mov r5, #1
_020bb0bc:
	ldr r0, [r4]
	mov r1, r6
	bl _ZNK11ItemManager8GetFairyEi
	add r6, r6, #1
	strb r5, [r0, #0x290]
	cmp r6, #3
	blt _020bb0bc
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb0ac
_020bb0dc: .word gItemManager

	.global func_ov00_020bb0e0
	arm_func_start func_ov00_020bb0e0
func_ov00_020bb0e0: ; 0x020bb0e0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r4, _020bb110 ; =gItemManager
	mov r5, r6
_020bb0f0:
	ldr r0, [r4]
	mov r1, r6
	bl _ZNK11ItemManager8GetFairyEi
	add r6, r6, #1
	strb r5, [r0, #0x290]
	cmp r6, #3
	blt _020bb0f0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb0e0
_020bb110: .word gItemManager

	.global func_ov00_020bb114
	arm_func_start func_ov00_020bb114
func_ov00_020bb114: ; 0x020bb114
	bx lr
	arm_func_end func_ov00_020bb114

	.global func_ov00_020bb118
	arm_func_start func_ov00_020bb118
func_ov00_020bb118: ; 0x020bb118
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bb118

	.global func_ov00_020bb134
	arm_func_start func_ov00_020bb134
func_ov00_020bb134: ; 0x020bb134
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bb134

	.global func_ov00_020bb150
	arm_func_start func_ov00_020bb150
func_ov00_020bb150: ; 0x020bb150
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bb150

	.global func_ov00_020bb164
	arm_func_start func_ov00_020bb164
func_ov00_020bb164: ; 0x020bb164
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	ldrb r1, [r4, #0x11a]
	mov r5, r0
	cmp r1, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x12c]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldrb r0, [r4, #0xa4]
	cmp r0, #0
	ldreqb r0, [r4, #0xa5]
	cmpeq r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	add r2, sp, #0
	add r0, r4, #0x48
	add r1, r5, #0xc
	bl func_01ff9bf8
	add r0, sp, #0
	bl func_01ff9cec
	ldr r1, [r5, #8]
	cmp r0, r1
	addge sp, sp, #0xc
	movge r0, #0
	ldmgeia sp!, {r4, r5, pc}
	str r4, [r5, #4]
	str r0, [r5, #8]
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end func_ov00_020bb164

	.global func_ov00_020bb1f8
	thumb_func_start func_ov00_020bb1f8
func_ov00_020bb1f8: ; 0x020bb1f8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	add r2, r4, #0
	add r1, r0, #0
_020bb204:
	add r0, r0, #1
	stmia r2!, {r1}
	cmp r0, #2
	blt _020bb204
	add r2, r4, #0
	mov r0, #0
_020bb210:
	add r1, r1, #1
	str r0, [r2, #8]
	add r2, r2, #4
	cmp r1, #6
	blt _020bb210
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, _020bb2d4 ; =data_027e0ce0
	ldr r2, _020bb2d8 ; =data_ov00_020e6974
	ldr r1, [r1, #4]
	ldr r3, _020bb2dc ; =data_ov00_020e6978
	mov r0, #0x92
	bl func_0202d598
	str r0, [r4]
	ldr r0, _020bb2e0 ; =data_027e0d38
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	cmp r1, #1
	beq _020bb274
	blx func_ov00_02078b40
	cmp r0, #1
	beq _020bb25c
	ldr r0, _020bb2e0 ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #3
	beq _020bb25c
	ldr r0, _020bb2e0 ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #4
	bne _020bb274
_020bb25c:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, _020bb2d4 ; =data_027e0ce0
	ldr r2, _020bb2e4 ; =data_ov00_020e6988
	ldr r1, [r1, #4]
	ldr r3, _020bb2e8 ; =data_ov00_020e698c
	mov r0, #0x92
	bl func_0202d598
	str r0, [r4, #4]
_020bb274:
	ldr r0, _020bb2e0 ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	bne _020bb2a2
	add r0, r4, #0
	mov r1, #0
	bl func_ov00_020bb34c
	add r0, r4, #0
	mov r1, #2
	bl func_ov00_020bb390
	add r0, r4, #0
	mov r1, #3
	bl func_ov00_020bb390
	add r0, r4, #0
	mov r1, #5
	bl func_ov00_020bb390
	b _020bb2cc
_020bb2a2:
	ldr r0, _020bb2e0 ; =data_027e0d38
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _020bb2cc
	add r0, r4, #0
	mov r1, #4
	bl func_ov00_020bb34c
	add r0, r4, #0
	mov r1, #0xc
	bl func_ov00_020bb390
	add r0, r4, #0
	mov r1, #0xd
	bl func_ov00_020bb390
	add r0, r4, #0
	mov r1, #0xe
	bl func_ov00_020bb390
_020bb2cc:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020bb1f8
_020bb2d4: .word data_027e0ce0
_020bb2d8: .word data_ov00_020e6974
_020bb2dc: .word data_ov00_020e6978
_020bb2e0: .word data_027e0d38
_020bb2e4: .word data_ov00_020e6988
_020bb2e8: .word data_ov00_020e698c

	.global func_ov00_020bb2ec
	thumb_func_start func_ov00_020bb2ec
func_ov00_020bb2ec: ; 0x020bb2ec
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _020bb340 ; =data_ov00_020e691c
	ldr r5, _020bb344 ; =data_ov00_020ee4e4
	add r7, r0, #0
	mov r6, #0
_020bb2f6:
	ldr r0, [r4]
	cmp r0, #0
	beq _020bb302
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_020bb302:
	add r0, r5, #0
	bl func_020300cc
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #6
	blt _020bb2f6
	ldr r5, _020bb348 ; =data_ov00_020e6934
	mov r4, #0
_020bb316:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _020bb316
	mov r4, #0
	add r5, r7, #0
_020bb32a:
	ldr r0, [r5]
	cmp r0, #0
	beq _020bb334
	bl func_0202d5dc
_020bb334:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _020bb32a
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov00_020bb2ec
_020bb340: .word data_ov00_020e691c
_020bb344: .word data_ov00_020ee4e4
_020bb348: .word data_ov00_020e6934

	.global func_ov00_020bb34c
	thumb_func_start func_ov00_020bb34c
func_ov00_020bb34c: ; 0x020bb34c
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0x14
	ldr r0, _020bb370 ; =data_ov00_020e691c
	lsl r5, r1, #2
	ldr r3, _020bb374 ; =data_ov00_020ee4e4
	mul r2, r1
	add r1, r3, r2
	ldr r0, [r0, r5]
	mov r2, #1
	mov r3, #0
	add r4, #8
	bl func_ov00_020bd728
	str r0, [r4, r5]
	ldr r0, [r4, r5]
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov00_020bb34c
_020bb370: .word data_ov00_020e691c
_020bb374: .word data_ov00_020ee4e4

	.global func_ov00_020bb378
	thumb_func_start func_ov00_020bb378
func_ov00_020bb378: ; 0x020bb378
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	ldr r0, _020bb388 ; =data_ov00_020ee4ec
	ldr r3, _020bb38c ; =func_0201e4cc
	ldr r0, [r0, r2]
	bx r3
	nop
	thumb_func_end func_ov00_020bb378
_020bb388: .word data_ov00_020ee4ec
_020bb38c: .word func_0201e4cc

	.global func_ov00_020bb390
	thumb_func_start func_ov00_020bb390
func_ov00_020bb390: ; 0x020bb390
	push {r3, r4, r5, lr}
	ldr r5, _020bb3a4 ; =data_ov00_020e6934
	lsl r4, r1, #2
	ldr r0, [r5, r4]
	mov r1, #0x10
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020bb390
_020bb3a4: .word data_ov00_020e6934

	.global func_ov00_020bb3a8
	thumb_func_start func_ov00_020bb3a8
func_ov00_020bb3a8: ; 0x020bb3a8
	ldr r0, _020bb3b0 ; =data_ov00_020e6934
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020bb3a8
_020bb3b0: .word data_ov00_020e6934

	.global func_ov00_020bb3b4
	thumb_func_start func_ov00_020bb3b4
func_ov00_020bb3b4: ; 0x020bb3b4
	push {r4, lr}
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _020bb3d0
	add r0, r4, #0
	add r0, #8
	add r1, r2, #0
	blx func_0201e24c
	ldr r0, [r0]
	add r0, r4, r0
	pop {r4, pc}
_020bb3d0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end func_ov00_020bb3b4

	.global func_ov00_020bb3d4
	thumb_func_start func_ov00_020bb3d4
func_ov00_020bb3d4: ; 0x020bb3d4
	push {r3, lr}
	ldr r0, _020bb3f0 ; =data_ov00_020e6934
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _020bb3ea
	add r1, r2, #0
	blx func_ov00_020c0bdc
	pop {r3, pc}
_020bb3ea:
	mov r0, #0
	pop {r3, pc}
	nop
	thumb_func_end func_ov00_020bb3d4
_020bb3f0: .word data_ov00_020e6934

	.global func_ov00_020bb3f4
	thumb_func_start func_ov00_020bb3f4
func_ov00_020bb3f4: ; 0x020bb3f4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #5
	add r2, r4, #0
	add r5, r0, #0
	bl func_ov00_020bb3b4
	cmp r0, #0
	bne _020bb410
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	bl func_ov00_020bb3b4
_020bb410:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020bb3f4

	.global func_ov00_020bb414
	thumb_func_start func_ov00_020bb414
func_ov00_020bb414: ; 0x020bb414
	ldr r3, _020bb41c ; =func_ov00_020bb3d4
	add r2, r1, #0
	mov r1, #0xc
	bx r3
	.align 2, 0
	thumb_func_end func_ov00_020bb414
_020bb41c: .word func_ov00_020bb3d4 + 1

	.global func_ov00_020bb420
	thumb_func_start func_ov00_020bb420
func_ov00_020bb420: ; 0x020bb420
	ldr r3, _020bb428 ; =func_ov00_020bb3d4
	add r2, r1, #0
	mov r1, #0xd
	bx r3
	.align 2, 0
	thumb_func_end func_ov00_020bb420
_020bb428: .word func_ov00_020bb3d4 + 1

	.global func_ov00_020bb42c
	thumb_func_start func_ov00_020bb42c
func_ov00_020bb42c: ; 0x020bb42c
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0xe
	add r2, r4, #0
	add r5, r0, #0
	bl func_ov00_020bb3d4
	cmp r0, #0
	bne _020bb448
	add r0, r5, #0
	mov r1, #0xf
	add r2, r4, #0
	bl func_ov00_020bb3d4
_020bb448:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020bb42c

	.global func_ov00_020bb44c
	arm_func_start func_ov00_020bb44c
func_ov00_020bb44c: ; 0x020bb44c
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	movne r0, #0xc
	ldreq r0, _020bb468 ; =data_027e0fbc
	ldreq r0, [r0]
	ldreqsh r0, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bb44c
_020bb468: .word data_027e0fbc

	.global func_ov00_020bb46c
	arm_func_start func_ov00_020bb46c
func_ov00_020bb46c: ; 0x020bb46c
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020bb4d0 ; =data_027e0fcc
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	ldr r0, _020bb4d4 ; =data_027e0f94
	mov r2, r4
	add r1, r3, #0x34
	bl func_01ff9bc4
	ldr r1, _020bb4d0 ; =data_027e0fcc
	mov r0, r5
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	str r1, [r4, #0xc]
	bl func_ov00_020bc500
	cmp r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _020bb4d8 ; =data_027e0fd0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	ldreq r0, [r4, #0xc]
	subeq r0, r0, #0xcd
	streq r0, [r4, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb46c
_020bb4d0: .word data_027e0fcc
_020bb4d4: .word data_027e0f94
_020bb4d8: .word data_027e0fd0

	.global func_ov00_020bb4dc
	arm_func_start func_ov00_020bb4dc
func_ov00_020bb4dc: ; 0x020bb4dc
	ldr r0, _020bb508 ; =data_027e0fd4
	ldr r2, [r0]
	ldr r0, [r2, #0x20]
	str r0, [r1]
	ldr r0, [r2, #0x24]
	str r0, [r1, #4]
	ldr r0, [r2, #0x28]
	str r0, [r1, #8]
	ldr r0, [r2, #0x2c]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bb4dc
_020bb508: .word data_027e0fd4

	.global func_ov00_020bb50c
	arm_func_start func_ov00_020bb50c
func_ov00_020bb50c: ; 0x020bb50c
	stmdb sp!, {r4, lr}
	ldr r1, _020bb53c ; =data_027e0fcc
	mov r4, r0
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	bl func_ov00_020bb544
	mov r1, #0
	ldr r0, _020bb540 ; =gItemManager
	strh r1, [r4, #8]
	ldr r0, [r0]
	blx _ZN11ItemManager13UnequipPotionEv
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb50c
_020bb53c: .word data_027e0fcc
_020bb540: .word gItemManager

	.global func_ov00_020bb544
	arm_func_start func_ov00_020bb544
func_ov00_020bb544: ; 0x020bb544
	stmdb sp!, {r4, lr}
	ldr r0, _020bb58c ; =data_027e0fd0
	mov r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _020bb568
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
_020bb568:
	ldr r0, _020bb590 ; =data_027e0fdc
	ldr r1, _020bb58c ; =data_027e0fd0
	ldr r0, [r0]
	ldr r0, [r0, r4, lsl #2]
	str r0, [r1]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb544
_020bb58c: .word data_027e0fd0
_020bb590: .word data_027e0fdc

	.global func_ov00_020bb594
	arm_func_start func_ov00_020bb594
func_ov00_020bb594: ; 0x020bb594
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _020bb5e8 ; =data_027e0fd0
	mov r5, r1
	ldr r0, [r0]
	mov r4, r2
	cmp r0, #0
	beq _020bb5bc
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
_020bb5bc:
	ldr r1, _020bb5ec ; =data_027e0fdc
	ldr r0, _020bb5e8 ; =data_027e0fd0
	ldr r1, [r1]
	ldr r1, [r1, r5, lsl #2]
	str r1, [r0]
	str r4, [r1, #4]
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb594
_020bb5e8: .word data_027e0fd0
_020bb5ec: .word data_027e0fdc

	.global func_ov00_020bb5f0
	arm_func_start func_ov00_020bb5f0
func_ov00_020bb5f0: ; 0x020bb5f0
	ldr r0, _020bb600 ; =data_027e0fd8
	ldr r0, [r0]
	ldr r0, [r0, r1, lsl #2]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bb5f0
_020bb600: .word data_027e0fd8

	.global func_ov00_020bb604
	arm_func_start func_ov00_020bb604
func_ov00_020bb604: ; 0x020bb604
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	ldr ip, [r0]
	mov r6, r1
	ldr ip, [ip, #0x10]
	add r1, sp, #0xc
	mov r5, r2
	mov r4, r3
	blx ip
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, sp, #0xc
	add r3, r2, r0
	add r2, sp, #0
	mov r0, r6
	str r3, [sp, #0x10]
	bl func_01ff9bf8
	ldr r1, [sp, #4]
	add r0, sp, #0
	str r1, [r5]
	mov r1, #0
	str r1, [sp, #4]
	bl func_01ff9cec
	cmp r0, #0
	addle sp, sp, #0x1c
	str r0, [r4]
	ldmleia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	ldr r1, [sp, #0x30]
	strh r0, [r1]
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end func_ov00_020bb604

	.global func_ov00_020bb68c
	arm_func_start func_ov00_020bb68c
func_ov00_020bb68c: ; 0x020bb68c
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020bb6d0 ; =data_027e0fd0
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #0x800
	bl func_ov00_020bb810
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb68c
_020bb6d0: .word data_027e0fd0

	.global func_ov00_020bb6d4
	arm_func_start func_ov00_020bb6d4
func_ov00_020bb6d4: ; 0x020bb6d4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r2, _020bb800 ; =data_027e0fd0
	mov r4, r0
	ldr r0, [r2]
	mov r5, r1
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	cmp r0, #0
	ldrneb r0, [r4, #0x5e]
	cmpne r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add ip, sp, #4
	add r2, sp, #0xc
	add r3, sp, #8
	mov r0, r4
	mov r1, r5
	str ip, [sp]
	bl func_ov00_020bb604
	ldr r1, [sp, #8]
	cmp r1, #0
	blt _020bb7f4
	ldr r0, [r4, #0x50]
	cmp r1, r0
	bge _020bb7f4
	ldr r0, _020bb804 ; =data_027e0fac
	ldrsh r1, [sp, #4]
	ldrsh r0, [r0]
	sub r1, r1, r0
	mov r0, r1, lsl #0x10
	movs r2, r0, asr #0x10
	rsbmi r0, r2, #0
	movmi r0, r0, lsl #0x10
	movmi r2, r0, asr #0x10
	ldr r0, _020bb808 ; =0x000031c7
	cmp r2, r0
	bgt _020bb7f4
	ldr r0, _020bb80c ; =data_027e0fcc
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, asr #0x10
	mov r2, #0x1000
	bl func_ov00_020b4558
	ldr r2, [sp, #0xc]
	mov r0, #0x800
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r0, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	bl func_01ffa0f4
	rsb r0, r0, #0
	mov r1, r0, lsl #0x10
	ldr r2, _020bb80c ; =data_027e0fcc
	mov r1, r1, asr #0x10
	ldr r0, [r2]
	mov r2, #0x1000
	bl func_ov00_020b44d4
	bl _ZN13LinkStateItem16GetLinkStateMoveEv
	bl func_ov05_021113d0
	ldr r1, [sp, #8]
	add sp, sp, #0x10
	mov r0, #1
	str r1, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, pc}
_020bb7f4:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb6d4
_020bb800: .word data_027e0fd0
_020bb804: .word data_027e0fac
_020bb808: .word 0x000031c7
_020bb80c: .word data_027e0fcc

	.global func_ov00_020bb810
	arm_func_start func_ov00_020bb810
func_ov00_020bb810: ; 0x020bb810
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	add ip, sp, #4
	mov r4, r2
	add r2, sp, #0xc
	add r3, sp, #8
	str ip, [sp]
	bl func_ov00_020bb604
	ldr r0, [sp, #8]
	cmp r0, #0
	addlt sp, sp, #0x10
	ldmltia sp!, {r4, pc}
	ldr r0, _020bb8bc ; =data_027e0fac
	ldrsh ip, [sp, #4]
	ldrsh r3, [r0]
	ldr r1, _020bb8c0 ; =data_027e0fcc
	mov r2, r4
	ldr r0, [r1]
	sub r1, ip, r3
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl func_ov00_020b4558
	ldr r2, [sp, #0xc]
	mov r0, #0x800
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	adds r0, r0, r2, lsl #11
	orr r1, r1, r2, lsr #21
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	bl func_01ffa0f4
	rsb r0, r0, #0
	mov r1, r0, lsl #0x10
	ldr r2, _020bb8c0 ; =data_027e0fcc
	mov r1, r1, asr #0x10
	ldr r0, [r2]
	mov r2, r4
	bl func_ov00_020b44d4
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb810
_020bb8bc: .word data_027e0fac
_020bb8c0: .word data_027e0fcc

	.global func_ov00_020bb8c4
	arm_func_start func_ov00_020bb8c4
func_ov00_020bb8c4: ; 0x020bb8c4
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	add ip, sp, #4
	add r2, sp, #0xc
	add r3, sp, #8
	str ip, [sp]
	bl func_ov00_020bb604
	ldr r0, [sp, #8]
	cmp r0, #0
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, pc}
	ldr r0, _020bb940 ; =data_027e0fcc
	ldrsh ip, [sp, #4]
	ldr r3, _020bb944 ; =data_027e0fac
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0x1000
	strh ip, [r3]
	bl func_ov00_020b4558
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	rsb r0, r0, #0
	mov r1, r0, lsl #0x10
	ldr r2, _020bb940 ; =data_027e0fcc
	mov r1, r1, asr #0x10
	ldr r0, [r2]
	mov r2, #0x1000
	bl func_ov00_020b44d4
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb8c4
_020bb940: .word data_027e0fcc
_020bb944: .word data_027e0fac

	.global func_ov00_020bb948
	arm_func_start func_ov00_020bb948
func_ov00_020bb948: ; 0x020bb948
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r5, r0
	ldr r1, _020bb9a0 ; =data_027e0f94
	add r2, sp, #0
	mov r0, r4
	bl func_01ff9bf8
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r1, r0, lsl #0x10
	ldr r0, _020bb9a4 ; =data_027e0fac
	ldr r2, _020bb9a8 ; =0x0000071c
	mov r1, r1, asr #0x10
	bl func_0202b154
	ldr r2, _020bb9ac ; =0x000004cd
	mov r0, r5
	mov r1, r4
	bl func_ov00_020bb810
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bb948
_020bb9a0: .word data_027e0f94
_020bb9a4: .word data_027e0fac
_020bb9a8: .word 0x0000071c
_020bb9ac: .word 0x000004cd

	.global func_ov00_020bb9b0
	arm_func_start func_ov00_020bb9b0
func_ov00_020bb9b0: ; 0x020bb9b0
	ldr r0, _020bb9c0 ; =data_027e0fcc
	ldr ip, _020bb9c4 ; =func_ov00_020b45e0
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020bb9b0
_020bb9c0: .word data_027e0fcc
_020bb9c4: .word func_ov00_020b45e0

	.global func_ov00_020bb9c8
	arm_func_start func_ov00_020bb9c8
func_ov00_020bb9c8: ; 0x020bb9c8
	ldr r0, _020bb9dc ; =data_027e0fdc
	ldr ip, _020bb9e0 ; =_ZN13LinkStateMove18func_ov00_020a8f2cEv
	ldr r0, [r0]
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020bb9c8
_020bb9dc: .word data_027e0fdc
_020bb9e0: .word _ZN13LinkStateMove18func_ov00_020a8f2cEv

	.global func_ov00_020bb9e4
	arm_func_start func_ov00_020bb9e4
func_ov00_020bb9e4: ; 0x020bb9e4
	ldr r0, _020bb9f8 ; =data_027e0fdc
	ldr ip, _020bb9fc ; =_ZN13LinkStateMove18func_ov00_020a8f4cEv
	ldr r0, [r0]
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020bb9e4
_020bb9f8: .word data_027e0fdc
_020bb9fc: .word _ZN13LinkStateMove18func_ov00_020a8f4cEv

	.global func_ov00_020bba00
	arm_func_start func_ov00_020bba00
func_ov00_020bba00: ; 0x020bba00
	ldr r0, [r0, #0x44]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end func_ov00_020bba00

	.global func_ov00_020bba14
	arm_func_start func_ov00_020bba14
func_ov00_020bba14: ; 0x020bba14
	ldr r0, [r0, #0x44]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	bx lr
	arm_func_end func_ov00_020bba14

	.global func_ov00_020bba28
	arm_func_start func_ov00_020bba28
func_ov00_020bba28: ; 0x020bba28
	ldr r0, _020bba44 ; =data_027e0fd4
	ldr r0, [r0]
	ldrsh r0, [r0, #0xc6]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bba28
_020bba44: .word data_027e0fd4

	.global func_ov00_020bba48
	arm_func_start func_ov00_020bba48
func_ov00_020bba48: ; 0x020bba48
	stmdb sp!, {r3, lr}
	bl func_020385b8
	mvn r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bba48

	.global func_ov00_020bba60
	arm_func_start func_ov00_020bba60
func_ov00_020bba60: ; 0x020bba60
	stmdb sp!, {r3, lr}
	ldr r0, _020bba7c ; =data_027e0fd0
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bba60
_020bba7c: .word data_027e0fd0

	.global func_ov00_020bba80
	arm_func_start func_ov00_020bba80
func_ov00_020bba80: ; 0x020bba80
	stmdb sp!, {r3, lr}
	bl func_ov00_020bc500
	cmp r0, #6
	movne r0, #1
	ldmneia sp!, {r3, pc}
	bl func_ov00_020a914c
	bl func_ov00_020b1eec
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bba80

	.global func_ov00_020bbaa0
	arm_func_start func_ov00_020bbaa0
func_ov00_020bbaa0: ; 0x020bbaa0
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020bbaa0

	.global func_ov00_020bbaa8
	arm_func_start func_ov00_020bbaa8
func_ov00_020bbaa8: ; 0x020bbaa8
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020bbaa8

	.global func_ov00_020bbab0
	arm_func_start func_ov00_020bbab0
func_ov00_020bbab0: ; 0x020bbab0
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020bbab0

	.global func_ov00_020bbab8
	arm_func_start func_ov00_020bbab8
func_ov00_020bbab8: ; 0x020bbab8
	bx lr
	arm_func_end func_ov00_020bbab8

	.global func_ov00_020bbabc
	arm_func_start func_ov00_020bbabc
func_ov00_020bbabc: ; 0x020bbabc
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _020bbb10
	bl _ZN13LinkStateBase16GetLinkItemStateEv
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	beq _020bbb10
	bl _ZN10PlayerBase13GetEquipSwordEv
	ldr r0, [r0, #0x40]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020bbb10
_020bbaf8: ; jump table
	b _020bbb08 ; case 0
	b _020bbb08 ; case 1
	b _020bbb08 ; case 2
	b _020bbb08 ; case 3
_020bbb08:
	mov r0, #1
	ldmia sp!, {r3, pc}
_020bbb10:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bbabc

	.global func_ov00_020bbb18
	arm_func_start func_ov00_020bbb18
func_ov00_020bbb18: ; 0x020bbb18
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _020bbb5c
	bl _ZN13LinkStateBase16GetLinkItemStateEv
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	beq _020bbb5c
	bl _ZN10PlayerBase13GetEquipSwordEv
	ldr r0, [r0, #0x40]
	cmp r0, #5
	cmpne r0, #6
	bne _020bbb5c
	mov r0, #1
	ldmia sp!, {r3, pc}
_020bbb5c:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bbb18

	.global func_ov00_020bbb64
	arm_func_start func_ov00_020bbb64
func_ov00_020bbb64: ; 0x020bbb64
	ldr r0, [r0, #0x38]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end func_ov00_020bbb64

	.global func_ov00_020bbb78
	arm_func_start func_ov00_020bbb78
func_ov00_020bbb78: ; 0x020bbb78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020bc500
	cmp r0, #5
	beq _020bbbb0
	mov r0, r4
	bl func_ov00_020bc500
	cmp r0, #6
	beq _020bbbb0
	bl func_ov00_020a914c
	ldr r0, [r0, #0x38]
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r4, pc}
_020bbbb0:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bbb78

	.global func_ov00_020bbbb8
	arm_func_start func_ov00_020bbbb8
func_ov00_020bbbb8: ; 0x020bbbb8
	ldr r0, _020bbbc8 ; =data_027e0fd4
	ldr ip, _020bbbcc ; =func_ov00_020b53c4
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020bbbb8
_020bbbc8: .word data_027e0fd4
_020bbbcc: .word func_ov00_020b53c4

	.global func_ov00_020bbbd0
	arm_func_start func_ov00_020bbbd0
func_ov00_020bbbd0: ; 0x020bbbd0
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _020bbc58 ; =data_027e0618
	mov r5, r0
	ldr r0, [r3]
	mov r6, r1
	mov r4, r2
	cmp r0, #2
	bne _020bbc00
	ldr r0, _020bbc5c ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	cmp r0, #0
	movne r6, #0
_020bbc00:
	ldr r0, _020bbc60 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	ldreq r0, _020bbc64 ; =data_027e0c68
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl func_ov00_020bc46c
	rsb r1, r6, #0
	mov r2, r1, lsl #0x10
	mov r1, r0
	mov r0, r5
	mov r2, r2, asr #0x10
	bl func_ov00_020bc494
	cmp r4, #0
	movne r0, #0x3c
	strneh r0, [r5, #8]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bbbd0
_020bbc58: .word data_027e0618
_020bbc5c: .word data_ov09_0211f5b4
_020bbc60: .word data_027e0f74
_020bbc64: .word data_027e0c68

	.global func_ov00_020bbc68
	arm_func_start func_ov00_020bbc68
func_ov00_020bbc68: ; 0x020bbc68
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020bbb64
	cmp r0, #0
	bne _020bbc8c
	bl _ZN13PlayerControl18func_ov00_020aeef8Ev
	cmp r0, #0
	bne _020bbc94
_020bbc8c:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020bbc94:
	ldrsh r0, [r5, #0x5a]
	cmp r0, #0
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020bbd34 ; =gItemManager
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #9
	cmpne r0, #0xa
	bne _020bbcc4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020bbcc4:
	ldr r0, _020bbd38 ; =data_027e0fd0
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #0
	beq _020bbd2c
	ldr r0, _020bbd3c ; =data_027e0fd4
	mov r6, #0
	ldr r7, [r0]
	mov r0, r7
	bl func_ov00_020b510c
	cmp r0, #0
	bne _020bbd24
	mov r0, r7
	bl func_ov00_020b50f8
	cmp r0, #0
	bne _020bbd24
	ldrsh r0, [r5, #8]
	cmp r0, #0
	ble _020bbd20
	cmp r4, #9
	bne _020bbd24
_020bbd20:
	mov r6, #1
_020bbd24:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020bbd2c:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020bbc68
_020bbd34: .word gItemManager
_020bbd38: .word data_027e0fd0
_020bbd3c: .word data_027e0fd4

	.global func_ov00_020bbd40
	arm_func_start func_ov00_020bbd40
func_ov00_020bbd40: ; 0x020bbd40
	ldr r0, _020bbd5c ; =data_027e0fd4
	ldr r0, [r0]
	ldrsh r0, [r0, #0x5a]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bbd40
_020bbd5c: .word data_027e0fd4

	.global func_ov00_020bbd60
	arm_func_start func_ov00_020bbd60
func_ov00_020bbd60: ; 0x020bbd60
	ldr r0, _020bbd7c ; =data_027e0fd4
	ldr r0, [r0]
	ldrsh r0, [r0, #0x5a]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bbd60
_020bbd7c: .word data_027e0fd4

	.global func_ov00_020bbd80
	arm_func_start func_ov00_020bbd80
func_ov00_020bbd80: ; 0x020bbd80
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020bbe80 ; =gOverlayManager
	ldr r3, _020bbe84 ; =0x00000005
	ldr r2, [r2, #8]
	mov r5, r0
	mov r4, r1
	cmp r2, r3
	bne _020bbdd0
	bl func_ov05_0210eba4
	cmp r0, #0
	bne _020bbdd0
	ldr r0, _020bbe88 ; =data_027e0fd4
	ldr r0, [r0]
	ldr r0, [r0, #0xd0]
	cmp r0, #0
	bgt _020bbdd0
	mov r0, r5
	bl func_ov00_020bc46c
	cmp r0, #0
	beq _020bbdd8
_020bbdd0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020bbdd8:
	ldr r0, _020bbe8c ; =data_027e0fe4
	add r1, r5, #0x3c
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r4, #0
	beq _020bbe58
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl func_ov00_020bc500
	cmp r0, #1
	bne _020bbe44
	bl _ZN13LinkStateBase16GetLinkItemStateEv
	ldr r1, [r0, #0x14]
	mvn r0, #0
	cmp r1, r0
	moveq r1, #0
	cmp r1, #0
	bne _020bbe44
	bl _ZN10PlayerBase13GetEquipSwordEv
	ldr r0, [r0, #0x40]
	cmp r0, #7
	cmpne r0, #8
	bne _020bbe44
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020bbe44:
	ldrh r0, [r5, #0x48]
	tst r0, #0x3f
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020bbe58:
	cmp r0, #0
	beq _020bbe78
	ldr r1, [r0, #4]
	ldr r0, _020bbe90 ; =0x424f4d42
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020bbe78:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bbd80
_020bbe80: .word gOverlayManager
_020bbe84: .word 0x00000005
_020bbe88: .word data_027e0fd4
_020bbe8c: .word data_027e0fe4
_020bbe90: .word 0x424f4d42

	.global func_ov00_020bbe94
	arm_func_start func_ov00_020bbe94
func_ov00_020bbe94: ; 0x020bbe94
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x11]
	cmp r1, #0
	beq _020bbeb0
	bl func_ov00_020bbb64
	cmp r0, #0
	beq _020bbeb8
_020bbeb0:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020bbeb8:
	ldr r0, _020bbed0 ; =data_027e0fd0
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bbe94
_020bbed0: .word data_027e0fd0

	.global func_ov00_020bbed4
	arm_func_start func_ov00_020bbed4
func_ov00_020bbed4: ; 0x020bbed4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r3
	mov r6, r0
	mov r7, r1
	mov r5, r2
	cmp r4, #0xd
	beq _020bbfd4
	mov r1, r4
	bl func_ov00_020bbc68
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrsh r0, [r6, #8]
	cmp r0, #0
	movgt r7, #0
	bl func_ov00_020bc098
	mov r1, #2
	bl _ZNK11ItemManager19GetActiveFairyLevelEi
	cmp r0, #0
	ble _020bbf34
	cmp r7, r0
	suble r0, r0, #1
_020bbf34:
	cmp r7, #0
	mov r2, #1
	bne _020bbf48
	cmp r4, #0xa
	movne r2, #0
_020bbf48:
	sub r1, r7, r0
	cmp r1, #0
	movle r1, #0
	mov r0, r6
	bl func_ov00_020bbbd0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	cmp r4, #0xa
	moveq r4, #1
	bl func_ov00_020bc46c
	mov r1, r0
	mov r0, r6
	bl func_ov00_020bc48c
	cmp r0, #0
	ble _020bbff4
	mov r0, r6
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	bne _020bbff4
	ldr r0, _020bc078 ; =data_027e0fcc
	ldr r2, _020bc07c ; =data_027e0f94
	ldr r0, [r0]
	mov r1, #1
	ldr r3, [r0]
	ldr r3, [r3, #0x70]
	blx r3
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_020bbfd4:
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_020bbff4:
	ldr r0, _020bc080 ; =data_027e0fa0
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	cmp r4, #3
	bne _020bc028
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	addgt sp, sp, #0xc
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0x1e
	str r0, [r6, #0x4c]
_020bc028:
	bl func_ov00_020bc088
	mov r1, r5
	mov r2, r4
	bl _ZN15LinkStateDamage18func_ov00_020acb6cEP5Vec3pi
	mov r0, r6
	mov r1, #5
	bl func_ov00_020bb544
	mov r0, r6
	bl func_ov00_020bbb64
	cmp r0, #0
	bne _020bc060
	bl func_020385b8
	add r1, sp, #0
	bl _ZN17LinkStateInteract20SetGrabActorVelocityEP5Vec3p
_020bc060:
	ldr r0, _020bc084 ; =data_027e0fb8
	ldr r0, [r0]
	bl _ZN13PlayerControl13StopFollowingEv
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020bbed4
_020bc078: .word data_027e0fcc
_020bc07c: .word data_027e0f94
_020bc080: .word data_027e0fa0
_020bc084: .word data_027e0fb8

	.global func_ov00_020bc088
	arm_func_start func_ov00_020bc088
func_ov00_020bc088: ; 0x020bc088
	ldr ip, _020bc094 ; =func_01fffcd8
	mov r0, #5
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020bc088
_020bc094: .word func_01fffcd8

	.global func_ov00_020bc098
	arm_func_start func_ov00_020bc098
func_ov00_020bc098: ; 0x020bc098
	ldr r0, _020bc0a4 ; =gItemManager
	ldr r0, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bc098
_020bc0a4: .word gItemManager

	.global func_ov00_020bc0a8
	arm_func_start func_ov00_020bc0a8
func_ov00_020bc0a8: ; 0x020bc0a8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r8, r1
	mov r1, #1
	mov r7, r0
	mov r6, r2
	mov r5, r3
	bl func_ov00_020bbc68
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020bc1b8 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097bbc
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	bl func_ov00_020bc098
	mov r1, #2
	bl _ZNK11ItemManager19GetActiveFairyLevelEi
	mov r4, r0
	cmp r4, #0
	ble _020bc114
	cmp r8, r4
	suble r0, r4, #1
_020bc114:
	sub r1, r8, r0
	cmp r1, #0
	movle r1, #0
	mov r0, r7
	mov r2, #0
	bl func_ov00_020bbbd0
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020bc1bc ; =data_027e0fa0
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r8, _020bc1c0 ; =data_ov00_020dc858
	add r3, sp, #0
	ldmia r8, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bl func_ov00_020bc088
	add r1, sp, #0
	mov r8, r0
	ldr r1, [r1, r4, lsl #2]
	mov r0, r5
	bl func_02002c14
	strh r0, [r8, #0x32]
	bl func_ov00_020bc088
	mov r1, r6
	mov r2, #1
	bl _ZN15LinkStateDamage18func_ov00_020acb6cEP5Vec3pi
	mov r0, r7
	mov r1, #5
	bl func_ov00_020bb544
	bl func_020385b8
	add r1, sp, #0xc
	bl _ZN17LinkStateInteract20SetGrabActorVelocityEP5Vec3p
	ldr r0, _020bc1c4 ; =data_027e0fb8
	ldr r0, [r0]
	bl _ZN13PlayerControl13StopFollowingEv
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc0a8
_020bc1b8: .word data_027e0f74
_020bc1bc: .word data_027e0fa0
_020bc1c0: .word data_ov00_020dc858
_020bc1c4: .word data_027e0fb8

	.global func_ov00_020bc1c8
	arm_func_start func_ov00_020bc1c8
func_ov00_020bc1c8: ; 0x020bc1c8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl _ZN17LinkStateInteract16GetLinkStateRollEv
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl func_ov05_02107b74
	ldr r1, _020bc208 ; =data_027e0fa0
	mov r2, #0
	str r2, [r1]
	ldr r0, _020bc20c ; =data_027e0fac
	str r2, [r1, #8]
	strh r2, [r0]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc1c8
_020bc208: .word data_027e0fa0
_020bc20c: .word data_027e0fac

	.global func_ov00_020bc210
	arm_func_start func_ov00_020bc210
func_ov00_020bc210: ; 0x020bc210
	stmdb sp!, {r3, lr}
	bl _ZN17LinkStateInteract16GetLinkStateRollEv
	mov r1, #1
	strb r1, [r0, #0x28]
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bc210

	.global func_ov00_020bc228
	arm_func_start func_ov00_020bc228
func_ov00_020bc228: ; 0x020bc228
	stmdb sp!, {r3, lr}
	ldr r3, [r1]
	ldr r0, _020bc274 ; =data_027e0fa0
	cmp r2, #0
	str r3, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldmeqia sp!, {r3, pc}
	ldr r0, [r1]
	ldr r1, [r1, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, _020bc278 ; =data_027e0fac
	sub r1, r1, #0x8000
	strh r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc228
_020bc274: .word data_027e0fa0
_020bc278: .word data_027e0fac

	.global func_ov00_020bc27c
	arm_func_start func_ov00_020bc27c
func_ov00_020bc27c: ; 0x020bc27c
	bx lr
	arm_func_end func_ov00_020bc27c

	.global func_ov00_020bc280
	arm_func_start func_ov00_020bc280
func_ov00_020bc280: ; 0x020bc280
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #0x48]
	mov r4, r1
	tst r0, #4
	beq _020bc2c0
	bic r0, r0, #4
	strh r0, [r5, #0x48]
	bl func_ov00_020bc088
	ldr r1, _020bc2d0 ; =data_027e0d0c
	mov r2, r4
	bl _ZN15LinkStateDamage18func_ov00_020ace90EP5Vec3pi
	mov r0, r5
	mov r1, #5
	bl func_ov00_020bb544
	ldmia sp!, {r3, r4, r5, pc}
_020bc2c0:
	tst r0, #0x20
	bicne r0, r0, #0x20
	strneh r0, [r5, #0x48]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc280
_020bc2d0: .word data_027e0d0c

	.global func_ov00_020bc2d4
	arm_func_start func_ov00_020bc2d4
func_ov00_020bc2d4: ; 0x020bc2d4
	stmdb sp!, {r4, lr}
	mov r4, r1
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020bc318
_020bc2e8: ; jump table
	b _020bc2f8 ; case 0
	b _020bc2f8 ; case 1
	b _020bc2f8 ; case 2
	b _020bc308 ; case 3
_020bc2f8:
	bl func_ov00_020a914c
	mov r1, r4
	bl func_ov05_0210a0c0
	ldmia sp!, {r4, pc}
_020bc308:
	bl func_ov00_020a914c
	bl func_ov22_02175958
	mov r0, #1
	ldmia sp!, {r4, pc}
_020bc318:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bc2d4

	.global func_ov00_020bc320
	arm_func_start func_ov00_020bc320
func_ov00_020bc320: ; 0x020bc320
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, r1
	mov r6, r2
	ldr r1, _020bc394 ; =data_027e0f94
	mov r2, #0
	mov r5, r3
	bl func_ov00_020b1d70
	mov r4, r0
	bl func_ov00_020a914c
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl func_ov05_02109cd0
	cmp r0, #0
	mov r0, r7
	beq _020bc384
	bl func_ov00_020bc500
	cmp r0, #6
	beq _020bc37c
	mov r0, r7
	mov r1, #6
	bl func_ov00_020bb544
_020bc37c:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020bc384:
	mov r1, #0
	bl func_ov00_020bb544
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc320
_020bc394: .word data_027e0f94

	.global func_ov00_020bc398
	arm_func_start func_ov00_020bc398
func_ov00_020bc398: ; 0x020bc398
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov r0, r1
	mov r5, r2
	ldr r1, _020bc460 ; =data_027e0f94
	mov r2, #0
	bl func_ov00_020b1d70
	cmp r5, #0
	beq _020bc3e0
	ldr r1, [r0, #4]
	ldr r0, [r1, #4]
	str r0, [sp, #0xc]
	ldr r0, [r1, #8]
	str r0, [sp, #0x10]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x14]
	b _020bc40c
_020bc3e0:
	ldmia r0, {r1, r2}
	ldrb r1, [r1, #1]
	mov r0, #0x24
	sub r1, r1, #1
	mla r2, r1, r0, r2
	ldr r0, [r2, #4]
	str r0, [sp, #0xc]
	ldr r0, [r2, #8]
	str r0, [sp, #0x10]
	ldr r0, [r2, #0xc]
	str r0, [sp, #0x14]
_020bc40c:
	ldr r0, _020bc464 ; =data_027e0e60
	ldr lr, [sp, #0xc]
	ldr ip, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #1
	str lr, [sp]
	str ip, [sp, #4]
	str r3, [sp, #8]
	bl func_ov00_02083f44
	ldr r1, _020bc468 ; =data_027e0fac
	ldr r3, [sp, #0x10]
	ldrsh r2, [r1]
	add r3, r3, r0
	add r1, sp, #0xc
	mov r0, r4
	str r3, [sp, #0x10]
	bl func_ov00_020bcdec
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc398
_020bc460: .word data_027e0f94
_020bc464: .word data_027e0e60
_020bc468: .word data_027e0fac

	.global func_ov00_020bc46c
	arm_func_start func_ov00_020bc46c
func_ov00_020bc46c: ; 0x020bc46c
	stmdb sp!, {r3, lr}
	ldr r0, _020bc488 ; =data_027e0fcc
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc46c
_020bc488: .word data_027e0fcc

	.global func_ov00_020bc48c
	arm_func_start func_ov00_020bc48c
func_ov00_020bc48c: ; 0x020bc48c
	ldrsh r0, [r0, #0xa]
	bx lr
	arm_func_end func_ov00_020bc48c

	.global func_ov00_020bc494
	arm_func_start func_ov00_020bc494
func_ov00_020bc494: ; 0x020bc494
	stmdb sp!, {r3, lr}
	ldr r3, [r0]
	mov r1, r2
	ldr r3, [r3, #0x40]
	blx r3
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bc494

	.global func_ov00_020bc4ac
	arm_func_start func_ov00_020bc4ac
func_ov00_020bc4ac: ; 0x020bc4ac
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020bc46c
	mov r1, r0
	mov r0, r4
	bl func_ov00_020bc48c
	cmp r0, #0
	ldmgtia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020bbb64
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl func_ov00_020bb544
	ldr r0, _020bc4fc ; =data_027e0fd0
	mov r1, #0
	ldr r0, [r0]
	bl func_ov05_0211058c
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc4ac
_020bc4fc: .word data_027e0fd0

	.global func_ov00_020bc500
	arm_func_start func_ov00_020bc500
func_ov00_020bc500: ; 0x020bc500
	stmdb sp!, {r3, lr}
	ldr r0, _020bc51c ; =data_027e0fd0
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc500
_020bc51c: .word data_027e0fd0

	.global func_ov00_020bc520
	arm_func_start func_ov00_020bc520
func_ov00_020bc520: ; 0x020bc520
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r7, r0
	mov r5, r1
	bl func_ov00_020bb9c8
	cmp r0, #0
	beq _020bc6b4
	ldr r1, _020bc6c0 ; =data_027e0f94
	mov r0, r7
	ldr r2, [r1, #4]
	ldr r3, [r1]
	add r2, r2, #0x800
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r1, #8]
	str r1, [sp, #0x14]
	bl func_ov00_020bc808
	mov r4, r0
	add r1, sp, #0xc
	add r2, sp, #0
	mov r0, r5
	bl func_01ff9bf8
	add r0, sp, #0
	bl func_01ff9cec
	mov r5, r0
	cmp r5, r4
	addge sp, sp, #0x18
	movge r0, #0
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020bc6c4 ; =data_027e0fac
	ldr r0, [sp]
	ldrsh r6, [r1]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	rsb r0, r6, r0, asr #16
	mov r0, r0, lsl #0x10
	movs r6, r0, asr #0x10
	rsbmi r0, r6, #0
	movmi r0, r0, lsl #0x10
	movmi r6, r0, asr #0x10
	cmp r6, #0x4000
	addgt sp, sp, #0x18
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
	sub r2, r4, r5
	cmp r2, #0x2800
	mov r4, #0xff
	bge _020bc600
	mov r0, #0xf5
	mul r1, r2, r0
	ldr r2, _020bc6c8 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #12
	add r4, r3, #0xa
_020bc600:
	mov r0, r7
	bl func_ov00_020bc84c
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #0x1
	ldr r0, _020bc6cc ; =0x0b60b60b
	mov r1, #0xb6
	umull ip, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adds r0, ip, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #0x4
	cmp r6, r0, lsr #16
	addle sp, sp, #0x18
	movle r0, r4
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl func_ov00_020bc84c
	ldr r1, _020bc6cc ; =0x0b60b60b
	mov r2, #0xb6
	umull r7, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r7, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #0x4
	sub r0, r6, r0, lsr #16
	mov r1, r0, asr #0x4
	ldr r0, _020bc6d0 ; =data_02050f54
	mov r1, r1, lsl #0x2
	ldrsh r0, [r0, r1]
	smull r1, r0, r5, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	rsb r1, r1, r1, lsl #8
	mov r0, r1, asr #0xa
	add r0, r1, r0, lsr #21
	sub r0, r4, r0, asr #11
	cmp r0, #0xa
	addgt sp, sp, #0x18
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
_020bc6b4:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc520
_020bc6c0: .word data_027e0f94
_020bc6c4: .word data_027e0fac
_020bc6c8: .word 0x66666667
_020bc6cc: .word 0x0b60b60b
_020bc6d0: .word data_02050f54

	.global func_ov00_020bc6d4
	arm_func_start func_ov00_020bc6d4
func_ov00_020bc6d4: ; 0x020bc6d4
	stmdb sp!, {r3, lr}
	ldr r0, _020bc714 ; =data_027e0fdc
	ldr r1, _020bc718 ; =data_027e0fd0
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _020bc70c
	bl _ZN13LinkStateBase16GetLinkItemStateEv
	ldr r0, [r0, #0x14]
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmia sp!, {r3, pc}
_020bc70c:
	mvn r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc6d4
_020bc714: .word data_027e0fdc
_020bc718: .word data_027e0fd0

	.global func_ov00_020bc71c
	arm_func_start func_ov00_020bc71c
func_ov00_020bc71c: ; 0x020bc71c
	stmdb sp!, {r3, lr}
	ldr r1, _020bc7c4 ; =data_027e0fe4
	mov r2, r0
	ldr r0, [r1]
	add r1, r2, #0x3c
	bl func_ov00_020c3674
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0, #4]
	ldr r1, _020bc7c8 ; =0x43525953
	cmp r2, r1
	bhi _020bc778
	bhs _020bc7ac
	ldr r1, _020bc7cc ; =0x424b4559
	cmp r2, r1
	bhi _020bc768
	beq _020bc7ac
	b _020bc7bc
_020bc768:
	ldr r1, _020bc7d0 ; =0x42545246
	cmp r2, r1
	beq _020bc7ac
	b _020bc7bc
_020bc778:
	ldr r1, _020bc7d4 ; =0x53544e45
	cmp r2, r1
	bhi _020bc798
	bhs _020bc7a4
	ldr r1, _020bc7d8 ; =0x464f5243
	cmp r2, r1
	beq _020bc7ac
	b _020bc7bc
_020bc798:
	ldr r0, _020bc7dc ; =0x54415255
	cmp r2, r0
	bne _020bc7bc
_020bc7a4:
	mov r0, #0x1000
	ldmia sp!, {r3, pc}
_020bc7ac:
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	ldmia sp!, {r3, pc}
_020bc7bc:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc71c
_020bc7c4: .word data_027e0fe4
_020bc7c8: .word 0x43525953
_020bc7cc: .word 0x424b4559
_020bc7d0: .word 0x42545246
_020bc7d4: .word 0x53544e45
_020bc7d8: .word 0x464f5243
_020bc7dc: .word 0x54415255

	.global func_ov00_020bc7e0
	arm_func_start func_ov00_020bc7e0
func_ov00_020bc7e0: ; 0x020bc7e0
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl func_020385b8
	mov r1, r4
	bl _ZN17LinkStateInteract18func_ov00_020abc78EP8ActorRef
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bc7e0

	.global func_ov00_020bc7f8
	arm_func_start func_ov00_020bc7f8
func_ov00_020bc7f8: ; 0x020bc7f8
	stmdb sp!, {r3, lr}
	bl func_020385b8
	bl _ZN17LinkStateInteract20CreateDebugHierarchyEv
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bc7f8

	.global func_ov00_020bc808
	arm_func_start func_ov00_020bc808
func_ov00_020bc808: ; 0x020bc808
	ldr r0, _020bc848 ; =data_027e0fdc
	mov r1, #0
	ldr r2, [r0]
	mov r0, #0x3c00
	ldr r2, [r2]
	ldr r2, [r2, #0xc]
	umull ip, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	adds r2, ip, #0x800
	mla r3, r1, r0, r3
	adc r0, r3, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, #0x400
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bc808
_020bc848: .word data_027e0fdc

	.global func_ov00_020bc84c
	arm_func_start func_ov00_020bc84c
func_ov00_020bc84c: ; 0x020bc84c
	mov r0, #0x78000
	bx lr
	arm_func_end func_ov00_020bc84c

	.global func_ov00_020bc854
	arm_func_start func_ov00_020bc854
func_ov00_020bc854: ; 0x020bc854
	stmdb sp!, {r4, lr}
	ldr r0, _020bc8ac ; =data_027e0fcc
	mov r4, r1
	ldr r1, [r0]
	ldr r0, _020bc8b0 ; =data_027e0f94
	mov r2, r4
	add r1, r1, #0x34
	bl func_01ff9bc4
	ldr r0, _020bc8b4 ; =data_027e0fd0
	mov r1, r4
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x34]
	blx r2
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl func_020385b8
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x34]
	blx r2
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc854
_020bc8ac: .word data_027e0fcc
_020bc8b0: .word data_027e0f94
_020bc8b4: .word data_027e0fd0

	.global func_ov00_020bc8b8
	arm_func_start func_ov00_020bc8b8
func_ov00_020bc8b8: ; 0x020bc8b8
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r3, _020bc908 ; =data_027e0e60
	mov r5, r1
	ldr r1, [r3]
	mov r6, r0
	mov r4, r2
	add r0, sp, #0
	mov r2, r5
	bl func_ov00_02083a1c
	ldrb r1, [sp]
	add r2, r6, r4, lsl #1
	add r0, r6, r4, lsl #2
	strb r1, [r2, #0x2c]
	ldrb r1, [sp, #1]
	strb r1, [r2, #0x2d]
	ldr r1, [r5, #4]
	str r1, [r0, #0x30]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc8b8
_020bc908: .word data_027e0e60

	.global func_ov00_020bc90c
	arm_func_start func_ov00_020bc90c
func_ov00_020bc90c: ; 0x020bc90c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	ldr r0, _020bc95c ; =data_027e0e60
	add r2, r6, r5, lsl #1
	mov r4, r1
	ldrb r1, [r2, #0x2c]
	ldr r0, [r0]
	bl func_ov00_02083c24
	str r0, [r4]
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x30]
	add r1, r6, r5, lsl #1
	str r0, [r4, #4]
	ldr r0, _020bc95c ; =data_027e0e60
	ldrb r1, [r1, #0x2d]
	ldr r0, [r0]
	bl func_ov00_02083c50
	str r0, [r4, #8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc90c
_020bc95c: .word data_027e0e60

	.global func_ov00_020bc960
	arm_func_start func_ov00_020bc960
func_ov00_020bc960: ; 0x020bc960
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x18
	ldr r4, _020bca44 ; =data_027e0f74
	mov r8, #0
	mov r7, r0
	sub lr, r8, #2
	mov sb, #0x47
	mov ip, #0xff
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str sb, [sp]
	str r8, [sp, #4]
	str r8, [sp, #8]
	str lr, [sp, #0xc]
	strh r8, [sp, #0x10]
	strb ip, [sp, #0x12]
	strb r8, [sp, #0x13]
	strb r8, [sp, #0x14]
	strb r8, [sp, #0x15]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020bca38
	ldr r0, _020bca44 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097750
	cmp r0, #0
	bne _020bca38
	mov r0, r7
	ldr r2, [r0]
	mov r1, #3
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020bca38
	ldr r0, _020bca48 ; =data_027e0fe4
	mov r1, r4
	ldr r0, [r0]
	bl func_ov00_020c35d8
	mov r4, r0
	bl func_ov00_020a914c
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl func_ov00_020b30e4
	cmp r0, #0
	beq _020bca38
	mov r0, r7
	mov r1, #6
	bl func_ov00_020bb544
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020bca38:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020bc960
_020bca44: .word data_027e0f74
_020bca48: .word data_027e0fe4

	.global func_ov00_020bca4c
	thumb_func_start func_ov00_020bca4c
func_ov00_020bca4c: ; 0x020bca4c
	push {r4, lr}
	add r4, r0, #0
	add r2, r1, #0
	ldrh r1, [r4, #0xe]
	blx _ZN10PlayerBase8TeleportEP5Vec3psibb
	cmp r0, #0
	beq _020bca86
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _020bca72
	ldr r0, _020bca8c ; =data_027e0c54
	ldrb r0, [r0]
	cmp r0, #0
	bne _020bca72
	bl func_ov03_020f9f30
_020bca72:
	ldr r0, _020bca90 ; =data_027e0d3c
	mov r1, #0
	ldr r0, [r0]
	blx func_ov00_02079878
	mov r0, #0
	add r4, #0x5a
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_020bca86:
	mov r0, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020bca4c
_020bca8c: .word data_027e0c54
_020bca90: .word data_027e0d3c

	.global func_ov00_020bca94
	arm_func_start func_ov00_020bca94
func_ov00_020bca94: ; 0x020bca94
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN10PlayerBase8TeleportEP5Vec3psibb
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _020bcad4 ; =data_027e0c54
	mov r0, r4
	ldrb r3, [r1]
	mov r2, #0
	mov r1, #1
	strb r3, [r4, #0x5c]
	strh r2, [r4, #0x48]
	bl _ZN10PlayerBase10SetVisibleEb
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bca94
_020bcad4: .word data_027e0c54

	.global func_ov00_020bcad8
	arm_func_start func_ov00_020bcad8
func_ov00_020bcad8: ; 0x020bcad8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldrb r4, [sp, #0x20]
	ldrb ip, [sp, #0x24]
	mov r7, r0
	str r4, [sp]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [sp, #4]
	bl _ZN10PlayerBase18TeleportToEntranceEib
	cmp r0, #0
	beq _020bcc08
	ldr r0, _020bcc14 ; =data_027e0d38
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _020bcb98
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _020bcb44
	ldr r1, _020bcc18 ; =data_027e0fcc
	mov r0, r7
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	bl func_ov00_020bb544
	b _020bcb98
_020bcb44:
	mov r0, r7
	bl func_ov00_020bc46c
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl func_ov00_020bc8b8
	bl func_ov00_020a914c
	mov r1, r5
	mov r2, r4
	bl func_ov00_020b38dc
	cmp r0, #0
	beq _020bcb84
	mov r0, r7
	mov r1, #6
	bl func_ov00_020bb544
	b _020bcb98
_020bcb84:
	ldr r1, _020bcc18 ; =data_027e0fcc
	mov r0, r7
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	bl func_ov00_020bb544
_020bcb98:
	ldr r0, _020bcc18 ; =data_027e0fcc
	ldr r1, _020bcc1c ; =data_027e0fd4
	ldr r2, [r0]
	ldr r0, [r1]
	ldr r2, [r2, #0xc]
	ldr r1, _020bcc20 ; =data_027e0f94
	blx func_ov00_020b4c4c
	ldr r0, _020bcc1c ; =data_027e0fd4
	ldr r0, [r0]
	blx func_ov00_020b4d00
	ldr r0, _020bcc18 ; =data_027e0fcc
	ldr r1, _020bcc20 ; =data_027e0f94
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x5c]
	blx r2
	cmp r4, #0xfd
	beq _020bcbfc
	ldr r0, _020bcc20 ; =data_027e0f94
	ldr r1, [r0]
	str r1, [r7, #0x14]
	ldr r1, [r0, #4]
	str r1, [r7, #0x18]
	ldr r0, [r0, #8]
	str r0, [r7, #0x1c]
_020bcbfc:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020bcc08:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020bcad8
_020bcc14: .word data_027e0d38
_020bcc18: .word data_027e0fcc
_020bcc1c: .word data_027e0fd4
_020bcc20: .word data_027e0f94

	.global func_ov00_020bcc24
	thumb_func_start func_ov00_020bcc24
func_ov00_020bcc24: ; 0x020bcc24
	ldr r3, _020bcc28 ; =func_ov00_020bcdb8
	bx r3
	.align 2, 0
	thumb_func_end func_ov00_020bcc24
_020bcc28: .word func_ov00_020bcdb8

	.global func_ov00_020bcc2c
	arm_func_start func_ov00_020bcc2c
func_ov00_020bcc2c: ; 0x020bcc2c
	stmdb sp!, {r3, lr}
	ldr r2, _020bcc68 ; =data_027e0fd8
	ldr r2, [r2]
	ldr r2, [r2, #4]
	cmp r2, #0
	beq _020bcc60
	ldr r2, _020bcc6c ; =data_027e0fd4
	ldr r2, [r2]
	ldrsh r2, [r2, #0x5a]
	cmp r2, #4
	bne _020bcc60
	bl _ZN10PlayerBase18func_ov00_020a7c1cEP8Cylinder
	ldmia sp!, {r3, pc}
_020bcc60:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bcc2c
_020bcc68: .word data_027e0fd8
_020bcc6c: .word data_027e0fd4

	.global func_ov00_020bcc70
	arm_func_start func_ov00_020bcc70
func_ov00_020bcc70: ; 0x020bcc70
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020bcc70

	.global func_ov00_020bcc78
	arm_func_start func_ov00_020bcc78
func_ov00_020bcc78: ; 0x020bcc78
	stmdb sp!, {r3, lr}
	ldr r1, _020bccc0 ; =data_027e0fd8
	ldr r1, [r1]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _020bccb8
	bl func_ov00_020bc46c
	cmp r0, #1
	bne _020bccb8
	ldr r0, _020bccc4 ; =data_027e0fd4
	ldr r0, [r0]
	ldrsh r0, [r0, #0xc6]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	ldmia sp!, {r3, pc}
_020bccb8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bcc78
_020bccc0: .word data_027e0fd8
_020bccc4: .word data_027e0fd4

	.global func_ov00_020bccc8
	arm_func_start func_ov00_020bccc8
func_ov00_020bccc8: ; 0x020bccc8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xb0
	mov r5, r0
	mov r4, r1
	bl func_ov00_020bbb64
	cmp r0, #0
	addne sp, sp, #0xb0
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, sp, #0
	bl func_ov00_0209a4f4
	mov r2, #0
	ldr r0, _020bcda4 ; =data_027e0f74
	mvn ip, #0
	mov r3, #1
	ldr r0, [r0]
	add r1, sp, #0
	str ip, [sp, #4]
	strb r3, [sp, #9]
	strb r2, [sp, #0xa]
	strb r2, [sp, #0xb]
	strb r4, [sp, #0x16]
	bl func_ov00_02097810
	ldr r1, _020bcda8 ; =gItemManager
	str r0, [r5, #0x38]
	ldr r0, [r1]
	ldr r0, [r0]
	cmp r0, #9
	cmpne r0, #0xa
	bne _020bcd50
	ldr r0, _020bcdac ; =data_027e103c
	mov r1, #0
	ldr r0, [r0]
	mov r2, r1
	bl func_ov00_020cf9dc
_020bcd50:
	ldr r0, _020bcdac ; =data_027e103c
	ldr r0, [r0]
	bl func_ov05_02103f70
	ldr r0, _020bcdb0 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x31
	beq _020bcd8c
	ldr r0, _020bcdb0 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x33
	bne _020bcd94
_020bcd8c:
	ldr r0, _020bcdb4 ; =data_027e0c68
	bl func_ov29_02179238
_020bcd94:
	add r0, sp, #0
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bccc8
_020bcda4: .word data_027e0f74
_020bcda8: .word gItemManager
_020bcdac: .word data_027e103c
_020bcdb0: .word data_027e0d38
_020bcdb4: .word data_027e0c68

	.global func_ov00_020bcdb8
	arm_func_start func_ov00_020bcdb8
func_ov00_020bcdb8: ; 0x020bcdb8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020bbb64
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _020bcde8 ; =data_027e0f74
	ldr r1, [r4, #0x38]
	ldr r0, [r0]
	bl func_ov00_02097bcc
	mvn r0, #0
	str r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bcdb8
_020bcde8: .word data_027e0f74

	.global func_ov00_020bcdec
	arm_func_start func_ov00_020bcdec
func_ov00_020bcdec: ; 0x020bcdec
	stmdb sp!, {r4, lr}
	ldr r3, [r1]
	ldr ip, _020bce38 ; =data_027e0f94
	ldr r0, _020bce3c ; =data_027e0fcc
	str r3, [ip]
	ldr lr, [r1, #4]
	ldr r3, _020bce40 ; =data_027e0fd4
	str lr, [ip, #4]
	ldr r1, [r1, #8]
	mov r4, r2
	str r1, [ip, #8]
	ldr r1, [r0]
	ldr r0, [r3]
	ldr r2, [r1, #0xc]
	mov r1, ip
	blx func_ov00_020b4c4c
	ldr r0, _020bce44 ; =data_027e0fac
	strh r4, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bcdec
_020bce38: .word data_027e0f94
_020bce3c: .word data_027e0fcc
_020bce40: .word data_027e0fd4
_020bce44: .word data_027e0fac

	.global func_ov00_020bce48
	arm_func_start func_ov00_020bce48
func_ov00_020bce48: ; 0x020bce48
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020bc46c
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	ldr r2, [r0]
	mov r1, #4
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x3c]
	mvn r0, #0
	cmp r1, r0
	beq _020bce9c
	bl func_020385b8
	bl _ZN17LinkStateInteract18func_ov00_020ab6c8Ev
_020bce9c:
	bl func_ov00_020a914c
	mov r1, r4
	bl func_ov05_021096bc
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #6
	bl func_ov00_020bb544
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020bce48

	.global func_ov00_020bcec8
	arm_func_start func_ov00_020bcec8
func_ov00_020bcec8: ; 0x020bcec8
	stmdb sp!, {r3, lr}
	bl func_ov00_020bc500
	cmp r0, #6
	bne _020bcef4
	bl func_ov00_020a914c
	ldr r1, [r0, #4]
	mov r0, #1
	cmp r1, #0xa
	cmpne r1, #0xb
	movne r0, #0
	ldmia sp!, {r3, pc}
_020bcef4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bcec8

	.global func_ov00_020bcefc
	arm_func_start func_ov00_020bcefc
func_ov00_020bcefc: ; 0x020bcefc
	stmdb sp!, {r3, lr}
	bl func_ov00_020bcec8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020a914c
	ldr r0, [r0, #0x74]
	blx _ZN4Item18func_ov00_020ad068Ei
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bcefc

	.global func_ov00_020bcf2c
	arm_func_start func_ov00_020bcf2c
func_ov00_020bcf2c: ; 0x020bcf2c
	stmdb sp!, {r3, lr}
	bl func_ov00_020bcec8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020a914c
	ldr r0, [r0, #0x74]
	blx _ZN4Item18func_ov00_020ad068Ei
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bcf2c

	.global func_ov00_020bcf50
	arm_func_start func_ov00_020bcf50
func_ov00_020bcf50: ; 0x020bcf50
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	bl func_ov00_020a914c
	mov r1, r5
	mov r2, r4
	bl func_ov00_020b3024
	mov r0, r6
	mov r1, #6
	bl func_ov00_020bb544
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020bcf50

	.global func_ov00_020bcf84
	arm_func_start func_ov00_020bcf84
func_ov00_020bcf84: ; 0x020bcf84
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	bl func_ov00_020a914c
	mov r1, r5
	mov r2, r4
	bl func_ov00_020b305c
	mov r0, r6
	mov r1, #6
	bl func_ov00_020bb544
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020bcf84

	.global func_ov00_020bcfb8
	arm_func_start func_ov00_020bcfb8
func_ov00_020bcfb8: ; 0x020bcfb8
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl func_ov00_020bc500
	cmp r0, #6
	beq _020bd01c
	cmp r4, #0
	beq _020bcff4
	bl func_ov00_020a914c
	ldr r1, _020bd024 ; =data_ov00_020e6298
	mov r2, #0
	bl func_ov00_020b2f48
	bl func_ov00_020a914c
	mov r1, #1
	strb r1, [r0, #0xaa]
	b _020bd004
_020bcff4:
	bl func_ov00_020a914c
	ldr r1, _020bd028 ; =data_ov00_020e6288
	mov r2, #0
	bl func_ov00_020b2f48
_020bd004:
	bl func_ov00_020a914c
	ldr r1, _020bd02c ; =0x0000011d
	mov r2, #3
	bl func_ov00_020b2ce4
	mov r0, #1
	ldmia sp!, {r4, pc}
_020bd01c:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bcfb8
_020bd024: .word data_ov00_020e6298
_020bd028: .word data_ov00_020e6288
_020bd02c: .word 0x0000011d

	.global func_ov00_020bd030
	arm_func_start func_ov00_020bd030
func_ov00_020bd030: ; 0x020bd030
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_020385b8
	bl _ZN17LinkStateInteract18func_ov00_020ab6c8Ev
	bl func_ov00_020a914c
	mov r2, r4
	ldr r1, _020bd06c ; =data_ov00_020e62a8
	mov r3, #0
	bl func_ov00_020b2f70
	mov r0, r5
	mov r1, #6
	bl func_ov00_020bb544
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd030
_020bd06c: .word data_ov00_020e62a8

	.global func_ov00_020bd070
	arm_func_start func_ov00_020bd070
func_ov00_020bd070: ; 0x020bd070
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020a914c
	ldr r1, _020bd0a4 ; =data_ov00_020e62b8
	mov r2, r4
	mov r3, #1
	bl func_ov00_020b2f70
	mov r0, r5
	mov r1, #6
	bl func_ov00_020bb544
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd070
_020bd0a4: .word data_ov00_020e62b8

	.global func_ov00_020bd0a8
	arm_func_start func_ov00_020bd0a8
func_ov00_020bd0a8: ; 0x020bd0a8
	stmdb sp!, {r3, lr}
	bl func_ov00_020a914c
	bl func_ov00_020b2f9c
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bd0a8

	.global func_ov00_020bd0bc
	arm_func_start func_ov00_020bd0bc
func_ov00_020bd0bc: ; 0x020bd0bc
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xc
	mov r0, r1
	mov r4, r2
	ldr r1, _020bd250 ; =data_027e0f94
	add r2, sp, #0
	bl func_01ff9bf8
	cmp r4, #0
	beq _020bd138
	ldr r3, [sp]
	ldr r1, [sp, #8]
	mov r0, r3, asr #0x1f
	mov r5, r0, lsl #0x6
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0x6
	mov r0, #0x800
	adds r6, r0, r3, lsl #6
	orr r5, r5, r3, lsr #26
	adc r5, r5, #0
	adds r3, r0, r1, lsl #6
	orr r2, r2, r1, lsr #26
	mov r6, r6, lsr #0xc
	ldr r0, _020bd254 ; =0x0000099a
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r6, r6, r5, lsl #20
	orr r2, r2, r1, lsl #20
	str r6, [sp]
	str r2, [sp, #8]
	str r0, [sp, #4]
	b _020bd1ec
_020bd138:
	ldr sl, [sp]
	ldr r7, [sp, #4]
	mov r2, #0x97
	ldr lr, [sp, #8]
	umull r1, r0, sl, r2
	mov r3, #0
	umull sb, r8, r7, r2
	umull r6, r5, lr, r2
	adds r1, r1, #0x800
	ldr ip, _020bd258 ; =data_027e0fcc
	mla r0, sl, r3, r0
	mov sl, sl, asr #0x1f
	mla r0, sl, r2, r0
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp]
	adds r1, sb, #0x800
	mla r8, r7, r3, r8
	mov r0, r7, asr #0x1f
	mla r8, r0, r2, r8
	adc r0, r8, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #4]
	adds r1, r6, #0x800
	mla r5, lr, r3, r5
	mov r0, lr, asr #0x1f
	mla r5, r0, r2, r5
	adc r0, r5, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [ip]
	str r1, [sp, #8]
	ldr r1, [r0, #8]
	mov r0, #0x14000
	umull ip, r2, r1, r0
	mla r2, r1, r3, r2
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	adds r1, ip, #0x800
	adc r0, r2, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #4]
_020bd1ec:
	ldr r1, [sp]
	ldr r0, _020bd25c ; =data_027e0fa0
	ldr r2, [sp, #4]
	str r1, [r0]
	ldr r1, [sp, #8]
	str r2, [r0, #4]
	str r1, [r0, #8]
	bl _ZN13LinkStateBase16GetLinkItemStateEv
	mov r1, #1
	strb r1, [r0, #0x27]
	strb r4, [r0, #0x28]
	cmp r4, #0
	bne _020bd234
	ldr r0, _020bd260 ; =data_027e0fb8
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x79]
	strb r1, [r0, #0x7b]
_020bd234:
	ldr r0, _020bd264 ; =data_027e0fd4
	mov r2, #5
	ldr r1, [r0]
	mov r0, #1
	strh r2, [r1, #0x5a]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd0bc
_020bd250: .word data_027e0f94
_020bd254: .word 0x0000099a
_020bd258: .word data_027e0fcc
_020bd25c: .word data_027e0fa0
_020bd260: .word data_027e0fb8
_020bd264: .word data_027e0fd4

	.global func_ov00_020bd268
	arm_func_start func_ov00_020bd268
func_ov00_020bd268: ; 0x020bd268
	stmdb sp!, {r4, lr}
	mov r4, #0
	bl func_ov00_020bc500
	cmp r0, #6
	bne _020bd2b0
	ldr r0, _020bd2b8 ; =data_027e0fd0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0xc
	bne _020bd2b0
	bl func_ov00_020a914c
	ldr r1, [r0, #4]
	cmp r1, #0xc
	bne _020bd2ac
	ldrh r0, [r0, #0x3c]
	cmp r0, #2
	bhs _020bd2b0
_020bd2ac:
	mov r4, #1
_020bd2b0:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd268
_020bd2b8: .word data_027e0fd0

	.global func_ov00_020bd2bc
	arm_func_start func_ov00_020bd2bc
func_ov00_020bd2bc: ; 0x020bd2bc
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, #1
	mov r5, r4
	bl func_ov00_020bbb64
	cmp r0, #0
	bne _020bd2e4
	bl _ZN13LinkStateBase16GetLinkItemStateEv
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	movlt r5, #0
_020bd2e4:
	cmp r5, #0
	bne _020bd2fc
	bl func_ov00_020a914c
	ldr r0, [r0, #0x38]
	cmp r0, #0
	movlt r4, #0
_020bd2fc:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020bd2bc

	.global func_ov00_020bd304
	arm_func_start func_ov00_020bd304
func_ov00_020bd304: ; 0x020bd304
	ldrb r0, [r0, #0x5f]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end func_ov00_020bd304

	.global func_ov00_020bd318
	arm_func_start func_ov00_020bd318
func_ov00_020bd318: ; 0x020bd318
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020bd2bc
	cmp r0, #0
	bne _020bd33c
	mov r0, r4
	bl func_ov00_020bc500
	cmp r0, #6
	bne _020bd344
_020bd33c:
	mov r0, #0
	ldmia sp!, {r4, pc}
_020bd344:
	ldrh r0, [r4, #0x48]
	tst r0, #0x20
	movne r0, #0
	moveq r0, #2
	streqh r0, [r4, #0x5a]
	moveq r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bd318

	.global func_ov00_020bd360
	arm_func_start func_ov00_020bd360
func_ov00_020bd360: ; 0x020bd360
	bx lr
	arm_func_end func_ov00_020bd360

	.global func_ov00_020bd364
	arm_func_start func_ov00_020bd364
func_ov00_020bd364: ; 0x020bd364
	stmdb sp!, {r3, lr}
	ldr r2, _020bd3a0 ; =data_027e0fd8
	ldr r0, _020bd3a4 ; =data_027e0fd4
	ldr r3, [r2]
	ldr r2, _020bd3a8 ; =data_027e0fcc
	ldr r1, [r3, r1, lsl #2]
	ldr r0, [r0]
	str r1, [r2]
	ldr r2, [r1, #0xc]
	ldr r1, _020bd3ac ; =data_027e0f94
	blx func_ov00_020b4c4c
	bl _ZN10PlayerBase14GetEquipShieldEv
	mov r1, #0
	strb r1, [r0, #0xb]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd364
_020bd3a0: .word data_027e0fd8
_020bd3a4: .word data_027e0fd4
_020bd3a8: .word data_027e0fcc
_020bd3ac: .word data_027e0f94

	.global func_ov00_020bd3b0
	arm_func_start func_ov00_020bd3b0
func_ov00_020bd3b0: ; 0x020bd3b0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr ip, [sp, #0x20]
	mov r7, r0
	mov r6, r1
	mov r1, #1
	mov r5, r2
	mov r4, r3
	strh ip, [r7, #0x4a]
	bl func_ov00_020bbc68
	cmp r0, #0
	beq _020bd3fc
	mov r0, r7
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	bne _020bd408
_020bd3fc:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020bd408:
	ldr r0, _020bd4d0 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov05_02103f4c
	cmp r0, #0
	addne sp, sp, #8
	mov r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	strb r0, [sp, #4]
	bl _ZN17LinkStateInteract16GetLinkStateRollEv
	add ip, sp, #4
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl func_ov05_02107e80
	movs r6, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r7, #0x48]
	tst r0, #0x3f
	movne r0, #1
	moveq r0, #0
	strh r6, [r7, #0x48]
	cmp r0, #0
	bne _020bd484
	tst r6, #1
	bne _020bd484
	ldr r0, _020bd4d0 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cfb84
_020bd484:
	ldrb r0, [sp, #4]
	cmp r0, #0
	beq _020bd4b8
	bl _ZN17LinkStateInteract16GetLinkStateRollEv
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x20]
	blx r2
	cmp r0, #0
	beq _020bd4b8
	mov r0, r7
	mov r1, #4
	bl func_ov00_020bb544
_020bd4b8:
	bl func_020385b8
	ldr r1, _020bd4d4 ; =data_027e0fa0
	bl _ZN17LinkStateInteract20SetGrabActorVelocityEP5Vec3p
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd3b0
_020bd4d0: .word data_027e103c
_020bd4d4: .word data_027e0fa0

	.global func_ov00_020bd4d8
	arm_func_start func_ov00_020bd4d8
func_ov00_020bd4d8: ; 0x020bd4d8
	ldr r2, [r1]
	ldr r0, _020bd4f8 ; =data_027e0f94
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r1, [r1, #8]
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bd4d8
_020bd4f8: .word data_027e0f94

	.global func_ov00_020bd4fc
	arm_func_start func_ov00_020bd4fc
func_ov00_020bd4fc: ; 0x020bd4fc
	ldrsh r1, [r1]
	ldr r0, _020bd50c ; =data_027e0fac
	strh r1, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bd4fc
_020bd50c: .word data_027e0fac

	.global func_ov00_020bd510
	arm_func_start func_ov00_020bd510
func_ov00_020bd510: ; 0x020bd510
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r1
	mov r0, r5
	mov r4, r2
	bl func_ov00_020c5a24
	ldr r1, _020bd5e4 ; =gItemManager
	mov r2, r0
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	cmp r1, r2
	addlt sp, sp, #0x20
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	rsb r1, r2, #0
	mov r2, #0
	bl _ZN11ItemManager10GiveRupeesEjj
	mvn lr, #0
	mov r3, #0
	str r3, [sp, #0xc]
	ldr r0, _020bd5e8 ; =data_027e0f94
	add ip, sp, #4
	add r2, sp, #0xc
	mov r1, r5
	str lr, [sp, #0x10]
	str lr, [sp, #4]
	str lr, [sp, #8]
	mov r3, #2
	str ip, [sp]
	bl func_ov00_020c5924
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020bd5ec ; =data_027e0fe4
	add r1, sp, #4
	ldr r0, [r0]
	bl func_ov00_020c3674
	mov r5, r0
	add r3, sp, #0x14
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r5, #0x64]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [r5, #0x60]
	ldr r1, [sp, #0x18]
	mov r0, #1
	str r1, [r5, #0x64]
	ldr r1, [sp, #0x1c]
	str r1, [r5, #0x68]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd510
_020bd5e4: .word gItemManager
_020bd5e8: .word data_027e0f94
_020bd5ec: .word data_027e0fe4

	.global func_ov00_020bd5f0
	arm_func_start func_ov00_020bd5f0
func_ov00_020bd5f0: ; 0x020bd5f0
	bx lr
	arm_func_end func_ov00_020bd5f0

	.global func_ov00_020bd5f4
	thumb_func_start func_ov00_020bd5f4
func_ov00_020bd5f4: ; 0x020bd5f4
	mov r1, #1
	add r0, #0x5e
	strb r1, [r0]
	bx lr
	thumb_func_end func_ov00_020bd5f4

	.global func_ov00_020bd5fc
	thumb_func_start func_ov00_020bd5fc
func_ov00_020bd5fc: ; 0x020bd5fc
	mov r1, #0
	add r0, #0x5e
	strb r1, [r0]
	bx lr
	thumb_func_end func_ov00_020bd5fc

	.global func_ov00_020bd604
	thumb_func_start func_ov00_020bd604
func_ov00_020bd604: ; 0x020bd604
	push {r3, r4}
	ldr r4, _020bd614 ; =data_ov00_020e6d18
	str r4, [r0]
	str r1, [r0, #4]
	strh r2, [r0, #8]
	strh r3, [r0, #0xa]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020bd604
_020bd614: .word data_ov00_020e6d18

	.global func_ov00_020bd618
	thumb_func_start func_ov00_020bd618
func_ov00_020bd618: ; 0x020bd618
	push {r3, r4}
	ldr r4, _020bd628 ; =data_ov00_020e6d18
	str r4, [r0]
	str r1, [r0, #4]
	strh r2, [r0, #8]
	strh r3, [r0, #0xa]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020bd618
_020bd628: .word data_ov00_020e6d18

	.global func_ov00_020bd62c
	arm_func_start func_ov00_020bd62c
func_ov00_020bd62c: ; 0x020bd62c
	ldr r0, [r0, #4]
	bx lr
	arm_func_end func_ov00_020bd62c

	.global func_ov00_020bd634
	arm_func_start func_ov00_020bd634
func_ov00_020bd634: ; 0x020bd634
	str r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020bd634

	.global func_ov00_020bd63c
	arm_func_start func_ov00_020bd63c
func_ov00_020bd63c: ; 0x020bd63c
	stmdb sp!, {r3, lr}
	ldrsh r1, [r0, #0xa]
	ldrh r2, [r0, #8]
	cmp r1, #0
	blt _020bd660
	ldr r0, [r0, #4]
	mov r3, #1
	bl func_02023548
	ldmia sp!, {r3, pc}
_020bd660:
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, r1
	bl func_02023548
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bd63c

	.global func_ov00_020bd674
	arm_func_start func_ov00_020bd674
func_ov00_020bd674: ; 0x020bd674
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020b3ea8
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bd674

	.global func_ov00_020bd690
	thumb_func_start func_ov00_020bd690
func_ov00_020bd690: ; 0x020bd690
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r4, r3, #0
	add r5, r1, #0
	cmp r0, #0
	add r3, sp, #8
	beq _020bd6b8
	mov r0, #0x10
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, _020bd710 ; =data_027e0ce0
	mov r0, #9
	ldr r1, [r1, #4]
	add r2, r5, #0
	bl func_0202d550
	b _020bd6c6
_020bd6b8:
	str r2, [sp]
	mov r2, #0x33
	ldr r1, _020bd714 ; =data_020691a0
	add r0, r5, #0
	lsl r2, r2, #0xa
	bl func_0202d56c
_020bd6c6:
	add r5, r0, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	blx func_0200e2a4
	cmp r4, #0
	beq _020bd6d8
	blx func_0200eec8
_020bd6d8:
	add r0, r5, #0
	blx func_0201e4cc
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020bd6ee
	add r1, r4, #0
	bl func_ov00_0207a038
	b _020bd6f4
_020bd6ee:
	add r0, r5, #0
	blx func_0201b3c4
_020bd6f4:
	add r0, r6, #0
	add r1, r4, #0
	blx func_02019380
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _020bd70a
	add r0, r5, #0
	bl func_0202d590
_020bd70a:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
	thumb_func_end func_ov00_020bd690
_020bd710: .word data_027e0ce0
_020bd714: .word data_020691a0

	.global func_ov00_020bd718
	thumb_func_start func_ov00_020bd718
func_ov00_020bd718: ; 0x020bd718
	push {r3, lr}
	mov r1, #0
	bl func_0202d5ec
	blx func_0201e4bc
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov00_020bd718

	.global func_ov00_020bd728
	thumb_func_start func_ov00_020bd728
func_ov00_020bd728: ; 0x020bd728
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r2, [sp]
	add r5, r1, #0
	ldr r1, [r4, #8]
	add r6, r3, #0
	cmp r1, #0
	bne _020bd740
	ldr r2, [r0]
	mov r1, #0x10
	ldr r2, [r2, #8]
	blx r2
_020bd740:
	ldr r0, [r4, #8]
	blx func_0201e4bc
	add r7, r0, #0
	cmp r5, #0
	beq _020bd792
	add r0, r5, #0
	ldr r2, [r0]
	mov r1, #0x10
	ldr r2, [r2, #8]
	blx r2
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	blx func_0200e2a4
	ldr r0, [r5, #8]
	blx func_0201b3c4
	ldr r0, [r5, #8]
	blx func_0201e4cc
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	blx func_02019380
	cmp r6, #0
	beq _020bd77c
	add r0, r4, #0
	blx r6
_020bd77c:
	ldr r0, [sp]
	cmp r0, #0
	beq _020bd792
	ldr r1, [r5, #8]
	ldr r2, [r4, #0x14]
	sub r1, r4, r1
	add r0, r5, #0
	add r1, r2, r1
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
_020bd792:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov00_020bd728

	.global func_ov00_020bd798
	thumb_func_start func_ov00_020bd798
func_ov00_020bd798: ; 0x020bd798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	blx func_0201e4bc
	add r4, r0, #0
	add r2, r4, #0
	ldrh r1, [r4, #0xe]
	add r2, #8
	add r3, r2, r1
	ldrh r1, [r2, r1]
	add r2, r1, #0
	mul r2, r6
	add r1, r3, r2
	ldr r6, [r1, #4]
	cmp r5, #0
	beq _020bd7d2
	ldr r1, [sp, #0x24]
	add r3, sp, #0x10
	str r1, [sp]
	ldrb r1, [r3, #0x18]
	add r2, r7, #0
	str r1, [sp, #4]
	ldrb r3, [r3, #0x10]
	add r1, r5, #0
	bl func_ov00_020bd690
_020bd7d2:
	add r0, r4, r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end func_ov00_020bd798

	.global func_ov00_020bd7d8
	arm_func_start func_ov00_020bd7d8
func_ov00_020bd7d8: ; 0x020bd7d8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	mov r4, r3
	bl func_01ff9158
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020bd938
	rsb r0, r0, #0
	bl func_01ff992c
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x28]
	ldr r8, [r4, #0x38]
	smull r7, r6, r3, r2
	adds r7, r7, #0x800
	adc r3, r6, #0
	mov r6, r7, lsr #0xc
	orr r6, r6, r3, lsl #20
	add r6, r8, r6
	umull r8, r7, r0, r6
	mov r3, r6, asr #0x1f
	mla r7, r0, r3, r7
	mla r7, r1, r6, r7
	adds r3, r8, #0x80000000
	adc r6, r7, #0
	mov fp, #0x80000000
	cmp r6, fp, asr #19
	mov sl, r2, asr #0x1f
	mov ip, #0
	mov r3, #0x800
	blt _020bd868
	cmp r6, #0x1000
	ble _020bd874
_020bd868:
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020bd874:
	ldr lr, [r4, #0x20]
	ldr sb, [r4]
	umull r7, r6, lr, r2
	ldr r8, [sp]
	mla r6, lr, sl, r6
	smull sl, r8, sb, r8
	adds sb, sl, r3
	adc r8, r8, ip
	mov sb, sb, lsr #0xc
	orr sb, sb, r8, lsl #20
	mov r8, lr, asr #0x1f
	mla r6, r8, r2, r6
	adds r7, r7, r3
	adc r2, r6, ip
	mov r6, r7, lsr #0xc
	orr r6, r6, r2, lsl #20
	add r6, sb, r6
	umull r2, r7, r0, r6
	adds r2, r2, fp
	mov r2, r6, asr #0x1f
	mla r7, r0, r2, r7
	mla r7, r1, r6, r7
	adc r2, r7, ip
	str r2, [r5]
	ldr r7, [r4, #0x14]
	ldr r6, [sp, #4]
	ldr r2, [sp, #8]
	smull sb, r8, r7, r6
	ldr r4, [r4, #0x24]
	adds r7, sb, r3
	smull r6, r2, r4, r2
	adc r4, r8, ip
	adds r3, r6, r3
	mov r6, r7, lsr #0xc
	adc r2, r2, ip
	mov r3, r3, lsr #0xc
	orr r6, r6, r4, lsl #20
	orr r3, r3, r2, lsl #20
	add r3, r6, r3
	umull r6, r4, r0, r3
	mov r2, r3, asr #0x1f
	mla r4, r0, r2, r4
	mla r4, r1, r3, r4
	adds r6, r6, fp
	adc r0, r4, ip
	stmib r5, {r0, ip}
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020bd938:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov00_020bd7d8

	.global func_ov00_020bd944
	arm_func_start func_ov00_020bd944
func_ov00_020bd944: ; 0x020bd944
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end func_ov00_020bd944

	.global func_ov00_020bd958
	arm_func_start func_ov00_020bd958
func_ov00_020bd958: ; 0x020bd958
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xac
	str r1, [sp]
	mov r7, r0
	ldr r0, [sp]
	ldr r1, [r7]
	add r4, r0, #1
	ldr r0, [sp, #0xd8]
	cmp r4, r1
	str r0, [sp, #0xd8]
	movlo r0, r2
	str r2, [sp, #4]
	cmplo r4, r0
	addhs sp, sp, #0xac
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _020bde24 ; =0x21230000
	ldr r2, _020bde28 ; =0x040004a8
	ldr r1, [sp, #0xd0]
	str r0, [r2]
	orr r0, r3, #0x8000
	str r0, [r2, #0x18]
	mov r0, #0
	str r0, [r2, #0x1c]
	cmp r1, #0x20
	bge _020bd9ec
	cmp r1, #0x1f
	bge _020bd9d0
	ldr r0, _020bde2c ; =data_ov00_020e9360
	mov r1, #0xa
	bl func_ov00_02079e68
_020bd9d0:
	mov r0, r0, lsl #0x18
	ldr r2, [sp, #0xd0]
	orr r1, r0, #0x20c0
	ldr r0, _020bde30 ; =0x040004a4
	orr r1, r1, r2, lsl #16
	str r1, [r0]
	b _020bda04
_020bd9ec:
	ldr r0, _020bde2c ; =data_ov00_020e9360
	bl func_ov00_02079eb4
	ldr r1, _020bde34 ; =0x001f20c0
	ldr r2, _020bde30 ; =0x040004a4
	orr r0, r1, r0, lsl #24
	str r0, [r2]
_020bda04:
	ldr r0, _020bde38 ; =data_027e0f64
	ldr r0, [r0]
	bl func_ov00_0208b180
	add r6, r0, #0x1c
	add r5, sp, #0x7c
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	ldr r4, _020bde38 ; =data_027e0f64
	stmia r5, {r0, r1, r2, r3}
	ldr r0, [r4]
	bl func_ov00_0208b180
	add r8, r0, #0x8c
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, r0
	add r4, sp, #0x3c
	ldr r5, [sp]
	str r0, [sp, #0x20]
	mov r0, r5
	ldr r3, [sp, #0xd4]
	mov r6, r0, lsl #0x4
	mov r0, r3, asr #0x7
	add r0, r3, r0, lsr #24
	mov r0, r0, asr #0x8
	ldr r2, _020bde3c ; =0x2aaaaaab
	str r0, [sp, #0x10]
	smull r1, r0, r2, r3
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #5
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x28]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0xc]
	ldmia r8!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r8, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [sp, #4]
	ldr r4, _020bde40 ; =0x04000444
	sub r0, r0, #1
	str r0, [sp, #0x2c]
	b _020bdcf0
_020bdad8:
	ldr r1, [r7, #8]
	ldr r3, [sp, #0x28]
	add r0, sp, #0x30
	add r2, sp, #0x7c
	add r1, r1, r6
	bl func_ov00_020bd7d8
	cmp r0, #0
	beq _020bdce8
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _020bdb40
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [r4]
	mov r0, #0x40000
	str r0, [r4, #0x28]
	str r0, [r4, #0x28]
	str r0, [r4, #0x28]
	mov r0, #2
	str r0, [r4, #0xbc]
	b _020bdb50
_020bdb40:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x20]
_020bdb50:
	ldr r0, [sp]
	cmp r5, r0
	ldrne r0, [sp, #0x2c]
	cmpne r5, r0
	bne _020bdb70
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	beq _020bdc78
_020bdb70:
	ldr r1, [r7, #8]
	ldr sl, [sp, #0x14]
	add r1, r1, r5, lsl #4
	ldrh r2, [r1, #0xc]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x30]
	mov r2, r2, asr #0x4
	mov r8, r2, lsl #0x1
	ldr r2, _020bde44 ; =data_02050f54
	mov r3, r8, lsl #0x1
	add r2, r2, r8, lsl #1
	ldrsh lr, [r2, #2]
	ldr r8, [sp, #0x10]
	ldr r2, _020bde44 ; =data_02050f54
	umull sb, r8, lr, r8
	mla r8, lr, sl, r8
	ldrsh r3, [r2, r3]
	ldr sl, [sp, #0x10]
	mov ip, lr, asr #0x1f
	mla r8, ip, sl, r8
	adds sl, sb, #0x800
	adc sb, r8, #0
	mov r8, sl, lsr #0xc
	orr r8, r8, sb, lsl #20
	ldr sb, [sp, #8]
	mov r2, r3, asr #0x1f
	umull lr, ip, r3, sb
	ldr sb, [sp, #0xc]
	add r0, r0, r8
	mla ip, r3, sb, ip
	ldr r3, [sp, #8]
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x10
	mla ip, r2, r3, ip
	adds sb, lr, #0x800
	adc r3, ip, #0
	mov r2, sb, lsr #0xc
	orr r2, r2, r3, lsl #20
	add r1, r1, r2
	mov r1, r1, lsl #0xa
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x48]
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	sub r3, r1, r8
	sub r1, r0, r2
	mov r1, r1, lsl #0xa
	mov r1, r1, asr #0x10
	mov r0, r3, lsl #0xa
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x48]
	b _020bdce8
_020bdc78:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x30]
	mov r1, r1, lsl #0xa
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0xa
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x48]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x30]
	mov r1, r1, lsl #0xa
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0xa
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x48]
_020bdce8:
	add r6, r6, #0x10
	add r5, r5, #1
_020bdcf0:
	ldr r0, [sp, #4]
	cmp r5, r0
	ldrlo r0, [r7]
	cmplo r5, r0
	blo _020bdad8
	ldr r0, [sp, #0x24]
	cmp r0, #0
	addeq sp, sp, #0xac
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020bde08
	ldr r0, [sp, #0x1c]
	ldr r2, _020bde48 ; =0x000fffe0
	mov r0, r0, asr #0x6
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r2, r1, asr #6
	movlt r4, r2
	blt _020bdd48
	cmp r0, r2, lsl #15
	movlt r4, r2, lsl #0xf
_020bdd48:
	ldr r1, [sp, #0x18]
	ldr r3, _020bde48 ; =0x000fffe0
	mov r1, r1, asr #0x6
	ldr r2, [sp, #0x18]
	mov r5, r1
	cmp r3, r2, asr #6
	movlt r5, r3
	blt _020bdd70
	cmp r1, r3, lsl #15
	movlt r5, r3, lsl #0xf
_020bdd70:
	mov r2, r5, lsl #0x10
	mov r3, r2, asr #0x10
	mov r2, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r4, r3, lsr #0x10
	mov r2, r2, asr #0x10
	mov r5, r4, lsl #0x10
	mov r2, r2, lsl #0x10
	ldr r3, _020bde48 ; =0x000fffe0
	ldr r4, _020bde4c ; =0x0400048c
	orr r2, r5, r2, lsr #16
	str r2, [r4]
	mov r2, #0
	cmp r0, r3
	str r2, [r4]
	movgt r0, r3
	bgt _020bddbc
	cmp r0, r3, lsl #15
	movlt r0, r3, lsl #0xf
_020bddbc:
	ldr r2, _020bde48 ; =0x000fffe0
	cmp r1, r2
	movgt r1, r2
	bgt _020bddd4
	cmp r1, r2, lsl #15
	movlt r1, r2, lsl #0xf
_020bddd4:
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, r1, lsl #0x10
	ldr r1, _020bde4c ; =0x0400048c
	orr r0, r2, r0, lsr #16
	str r0, [r1]
	mov r0, #0
	str r0, [r1]
_020bde08:
	ldr r1, _020bde50 ; =0x04000504
	mov r0, #0
	str r0, [r1]
	mov r0, #1
	str r0, [r1, #-0xbc]
	add sp, sp, #0xac
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020bd958
_020bde24: .word 0x21230000
_020bde28: .word 0x040004a8
_020bde2c: .word data_ov00_020e9360
_020bde30: .word 0x040004a4
_020bde34: .word 0x001f20c0
_020bde38: .word data_027e0f64
_020bde3c: .word 0x2aaaaaab
_020bde40: .word 0x04000444
_020bde44: .word data_02050f54
_020bde48: .word 0x000fffe0
_020bde4c: .word 0x0400048c
_020bde50: .word 0x04000504

	.global func_ov00_020bde54
	arm_func_start func_ov00_020bde54
func_ov00_020bde54: ; 0x020bde54
	stmdb sp!, {r3, lr}
	ldr lr, [r0]
	ldr r2, [r0, #4]
	cmp lr, r2
	movhs r0, #0
	ldmhsia sp!, {r3, pc}
	ldr r3, [r0, #8]
	ldr r2, [r1]
	add ip, r3, lr, lsl #4
	str r2, [r3, lr, lsl #4]
	ldr r2, [r1, #4]
	mov r3, #0
	str r2, [ip, #4]
	ldr r1, [r1, #8]
	str r1, [ip, #8]
	ldr r2, [r0, #8]
	ldr r1, [r0]
	add r1, r2, r1, lsl #4
	strh r3, [r1, #0xc]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020bde54

	.global func_ov00_020bdeb4
	arm_func_start func_ov00_020bdeb4
func_ov00_020bdeb4: ; 0x020bdeb4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl func_ov00_020bde54
	cmp r0, #0
	beq _020bdfb0
	ldr r0, _020bdfbc ; =data_027e0f64
	ldr r0, [r0]
	bl func_ov00_0208b180
	mov ip, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	mov r1, r7
	str ip, [sp]
	bl func_01ffe468
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	cmpne r5, #0
	beq _020bdf28
	ldr r0, [sp, #0x10]
	str r0, [r6]
	ldr r0, [sp, #0xc]
	str r0, [r5]
_020bdf28:
	ldr r0, [r4]
	cmp r0, #3
	blo _020bdfb0
	ldr r3, [r4, #8]
	sub r2, r0, #3
	ldr r1, [r3, r2, lsl #4]
	add r2, r3, r2, lsl #4
	ldr r0, _020bdfbc ; =data_027e0f64
	str r1, [sp, #0x14]
	ldr r1, [r2, #4]
	ldr r0, [r0]
	str r1, [sp, #0x18]
	ldr r1, [r2, #8]
	str r1, [sp, #0x1c]
	bl func_ov00_0208b180
	mov ip, #0
	add r1, sp, #0x14
	add r2, sp, #8
	add r3, sp, #4
	str ip, [sp]
	bl func_01ffe468
	cmp r0, #0
	beq _020bdfb0
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #4]
	sub r0, r3, r0
	sub r1, r2, r1
	bl func_01ffa0f4
	ldr r2, [r4, #8]
	ldr r1, [r4]
	add r1, r2, r1, lsl #4
	strh r0, [r1, #-0x14]
_020bdfb0:
	mov r0, #1
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020bdeb4
_020bdfbc: .word data_027e0f64

	.global func_ov00_020bdfc0
	arm_func_start func_ov00_020bdfc0
func_ov00_020bdfc0: ; 0x020bdfc0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x40
	mov sb, r0
	ldr r0, [sb]
	cmp r0, #2
	addlo sp, sp, #0x40
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r2, [sb, #8]
	ldr r0, _020be194 ; =data_027e0f64
	ldr r1, [r2]
	ldr r0, [r0]
	str r1, [sp, #0x34]
	ldr r1, [r2, #4]
	str r1, [sp, #0x38]
	ldr r1, [r2, #8]
	str r1, [sp, #0x3c]
	bl func_ov00_0208b180
	mov r4, #0
	add r1, sp, #0x34
	add r2, sp, #0x18
	add r3, sp, #0x14
	str r4, [sp]
	bl func_01ffe468
	ldr r2, [sb, #8]
	ldr r0, _020be194 ; =data_027e0f64
	ldr r1, [r2, #0x10]
	ldr r0, [r0]
	str r1, [sp, #0x28]
	ldr r1, [r2, #0x14]
	str r1, [sp, #0x2c]
	ldr r1, [r2, #0x18]
	str r1, [sp, #0x30]
	bl func_ov00_0208b180
	mov r2, r4
	str r2, [sp]
	add r1, sp, #0x28
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl func_01ffe468
	ldr r0, [sb]
	cmp r0, #2
	bls _020be158
	sub r0, r0, #1
	cmp r0, #1
	mov r8, #1
	bls _020be130
	ldr sl, _020be194 ; =data_027e0f64
	mov r7, r4
	add r6, sp, #0x1c
	add r5, sp, #8
	add r4, sp, #4
_020be08c:
	ldr r2, [sb, #8]
	add r1, r8, #1
	ldr r0, [r2, r1, lsl #4]
	add r2, r2, r1, lsl #4
	str r0, [sp, #0x1c]
	ldr r1, [r2, #4]
	ldr r0, [sl]
	str r1, [sp, #0x20]
	ldr r1, [r2, #8]
	str r1, [sp, #0x24]
	bl func_ov00_0208b180
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r7, [sp]
	bl func_01ffe468
	cmp r0, #0
	beq _020be0fc
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x14]
	sub r0, r3, r0
	sub r1, r2, r1
	bl func_01ffa0f4
	ldr r1, [sb, #8]
	add r1, r1, r8, lsl #4
	strh r0, [r1, #0xc]
_020be0fc:
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	str r3, [sp, #0x18]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [sb]
	add r8, r8, #1
	sub r0, r0, #1
	cmp r8, r0
	blo _020be08c
_020be130:
	ldr r1, [sb, #8]
	add sp, sp, #0x40
	ldrsh r0, [r1, #0x1c]
	strh r0, [r1, #0xc]
	ldr r1, [sb]
	ldr r0, [sb, #8]
	add r1, r0, r1, lsl #4
	ldrsh r0, [r1, #-0x14]
	strh r0, [r1, #-4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020be158:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x14]
	sub r0, r3, r0
	sub r1, r2, r1
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	ldr r1, [sb, #8]
	mov r2, r0, asr #0x10
	strh r2, [r1, #0xc]
	ldr r0, [sb, #8]
	strh r2, [r0, #0x1c]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020bdfc0
_020be194: .word data_027e0f64

	.global func_ov00_020be198
	arm_func_start func_ov00_020be198
func_ov00_020be198: ; 0x020be198
	stmdb sp!, {r3, lr}
	ldr r1, _020be1c4 ; =data_027e0fe0
	mov r0, #0x158
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020be1c8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020be198
_020be1c4: .word data_027e0fe0

	.global func_ov00_020be1c8
	arm_func_start func_ov00_020be1c8
func_ov00_020be1c8: ; 0x020be1c8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r1, _020be1e4 ; =data_ov00_020e6d44
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020be1c8
_020be1e4: .word data_ov00_020e6d44

	.global func_ov00_020be1e8
	arm_func_start func_ov00_020be1e8
func_ov00_020be1e8: ; 0x020be1e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020be1e8

	.global func_ov00_020be1fc
	arm_func_start func_ov00_020be1fc
func_ov00_020be1fc: ; 0x020be1fc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020be1fc

	.global func_ov00_020be218
	arm_func_start func_ov00_020be218
func_ov00_020be218: ; 0x020be218
	mov ip, #0
	ldr r1, _020be290 ; =data_027e0d0c
	str ip, [r0, #0x6c]
	ldr r2, [r1]
	sub r3, ip, #1
	str r2, [r0, #0x7c]
	ldr r2, [r1, #4]
	str r2, [r0, #0x80]
	ldr r2, [r1, #8]
	str r2, [r0, #0x84]
	str r3, [r0, #0x88]
	ldr r2, [r0, #0x7c]
	str r2, [r0, #0x8c]
	ldr r2, [r0, #0x80]
	str r2, [r0, #0x90]
	ldr r2, [r0, #0x84]
	str r2, [r0, #0x94]
	ldr r2, [r0, #0x88]
	str r2, [r0, #0x98]
	ldr r2, [r1]
	str r2, [r0, #0xa8]
	ldr r2, [r1, #4]
	str r2, [r0, #0xac]
	ldr r1, [r1, #8]
	str r1, [r0, #0xb0]
	str r3, [r0, #0xb4]
	strb ip, [r0, #0x11a]
	str ip, [r0, #0x130]
	mov r0, #1
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020be218
_020be290: .word data_027e0d0c

	.global func_ov00_020be294
	arm_func_start func_ov00_020be294
func_ov00_020be294: ; 0x020be294
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl func_ov00_020c313c
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0x20]
	ldrh r4, [r5, #0x24]
	cmp r0, #0
	beq _020be2cc
	cmp r0, #1
	beq _020be2d4
	cmp r0, #2
	beq _020be304
	b _020be334
_020be2cc:
	mov r0, #1
	b _020be338
_020be2d4:
	ldr r0, _020be400 ; =data_027e0fc8
	mvn r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x3c]
	cmp r2, r1
	beq _020be2fc
	bl func_ov00_020bc500
	cmp r0, #0
	moveq r0, #1
	beq _020be338
_020be2fc:
	mov r0, #0
	b _020be338
_020be304:
	ldr r0, _020be400 ; =data_027e0fc8
	mvn r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x3c]
	cmp r2, r1
	bne _020be32c
	bl func_ov00_020bc500
	cmp r0, #0
	moveq r0, #1
	beq _020be338
_020be32c:
	mov r0, #0
	b _020be338
_020be334:
	mov r0, #0
_020be338:
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020be404 ; =data_027e0e60
	ldrh r1, [r5, #0x22]
	ldr r0, [r0]
	mov r2, #0
	bl func_ov00_020836dc
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x2a]
	cmp r0, #0
	beq _020be37c
	mov r0, r5
	mov r1, #0
	bl func_ov00_020c1bfc
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020be37c:
	cmp r4, #0
	beq _020be39c
	ldr r0, _020be408 ; =data_027e0f74
	mov r1, r4
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020be39c:
	ldr r0, _020be400 ; =data_027e0fc8
	ldr r4, [r0]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r2, [r0]
	mov r1, #7
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0x26]
	cmp r0, #1
	bne _020be3e4
	mov r0, r4
	add r1, r5, #0x48
	mov r2, #0x800
	bl func_ov00_020bcf50
_020be3e4:
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl func_ov00_020c1c20
	mov r0, r5
	bl func_ov00_020c3180
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020be294
_020be400: .word data_027e0fc8
_020be404: .word data_027e0e60
_020be408: .word data_027e0f74

	.global func_ov00_020be40c
	arm_func_start func_ov00_020be40c
func_ov00_020be40c: ; 0x020be40c
	ldr ip, _020be414 ; =func_ov00_020c313c
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020be40c
_020be414: .word func_ov00_020c313c

	.global func_ov00_020be418
	arm_func_start func_ov00_020be418
func_ov00_020be418: ; 0x020be418
	stmdb sp!, {r4, lr}
	mov r1, #0x18
	mul r4, r0, r1
	ldr r1, _020be458 ; =data_ov00_020dca38
	ldr r0, _020be45c ; =data_027e0fc4
	ldrsh r1, [r1, r4]
	ldr r0, [r0]
	blx func_ov00_020bb3a8
	ldr r1, [r0, #8]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _020be460 ; =data_ov00_020dca28
	add r1, r1, r4
	bl func_ov00_020c0bdc
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020be418
_020be458: .word data_ov00_020dca38
_020be45c: .word data_027e0fc4
_020be460: .word data_ov00_020dca28

	.global func_ov00_020be464
	arm_func_start func_ov00_020be464
func_ov00_020be464: ; 0x020be464
	stmdb sp!, {r4, r5, r6, lr}
	add ip, r0, #0x5100
	ldrsh r4, [ip, #0xb0]
	cmp r4, #0
	ldrnesh r6, [ip, #0xb2]
	mvnne lr, #0
	cmpne r6, lr
	ldmeqia sp!, {r4, r5, r6, pc}
	mov ip, #0x18
	mul r5, r1, ip
	ldr r4, _020be4d8 ; =data_ov00_020dca38
	mul r1, r2, ip
	cmp r3, #0
	ldrsh r2, [r4, r5]
	ldrsh r3, [r4, r1]
	bne _020be4bc
	cmp r2, lr
	cmpne r3, lr
	beq _020be4bc
	mov r1, r6
	bl LoadEquipItemModel
	ldmia sp!, {r4, r5, r6, pc}
_020be4bc:
	mvn r1, #1
	cmp r2, r1
	cmpne r3, r1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r6
	bl LoadEquipItemModel
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020be464
_020be4d8: .word data_ov00_020dca38

	.global func_ov00_020be4dc
	arm_func_start func_ov00_020be4dc
func_ov00_020be4dc: ; 0x020be4dc
	stmdb sp!, {r4, lr}
	mov r3, #0x18
	mul ip, r1, r3
	ldr lr, _020be53c ; =data_ov00_020dca38
	add r0, r0, #0xb5
	ldrsh ip, [lr, ip]
	sub r1, r3, #0x1a
	add r4, r0, #0x5100
	cmp ip, r1
	beq _020be518
	mul r0, r2, r3
	ldrsh r1, [lr, r0]
	sub r0, r3, #0x1a
	cmp r1, r0
	bne _020be520
_020be518:
	mov r1, #1
	b _020be524
_020be520:
	mov r1, #0
_020be524:
	ldrb r0, [r4]
	orrs r0, r0, r1
	movne r0, #1
	moveq r0, #0
	strb r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020be4dc
_020be53c: .word data_ov00_020dca38

	.global func_ov00_020be540
	arm_func_start func_ov00_020be540
func_ov00_020be540: ; 0x020be540
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	mov r2, #0x18
	mov r5, r1
	mul r4, r5, r2
	ldr r3, _020be664 ; =data_ov00_020dca38
	sub r1, r2, #0x1a
	ldrsh r3, [r3, r4]
	mov r6, r0
	cmp r3, r1
	beq _020be640
	sub r0, r2, #0x19
	cmp r3, r0
	bne _020be654
	add r0, r6, #0x5100
	ldrsh r0, [r0, #0xb0]
	cmp r0, r5
	beq _020be628
	add r2, sp, #4
	mov r1, #0x20
	mov r0, #0
_020be594:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _020be594
	ldr r1, _020be668 ; =data_ov00_020e6dfc
	add r0, sp, #4
	ldr r1, [r1]
	bl func_0204713c
	ldr r1, _020be66c ; =data_ov00_020dca28
	add r0, sp, #4
	add r1, r1, r4
	bl func_0204713c
	ldr r1, _020be668 ; =data_ov00_020e6dfc
	add r0, sp, #4
	ldr r1, [r1, #8]
	bl func_0204713c
	mov r3, #0
	ldr r2, _020be670 ; =0x000051b0
	add r0, sp, #4
	mov r1, r6
	str r3, [sp]
	blx func_0202d56c
	add r0, r6, #0x5100
	ldrsh r0, [r0, #0xb0]
	cmp r0, #0
	addeq r0, r6, #0x5000
	ldreqb r0, [r0, #0x1b5]
	cmpeq r0, #0
	movne r1, #1
	moveq r1, #0
	add r0, r6, #0x5000
	strb r1, [r0, #0x1b4]
	add r0, r6, #0x5100
	strh r5, [r0, #0xb0]
_020be628:
	ldr r1, _020be66c ; =data_ov00_020dca28
	mov r0, r6
	add r1, r1, r4
	bl func_0201e544
	add sp, sp, #0x84
	ldmia sp!, {r3, r4, r5, r6, pc}
_020be640:
	ldr r1, _020be66c ; =data_ov00_020dca28
	add r1, r1, r4
	bl func_0201e544
	add sp, sp, #0x84
	ldmia sp!, {r3, r4, r5, r6, pc}
_020be654:
	mov r0, r5
	bl func_ov00_020be418
	add sp, sp, #0x84
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020be540
_020be664: .word data_ov00_020dca38
_020be668: .word data_ov00_020e6dfc
_020be66c: .word data_ov00_020dca28
_020be670: .word 0x000051b0

	.global func_ov00_020be674
	arm_func_start func_ov00_020be674
func_ov00_020be674: ; 0x020be674
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r2
	mov r5, r0
	mov r7, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl func_ov00_020be540
	ldr r1, [r7, #4]
	mov r4, r0
	ldr r0, [r1, #8]
	cmp r0, r4
	addeq r0, r5, #0x5000
	ldreqb r0, [r0, #0x1b4]
	cmpeq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl func_ov00_020c0d68
	ldr r1, _020be704 ; =gPlayerAnimHandler
	mov r5, r0
	ldr r0, [r1, #4]
	tst r0, #1
	orreq r0, r0, #1
	streq r0, [r1, #4]
	mov r0, r7
	mov r1, r4
	bl func_ov00_020c0c44
	mov r0, #0x18
	mul r2, r6, r0
	ldr r1, _020be708 ; =data_ov00_020dca3c
	mov r0, r7
	ldrsh r1, [r1, r2]
	bl func_ov00_020c0e5c
	mov r0, r7
	mov r1, r5
	bl func_ov00_020c0e24
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020be674
_020be704: .word gPlayerAnimHandler
_020be708: .word data_ov00_020dca3c

	.global LoadEquipItemModel
	arm_func_start LoadEquipItemModel
LoadEquipItemModel: ; 0x020be70c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	ldr r2, _020be7d0 ; =data_ov00_020e6e08
	mov r4, r1
	ldr r6, [r2, r4, lsl #2]
	mov r5, r0
	cmp r6, #0
	addeq sp, sp, #0x84
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r2, sp, #4
	mov r1, #0x20
	mov r0, #0
_020be73c:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _020be73c
	ldr r1, _020be7d4 ; =data_ov00_020e6dfc
	add r0, sp, #4
	ldr r1, [r1, #4]
	bl func_0204713c
	add r0, sp, #4
	mov r1, r6
	bl func_0204713c
	ldr r1, _020be7d4 ; =data_ov00_020e6dfc
	add r0, sp, #4
	ldr r1, [r1, #8]
	bl func_0204713c
	mov r3, #0
	ldr r2, _020be7d8 ; =0x000051b0
	add r0, sp, #4
	mov r1, r5
	str r3, [sp]
	blx func_0202d56c
	add r0, r5, #0x5100
	ldrsh r0, [r0, #0xb0]
	cmp r0, #0
	movne r1, #1
	moveq r1, #0
	add r0, r5, #0x5000
	strb r1, [r0, #0x1b4]
	add r0, r5, #0x5100
	mov r1, #0
	strh r1, [r0, #0xb0]
	strh r4, [r0, #0xb2]
	add sp, sp, #0x84
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end LoadEquipItemModel
_020be7d0: .word data_ov00_020e6e08
_020be7d4: .word data_ov00_020e6dfc
_020be7d8: .word 0x000051b0

	.global func_ov00_020be7dc
	arm_func_start func_ov00_020be7dc
func_ov00_020be7dc: ; 0x020be7dc
	stmdb sp!, {r3, lr}
	ldr ip, [r1]
	ldr r3, [r2]
	orr r3, ip, r3
	str r3, [r0]
	ldr r3, [r1]
	ldr ip, [r2]
	and lr, r3, #0x1f
	ldr r3, [r0]
	and ip, ip, #0x1f
	cmp lr, ip
	movle lr, ip
	bic r3, r3, #0x1f
	orr r3, r3, lr
	str r3, [r0]
	ldr r3, [r1]
	ldr ip, [r2]
	mov r3, r3, lsr #0x9
	mov ip, ip, lsr #0x9
	and lr, r3, #3
	ldr r3, [r0]
	and ip, ip, #3
	cmp lr, ip
	movle lr, ip
	bic r3, r3, #0x600
	orr r3, r3, lr, lsl #9
	str r3, [r0]
	ldr r3, [r1]
	ldr ip, [r2]
	mov r3, r3, lsr #0x5
	mov ip, ip, lsr #0x5
	and lr, r3, #3
	ldr r3, [r0]
	and ip, ip, #3
	cmp lr, ip
	movle lr, ip
	bic r3, r3, #0x60
	orr r3, r3, lr, lsl #5
	str r3, [r0]
	ldr r3, [r1]
	ldr ip, [r2]
	mov r3, r3, lsr #0x7
	mov ip, ip, lsr #0x7
	and lr, r3, #3
	ldr r3, [r0]
	and ip, ip, #3
	cmp lr, ip
	movle lr, ip
	bic r3, r3, #0x180
	orr r3, r3, lr, lsl #7
	str r3, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	mov r1, r1, lsr #0xb
	mov r2, r2, lsr #0xb
	and r3, r1, #3
	ldr r1, [r0]
	and r2, r2, #3
	cmp r3, r2
	movle r3, r2
	bic r1, r1, #0x1800
	orr r1, r1, r3, lsl #11
	str r1, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020be7dc

	.global func_ov00_020be8dc
	arm_func_start func_ov00_020be8dc
func_ov00_020be8dc: ; 0x020be8dc
	bx lr
	arm_func_end func_ov00_020be8dc

	.global func_ov00_020be8e0
	arm_func_start func_ov00_020be8e0
func_ov00_020be8e0: ; 0x020be8e0
	bx lr
	arm_func_end func_ov00_020be8e0

	.global func_ov00_020be8e4
	arm_func_start func_ov00_020be8e4
func_ov00_020be8e4: ; 0x020be8e4
	stmdb sp!, {r3, lr}
	bl func_ov00_020beb30
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020be8e4

	.global func_ov00_020be8fc
	arm_func_start func_ov00_020be8fc
func_ov00_020be8fc: ; 0x020be8fc
	ldrb r0, [r0, #8]
	bx lr
	arm_func_end func_ov00_020be8fc

	.global func_ov00_020be904
	arm_func_start func_ov00_020be904
func_ov00_020be904: ; 0x020be904
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	cmp r1, #0
	mov r4, #0
	beq _020be954
	mov r5, #1
	bl func_ov00_020beb30
	cmp r0, #0
	bgt _020be94c
	ldr r1, _020be960 ; =gItemManager
	mov r0, r7
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r6, [r2, #8]
	ldr r1, [r1, #0xc]
	blx r1
	cmp r6, r0
	movne r5, r4
_020be94c:
	cmp r5, #0
	movne r4, #1
_020be954:
	strb r4, [r7, #8]
	and r0, r4, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020be904
_020be960: .word gItemManager

	.global func_ov00_020be964
	arm_func_start func_ov00_020be964
func_ov00_020be964: ; 0x020be964
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020be964

	.global func_ov00_020be96c
	arm_func_start func_ov00_020be96c
func_ov00_020be96c: ; 0x020be96c
	bx lr
	arm_func_end func_ov00_020be96c

	.global func_ov00_020be970
	arm_func_start func_ov00_020be970
func_ov00_020be970: ; 0x020be970
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020be970

	.global func_ov00_020be978
	arm_func_start func_ov00_020be978
func_ov00_020be978: ; 0x020be978
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020be978

	.global func_ov00_020be980
	arm_func_start func_ov00_020be980
func_ov00_020be980: ; 0x020be980
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020be980

	.global func_ov00_020be988
	arm_func_start func_ov00_020be988
func_ov00_020be988: ; 0x020be988
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020be988

	.global func_ov00_020be990
	arm_func_start func_ov00_020be990
func_ov00_020be990: ; 0x020be990
	ldr r0, _020be998 ; =data_027e0f94
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020be990
_020be998: .word data_027e0f94

	.global func_ov00_020be99c
	arm_func_start func_ov00_020be99c
func_ov00_020be99c: ; 0x020be99c
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r0, _020be9e0 ; =data_027e0f90
	mov r4, r1
	ldr r0, [r0]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, [sp]
	str r0, [r4]
	ldr r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020be99c
_020be9e0: .word data_027e0f90

	.global func_ov00_020be9e4
	arm_func_start func_ov00_020be9e4
func_ov00_020be9e4: ; 0x020be9e4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r2, #2
	add r0, sp, #0x24
	mov r3, r2
	mov r1, #0x53
	str r2, [sp]
	ldr r4, [sp, #0x58]
	bl func_ov00_020d0a30
	ldrsh r5, [sp, #0x60]
	ldr r0, _020beb20 ; =0x00000aab
	ldr r1, _020beb24 ; =data_027e0f64
	mul r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x1
	add r2, r0, #1
	ldr r0, _020beb28 ; =data_02050f54
	mov r2, r2, lsl #0x1
	ldrsh ip, [r0, r2]
	ldr r0, _020beb2c ; =0x00000266
	mov r2, #0
	umull r3, lr, ip, r0
	adds r6, r3, #0x800
	ldr r3, [r1]
	add r1, r4, #0x66
	mla lr, ip, r2, lr
	mov r4, ip, asr #0x1f
	mla lr, r4, r0, lr
	adc r0, lr, #0
	mov r4, r6, lsr #0xc
	orr r4, r4, r0, lsl #20
	add r0, r4, #0x33
	add lr, r0, #0xb00
	mov r0, lr, asr #0x1f
	mov ip, r0, lsl #0x5
	mov r0, #0x800
	adds r4, r0, lr, lsl #5
	orr ip, ip, lr, lsr #27
	adc r0, ip, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r0, lsl #20
	ldr r0, [r3, #4]
	add r1, r1, #0x600
	str r1, [sp, #0x1c]
	ldr r3, [sp, #0x54]
	ldr r1, [sp, #0x5c]
	str r3, [sp, #0x18]
	str r1, [sp, #0x20]
	str r2, [sp]
	add r1, sp, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl func_01ffe468
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r3, r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, #0x2d8
	mul r0, r5, r0
	mov r0, r0, lsl #0x10
	str r4, [sp]
	mov r0, r0, asr #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, sp, #0x24
	mov r3, r4
	bl func_ov00_020d0b7c
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020be9e4
_020beb20: .word 0x00000aab
_020beb24: .word data_027e0f64
_020beb28: .word data_02050f54
_020beb2c: .word 0x00000266

	.global func_ov00_020beb30
	arm_func_start func_ov00_020beb30
func_ov00_020beb30: ; 0x020beb30
	stmdb sp!, {r4, lr}
	ldr r2, [r0]
	ldr r1, _020beb58 ; =gItemManager
	ldr r2, [r2, #0xc]
	ldr r4, [r1]
	blx r2
	mov r1, r0
	mov r0, r4
	bl _ZNK11ItemManager7GetAmmoEi
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020beb30
_020beb58: .word gItemManager

	.global func_ov00_020beb5c
	arm_func_start func_ov00_020beb5c
func_ov00_020beb5c: ; 0x020beb5c
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, [r0]
	ldr r2, _020beb8c ; =gItemManager
	ldr r3, [r3, #0xc]
	ldr r4, [r2]
	mov r5, r1
	blx r3
	mov r1, r0
	mov r0, r4
	mov r2, r5
	bl _ZN11ItemManager8GiveAmmoEit
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020beb5c
_020beb8c: .word gItemManager

	.global func_ov00_020beb90
	arm_func_start func_ov00_020beb90
func_ov00_020beb90: ; 0x020beb90
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	arm_func_end func_ov00_020beb90

	.global func_ov00_020beba8
	arm_func_start func_ov00_020beba8
func_ov00_020beba8: ; 0x020beba8
	ldr r3, _020bebbc ; =data_ov00_020e6f2c
	mov r2, #0
	str r3, [r0]
	stmib r0, {r1, r2}
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020beba8
_020bebbc: .word data_ov00_020e6f2c

	.global func_ov00_020bebc0
	arm_func_start func_ov00_020bebc0
func_ov00_020bebc0: ; 0x020bebc0
	ldr r3, _020bebd4 ; =data_ov00_020e6f2c
	mov r2, #0
	str r3, [r0]
	stmib r0, {r1, r2}
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bebc0
_020bebd4: .word data_ov00_020e6f2c

	.global func_ov00_020bebd8
	arm_func_start func_ov00_020bebd8
func_ov00_020bebd8: ; 0x020bebd8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r3, _020bec58 ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #0xc
	bl func_ov00_02093a1c
	ldr ip, [r4, #8]
	ldr r3, [sp, #0xc]
	add r0, sp, #0
	add r1, sp, #8
	add r2, sp, #4
	str ip, [sp, #8]
	str r3, [sp, #4]
	bl func_ov00_020be7dc
	ldr r0, [sp]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _020bec4c
	ldr r1, [sp, #0xc]
	add r0, r0, #0x16
	mov r0, r1, lsr r0
	and r0, r0, #1
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_020bec4c:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bebd8
_020bec58: .word data_027e0f6c

	.global func_ov00_020bec5c
	arm_func_start func_ov00_020bec5c
func_ov00_020bec5c: ; 0x020bec5c
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r3, _020becdc ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #0xc
	bl func_ov00_02093a1c
	ldr ip, [r4, #8]
	ldr r3, [sp, #0xc]
	add r0, sp, #0
	add r1, sp, #8
	add r2, sp, #4
	str ip, [sp, #8]
	str r3, [sp, #4]
	bl func_ov00_020be7dc
	ldr r0, [sp]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _020becd0
	ldr r1, [sp, #0xc]
	add r0, r0, #0x16
	mov r0, r1, lsr r0
	and r0, r0, #1
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_020becd0:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bec5c
_020becdc: .word data_027e0f6c

	.global func_ov00_020bece0
	arm_func_start func_ov00_020bece0
func_ov00_020bece0: ; 0x020bece0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r5, r0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq ip, #0
	ldrne ip, [r0, #0xc]
	ldr r3, [r5, #8]
	add r0, sp, #0
	add r1, sp, #8
	add r2, sp, #4
	str ip, [sp, #0xc]
	str r3, [sp, #8]
	str ip, [sp, #4]
	bl func_ov00_020be7dc
	ldr r0, [sp]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	blt _020bed60
	ldr r1, [sp, #0xc]
	add r0, r0, #0x16
	mov r0, r1, lsr r0
	and r0, r0, #1
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020bed60:
	mov r0, r5
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x18]
	blx r2
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020bece0

	.global func_ov00_020bed7c
	arm_func_start func_ov00_020bed7c
func_ov00_020bed7c: ; 0x020bed7c
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #5
	beq _020bedbc
	cmp r0, #0x10
	cmpne r0, #0x17
	bne _020bedc4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	b _020bedc4
_020bedbc:
	mov r0, #0
	ldmia sp!, {r4, pc}
_020bedc4:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bed7c

	.global func_ov00_020bedcc
	arm_func_start func_ov00_020bedcc
func_ov00_020bedcc: ; 0x020bedcc
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r2, _020bee60 ; =data_027e0f6c
	ldrh r1, [r1]
	ldr r2, [r2]
	mov r4, r0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, r1, lsl #2]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr ip, [r0, #0xc]
	ldr r3, [r4, #8]
	add r0, sp, #0
	add r1, sp, #8
	add r2, sp, #4
	str ip, [sp, #0xc]
	str r3, [sp, #8]
	str ip, [sp, #4]
	bl func_ov00_020be7dc
	ldr r0, [sp]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _020bee54
	ldr r1, [sp, #0xc]
	add r0, r0, #0x16
	mov r0, r1, lsr r0
	and r0, r0, #1
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_020bee54:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bedcc
_020bee60: .word data_027e0f6c

	.global func_ov00_020bee64
	arm_func_start func_ov00_020bee64
func_ov00_020bee64: ; 0x020bee64
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bee64

	.global func_ov00_020bee78
	arm_func_start func_ov00_020bee78
func_ov00_020bee78: ; 0x020bee78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bee78

	.global func_ov00_020bee94
	arm_func_start func_ov00_020bee94
func_ov00_020bee94: ; 0x020bee94
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _020beecc ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #0
	bl func_ov00_02093a1c
	add r1, sp, #0
	mov r0, r4
	bl func_ov00_020beed0
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bee94
_020beecc: .word data_027e0f6c

	.global func_ov00_020beed0
	arm_func_start func_ov00_020beed0
func_ov00_020beed0: ; 0x020beed0
	ldr r1, [r1]
	and r1, r1, #0x1f
	cmp r1, #6
	beq _020bef04
	cmp r1, #7
	beq _020beef8
	cmp r1, #9
	moveq r1, #0xf6
	streqh r1, [r0, #4]
	bx lr
_020beef8:
	mov r1, #0xf4
	strh r1, [r0, #4]
	bx lr
_020bef04:
	mov r1, #0xf5
	strh r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020beed0

	.global func_ov00_020bef10
	arm_func_start func_ov00_020bef10
func_ov00_020bef10: ; 0x020bef10
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020bef10

	.global func_ov00_020bef18
	arm_func_start func_ov00_020bef18
func_ov00_020bef18: ; 0x020bef18
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq r2, #0
	ldrne r2, [r0, #0xc]
	add r1, sp, #0
	mov r0, r5
	str r2, [sp]
	bl func_ov00_020beed0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x19
	bgt _020bef8c
	cmp r0, #0x17
	blt _020bef80
	beq _020bef98
	cmp r0, #0x19
	beq _020befa4
	b _020befd4
_020bef80:
	cmp r0, #0x10
	beq _020bef98
	b _020befd4
_020bef8c:
	cmp r0, #0x90
	beq _020befa4
	b _020befd4
_020bef98:
	mov r0, #1
	strb r0, [r5, #6]
	b _020befd4
_020befa4:
	ldr r0, _020befdc ; =data_027e0fc8
	ldr r4, [r0]
	mov r0, r4
	bl func_ov00_020bbd40
	cmp r0, #0
	bne _020befcc
	mov r0, r4
	bl func_ov00_020bbd60
	cmp r0, #0
	beq _020befd4
_020befcc:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020befd4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bef18
_020befdc: .word data_027e0fc8

	.global func_ov00_020befe0
	arm_func_start func_ov00_020befe0
func_ov00_020befe0: ; 0x020befe0
	ldrsh r2, [r1]
	strh r2, [r0, #0x50]
	ldrsh r2, [r1, #2]
	strh r2, [r0, #0x52]
	ldrsh r1, [r1, #4]
	strh r1, [r0, #0x54]
	bx lr
	arm_func_end func_ov00_020befe0

	.global func_ov00_020beffc
	arm_func_start func_ov00_020beffc
func_ov00_020beffc: ; 0x020beffc
	bx lr
	arm_func_end func_ov00_020beffc

	.global func_ov00_020bf000
	arm_func_start func_ov00_020bf000
func_ov00_020bf000: ; 0x020bf000
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020bf000

	.global func_ov00_020bf008
	arm_func_start func_ov00_020bf008
func_ov00_020bf008: ; 0x020bf008
	ldrsh r3, [r0, #0x56]
	cmp r3, #1
	bxge lr
	mov r3, #1
	strh r3, [r0, #0x56]
	strh r1, [r0, #0x58]
	strh r2, [r0, #0x5a]
	bx lr
	arm_func_end func_ov00_020bf008

	.global func_ov00_020bf028
	arm_func_start func_ov00_020bf028
func_ov00_020bf028: ; 0x020bf028
	ldr r1, [r0, #0x40]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _020bf070
_020bf038: ; jump table
	b _020bf070 ; case 0
	b _020bf070 ; case 1
	b _020bf070 ; case 2
	b _020bf070 ; case 3
	b _020bf070 ; case 4
	b _020bf05c ; case 5
	b _020bf05c ; case 6
	b _020bf05c ; case 7
	b _020bf05c ; case 8
_020bf05c:
	ldr r2, [r0, #0x44]
	ldr r1, _020bf084 ; =0x000004ba
	cmp r2, r1
	movlt r0, #0
	bxlt lr
_020bf070:
	ldrsh r0, [r0, #0x56]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020bf028
_020bf084: .word 0x000004ba

	.global func_ov00_020bf088
	arm_func_start func_ov00_020bf088
func_ov00_020bf088: ; 0x020bf088
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r2, [r0]
	add r1, sp, #0x10
	ldr r2, [r2, #0x3c]
	mov r4, r0
	blx r2
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020c0648
	add r2, sp, #8
	mov r1, #0
	mov r0, r4
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	bl func_ov00_020be990
	ldr r2, [r0]
	ldr r1, [sp, #0x10]
	mov r0, r4
	sub r1, r2, r1
	strh r1, [sp, #8]
	bl func_ov00_020be990
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x18]
	add r0, sp, #8
	sub r1, r2, r1
	strh r1, [sp, #0xc]
	str r0, [sp]
	ldr r1, _020bf178 ; =func_ov00_020befe0
	ldr r0, _020bf17c ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020bf180 ; =0x000001c3
	add r2, sp, #0x10
	mov r3, #1
	bl func_ov00_0207c1b0
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _020bf178 ; =func_ov00_020befe0
	mov r1, #0x1c4
	str r0, [sp, #4]
	ldr r0, _020bf17c ; =data_027e0e58
	add r2, sp, #0x10
	ldr r0, [r0]
	mov r3, #1
	bl func_ov00_0207c1b0
	ldrh r1, [r4, #0x58]
	ldr r0, _020bf184 ; =data_027e0ffc
	add r2, sp, #0x10
	mov r3, #0
	bl func_ov00_020ceb24
	ldr r0, _020bf188 ; =data_027e1038
	add r1, sp, #0x10
	ldr r0, [r0]
	bl func_ov00_020cef10
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bf088
_020bf178: .word func_ov00_020befe0
_020bf17c: .word data_027e0e58
_020bf180: .word 0x000001c3
_020bf184: .word data_027e0ffc
_020bf188: .word data_027e1038

	.global func_ov00_020bf18c
	thumb_func_start func_ov00_020bf18c
func_ov00_020bf18c: ; 0x020bf18c
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020bf1bc ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	blx _ZN11ItemManager12GetItemModelEj
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r0, _020bf1bc ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	blx _ZN11ItemManager12GetItemModelEj
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020bf18c
_020bf1bc: .word gItemManager

	.global func_ov00_020bf1c0
	arm_func_start func_ov00_020bf1c0
func_ov00_020bf1c0: ; 0x020bf1c0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl func_ov00_020be904
	cmp r5, #0
	beq _020bf248
	mov r2, #1
	str r2, [sp]
	ldr r0, _020bf268 ; =data_027e0e58
	ldr r3, _020bf26c ; =data_027e0d0c
	ldr r0, [r0]
	add r1, r4, #0x30
	rsb r2, r2, #0x15c
	bl func_ov00_0207c1f8
	mov r1, #1
	str r1, [sp]
	ldr r0, _020bf268 ; =data_027e0e58
	ldr r3, _020bf26c ; =data_027e0d0c
	ldr r0, [r0]
	add r1, r4, #0x34
	mov r2, #0x15c
	bl func_ov00_0207c1f8
	ldr r1, [r4, #0x30]
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #2
	strne r0, [r1, #0x24]
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _020bf258
	ldr r0, [r1, #0x24]
	orr r0, r0, #2
	str r0, [r1, #0x24]
	b _020bf258
_020bf248:
	add r0, r4, #0x30
	bl func_ov00_020b7e6c
	add r0, r4, #0x34
	bl func_ov00_020b7e6c
_020bf258:
	mov r0, #0
	strb r0, [r4, #0x6e]
	ldrb r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bf1c0
_020bf268: .word data_027e0e58
_020bf26c: .word data_027e0d0c

	.global func_ov00_020bf270
	arm_func_start func_ov00_020bf270
func_ov00_020bf270: ; 0x020bf270
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strb r1, [r4, #0x6c]
	bl func_ov00_020c0648
	ldr r0, [r4, #0x40]
	cmp r0, #3
	bgt _020bf2b4
	ldr r0, _020bf2d4 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager19GetActiveFairyLevelEi
	strh r0, [r4, #0x54]
	ldrsh r0, [r4, #0x54]
	cmp r0, #0
	movle r0, #0
	strh r0, [r4, #0x54]
_020bf2b4:
	mov r0, r4
	bl func_ov00_020bf330
	mov r0, #0
	strb r0, [r4, #0x6d]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020bf270
_020bf2d4: .word gItemManager

	.global func_ov00_020bf2d8
	arm_func_start func_ov00_020bf2d8
func_ov00_020bf2d8: ; 0x020bf2d8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c0648
	mvn r0, #0
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x30]
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #2
	strne r0, [r1, #0x24]
	ldr r1, [r4, #0x34]
	cmp r1, #0
	ldrne r0, [r1, #0x24]
	orrne r0, r0, #2
	strne r0, [r1, #0x24]
	mov r0, #0
	strb r0, [r4, #0x6e]
	strh r0, [r4, #0x56]
	strh r0, [r4, #0x5a]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bf2d8

	.global func_ov00_020bf330
	arm_func_start func_ov00_020bf330
func_ov00_020bf330: ; 0x020bf330
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r0, [r5, #0x40]
	ldrsh r4, [r5, #4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020bf480
_020bf350: ; jump table
	b _020bf428 ; case 0
	b _020bf43c ; case 1
	b _020bf444 ; case 2
	b _020bf374 ; case 3
	b _020bf44c ; case 4
	b _020bf460 ; case 5
	b _020bf468 ; case 6
	b _020bf470 ; case 7
	b _020bf478 ; case 8
_020bf374:
	ldr r0, _020bf4d0 ; =data_ov00_020dd268
	add r3, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrsh r0, [r5, #4]
	mov r1, r3
	bl func_0202af4c
	add r1, sp, #0x1c
	mov r0, r5
	bl func_ov00_020be99c
	add r0, sp, #0x1c
	add r1, sp, #0x10
	mov r2, r0
	bl func_01ff9bc4
	mov r0, #1
	str r0, [sp]
	ldr r0, _020bf4d4 ; =data_027e0e58
	add r1, r5, #0x2c
	ldr r0, [r0]
	mov r2, #0x1c0
	add r3, sp, #0x1c
	bl func_ov00_0207c1f8
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020bf4d8 ; =data_ov00_020dd274
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrsh r0, [r5, #4]
	mov r1, r3
	bl func_0202af4c
	add r0, sp, #4
	mov r1, r0
	bl func_01ff9d4c
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x2c]
	add sp, sp, #0x28
	strh r0, [r1, #0x50]
	strh r3, [r1, #0x52]
	strh r2, [r1, #0x54]
	ldmia sp!, {r4, r5, r6, pc}
_020bf428:
	add r0, r4, #0x4000
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	ldr r6, _020bf4dc ; =0x0000021e
	b _020bf488
_020bf43c:
	mov r6, #0x220
	b _020bf488
_020bf444:
	ldr r6, _020bf4e0 ; =0x00000221
	b _020bf488
_020bf44c:
	add r0, r4, #0x4000
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	ldr r6, _020bf4e4 ; =0x0000021f
	b _020bf488
_020bf460:
	ldr r6, _020bf4e8 ; =0x0000021a
	b _020bf488
_020bf468:
	ldr r6, _020bf4ec ; =0x0000021b
	b _020bf488
_020bf470:
	ldr r6, _020bf4f0 ; =0x0000021d
	b _020bf488
_020bf478:
	mov r6, #0x21c
	b _020bf488
_020bf480:
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}
_020bf488:
	add r1, sp, #0x1c
	mov r0, r5
	bl func_ov00_020be99c
	add r0, r5, #0x2c
	bl func_ov00_020b7e6c
	mov r1, #1
	str r1, [sp]
	ldr r0, _020bf4d4 ; =data_027e0e58
	add r3, sp, #0x1c
	ldr r0, [r0]
	mov r2, r6
	add r1, r5, #0x2c
	bl func_ov00_0207c1f8
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	strneh r4, [r0, #0x56]
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020bf330
_020bf4d0: .word data_ov00_020dd268
_020bf4d4: .word data_027e0e58
_020bf4d8: .word data_ov00_020dd274
_020bf4dc: .word 0x0000021e
_020bf4e0: .word 0x00000221
_020bf4e4: .word 0x0000021f
_020bf4e8: .word 0x0000021a
_020bf4ec: .word 0x0000021b
_020bf4f0: .word 0x0000021d

	.global func_ov00_020bf4f4
	arm_func_start func_ov00_020bf4f4
func_ov00_020bf4f4: ; 0x020bf4f4
	ldr r0, [r0, #0x40]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020bf530
_020bf504: ; jump table
	b _020bf530 ; case 0
	b _020bf530 ; case 1
	b _020bf530 ; case 2
	b _020bf530 ; case 3
	b _020bf530 ; case 4
	b _020bf528 ; case 5
	b _020bf528 ; case 6
	b _020bf528 ; case 7
	b _020bf528 ; case 8
_020bf528:
	mov r0, #0
	bx lr
_020bf530:
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020bf4f4

	.global func_ov00_020bf538
	arm_func_start func_ov00_020bf538
func_ov00_020bf538: ; 0x020bf538
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1b4
	mov r4, r0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _020bfd18
	ldr r1, [r4, #0x40]
	mvn r0, #0
	cmp r1, r0
	beq _020bfd18
	mov r0, #0x18
	mul r2, r1, r0
	ldr r1, _020bff20 ; =data_ov00_020dd290
	ldr r7, _020bff24 ; =0x0000ffff
	ldr r5, [r1, r2]
	add r1, sp, #0x114
	strh r7, [r1, #0x64]
	strh r7, [r1, #0x66]
	strh r7, [r1, #0x68]
	ldr r0, _020bff28 ; =0x000008a4
	mov r6, #0
	strh r7, [r1, #0x6a]
	strh r6, [r1, #0x6c]
	ldr r3, _020bff2c ; =data_ov00_020e6f90
	mov r2, #0xf7
	cmp r5, r0
	movge r5, r0
	mov r0, r4
	strb r6, [sp, #0x1a2]
	strb r6, [sp, #0x1a3]
	strb r6, [sp, #0x1a4]
	strb r6, [sp, #0x1a5]
	strb r6, [sp, #0x1ac]
	strb r6, [sp, #0x1ad]
	strb r6, [sp, #0x1ae]
	strb r6, [sp, #0x1af]
	strb r6, [sp, #0x1b0]
	strb r6, [sp, #0x1b1]
	str r3, [sp, #0x1c]
	strh r2, [sp, #0x20]
	strb r6, [sp, #0x22]
	bl func_ov00_020be990
	ldr r2, [r0]
	add r1, sp, #0xe4
	str r2, [sp, #0xe4]
	ldr r2, [r0, #4]
	mov fp, r6
	str r2, [sp, #0xe8]
	ldr r2, [r0, #8]
	mov r0, r4
	str r5, [sp, #0xf0]
	str r2, [sp, #0xec]
	ldr r2, [r4, #0x44]
	bl func_ov00_020c0318
	ldr r1, [r4, #0x40]
	mov r0, #0x18
	mul r2, r1, r0
	ldr r0, _020bff30 ; =data_ov00_020dd294
	ldr r1, [r4, #0x48]
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _020bf664
	mov r0, r4
	bl func_ov00_020be990
	ldr r2, [r0]
	add r1, sp, #0xd8
	str r2, [sp, #0xd8]
	ldr r2, [r0, #4]
	str r2, [sp, #0xdc]
	ldr r2, [r0, #8]
	mov r0, r4
	str r2, [sp, #0xe0]
	ldr r2, [r4, #0x48]
	bl func_ov00_020c0318
	b _020bf67c
_020bf664:
	ldr r2, [sp, #0xe4]
	ldr r1, [sp, #0xe8]
	ldr r0, [sp, #0xec]
	str r2, [sp, #0xd8]
	str r1, [sp, #0xdc]
	str r0, [sp, #0xe0]
_020bf67c:
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	bne _020bf70c
	ldr r0, [r4, #0x40]
	sub r0, r0, #7
	cmp r0, #1
	bhi _020bf6a8
	ldr r0, _020bff34 ; =data_ov00_020eec9c
	mov r1, #0xd6
	bl func_ov00_020d7cd4
	b _020bf70c
_020bf6a8:
	mov r0, #1
	strb r0, [r4, #0x6c]
	ldr r0, [r4, #0x40]
	sub r0, r0, #5
	cmp r0, #1
	bhi _020bf6d4
	ldr r0, _020bff34 ; =data_ov00_020eec9c
	add r2, sp, #0xe4
	mov r1, #0xd5
	bl func_ov00_020d7a84
	b _020bf70c
_020bf6d4:
	ldr r0, _020bff38 ; =gItemManager
	mov r1, #0x25
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	add r2, sp, #0xe4
	beq _020bf700
	ldr r0, _020bff34 ; =data_ov00_020eec9c
	mov r1, #0xe7
	bl func_ov00_020d7a84
	b _020bf70c
_020bf700:
	ldr r0, _020bff34 ; =data_ov00_020eec9c
	mov r1, #0xe6
	bl func_ov00_020d7a84
_020bf70c:
	ldr r3, [sp, #0xd8]
	ldr r2, [sp, #0xdc]
	ldr r1, [sp, #0xe0]
	str r3, [sp, #0x3c]
	str r2, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0xf0]
	mov r1, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, sp, #0x1c
	str r0, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r0, _020bff3c ; =data_027e0e60
	add r1, sp, #0x154
	ldr r0, [r0]
	add r2, sp, #0xe4
	add r3, sp, #0x3c
	bl func_01ffbf5c
	mov r0, r4
	bl func_ov00_020bf4f4
	cmp r0, #0
	ldrneb r0, [sp, #0x22]
	cmpne r0, #0
	beq _020bf794
	ldrsh r0, [r4, #0x56]
	add r0, r0, #1
	strh r0, [r4, #0x56]
	ldrh r0, [sp, #0x20]
	strh r0, [r4, #0x58]
	b _020bfa24
_020bf794:
	ldr r1, [r4, #0x40]
	mov r0, #0x18
	mul r2, r1, r0
	ldr r0, _020bff30 ; =data_ov00_020dd294
	ldr r1, [r4, #0x48]
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _020bfa24
	ldrsh r0, [r4, #0x56]
	cmp r0, #0
	bgt _020bfa24
	ldr r3, [sp, #0xe4]
	ldr r2, [sp, #0xe8]
	ldr r1, [sp, #0xec]
	ldr r7, _020bff2c ; =data_ov00_020e6f90
	mov r6, #0xf7
	mov r5, #0
	mov r0, r4
	str r7, [sp, #0x14]
	strh r6, [sp, #0x18]
	strb r5, [sp, #0x1a]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r1, [sp, #0xd4]
	mov fp, #1
	bl func_ov00_020be990
	add r5, sp, #0xc0
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr r2, [sp, #0xd0]
	ldr r8, [sp, #0xcc]
	ldr r1, [sp, #0xc0]
	ldr r0, _020bff40 ; =0x0000099a
	sub r5, r8, r1
	ldr lr, [sp, #0xd8]
	mov r3, #0
	umull r7, r6, r5, r0
	str r2, [sp, #0x34]
	adds r2, r7, #0x800
	ldr sl, _020bff24 ; =0x0000ffff
	add sb, sp, #0x114
	strh sl, [sb, #4]
	strh sl, [sb, #6]
	strh sl, [sb, #8]
	strh sl, [sb, #0xa]
	strh r3, [sb, #0xc]
	mla r6, r5, r3, r6
	mov sb, r5, asr #0x1f
	mla r6, sb, r0, r6
	ldr sl, [sp, #0xc8]
	ldr sb, [sp, #0xd4]
	adc r5, r6, #0
	mov r7, r2, lsr #0xc
	sub r1, lr, r1
	umull ip, r2, r1, r0
	orr r7, r7, r5, lsl #20
	sub r5, r8, r7
	sub r6, sb, sl
	umull r8, r7, r6, r0
	mla r2, r1, r3, r2
	mla r7, r6, r3, r7
	str r5, [sp, #0xcc]
	str r5, [sp, #0x30]
	mov r5, r1, asr #0x1f
	mla r2, r5, r0, r2
	mov r5, r6, asr #0x1f
	adds r6, r8, #0x800
	mla r7, r5, r0, r7
	adc r5, r7, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	sub r5, sb, r6
	adds r6, ip, #0x800
	ldr r1, [sp, #0xe0]
	adc r2, r2, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r2, lsl #20
	sub r2, lr, r6
	sub r6, r1, sl
	umull r8, r7, r6, r0
	mla r7, r6, r3, r7
	str r5, [sp, #0xd4]
	str r5, [sp, #0x38]
	mov r5, r6, asr #0x1f
	mla r7, r5, r0, r7
	adds r5, r8, #0x800
	adc r0, r7, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r0, lsl #20
	sub r1, r1, r5
	strb r3, [sp, #0x142]
	strb r3, [sp, #0x143]
	strb r3, [sp, #0x144]
	strb r3, [sp, #0x145]
	strb r3, [sp, #0x14c]
	strb r3, [sp, #0x14d]
	strb r3, [sp, #0x14e]
	strb r3, [sp, #0x14f]
	strb r3, [sp, #0x150]
	strb r3, [sp, #0x151]
	str r2, [sp, #0xd8]
	str r1, [sp, #0xe0]
	ldr r0, [sp, #0xdc]
	str r2, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0x800
	str r1, [sp, #0x2c]
	sub r0, r0, #0xcd
	str r0, [sp]
	mov r0, fp
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, _020bff3c ; =data_027e0e60
	add r1, sp, #0xf4
	ldr r0, [r0]
	add r2, sp, #0x30
	add r3, sp, #0x24
	bl func_01ffbf5c
	ldrb r0, [sp, #0x14e]
	cmp r0, #0
	beq _020bf9a0
	ldrsh r0, [r4, #0x56]
	add r0, r0, #1
	strh r0, [r4, #0x56]
	ldrh r0, [sp, #0x18]
	strh r0, [r4, #0x58]
	b _020bfa1c
_020bf9a0:
	ldrb r0, [sp, #0x14c]
	cmp r0, #0
	ldreqb r0, [sp, #0x14f]
	cmpeq r0, #0
	beq _020bfa1c
	add r0, sp, #0xcc
	add r1, sp, #0xd8
	add r2, sp, #0xb4
	bl func_01ff9bf8
	mov r0, r4
	bl func_ov00_020bf4f4
	cmp r0, #0
	beq _020bfa1c
	ldr r0, [sp, #0xb4]
	ldr r1, [sp, #0xbc]
	bl func_01ffa0f4
	mov r5, r0, lsl #0x10
	ldr r0, [sp, #0x100]
	ldr r1, [sp, #0x108]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	subs r0, r0, r5, asr #16
	rsbmi r0, r0, #0
	cmp r0, #0x4000
	ble _020bfa1c
	ldrsh r0, [r4, #0x56]
	add r0, r0, #1
	strh r0, [r4, #0x56]
	ldrh r0, [sp, #0x18]
	strh r0, [r4, #0x58]
_020bfa1c:
	add r0, sp, #0x14
	bl func_ov00_02081f4c
_020bfa24:
	ldr r0, [r4, #0x4c]
	add r1, sp, #0xa8
	sub r2, r0, #1
	mov r0, r4
	str r2, [r4, #0x4c]
	bl func_ov00_020be99c
	ldr r0, [r4, #0x40]
	cmp r0, #3
	bne _020bfacc
	ldr r0, _020bff44 ; =data_ov00_020dd268
	add r3, sp, #0x9c
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrsh r0, [r4, #4]
	mov r1, r3
	bl func_0202af4c
	add r1, sp, #0x9c
	add r0, sp, #0xa8
	mov r2, r1
	bl func_01ff9bc4
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _020bfb20
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0x9c]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0xa0]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0xa4]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
	b _020bfb20
_020bfacc:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _020bfb20
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0xa8]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0xac]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #0xb0]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
_020bfb20:
	mov r0, r4
	bl func_ov00_020bf028
	cmp r0, #0
	bne _020bfd10
	ldrsh r0, [r4, #0x54]
	cmp r0, #0
	ble _020bfc80
	ldr r0, _020bff48 ; =data_027e0fe4
	add r1, r4, #0x38
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	bne _020bfc78
	mov r0, r4
	bl func_ov00_020be990
	add r3, sp, #0x90
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x94]
	ldr r5, _020bff4c ; =data_02050f54
	add r0, r0, #0x800
	str r0, [sp, #0x94]
	ldrh r0, [r4, #4]
	ldr r1, _020bff50 ; =0x00000666
	mov r2, #0
	mov r0, r0, asr #0x4
	mov r6, r0, lsl #0x1
	mov r0, r6, lsl #0x1
	ldrsh r3, [r5, r0]
	add r0, r6, #1
	mov r0, r0, lsl #0x1
	ldrsh r5, [r5, r0]
	umull r0, r6, r3, r1
	adds r0, r0, #0x800
	mov r7, r0, lsr #0xc
	mla r6, r3, r2, r6
	mov r0, r3, asr #0x1f
	mla r6, r0, r1, r6
	adc r0, r6, #0
	ldr r8, [sp, #0x90]
	orr r7, r7, r0, lsl #20
	add r0, r8, r7
	umull r7, r6, r5, r1
	mla r6, r5, r2, r6
	mov r3, r5, asr #0x1f
	adds r2, r7, #0x800
	mla r6, r3, r1, r6
	str r0, [sp, #0x90]
	ldr r8, [sp, #0x98]
	adc r1, r6, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r8, r2
	add r0, sp, #0x64
	str r1, [sp, #0x98]
	bl func_ov00_020c1500
	mvn r0, #0
	str r0, [sp, #0x80]
	str r0, [sp, #0x84]
	add r0, sp, #0x64
	bl func_ov00_020c3348
	mov r0, #1
	str r0, [sp, #0x80]
	ldrsh r1, [r4, #4]
	add r5, r4, #0x38
	ldr r0, _020bff54 ; =data_027e0fe8
	strh r1, [sp, #0x78]
	ldrsh r3, [r4, #0x54]
	ldr r1, _020bff58 ; =0x5342454d
	add r2, sp, #0x90
	and r3, r3, #0xff
	strh r3, [sp, #0x64]
	ldr r6, [r4, #0x40]
	add r3, sp, #0x64
	and r6, r6, #0xff
	strh r6, [sp, #0x66]
	str r5, [sp]
	ldr r0, [r0]
	bl func_ov00_020c4048
	cmp r0, #0
	blt _020bfc78
	ldrsh r2, [r4, #4]
	ldr r0, _020bff5c ; =data_027e0ffc
	mov r1, #0xe8
	mov r3, #0
	bl func_ov00_020cebcc
_020bfc78:
	mov r0, #0
	strh r0, [r4, #0x54]
_020bfc80:
	ldrb r0, [r4, #0x6d]
	cmp r0, #0
	cmpne fp, #0
	beq _020bfd10
	ldr r0, _020bff60 ; =data_ov00_020ee588
	ldr r3, [sp, #0xcc]
	ldr r1, [r0]
	ldr r2, [sp, #0xd0]
	tst r1, #1
	orreq r1, r1, #1
	streq r1, [r0]
	ldr r1, [sp, #0xd4]
	ldr r0, _020bff64 ; =0x00000733
	str r3, [sp, #0x48]
	str r2, [sp, #0x4c]
	str r1, [sp, #0x50]
	str r0, [sp, #0x54]
	bl func_ov00_020bff70
	ldrsh r2, [r4, #4]
	add r1, sp, #0x48
	add r3, sp, #0x58
	bl func_ov14_0213dfbc
	cmp r0, #0
	beq _020bfd10
	ldr r0, [r4, #0x40]
	cmp r0, #3
	bne _020bfcfc
	ldr r1, [r4, #0x44]
	ldr r0, _020bff68 ; =0x00000b33
	cmp r1, r0
	bgt _020bfd10
_020bfcfc:
	bl func_ov00_020bff70
	add r1, sp, #0x48
	add r2, sp, #0x58
	mov r3, #0
	bl func_ov14_0213e144
_020bfd10:
	add r0, sp, #0x1c
	bl func_ov00_02081f4c
_020bfd18:
	ldr r0, _020bff6c ; =data_027e0d38
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	moveq r0, #0
	beq _020bfd40
	ldr r0, _020bff38 ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	bl _ZNK11ItemManager19GetActiveFairyLevelEi
_020bfd40:
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020bfd54
	bl func_ov00_020c0e04
_020bfd54:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _020bfd64
	bl func_ov00_020c0e04
_020bfd64:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _020bfd74
	bl func_ov00_020c0e04
_020bfd74:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _020bfd84
	bl func_ov00_020c0e04
_020bfd84:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _020bfdd8
	ldr r1, [r0, #0x20]
	ldr r2, [r4, #0x60]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [r4, #0x64]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [r4, #0x68]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
_020bfdd8:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _020bfe2c
	ldr r1, [r0, #0x20]
	ldr r2, [r4, #0x60]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [r4, #0x64]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [r4, #0x68]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
_020bfe2c:
	ldrsh r0, [r4, #0x5c]
	mov r2, #0
	cmp r0, #0
	ble _020bfe64
	ldr r1, [r4, #0x40]
	sub r0, r2, #1
	cmp r1, r0
	beq _020bfe64
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _020bfe64
	ldrb r0, [r4, #0x6e]
	cmp r0, #0
	movne r2, #1
_020bfe64:
	ldr r3, [r4, #0x30]
	cmp r3, #0
	beq _020bfe90
	cmp r2, #0
	moveq r0, #1
	ldr r1, [r3, #0x24]
	movne r0, #0
	mov r0, r0, lsl #0x1f
	bic r1, r1, #2
	orr r0, r1, r0, lsr #30
	str r0, [r3, #0x24]
_020bfe90:
	ldrsh r0, [r4, #0x5c]
	mov r1, #0
	cmp r0, #0
	ble _020bfeb8
	ldr r0, [r4, #0x50]
	cmp r0, #2
	bne _020bfeb8
	ldrb r0, [r4, #0x6e]
	cmp r0, #0
	movne r1, #1
_020bfeb8:
	ldr r2, [r4, #0x34]
	cmp r2, #0
	beq _020bfee4
	cmp r1, #0
	moveq r0, #1
	ldr r1, [r2, #0x24]
	movne r0, #0
	mov r0, r0, lsl #0x1f
	bic r1, r1, #2
	orr r0, r1, r0, lsr #30
	str r0, [r2, #0x24]
_020bfee4:
	ldr r1, [r4, #0x40]
	mvn r0, #0
	cmp r1, r0
	ldr r1, [r4, #0x34]
	bne _020bff04
	cmp r1, #0
	movne r0, #2
	b _020bff0c
_020bff04:
	cmp r1, #0
	movne r0, #6
_020bff0c:
	strneh r0, [r1, #0x74]
	ldr r0, [r4, #0x44]
	str r0, [r4, #0x48]
	add sp, sp, #0x1b4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020bf538
_020bff20: .word data_ov00_020dd290
_020bff24: .word 0x0000ffff
_020bff28: .word 0x000008a4
_020bff2c: .word data_ov00_020e6f90
_020bff30: .word data_ov00_020dd294
_020bff34: .word data_ov00_020eec9c
_020bff38: .word gItemManager
_020bff3c: .word data_027e0e60
_020bff40: .word 0x0000099a
_020bff44: .word data_ov00_020dd268
_020bff48: .word data_027e0fe4
_020bff4c: .word data_02050f54
_020bff50: .word 0x00000666
_020bff54: .word data_027e0fe8
_020bff58: .word 0x5342454d
_020bff5c: .word data_027e0ffc
_020bff60: .word data_ov00_020ee588
_020bff64: .word 0x00000733
_020bff68: .word 0x00000b33
_020bff6c: .word data_027e0d38

	.global func_ov00_020bff70
	arm_func_start func_ov00_020bff70
func_ov00_020bff70: ; 0x020bff70
	ldr ip, _020bff7c ; =func_01fffcec
	mov r0, #6
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020bff70
_020bff7c: .word func_01fffcec

	.global func_ov00_020bff80
	arm_func_start func_ov00_020bff80
func_ov00_020bff80: ; 0x020bff80
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020bff80

	.global func_ov00_020bff94
	arm_func_start func_ov00_020bff94
func_ov00_020bff94: ; 0x020bff94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x3c
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x24]
	blx r1
	cmp r0, #0
	beq _020c0190
	ldrsh r0, [r4, #0x5c]
	cmp r0, #0
	beq _020c00a0
	mov r3, #0x1d
	add r1, sp, #8
	mov r0, #0x14
	mov r2, #1
	str r3, [sp, #8]
	bl func_01ffa9fc
	add r0, sp, #0xc
	mov r1, #0
	bl func_0201b1bc
	ldr r0, _020c01d0 ; =data_ov00_020dd280
	add r1, sp, #0xc
	add r2, r4, #0x60
	bl func_01ff9158
	bl func_02018450
	mov r1, r0
	add r0, r4, #0x60
	mov r2, r0
	bl func_01ff9158
	ldr r0, _020c01d4 ; =gItemManager
	mov r1, #0x25
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	ldrsh r5, [r4, #0x5c]
	beq _020c0064
	ldr r0, [r4, #0x10]
	cmp r5, #0
	ldr r1, [r0]
	ble _020c0048
	ldr r1, [r1, #8]
	blx r1
	mov r1, r5
	bl func_020197fc
	b _020c0058
_020c0048:
	ldr r1, [r1, #8]
	blx r1
	mov r1, #0x1f
	bl func_020197fc
_020c0058:
	ldr r0, [r4, #0x10]
	bl func_ov00_020b41c4
	b _020c00a0
_020c0064:
	ldr r0, [r4, #0xc]
	cmp r5, #0
	ldr r1, [r0]
	ble _020c0088
	ldr r1, [r1, #8]
	blx r1
	mov r1, r5
	bl func_020197fc
	b _020c0098
_020c0088:
	ldr r1, [r1, #8]
	blx r1
	mov r1, #0x1f
	bl func_020197fc
_020c0098:
	ldr r0, [r4, #0xc]
	bl func_ov00_020b41c4
_020c00a0:
	ldrsh r0, [r4, #0x5c]
	cmp r0, #0
	ble _020c0148
	ldr r0, [r4, #0x50]
	cmp r0, #1
	beq _020c00c4
	cmp r0, #2
	beq _020c0108
	b _020c0148
_020c00c4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020c0148
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	beq _020c0148
	mov r0, #0x1d
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, #0x14
	mov r2, #1
	bl func_01ffa9fc
	ldr r0, [r4, #0x14]
	bl func_ov00_020b41c4
	b _020c0148
_020c0108:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020c0148
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	beq _020c0148
	mov r0, #0x1d
	str r0, [sp]
	add r1, sp, #0
	mov r0, #0x14
	mov r2, #1
	bl func_01ffa9fc
	ldr r0, [r4, #0x18]
	bl func_ov00_020b41c4
_020c0148:
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _020c0190
	ldr r0, _020c01d8 ; =data_027e0e5c
	ldrh r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r2, #0
	beq _020c0190
	cmp r0, #0
	moveq r0, #1
	ldr r1, [r2, #0x24]
	movne r0, #0
	mov r0, r0, lsl #0x1f
	bic r1, r1, #4
	orr r0, r1, r0, lsr #29
	str r0, [r2, #0x24]
_020c0190:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	cmp r0, #0
	beq _020c01b8
	ldrsh r0, [r4, #0x5c]
	cmp r0, #0
	movgt r0, #1
	bgt _020c01bc
_020c01b8:
	mov r0, #0
_020c01bc:
	strb r0, [r4, #0x6e]
	mov r0, #0x1f
	strh r0, [r4, #0x5c]
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020bff94
_020c01d0: .word data_ov00_020dd280
_020c01d4: .word gItemManager
_020c01d8: .word data_027e0e5c

	.global func_ov00_020c01dc
	arm_func_start func_ov00_020c01dc
func_ov00_020c01dc: ; 0x020c01dc
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r2, [r5, #0x4c]
	mov r4, r1
	cmp r2, #0
	addle sp, sp, #0xc
	movle r0, #0
	ldmleia sp!, {r4, r5, pc}
	bl func_ov00_020be990
	ldr r2, [r0, #8]
	ldmia r0, {r1, r3}
	stmia r4, {r1, r3}
	str r2, [r4, #8]
	ldr r2, [r5, #0x44]
	mov r0, r5
	mov r1, r4
	bl func_ov00_020c0550
	ldr r1, [r5, #0x40]
	mov r0, #0x18
	mul r2, r1, r0
	ldr r1, _020c0248 ; =data_ov00_020dd290
	mov r0, #1
	ldr r1, [r1, r2]
	str r1, [r4, #0xc]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c01dc
_020c0248: .word data_ov00_020dd290

	.global func_ov00_020c024c
	arm_func_start func_ov00_020c024c
func_ov00_020c024c: ; 0x020c024c
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #0x40]
	mov r3, #0x18
	mul r3, r4, r3
	ldr r4, _020c0308 ; =data_ov00_020dd2a0
	ldr r5, _020c030c ; =data_ov00_020dd29c
	ldr ip, [r4, r3]
	ldr r4, _020c0310 ; =data_ov00_020dd28c
	smull lr, ip, r2, ip
	adds r2, lr, #0x800
	ldrsh r6, [r0, #4]
	ldr lr, [r5, r3]
	adc r0, ip, #0
	mov r2, r2, lsr #0xc
	add r5, r6, lr
	orr r2, r2, r0, lsl #20
	add r0, r5, r2
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r2, r0, lsl #0x1
	add r0, r2, #1
	ldr ip, _020c0314 ; =data_02050f54
	mov r2, r2, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrsh r2, [ip, r2]
	ldr r4, [r4, r3]
	ldrsh r0, [ip, r0]
	smull r3, ip, r2, r4
	adds lr, r3, #0x800
	smull r3, r2, r0, r4
	adc r0, ip, #0
	adds r3, r3, #0x800
	mov ip, lr, lsr #0xc
	ldr lr, [r1]
	orr ip, ip, r0, lsl #20
	add r0, lr, ip
	str r0, [r1]
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	ldr r3, [r1, #8]
	orr r2, r2, r0, lsl #20
	add r0, r3, r2
	str r0, [r1, #8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c024c
_020c0308: .word data_ov00_020dd2a0
_020c030c: .word data_ov00_020dd29c
_020c0310: .word data_ov00_020dd28c
_020c0314: .word data_02050f54

	.global func_ov00_020c0318
	arm_func_start func_ov00_020c0318
func_ov00_020c0318: ; 0x020c0318
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, [r0, #0x40]
	mov r4, r1
	add r5, r3, #1
	cmp r5, #9
	addls pc, pc, r5, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_020c0334: ; jump table
	ldmia sp!, {r3, r4, r5, pc} ; case 0
	b _020c035c ; case 1
	b _020c0434 ; case 2
	b _020c0434 ; case 3
	b _020c044c ; case 4
	b _020c035c ; case 5
	b _020c0524 ; case 6
	b _020c0524 ; case 7
	b _020c0524 ; case 8
	b _020c0524 ; case 9
_020c035c:
	mov r1, #0x18
	mul r1, r3, r1
	ldr r3, _020c053c ; =data_ov00_020dd2a0
	rsb r5, r2, #0x800
	ldr r2, [r3, r1]
	ldr r3, _020c0540 ; =data_ov00_020dd28c
	smull ip, r2, r5, r2
	adds r5, ip, #0x800
	adc r2, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r2, r5, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #0x4
	mov r2, r2, lsl #0x1
	add r2, r2, #1
	ldrh ip, [r0, #4]
	ldr r0, [r3, r1]
	ldr r5, _020c0544 ; =data_02050f54
	mov r2, r2, lsl #0x1
	ldrsh r2, [r5, r2]
	mov r1, ip, asr #0x4
	mov lr, r1, lsl #0x1
	smull r0, r3, r2, r0
	adds ip, r0, #0x800
	mov r1, lr, lsl #0x1
	add r0, lr, #1
	mov r0, r0, lsl #0x1
	ldrsh r1, [r5, r1]
	adc r2, r3, #0
	mov ip, ip, lsr #0xc
	orr ip, ip, r2, lsl #20
	smull r3, r2, r1, ip
	adds r1, r3, #0x800
	ldrsh r0, [r5, r0]
	adc r3, r2, #0
	mov r5, r1, lsr #0xc
	smull r2, r1, r0, ip
	ldr r0, [r4]
	orr r5, r5, r3, lsl #20
	add r0, r0, r5
	adds r2, r2, #0x800
	str r0, [r4]
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	ldr r2, [r4, #8]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #0x66
	add r0, r0, #0xa00
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
_020c0434:
	bl func_ov00_020c024c
	ldr r0, [r4, #4]
	add r0, r0, #0x9a
	add r0, r0, #0x900
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
_020c044c:
	mov r1, #0x18
	mul r5, r3, r1
	ldr ip, _020c0548 ; =0x00000b33
	cmp r2, ip
	bge _020c0484
	ldr r1, _020c0540 ; =data_ov00_020dd28c
	ldr r3, _020c054c ; =0x5b6f58d9
	ldr r1, [r1, r5]
	mul r5, r2, r1
	smull r1, r2, r3, r5
	mov r1, r5, lsr #0x1f
	add r2, r1, r2, asr #10
	add r1, r2, #0x66
	b _020c04a8
_020c0484:
	ldr r3, _020c0540 ; =data_ov00_020dd28c
	rsb r1, r2, ip, lsl #1
	ldr r3, [r3, r5]
	ldr r2, _020c054c ; =0x5b6f58d9
	mul r5, r3, r1
	smull r1, r3, r2, r5
	mov r1, r5, lsr #0x1f
	add r3, r1, r3, asr #10
	add r1, r3, #0x66
_020c04a8:
	ldrh r2, [r0, #4]
	ldr ip, _020c0544 ; =data_02050f54
	add r1, r1, #0x200
	mov r2, r2, asr #0x4
	mov r5, r2, lsl #0x1
	mov r2, r5, lsl #0x1
	ldrsh r3, [ip, r2]
	add r2, r5, #1
	mov r2, r2, lsl #0x1
	smull r5, lr, r3, r1
	adds r3, r5, #0x800
	ldrsh r2, [ip, r2]
	mov ip, r3, lsr #0xc
	adc r5, lr, #0
	smull r3, r1, r2, r1
	ldr r0, [r4]
	orr ip, ip, r5, lsl #20
	add r0, r0, ip
	adds r2, r3, #0x800
	str r0, [r4]
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	ldr r2, [r4, #8]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #0x9a
	add r0, r0, #0x900
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
_020c0524:
	bl func_ov00_020c024c
	ldr r0, [r4, #4]
	add r0, r0, #0xcd
	add r0, r0, #0x800
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c0318
_020c053c: .word data_ov00_020dd2a0
_020c0540: .word data_ov00_020dd28c
_020c0544: .word data_02050f54
_020c0548: .word 0x00000b33
_020c054c: .word 0x5b6f58d9

	.global func_ov00_020c0550
	arm_func_start func_ov00_020c0550
func_ov00_020c0550: ; 0x020c0550
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl func_ov00_020c0318
	ldr r1, [r6, #0x40]
	cmp r1, #0
	cmpne r1, #4
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0x18
	mul r0, r1, r0
	ldr r1, _020c05e0 ; =data_ov00_020dd2a0
	rsb r3, r5, #0x800
	ldr r1, [r1, r0]
	ldr r2, _020c05e4 ; =data_ov00_020dd28c
	smull ip, r1, r3, r1
	adds r3, ip, #0x800
	adc r1, r1, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r1, lsl #20
	mov r1, r3, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, r1, asr #0x4
	ldr r1, _020c05e8 ; =data_02050f54
	mov r3, r3, lsl #0x2
	ldrsh r1, [r1, r3]
	ldr r0, [r2, r0]
	ldr r3, [r4, #4]
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c0550
_020c05e0: .word data_ov00_020dd2a0
_020c05e4: .word data_ov00_020dd28c
_020c05e8: .word data_02050f54

	.global func_ov00_020c05ec
	arm_func_start func_ov00_020c05ec
func_ov00_020c05ec: ; 0x020c05ec
	str r1, [r0, #0x44]
	ldr r2, [r0, #0x40]
	mvn r1, #0
	cmp r2, r1
	beq _020c0634
	mov r1, #0x18
	mul r3, r2, r1
	ldr r1, _020c0640 ; =data_ov00_020dd294
	ldr r2, [r0, #0x44]
	ldrsh r1, [r1, r3]
	cmp r1, r2
	bgt _020c0634
	ldr r1, _020c0644 ; =data_ov00_020dd296
	ldrsh r1, [r1, r3]
	cmp r2, r1
	movlt r1, #3
	strlt r1, [r0, #0x4c]
	bxlt lr
_020c0634:
	mov r1, #0
	str r1, [r0, #0x4c]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c05ec
_020c0640: .word data_ov00_020dd294
_020c0644: .word data_ov00_020dd296

	.global func_ov00_020c0648
	arm_func_start func_ov00_020c0648
func_ov00_020c0648: ; 0x020c0648
	mov r2, r0
	mov r1, #0
	str r1, [r2, #0x44]
	str r1, [r2, #0x4c]
	ldr r0, _020c066c ; =data_027e0e58
	ldr ip, _020c0670 ; =func_ov00_0207c444
	ldr r0, [r0]
	add r1, r2, #0x2c
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c0648
_020c066c: .word data_027e0e58
_020c0670: .word func_ov00_0207c444

	.global func_ov00_020c0674
	arm_func_start func_ov00_020c0674
func_ov00_020c0674: ; 0x020c0674
	stmdb sp!, {r4, lr}
	ldr r1, _020c06a8 ; =gItemManager
	mov r4, r0
	ldr r0, [r1]
	mov r1, #1
	bl _ZNK11ItemManager19GetActiveFairyLevelEi
	ldr r2, [r4, #0x40]
	mov r1, #0x18
	mul r3, r2, r1
	ldr r1, _020c06ac ; =data_ov00_020dd298
	ldrh r1, [r1, r3]
	add r0, r1, r0, lsl #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c0674
_020c06a8: .word gItemManager
_020c06ac: .word data_ov00_020dd298

	.global func_ov00_020c06b0
	arm_func_start func_ov00_020c06b0
func_ov00_020c06b0: ; 0x020c06b0
	str r1, [r0, #0x40]
	bx lr
	arm_func_end func_ov00_020c06b0

	.global func_ov00_020c06b8
	arm_func_start func_ov00_020c06b8
func_ov00_020c06b8: ; 0x020c06b8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c06b8

	.global func_ov00_020c06d4
	arm_func_start func_ov00_020c06d4
func_ov00_020c06d4: ; 0x020c06d4
	bx lr
	arm_func_end func_ov00_020c06d4

	.global func_ov00_020c06d8
	arm_func_start func_ov00_020c06d8
func_ov00_020c06d8: ; 0x020c06d8
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c06d8

	.global func_ov00_020c06e0
	arm_func_start func_ov00_020c06e0
func_ov00_020c06e0: ; 0x020c06e0
	stmdb sp!, {r3, lr}
	ldr r1, _020c0708 ; =data_027e0fb8
	ldr r1, [r1]
	ldrb r1, [r1, #0x79]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r1, #1
	bl func_ov00_020be8e4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c06e0
_020c0708: .word data_027e0fb8

	.global func_ov00_020c070c
	arm_func_start func_ov00_020c070c
func_ov00_020c070c: ; 0x020c070c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, [r0]
	mov r6, r1
	ldr ip, [ip, #0x14]
	mov r7, r0
	mov r1, #1
	mov r5, r2
	mov r4, r3
	blx ip
	strb r0, [r7, #0xb]
	str r4, [r7, #0x18]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6, lsl #0x10
	ldr r0, _020c0768 ; =data_027e0ffc
	mov r2, r5
	mov r1, r1, lsr #0x10
	mov r3, #0
	bl func_ov00_020ceacc
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c070c
_020c0768: .word data_027e0ffc

	.global func_ov00_020c076c
	thumb_func_start func_ov00_020c076c
func_ov00_020c076c: ; 0x020c076c
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020c076c

	.global func_ov00_020c0770
	arm_func_start func_ov00_020c0770
func_ov00_020c0770: ; 0x020c0770
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl func_ov00_020c0e24
	mov r1, #0
	strb r1, [r4, #0xb]
	ldr r0, _020c07f4 ; =gItemManager
	mov r1, #2
	ldr r0, [r0]
	bl _ZNK11ItemManager19GetActiveFairyLevelEi
	cmp r0, #1
	movge r1, #1
	ldrb r0, [r4, #0xc]
	movlt r1, #0
	orrs r0, r0, r1
	movne r0, #1
	moveq r0, #0
	strb r0, [r4, #0xc]
	tst r0, #0xff
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl func_ov00_020c0e24
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl func_ov00_020c0e24
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl func_ov00_020c0e24
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c0770
_020c07f4: .word gItemManager

	.global func_ov00_020c07f8
	arm_func_start func_ov00_020c07f8
func_ov00_020c07f8: ; 0x020c07f8
	mov r1, #0
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end func_ov00_020c07f8

	.global func_ov00_020c0804
	arm_func_start func_ov00_020c0804
func_ov00_020c0804: ; 0x020c0804
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	bl func_ov00_020c0e04
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _020c0860
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _020c0860
	ldr r0, [r4, #0x20]
	add r0, r0, #0xc
	bl func_0202e58c
	cmp r0, #0
	movne r0, #0
	strneb r0, [r4, #0xc]
	bne _020c0860
	ldr r0, [r4, #0x20]
	bl func_ov00_020c0e04
	ldr r0, [r4, #0x24]
	bl func_ov00_020c0e04
	ldr r0, [r4, #0x28]
	bl func_ov00_020c0e04
_020c0860:
	mov r0, #0
	strb r0, [r4, #9]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c0804

	.global func_ov00_020c086c
	arm_func_start func_ov00_020c086c
func_ov00_020c086c: ; 0x020c086c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x44
	mov r4, r0
	bl func_ov00_020beb30
	cmp r0, #0
	ble _020c0a60
	ldr r0, _020c0a70 ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	ldrneb r0, [r4, #0xd]
	cmpne r0, #0
	ldrnesh r0, [r4, #0xe]
	cmpne r0, #0
	beq _020c0a60
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	cmp r0, #0
	mov r0, #0x14
	mov r2, #1
	beq _020c08e0
	mov r3, #0x1e
	add r1, sp, #4
	str r3, [sp, #4]
	bl func_01ffa9fc
	b _020c0934
_020c08e0:
	mov r3, #0x1c
	add r1, sp, #0
	str r3, [sp]
	bl func_01ffa9fc
	ldr r2, _020c0a74 ; =data_02053f54
	add r0, sp, #0x20
	ldrsh r1, [r2]
	ldrsh r2, [r2, #2]
	blx func_01ff8230
	add r1, sp, #0x20
	mov r0, #0x1a
	mov r2, #9
	bl func_01ffa9fc
	ldr r0, _020c0a78 ; =data_ov00_020dd364
	add r3, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r1, r3
	mov r0, #0x1c
	mov r2, #3
	bl func_01ffa9fc
_020c0934:
	add r0, sp, #8
	bl func_ov00_020b1d3c
	ldrsh r5, [r4, #0xe]
	ldr r0, [r4, #0x10]
	cmp r5, #0
	ldr r1, [r0]
	blt _020c0964
	ldr r1, [r1, #8]
	blx r1
	mov r1, r5
	bl func_020197fc
	b _020c0974
_020c0964:
	ldr r1, [r1, #8]
	blx r1
	mov r1, #0x1f
	bl func_020197fc
_020c0974:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	cmp r0, #0
	bne _020c0998
	ldrsh r0, [r4, #0xe]
	cmp r0, #0x1f
	blt _020c09a4
_020c0998:
	ldrsh r0, [r4, #0xe]
	cmp r0, #0
	bne _020c09b8
_020c09a4:
	ldr r1, _020c0a7c ; =data_027e03c8
	mov r0, #0x17
	mov r2, #0xc
	bl func_01ffa9fc
	b _020c09c0
_020c09b8:
	ldr r0, [r4, #0x10]
	bl func_ov00_020b41c4
_020c09c0:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _020c0a60
	ldrh r1, [r4, #4]
	ldr r2, _020c0a80 ; =data_02050f54
	ldr r0, _020c0a84 ; =0x00000333
	mov r1, r1, asr #0x4
	mov r3, r1, lsl #0x1
	mov r1, r3, lsl #0x1
	ldrsh lr, [r2, r1]
	add r1, r3, #1
	mov r1, r1, lsl #0x1
	ldrsh r2, [r2, r1]
	umull r6, r5, lr, r0
	mov r1, #0
	mla r5, lr, r1, r5
	umull ip, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mov lr, lr, asr #0x1f
	adds r6, r6, #0x800
	mla r5, lr, r0, r5
	adc r5, r5, #0
	mov r6, r6, lsr #0xc
	mla r3, r1, r0, r3
	adds ip, ip, #0x800
	ldr r2, [sp, #8]
	orr r6, r6, r5, lsl #20
	adc r0, r3, #0
	add r3, r2, r6
	mov r1, ip, lsr #0xc
	ldr r2, [sp, #0x10]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r3, [sp, #8]
	str r0, [sp, #0x10]
	ldrsh r1, [r4, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #8
	bl func_ov00_020b413c
_020c0a60:
	mov r0, #0x1f
	strh r0, [r4, #0xe]
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c086c
_020c0a70: .word gItemManager
_020c0a74: .word data_02053f54
_020c0a78: .word data_ov00_020dd364
_020c0a7c: .word data_027e03c8
_020c0a80: .word data_02050f54
_020c0a84: .word 0x00000333

	.global func_ov00_020c0a88
	arm_func_start func_ov00_020c0a88
func_ov00_020c0a88: ; 0x020c0a88
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r1
	add r1, sp, #0
	mov r5, r0
	bl func_ov00_020be99c
	ldrb r0, [r5, #9]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r5, #4]
	ldr r2, _020c0b5c ; =data_02050f54
	ldr r3, _020c0b60 ; =0x0000019a
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x2
	ldrsh r0, [r2, r0]
	mov ip, #0
	ldr lr, [sp]
	umull r6, r1, r0, r3
	mla r1, r0, ip, r1
	mov r0, r0, asr #0x1f
	mla r1, r0, r3, r1
	adds r6, r6, #0x800
	adc r0, r1, #0
	mov r1, r6, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, lr, r1
	str r0, [r4]
	ldr r0, [sp, #4]
	rsb lr, r3, #0x800
	str r0, [r4, #4]
	ldrh r5, [r5, #4]
	ldr r1, [sp, #8]
	mov r0, #1
	mov r5, r5, asr #0x4
	mov r5, r5, lsl #0x1
	add r5, r5, #1
	mov r5, r5, lsl #0x1
	ldrsh r2, [r2, r5]
	umull r6, r5, r2, r3
	mla r5, r2, ip, r5
	mov r2, r2, asr #0x1f
	mla r5, r2, r3, r5
	adds r6, r6, #0x800
	adc r2, r5, #0
	mov r3, r6, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r1, r1, r3
	str r1, [r4, #8]
	str lr, [r4, #0xc]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c0a88
_020c0b5c: .word data_02050f54
_020c0b60: .word 0x0000019a

	.global func_ov00_020c0b64
	arm_func_start func_ov00_020c0b64
func_ov00_020c0b64: ; 0x020c0b64
	stmdb sp!, {r4, lr}
	ldr r1, _020c0b9c ; =data_027e0fe0
	mov r0, #0x294
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	movs r4, r0
	beq _020c0b94
	blx func_ov04_02107810
	ldr r0, _020c0ba0 ; =data_ov00_020e70a0
	str r0, [r4]
_020c0b94:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c0b64
_020c0b9c: .word data_027e0fe0
_020c0ba0: .word data_ov00_020e70a0

	.global func_ov00_020c0ba4
	arm_func_start func_ov00_020c0ba4
func_ov00_020c0ba4: ; 0x020c0ba4
	mov r0, #2
	bx lr
	arm_func_end func_ov00_020c0ba4

	.global func_ov00_020c0bac
	arm_func_start func_ov00_020c0bac
func_ov00_020c0bac: ; 0x020c0bac
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov04_02107994
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c0bac

	.global func_ov00_020c0bc8
	arm_func_start func_ov00_020c0bc8
func_ov00_020c0bc8: ; 0x020c0bc8
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov04_02107994
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c0bc8

	.global func_ov00_020c0bdc
	arm_func_start func_ov00_020c0bdc
func_ov00_020c0bdc: ; 0x020c0bdc
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #8]
	mov r5, r0
	mov r1, #0x10
	blx r2
	ldr r0, [r5, #8]
	mov r1, r4
	bl func_0201e544
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c0bdc

	.global func_ov00_020c0c08
	thumb_func_start func_ov00_020c0c08
func_ov00_020c0c08: ; 0x020c0c08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020c0c2c ; =data_ov00_020e7198
	str r0, [r4]
	str r1, [r4, #4]
	add r0, r4, #0
	str r2, [r4, #8]
	add r0, #0xc
	blx func_0202e1a0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020c0c26
	mov r0, #0
	str r0, [r1, #8]
_020c0c26:
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020c0c08
_020c0c2c: .word data_ov00_020e7198

	.global func_ov00_020c0c30
	thumb_func_start func_ov00_020c0c30
func_ov00_020c0c30: ; 0x020c0c30
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020c0c30

	.global func_ov00_020c0c34
	thumb_func_start func_ov00_020c0c34
func_ov00_020c0c34: ; 0x020c0c34
	push {r4, lr}
	add r4, r0, #0
	blx _ZN9SysObjectdlEPv
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end func_ov00_020c0c34

	.global func_ov00_020c0c40
	thumb_func_start func_ov00_020c0c40
func_ov00_020c0c40: ; 0x020c0c40
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020c0c40

	.global func_ov00_020c0c44
	arm_func_start func_ov00_020c0c44
func_ov00_020c0c44: ; 0x020c0c44
	stmdb sp!, {r3, lr}
	ldr r2, [r1, #8]
	tst r2, #2
	mov r2, #0
	beq _020c0c64
	mov r3, r2
	bl func_ov00_020c0cc8
	ldmia sp!, {r3, pc}
_020c0c64:
	mov r3, #1
	bl func_ov00_020c0cc8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c0c44

	.global func_ov00_020c0c70
	arm_func_start func_ov00_020c0c70
func_ov00_020c0c70: ; 0x020c0c70
	stmdb sp!, {r3, lr}
	ldrh r2, [r1, #6]
	tst r2, #2
	mov r2, #0
	beq _020c0c90
	mov r3, r2
	bl func_ov00_020c0cc8
	ldmia sp!, {r3, pc}
_020c0c90:
	mov r3, #1
	bl func_ov00_020c0cc8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c0c70

	.global func_ov00_020c0c9c
	arm_func_start func_ov00_020c0c9c
func_ov00_020c0c9c: ; 0x020c0c9c
	stmdb sp!, {r3, lr}
	ldrb r2, [r1, #6]
	tst r2, #2
	mov r2, #0
	beq _020c0cbc
	mov r3, r2
	bl func_ov00_020c0cc8
	ldmia sp!, {r3, pc}
_020c0cbc:
	mov r3, #1
	bl func_ov00_020c0cc8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c0c9c

	.global func_ov00_020c0cc8
	arm_func_start func_ov00_020c0cc8
func_ov00_020c0cc8: ; 0x020c0cc8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r3
	mov ip, r2
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r3, ip
	ldmib r5, {r0, r2}
	bl func_020188d4
	mov r0, r5
	bl func_ov00_020c0d54
	mov r1, r0
	cmp r4, #1
	subeq r1, r1, #0x1000
	add r0, r5, #0xc
	bl func_0202e1c4
	strh r4, [r5, #0xc]
	ldr r1, [r5, #0x18]
	mov r0, r5
	bl func_ov00_020c0e24
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c0cc8

	.global func_ov00_020c0d1c
	arm_func_start func_ov00_020c0d1c
func_ov00_020c0d1c: ; 0x020c0d1c
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #4]
	mov r5, r0
	ldr r0, [r1, #8]
	ldr r1, [r5, #8]
	bl func_02018884
	mov r2, r0
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl func_02007984
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c0d1c

	.global func_ov00_020c0d4c
	arm_func_start func_ov00_020c0d4c
func_ov00_020c0d4c: ; 0x020c0d4c
	ldr r0, [r0, #4]
	bx lr
	arm_func_end func_ov00_020c0d4c

	.global func_ov00_020c0d54
	arm_func_start func_ov00_020c0d54
func_ov00_020c0d54: ; 0x020c0d54
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	mov r0, r0, lsl #0xc
	bx lr
	arm_func_end func_ov00_020c0d54

	.global func_ov00_020c0d68
	arm_func_start func_ov00_020c0d68
func_ov00_020c0d68: ; 0x020c0d68
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end func_ov00_020c0d68

	.global func_ov00_020c0d70
	arm_func_start func_ov00_020c0d70
func_ov00_020c0d70: ; 0x020c0d70
	mov r3, r0
	ldr r0, [r3, #4]
	mov r2, #0
	str r2, [r0, #0x10]
	mov r0, r1
	ldr ip, _020c0d90 ; =func_02018b50
	ldr r1, [r3, #4]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c0d70
_020c0d90: .word func_02018b50

	.global func_ov00_020c0d94
	arm_func_start func_ov00_020c0d94
func_ov00_020c0d94: ; 0x020c0d94
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	ldr r1, [r2, #8]
	cmp r1, #0
	moveq r4, #0x1000
	beq _020c0dfc
	ldrh r1, [r5, #0xc]
	cmp r1, #0
	beq _020c0de0
	bl func_ov00_020c0d54
	sub r0, r0, #0x1000
	cmp r4, r0
	blt _020c0de0
	mov r0, r5
	bl func_ov00_020c0d54
	sub r4, r0, #0x1000
	b _020c0dfc
_020c0de0:
	mov r0, r5
	bl func_ov00_020c0d54
	cmp r4, r0
	blt _020c0dfc
	mov r0, r5
	bl func_ov00_020c0d54
	mov r4, r0
_020c0dfc:
	str r4, [r5, #0x1c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c0d94

	.global func_ov00_020c0e04
	arm_func_start func_ov00_020c0e04
func_ov00_020c0e04: ; 0x020c0e04
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl func_0202e1e8
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #4]
	str r1, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c0e04

	.global func_ov00_020c0e24
	arm_func_start func_ov00_020c0e24
func_ov00_020c0e24: ; 0x020c0e24
	ldr r2, [r0, #0x18]
	cmp r1, r2
	movlt r1, r2
	blt _020c0e40
	ldr r2, [r0, #0x1c]
	cmp r1, r2
	movgt r1, r2
_020c0e40:
	str r1, [r0, #0x14]
	mov r1, #0
	strh r1, [r0, #0xe]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #4]
	str r1, [r0]
	bx lr
	arm_func_end func_ov00_020c0e24

	.global func_ov00_020c0e5c
	arm_func_start func_ov00_020c0e5c
func_ov00_020c0e5c: ; 0x020c0e5c
	stmdb sp!, {r3, lr}
	ldrh r2, [r0, #0xc]
	cmp r2, r1
	ldmeqia sp!, {r3, pc}
	strh r1, [r0, #0xc]
	cmp r1, #0
	ldr r1, [r0, #0x1c]
	bne _020c0e88
	add r1, r1, #0x1000
	bl func_ov00_020c0d94
	ldmia sp!, {r3, pc}
_020c0e88:
	sub r1, r1, #0x1000
	bl func_ov00_020c0d94
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c0e5c

	.global func_ov00_020c0e94
	arm_func_start func_ov00_020c0e94
func_ov00_020c0e94: ; 0x020c0e94
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x19]
	bx lr
	arm_func_end func_ov00_020c0e94

	.global func_ov00_020c0ea0
	arm_func_start func_ov00_020c0ea0
func_ov00_020c0ea0: ; 0x020c0ea0
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldr r0, [r0, #4]
	beq _020c0eb8
	bl func_02018964
	ldmia sp!, {r3, pc}
_020c0eb8:
	bl func_020189a0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c0ea0

	.global func_ov00_020c0ec0
	arm_func_start func_ov00_020c0ec0
func_ov00_020c0ec0: ; 0x020c0ec0
	add r0, r0, #0x100
	strh r1, [r0, #0x80]
	bx lr
	arm_func_end func_ov00_020c0ec0

	.global func_ov00_020c0ecc
	arm_func_start func_ov00_020c0ecc
func_ov00_020c0ecc: ; 0x020c0ecc
	str r1, [r0, #0x188]
	str r2, [r0, #0x18c]
	ldr r1, [sp]
	str r3, [r0, #0x190]
	str r1, [r0, #0x194]
	ldr r1, [r0, #0x190]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _020c0f6c
_020c0ef0: ; jump table
	b _020c0f10 ; case 0
	b _020c0f1c ; case 1
	b _020c0f28 ; case 2
	b _020c0f34 ; case 3
	b _020c0f40 ; case 4
	b _020c0f4c ; case 5
	b _020c0f58 ; case 6
	b _020c0f64 ; case 7
_020c0f10:
	mov r1, #0x8000
	str r1, [r0, #0x198]
	b _020c0f6c
_020c0f1c:
	mov r1, #0x10000
	str r1, [r0, #0x198]
	b _020c0f6c
_020c0f28:
	mov r1, #0x20000
	str r1, [r0, #0x198]
	b _020c0f6c
_020c0f34:
	mov r1, #0x40000
	str r1, [r0, #0x198]
	b _020c0f6c
_020c0f40:
	mov r1, #0x80000
	str r1, [r0, #0x198]
	b _020c0f6c
_020c0f4c:
	mov r1, #0x100000
	str r1, [r0, #0x198]
	b _020c0f6c
_020c0f58:
	mov r1, #0x200000
	str r1, [r0, #0x198]
	b _020c0f6c
_020c0f64:
	mov r1, #0x400000
	str r1, [r0, #0x198]
_020c0f6c:
	ldr r1, [r0, #0x194]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	bx lr
_020c0f7c: ; jump table
	b _020c0f9c ; case 0
	b _020c0fa8 ; case 1
	b _020c0fb4 ; case 2
	b _020c0fc0 ; case 3
	b _020c0fcc ; case 4
	b _020c0fd8 ; case 5
	b _020c0fe4 ; case 6
	b _020c0ff0 ; case 7
_020c0f9c:
	mov r1, #0x8000
	str r1, [r0, #0x19c]
	bx lr
_020c0fa8:
	mov r1, #0x10000
	str r1, [r0, #0x19c]
	bx lr
_020c0fb4:
	mov r1, #0x20000
	str r1, [r0, #0x19c]
	bx lr
_020c0fc0:
	mov r1, #0x40000
	str r1, [r0, #0x19c]
	bx lr
_020c0fcc:
	mov r1, #0x80000
	str r1, [r0, #0x19c]
	bx lr
_020c0fd8:
	mov r1, #0x100000
	str r1, [r0, #0x19c]
	bx lr
_020c0fe4:
	mov r1, #0x200000
	str r1, [r0, #0x19c]
	bx lr
_020c0ff0:
	mov r1, #0x400000
	str r1, [r0, #0x19c]
	bx lr
	arm_func_end func_ov00_020c0ecc

	.global func_ov00_020c0ffc
	arm_func_start func_ov00_020c0ffc
func_ov00_020c0ffc: ; 0x020c0ffc
	stmdb sp!, {r3, r4, r5, lr}
	add ip, r0, #0x100
	ldrh r4, [ip, #0x82]
	mov r3, #0x18
	ldr lr, [r1]
	mul r5, r4, r3
	str lr, [r0, r5]
	ldr lr, [r1, #4]
	add r4, r0, r5
	str lr, [r4, #4]
	ldr r1, [r1, #8]
	str r1, [r4, #8]
	ldrh lr, [ip, #0x82]
	ldr r1, [r2]
	mla r3, lr, r3, r0
	str r1, [r3, #0xc]
	ldr r1, [r2, #4]
	add r0, r0, #0x100
	str r1, [r3, #0x10]
	ldr r1, [r2, #8]
	str r1, [r3, #0x14]
	ldrh r1, [ip, #0x82]
	add r1, r1, #1
	strh r1, [ip, #0x82]
	ldrh r2, [ip, #0x82]
	ldrh r1, [ip, #0x80]
	cmp r2, r1
	movhs r1, #0
	strhsh r1, [ip, #0x82]
	ldrh r2, [r0, #0x84]
	ldrh r1, [r0, #0x82]
	cmp r2, r1
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r2, #1
	strh r1, [r0, #0x84]
	ldrh r2, [r0, #0x84]
	ldrh r1, [r0, #0x80]
	cmp r2, r1
	movhs r1, #0
	strhsh r1, [r0, #0x84]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c0ffc

	.global func_ov00_020c10a0
	arm_func_start func_ov00_020c10a0
func_ov00_020c10a0: ; 0x020c10a0
	add r0, r0, #0x100
	ldrh r2, [r0, #0x84]
	ldrh r1, [r0, #0x82]
	cmp r2, r1
	bxeq lr
	add r1, r2, #1
	strh r1, [r0, #0x84]
	ldrh r2, [r0, #0x84]
	ldrh r1, [r0, #0x80]
	cmp r2, r1
	movhs r1, #0
	strhsh r1, [r0, #0x84]
	bx lr
	arm_func_end func_ov00_020c10a0

	.global func_ov00_020c10d4
	arm_func_start func_ov00_020c10d4
func_ov00_020c10d4: ; 0x020c10d4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	mov r5, r0
	add r0, r5, #0x100
	ldrh r3, [r0, #0x82]
	ldrh r2, [r0, #0x84]
	mov r8, r1
	subs r1, r3, r2
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r1, #0
	ldrlth r0, [r0, #0x80]
	addlt r1, r1, r0
	cmp r1, #2
	addlt sp, sp, #0x44
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r5, #0x100
	ldrh r0, [r0, #0x80]
	mov r6, r0
	cmp r1, r0
	movlt r6, r1
	subs r7, r3, r6
	addmi r7, r7, r0
	ldr r0, [r5, #0x198]
	sub r1, r6, #1
	bl func_02002c14
	mov r1, #0
	str r0, [sp]
	mov r2, r1
	mov r0, #0x11
	bl func_01ffa9fc
	mov r0, #0x18
	mla r1, r7, r0, r5
	ldr r0, _020c141c ; =data_027e0d44
	add r3, sp, #0x38
	ldr sb, [r0]
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r5, #0x188]
	ldr r2, [r5, #0x18c]
	add r1, sb, r1, lsl #3
	ldr sb, [r1, #8]
	ldr r3, [r5, #0x190]
	mov sb, sb, lsl #0x10
	mov sb, sb, lsr #0x10
	bic sb, sb, #0xe0000000
	orr r2, sb, r2, lsl #26
	ldr r4, [r5, #0x194]
	orr r2, r2, r3, lsl #20
	orr r2, r2, r4, lsl #23
	orr r2, r2, #0x30000
	orr r2, r2, #0x20000000
	str r2, [sp, #0x34]
	mov r0, #0x2a
	add r1, sp, #0x34
	mov r2, #1
	bl func_01ffa9fc
	ldr r0, [r5, #0x18c]
	ldr r1, [r5, #0x188]
	cmp r0, #2
	ldr r0, _020c141c ; =data_027e0d44
	moveq r3, #1
	ldr r2, [r0]
	movne r3, #0
	add r1, r2, r1, lsl #3
	ldr r2, [r1, #0xc]
	rsb r0, r3, #4
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0xd
	mov r3, r2, lsr r0
	add r1, sp, #0x30
	mov r0, #0x2b
	mov r2, #1
	str r3, [sp, #0x30]
	bl func_01ffa9fc
	ldr r3, _020c1420 ; =0x0000ffff
	add r1, sp, #0x2c
	mov r0, #0x30
	mov r2, #1
	str r3, [sp, #0x2c]
	bl func_01ffa9fc
	mov r2, #0
	str r2, [sp, #0x28]
	add r1, sp, #0x28
	mov r0, #0x31
	mov r2, #1
	bl func_01ffa9fc
	mov r0, #0x1c
	add r1, sp, #0x38
	mov r2, #3
	bl func_01ffa9fc
	mov r0, r8, lsl #0x10
	orr r0, r0, #0x20c0
	str r0, [sp, #0x24]
	mov r0, #0x29
	add r1, sp, #0x24
	mov r2, #1
	bl func_01ffa9fc
	mov r0, #3
	str r0, [sp, #0x20]
	mov r8, #0
	mov r0, #0x40
	add r1, sp, #0x20
	mov r2, #1
	bl func_01ffa9fc
	cmp r6, #0
	mov sb, r8
	ble _020c13f0
	add fp, r5, #0x100
_020c1288:
	ldrh r0, [fp, #0x80]
	add sl, r7, sb
	add r1, sp, #0x1c
	cmp sl, r0
	subge sl, sl, r0
	mov r0, r8, lsl #0x8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r0, #0x22
	mov r2, #1
	str r4, [sp, #0x1c]
	bl func_01ffa9fc
	mov r0, #0x18
	mul r0, sl, r0
	add sl, r5, r0
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x38]
	ldr r3, [sl, #8]
	ldr r2, [sp, #0x40]
	sub r1, r1, r0
	sub r2, r3, r2
	mov r0, r2, lsl #0x10
	mov r2, r0, asr #0x10
	mov r0, r1, lsl #0x10
	mov r1, r2, lsl #0x10
	mov r0, r0, asr #0x10
	ldr r3, [sl, #4]
	mov r1, r1, lsr #0x10
	ldr r2, [sp, #0x3c]
	str r1, [sp, #0x18]
	sub r1, r3, r2
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x14]
	mov r0, #0x23
	add r1, sp, #0x14
	mov r2, #2
	bl func_01ffa9fc
	ldr r1, [r5, #0x19c]
	mov r0, #0x22
	mov r1, r1, lsl #0x8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	orr r1, r4, r1, lsl #16
	str r1, [sp, #0x10]
	add r1, sp, #0x10
	mov r2, #1
	bl func_01ffa9fc
	ldr r2, [sl, #0x14]
	ldr r1, [sp, #0x40]
	ldr r0, [sl, #0xc]
	sub r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	ldr r3, [sp, #0x38]
	ldr r2, [sl, #0x10]
	mov r1, r1, lsr #0x10
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	sub r0, r0, r3
	sub r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #8]
	mov r0, #0x23
	add r1, sp, #8
	mov r2, #2
	bl func_01ffa9fc
	add r0, sb, #1
	cmp r0, r6
	ldrlt r0, [sp]
	add sb, sb, #1
	addlt r8, r8, r0
	cmp sb, r6
	blt _020c1288
_020c13f0:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl func_01ffa9fc
	mov r2, #1
	add r1, sp, #4
	mov r0, #0x12
	str r2, [sp, #4]
	bl func_01ffa9fc
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c10d4
_020c141c: .word data_027e0d44
_020c1420: .word 0x0000ffff

	.global func_ov00_020c1424
	arm_func_start func_ov00_020c1424
func_ov00_020c1424: ; 0x020c1424
	ldrb r2, [r0, #0x1a4]
	cmp r2, #0
	moveq r2, #1
	streqb r2, [r0, #0x1a4]
	beq _020c1448
	add r2, r0, #0x100
	mov r3, #0
	strh r3, [r2, #0x84]
	strh r3, [r2, #0x82]
_020c1448:
	strb r1, [r0, #0x1a5]
	bx lr
	arm_func_end func_ov00_020c1424

	.global func_ov00_020c1450
	arm_func_start func_ov00_020c1450
func_ov00_020c1450: ; 0x020c1450
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldrb r0, [r7, #0x1a4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	beq _020c14f0
	add r8, r7, #0x100
	b _020c1480
_020c1478:
	mov r0, r7
	bl func_ov00_020c10a0
_020c1480:
	ldrh r1, [r8, #0x82]
	ldrh r0, [r8, #0x84]
	subs r2, r1, r0
	ldrmih r0, [r8, #0x80]
	mov r1, r2
	addmi r1, r2, r0
	ldr r0, [r7, #0x1a0]
	cmp r1, r0
	bgt _020c1478
	ldrb r0, [r7, #0x1a5]
	cmp r0, #0
	beq _020c14c4
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl func_ov00_020c0ffc
	b _020c14e4
_020c14c4:
	cmp r2, #0
	addlt r0, r7, #0x100
	ldrlth r0, [r0, #0x80]
	addlt r2, r2, r0
	cmp r2, #0
	ble _020c14e4
	mov r0, r7
	bl func_ov00_020c10a0
_020c14e4:
	mov r0, #0
	strb r0, [r7, #0x1a4]
	strb r0, [r7, #0x1a5]
_020c14f0:
	mov r0, r7
	mov r1, r4
	bl func_ov00_020c10d4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end func_ov00_020c1450

	.global func_ov00_020c1500
	arm_func_start func_ov00_020c1500
func_ov00_020c1500: ; 0x020c1500
	mvn r2, #0
	mov r3, #0
	strb r2, [r0, #0xc]
	strb r3, [r0, #0xd]
	mov r1, #1
	strb r1, [r0, #0xe]
	str r2, [r0, #0x10]
	mov ip, r3
_020c1520:
	mov r1, r3, lsl #0x1
	add r3, r3, #1
	strh ip, [r0, r1]
	cmp r3, #4
	blt _020c1520
	mov r1, #0
_020c1538:
	add r2, r0, ip
	strb r1, [r2, #8]
	add ip, ip, #1
	strb r1, [r2, #0xa]
	cmp ip, #2
	blt _020c1538
	bx lr
	arm_func_end func_ov00_020c1500

	.global func_ov00_020c1554
	arm_func_start func_ov00_020c1554
func_ov00_020c1554: ; 0x020c1554
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _020c170c ; =data_ov00_020e71f4
	mov r4, r0
	ldr r0, _020c1710 ; =0x4e554c4c
	str r1, [r4]
	str r0, [r4, #4]
	mvn r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r1, #0
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	add r0, r4, #0x20
	strh r1, [r4, #0x12]
	bl func_ov00_020c1500
	mvn r3, #0
	str r3, [r4, #0x34]
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	str r3, [r4, #0x40]
	str r3, [r4, #0x44]
	mov r0, #0xcc
	str r0, [r4, #0x6c]
	mov r2, #0x800
	str r2, [r4, #0x70]
	mov r0, #2
	str r0, [r4, #0x74]
	mov r1, #0
	strh r1, [r4, #0x78]
	add r0, r3, #0x10000
	strh r0, [r4, #0x7a]
	str r1, [r4, #0x7c]
	add r0, r4, #0x7c
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	add r3, r4, #0x8c
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r4, #0x88]
	add r0, r4, #0x9c
	str r1, [r3, #0xc]
	bl func_ov00_020c3328
	mov r1, #0
	mov r2, #0x1000
	str r2, [sp]
	add r0, r4, #0xa4
	mov r3, r1
	blx func_ov00_0207a188
	ldr r0, _020c1714 ; =0x0000ffff
	mov lr, #0
	strh r0, [r4, #0xdc]
	strh r0, [r4, #0xde]
	strh r0, [r4, #0xe0]
	strh r0, [r4, #0xe2]
	strh lr, [r4, #0xe4]
	strb lr, [r4, #0x106]
	strb lr, [r4, #0x107]
	strb lr, [r4, #0x108]
	strb lr, [r4, #0x109]
	strb lr, [r4, #0x110]
	strb lr, [r4, #0x111]
	strb lr, [r4, #0x112]
	strb lr, [r4, #0x113]
	strb lr, [r4, #0x114]
	strb lr, [r4, #0x115]
	mov ip, #1
	strb ip, [r4, #0x118]
	strb ip, [r4, #0x119]
	strb ip, [r4, #0x11a]
	strb lr, [r4, #0x11b]
	strb lr, [r4, #0x11c]
	strb lr, [r4, #0x11d]
	add r0, r4, #0x100
	strh lr, [r0, #0x1e]
	mov r3, #4
	mov r1, #3
	strh r3, [r0, #0x20]
	mov r2, #0xff
	strh r2, [r0, #0x22]
	strb ip, [r4, #0x124]
	strb r3, [r4, #0x125]
	strh r1, [r0, #0x26]
	strb lr, [r4, #0x128]
	strb lr, [r4, #0x129]
	strb lr, [r4, #0x12a]
	str lr, [r4, #0x12c]
	sub r0, r1, #4
	str r0, [r4, #0x130]
	str r0, [r4, #0x134]
	str lr, [r4, #0x138]
	str lr, [r4, #0x13c]
	str lr, [r4, #0x140]
	str lr, [r4, #0x144]
	str lr, [r4, #0x14]
	str lr, [r4, #0x18]
	str lr, [r4, #0x1c]
	str lr, [r4, #0x48]
	str lr, [r4, #0x4c]
	str lr, [r4, #0x50]
	str lr, [r4, #0x54]
	str lr, [r4, #0x58]
	str lr, [r4, #0x5c]
	str lr, [r4, #0x60]
	str lr, [r4, #0x64]
	mov r0, r4
	str lr, [r4, #0x68]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1554
_020c170c: .word data_ov00_020e71f4
_020c1710: .word 0x4e554c4c
_020c1714: .word 0x0000ffff

	.global func_ov00_020c1718
	arm_func_start func_ov00_020c1718
func_ov00_020c1718: ; 0x020c1718
	bx lr
	arm_func_end func_ov00_020c1718

	.global func_ov00_020c171c
	arm_func_start func_ov00_020c171c
func_ov00_020c171c: ; 0x020c171c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c171c

	.global func_ov00_020c1730
	arm_func_start func_ov00_020c1730
func_ov00_020c1730: ; 0x020c1730
	bx lr
	arm_func_end func_ov00_020c1730

	.global func_ov00_020c1734
	arm_func_start func_ov00_020c1734
func_ov00_020c1734: ; 0x020c1734
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c1734

	.global func_ov00_020c173c
	arm_func_start func_ov00_020c173c
func_ov00_020c173c: ; 0x020c173c
	bx lr
	arm_func_end func_ov00_020c173c

	.global func_ov00_020c1740
	arm_func_start func_ov00_020c1740
func_ov00_020c1740: ; 0x020c1740
	bx lr
	arm_func_end func_ov00_020c1740

	.global func_ov00_020c1744
	arm_func_start func_ov00_020c1744
func_ov00_020c1744: ; 0x020c1744
	bx lr
	arm_func_end func_ov00_020c1744

	.global func_ov00_020c1748
	arm_func_start func_ov00_020c1748
func_ov00_020c1748: ; 0x020c1748
	bx lr
	arm_func_end func_ov00_020c1748

	.global func_ov00_020c174c
	arm_func_start func_ov00_020c174c
func_ov00_020c174c: ; 0x020c174c
	ldr r3, [r0, #0x48]
	add r2, r0, #0x100
	str r3, [r1]
	ldr r3, [r0, #0x4c]
	str r3, [r1, #4]
	ldr r0, [r0, #0x50]
	str r0, [r1, #8]
	ldrsh r0, [r2, #0x1e]
	ldr r2, [r1, #4]
	add r0, r2, r0
	str r0, [r1, #4]
	bx lr
	arm_func_end func_ov00_020c174c

	.global func_ov00_020c177c
	arm_func_start func_ov00_020c177c
func_ov00_020c177c: ; 0x020c177c
	ldr ip, _020c1784 ; =func_ov00_02087ef0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c177c
_020c1784: .word func_ov00_02087ef0

	.global func_ov00_020c1788
	arm_func_start func_ov00_020c1788
func_ov00_020c1788: ; 0x020c1788
	ldr r3, _020c17a0 ; =data_027e0e60
	ldr ip, _020c17a4 ; =func_ov00_02083570
	ldrb r1, [r0, #0x10]
	ldrb r2, [r0, #0x11]
	ldr r0, [r3]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c1788
_020c17a0: .word data_027e0e60
_020c17a4: .word func_ov00_02083570

	.global func_ov00_020c17a8
	arm_func_start func_ov00_020c17a8
func_ov00_020c17a8: ; 0x020c17a8
	mvn r0, #0
	bx lr
	arm_func_end func_ov00_020c17a8

	.global func_ov00_020c17b0
	arm_func_start func_ov00_020c17b0
func_ov00_020c17b0: ; 0x020c17b0
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020c17b0

	.global func_ov00_020c17b8
	arm_func_start func_ov00_020c17b8
func_ov00_020c17b8: ; 0x020c17b8
	bx lr
	arm_func_end func_ov00_020c17b8

	.global func_ov00_020c17bc
	arm_func_start func_ov00_020c17bc
func_ov00_020c17bc: ; 0x020c17bc
	ldr ip, _020c17d0 ; =func_ov00_0207a1c8
	mov r2, r0
	add r0, r2, #0xa4
	add r2, r2, #0x48
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c17bc
_020c17d0: .word func_ov00_0207a1c8

	.global func_ov00_020c17d4
	arm_func_start func_ov00_020c17d4
func_ov00_020c17d4: ; 0x020c17d4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x38
	mov ip, r0
	ldrb r0, [ip, #0x129]
	ldrh r4, [ip, #0x7a]
	cmp r0, #0
	addne r0, ip, #0x100
	ldrneh r4, [r0, #0x26]
	ldr r0, _020c1888 ; =0x0000ffff
	cmp r4, r0
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r1]
	tst r0, #4
	bne _020c181c
	tst r0, #8
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, pc}
_020c181c:
	add r1, sp, #0x14
	str r1, [sp]
	mov r2, #0
	add r0, sp, #0x10
	stmib sp, {r0, r2}
	ldr r0, _020c188c ; =data_027e0d3c
	str r2, [sp, #0xc]
	ldr r0, [r0]
	mov r3, r2
	add r1, ip, #0x48
	bl func_ov00_02079470
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, pc}
	add r0, sp, #0x18
	bl func_01ffbe34
	mov r1, #1
	add r0, sp, #0x18
	str r1, [sp, #0x1c]
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r0, _020c1890 ; =data_02063e4c
	mov r3, r4
	bl func_020313c8
	add sp, sp, #0x38
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c17d4
_020c1888: .word 0x0000ffff
_020c188c: .word data_027e0d3c
_020c1890: .word data_02063e4c

	.global func_ov00_020c1894
	arm_func_start func_ov00_020c1894
func_ov00_020c1894: ; 0x020c1894
	bx lr
	arm_func_end func_ov00_020c1894

	.global func_ov00_020c1898
	arm_func_start func_ov00_020c1898
func_ov00_020c1898: ; 0x020c1898
	ldrb r2, [r0, #0x128]
	cmp r2, #0
	strneb r1, [r0, #0x129]
	bx lr
	arm_func_end func_ov00_020c1898

	.global func_ov00_020c18a8
	arm_func_start func_ov00_020c18a8
func_ov00_020c18a8: ; 0x020c18a8
	ldrb r1, [r0, #0x11b]
	cmp r1, #0
	movne r0, #0
	moveq r1, #1
	streqb r1, [r0, #0x11b]
	moveq r0, r1
	bx lr
	arm_func_end func_ov00_020c18a8

	.global func_ov00_020c18c4
	arm_func_start func_ov00_020c18c4
func_ov00_020c18c4: ; 0x020c18c4
	ldrb r2, [r0, #0x11b]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldr r3, [r1]
	mov r2, #0
	str r3, [r0, #0x60]
	ldr r3, [r1, #4]
	str r3, [r0, #0x64]
	ldr r1, [r1, #8]
	str r1, [r0, #0x68]
	strb r2, [r0, #0x11b]
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c18c4

	.global func_ov00_020c18fc
	arm_func_start func_ov00_020c18fc
func_ov00_020c18fc: ; 0x020c18fc
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020c18fc

	.global func_ov00_020c1904
	arm_func_start func_ov00_020c1904
func_ov00_020c1904: ; 0x020c1904
	bx lr
	arm_func_end func_ov00_020c1904

	.global func_ov00_020c1908
	arm_func_start func_ov00_020c1908
func_ov00_020c1908: ; 0x020c1908
	strb r1, [r0, #0x11c]
	bx lr
	arm_func_end func_ov00_020c1908

	.global func_ov00_020c1910
	arm_func_start func_ov00_020c1910
func_ov00_020c1910: ; 0x020c1910
	bx lr
	arm_func_end func_ov00_020c1910

	.global func_ov00_020c1914
	arm_func_start func_ov00_020c1914
func_ov00_020c1914: ; 0x020c1914
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c1914

	.global func_ov00_020c191c
	arm_func_start func_ov00_020c191c
func_ov00_020c191c: ; 0x020c191c
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c191c

	.global func_ov00_020c1924
	arm_func_start func_ov00_020c1924
func_ov00_020c1924: ; 0x020c1924
	bx lr
	arm_func_end func_ov00_020c1924

	.global func_ov00_020c1928
	arm_func_start func_ov00_020c1928
func_ov00_020c1928: ; 0x020c1928
	bx lr
	arm_func_end func_ov00_020c1928

	.global func_ov00_020c192c
	arm_func_start func_ov00_020c192c
func_ov00_020c192c: ; 0x020c192c
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c192c

	.global func_ov00_020c1934
	arm_func_start func_ov00_020c1934
func_ov00_020c1934: ; 0x020c1934
	bx lr
	arm_func_end func_ov00_020c1934

	.global func_ov00_020c1938
	arm_func_start func_ov00_020c1938
func_ov00_020c1938: ; 0x020c1938
	bx lr
	arm_func_end func_ov00_020c1938

	.global func_ov00_020c193c
	arm_func_start func_ov00_020c193c
func_ov00_020c193c: ; 0x020c193c
	bx lr
	arm_func_end func_ov00_020c193c

	.global func_ov00_020c1940
	arm_func_start func_ov00_020c1940
func_ov00_020c1940: ; 0x020c1940
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c1940

	.global func_ov00_020c1948
	arm_func_start func_ov00_020c1948
func_ov00_020c1948: ; 0x020c1948
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c1948

	.global func_ov00_020c1950
	arm_func_start func_ov00_020c1950
func_ov00_020c1950: ; 0x020c1950
	bx lr
	arm_func_end func_ov00_020c1950

	.global func_ov00_020c1954
	arm_func_start func_ov00_020c1954
func_ov00_020c1954: ; 0x020c1954
	bx lr
	arm_func_end func_ov00_020c1954

	.global func_ov00_020c1958
	arm_func_start func_ov00_020c1958
func_ov00_020c1958: ; 0x020c1958
	bx lr
	arm_func_end func_ov00_020c1958

	.global func_ov00_020c195c
	arm_func_start func_ov00_020c195c
func_ov00_020c195c: ; 0x020c195c
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x11b]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _020c1988 ; =data_027e0fc8
	add r1, r0, #0x48
	ldr r0, [r2]
	bl func_ov00_020bc854
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c195c
_020c1988: .word data_027e0fc8

	.global func_ov00_020c198c
	arm_func_start func_ov00_020c198c
func_ov00_020c198c: ; 0x020c198c
	stmdb sp!, {r3, lr}
	ldr r0, _020c1a1c ; =data_027e077c
	ldr r2, [r0]
	ldr r1, [r0, #4]
	cmp r2, r1
	bne _020c19ec
	ldr r0, [r0]
	ldr r1, _020c1a20 ; =data_02056be4
	ldrb r0, [r1, r0]
	tst r0, #1
	bne _020c19ec
	ldrb r0, [r1, r2]
	tst r0, #4
	bne _020c19ec
	ldr r0, _020c1a24 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov05_02103f4c
	cmp r0, #0
	bne _020c19ec
	ldr r0, _020c1a28 ; =data_027e0f90
	ldr r0, [r0]
	ldrsh r0, [r0, #0xa]
	cmp r0, #0
	bgt _020c19f4
_020c19ec:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020c19f4:
	ldr r0, _020c1a2c ; =data_027e0fc8
	ldr r0, [r0]
	cmp r0, #0
	beq _020c1a14
	bl func_ov00_020bd304
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_020c1a14:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c198c
_020c1a1c: .word data_027e077c
_020c1a20: .word data_02056be4
_020c1a24: .word data_027e103c
_020c1a28: .word data_027e0f90
_020c1a2c: .word data_027e0fc8

	.global func_ov00_020c1a30
	arm_func_start func_ov00_020c1a30
func_ov00_020c1a30: ; 0x020c1a30
	stmdb sp!, {r3, lr}
	ldr ip, [r1, #4]
	ldr r3, _020c1af8 ; =0x464c414c
	cmp ip, r3
	bhi _020c1a8c
	bhs _020c1ae0
	ldr r0, _020c1afc ; =0x424d524e
	cmp ip, r0
	bhi _020c1a68
	bhs _020c1ae0
	ldr r0, _020c1b00 ; =0x41525257
	cmp ip, r0
	beq _020c1ae0
	b _020c1af0
_020c1a68:
	ldr r0, _020c1b04 ; =0x424d5459
	cmp ip, r0
	bhi _020c1a7c
	beq _020c1ae0
	b _020c1af0
_020c1a7c:
	ldr r0, _020c1b08 ; =0x424f4d42
	cmp ip, r0
	beq _020c1ae0
	b _020c1af0
_020c1a8c:
	ldr r2, _020c1b0c ; =0x464c544d
	cmp ip, r2
	bhi _020c1ac0
	bhs _020c1ae0
	sub r0, r2, #0x1200
	cmp ip, r0
	bhi _020c1ab0
	beq _020c1ae0
	b _020c1af0
_020c1ab0:
	add r0, r3, #0x108
	cmp ip, r0
	beq _020c1ae0
	b _020c1af0
_020c1ac0:
	ldr r0, _020c1b10 ; =0x48415254
	cmp ip, r0
	bhi _020c1ad4
	beq _020c1ae0
	b _020c1af0
_020c1ad4:
	ldr r0, _020c1b14 ; =0x52555059
	cmp ip, r0
	bne _020c1af0
_020c1ae0:
	mov r0, r1
	bl func_ov00_020c3180
	mov r0, #1
	ldmia sp!, {r3, pc}
_020c1af0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1a30
_020c1af8: .word 0x464c414c
_020c1afc: .word 0x424d524e
_020c1b00: .word 0x41525257
_020c1b04: .word 0x424d5459
_020c1b08: .word 0x424f4d42
_020c1b0c: .word 0x464c544d
_020c1b10: .word 0x48415254
_020c1b14: .word 0x52555059

	.global func_ov00_020c1b18
	arm_func_start func_ov00_020c1b18
func_ov00_020c1b18: ; 0x020c1b18
	stmdb sp!, {lr}
	sub sp, sp, #0xa4
	add r2, sp, #4
	mvn r1, #0
	add r0, sp, #0xa4
_020c1b2c:
	str r1, [r2]
	str r1, [r2, #4]
	add r2, r2, #8
	cmp r2, r0
	blo _020c1b2c
	ldr r0, _020c1b64 ; =data_027e0fe4
	ldr r3, _020c1b68 ; =data_ov00_020e71e8
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #0
	str r3, [sp]
	bl func_ov00_020c37ec
	add sp, sp, #0xa4
	ldmia sp!, {pc}
	.align 2, 0
	arm_func_end func_ov00_020c1b18
_020c1b64: .word data_027e0fe4
_020c1b68: .word data_ov00_020e71e8

	.global func_ov00_020c1b6c
	arm_func_start func_ov00_020c1b6c
func_ov00_020c1b6c: ; 0x020c1b6c
	ldr r2, [r0, #0x48]
	str r2, [r0, #0x54]
	ldr r2, [r0, #0x4c]
	str r2, [r0, #0x58]
	ldr r2, [r0, #0x50]
	str r2, [r0, #0x5c]
	ldr r2, [r1]
	str r2, [r0, #0x48]
	ldr r2, [r1, #4]
	str r2, [r0, #0x4c]
	ldr r2, [r1, #8]
	str r2, [r0, #0x50]
	ldrsh r2, [r1, #0xc]
	strh r2, [r0, #0x78]
	ldrb r1, [r1, #0xe]
	strb r1, [r0, #0x11a]
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c1b6c

	.global func_ov00_020c1bb4
	arm_func_start func_ov00_020c1bb4
func_ov00_020c1bb4: ; 0x020c1bb4
	ldr r2, [r0, #0x48]
	str r2, [r0, #0x54]
	ldr r2, [r0, #0x4c]
	str r2, [r0, #0x58]
	ldr r2, [r0, #0x50]
	str r2, [r0, #0x5c]
	ldr r2, [r1]
	str r2, [r0, #0x48]
	ldr r2, [r1, #4]
	str r2, [r0, #0x4c]
	ldr r2, [r1, #8]
	str r2, [r0, #0x50]
	ldrsh r2, [r1, #0xc]
	strh r2, [r0, #0x78]
	ldrb r1, [r1, #0xe]
	strb r1, [r0, #0x11a]
	bx lr
	arm_func_end func_ov00_020c1bb4

	.global func_ov00_020c1bf8
	arm_func_start func_ov00_020c1bf8
func_ov00_020c1bf8: ; 0x020c1bf8
	bx lr
	arm_func_end func_ov00_020c1bf8

	.global func_ov00_020c1bfc
	arm_func_start func_ov00_020c1bfc
func_ov00_020c1bfc: ; 0x020c1bfc
	add r2, r0, r1
	ldr r0, _020c1c18 ; =data_027e0e60
	ldrb r1, [r2, #0x2a]
	ldr ip, _020c1c1c ; =func_ov00_02084be0
	ldrb r2, [r2, #0x28]
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c1bfc
_020c1c18: .word data_027e0e60
_020c1c1c: .word func_ov00_02084be0

	.global func_ov00_020c1c20
	arm_func_start func_ov00_020c1c20
func_ov00_020c1c20: ; 0x020c1c20
	stmdb sp!, {r3, lr}
	add ip, r0, r1
	ldr r0, _020c1c44 ; =data_027e0e60
	mov r3, r2
	ldrb r1, [ip, #0x2a]
	ldrb r2, [ip, #0x28]
	ldr r0, [r0]
	bl func_ov00_02084b38
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1c20
_020c1c44: .word data_027e0e60

	.global func_ov00_020c1c48
	arm_func_start func_ov00_020c1c48
func_ov00_020c1c48: ; 0x020c1c48
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c1c48

	.global func_ov00_020c1c50
	arm_func_start func_ov00_020c1c50
func_ov00_020c1c50: ; 0x020c1c50
	stmdb sp!, {r4, lr}
	ldr r1, [r1]
	mov r4, r0
	and r1, r1, #0x1f
	cmp r1, #8
	bne _020c1c88
	ldr r0, [r4, #4]
	add r1, r4, #0x48
	mov r2, #1
	bl func_ov00_020c8398
	mov r0, r4
	bl func_ov00_020c3180
	mov r0, #1
	ldmia sp!, {r4, pc}
_020c1c88:
	bl func_ov00_020c3180
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c1c50

	.global func_ov00_020c1c94
	arm_func_start func_ov00_020c1c94
func_ov00_020c1c94: ; 0x020c1c94
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r1, _020c1cf4 ; =data_027e0f94
	mov r4, r0
	add r3, sp, #0
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp]
	ldr r0, [r4, #0x48]
	sub r0, r1, r0
	bl func_02042f74
	cmp r0, #0xa000
	addgt sp, sp, #0xc
	movgt r0, #0
	ldmgtia sp!, {r3, r4, pc}
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x50]
	sub r0, r1, r0
	bl func_02042f74
	cmp r0, #0xa000
	movle r0, #1
	movgt r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1c94
_020c1cf4: .word data_027e0f94

	.global func_ov00_020c1cf8
	arm_func_start func_ov00_020c1cf8
func_ov00_020c1cf8: ; 0x020c1cf8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0xa4]
	cmp r1, #0
	ldreqb r1, [r4, #0xa5]
	cmpeq r1, #0
	bne _020c1d30
	ldrb r1, [r4, #0x129]
	cmp r1, #1
	ldrneb r1, [r4, #0x11d]
	cmpne r1, #1
	ldrneb r1, [r4, #0x11b]
	cmpne r1, #1
	bne _020c1d3c
_020c1d30:
	mov r0, #0
	str r0, [r4, #0x154]
	ldmia sp!, {r4, pc}
_020c1d3c:
	bl func_ov00_020c1c94
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x154]
	moveq r0, #2
	streq r0, [r4, #0x154]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c1cf8

	.global func_ov00_020c1d58
	arm_func_start func_ov00_020c1d58
func_ov00_020c1d58: ; 0x020c1d58
	stmdb sp!, {r3, lr}
	ldr r0, _020c1d98 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _020c1d9c ; =data_027e0f90
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1d58
_020c1d98: .word data_027e0f74
_020c1d9c: .word data_027e0f90

	.global func_ov00_020c1da0
	arm_func_start func_ov00_020c1da0
func_ov00_020c1da0: ; 0x020c1da0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl func_ov00_020c1d58
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp r4, #0
	beq _020c1dec
	ldr r0, [r4]
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	b _020c1dfc
_020c1dec:
	ldr r0, _020c1e24 ; =data_027e0f94
	add r2, sp, #0
	add r1, r6, #0x54
	bl func_01ff9bf8
_020c1dfc:
	ldr r0, _020c1e28 ; =data_027e0f90
	ldrb r1, [r6, #0x124]
	ldr r0, [r0]
	add r2, sp, #0
	ldr ip, [r0]
	mov r3, r5
	ldr ip, [ip, #0x30]
	blx ip
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1da0
_020c1e24: .word data_027e0f94
_020c1e28: .word data_027e0f90

	.global func_ov00_020c1e2c
	arm_func_start func_ov00_020c1e2c
func_ov00_020c1e2c: ; 0x020c1e2c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	mov r4, r1
	mov r6, r2
	bl func_ov00_020c1d58
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r5, #0x88]
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, pc}
	cmp r6, #0
	beq _020c1e8c
	ldr r0, [r6]
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	str r0, [sp, #0x14]
	ldr r0, [r6, #8]
	str r0, [sp, #0x18]
	b _020c1e9c
_020c1e8c:
	ldr r0, _020c1ef0 ; =data_027e0f94
	add r2, sp, #0x10
	add r1, r5, #0x54
	bl func_01ff9bf8
_020c1e9c:
	add r1, sp, #0
	mov r0, r5
	bl func_ov00_020c2a0c
	ldr r0, _020c1ef4 ; =data_027e0f90
	add r1, sp, #0
	ldr r0, [r0]
	bl _ZN10PlayerBase18func_ov00_020a7c1cEP8Cylinder
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020c1ef4 ; =data_027e0f90
	ldrb r1, [r5, #0x124]
	ldr r0, [r0]
	add r2, sp, #0x10
	ldr r5, [r0]
	mov r3, r4
	ldr r5, [r5, #0x30]
	blx r5
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1e2c
_020c1ef0: .word data_027e0f94
_020c1ef4: .word data_027e0f90

	.global func_ov00_020c1ef8
	arm_func_start func_ov00_020c1ef8
func_ov00_020c1ef8: ; 0x020c1ef8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl func_ov00_020c1d58
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020c1f58 ; =data_027e0f90
	mov r1, r6
	ldr r0, [r0]
	bl _ZN10PlayerBase18func_ov00_020a7c1cEP8Cylinder
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020c1f58 ; =data_027e0f90
	ldr r3, [sp, #0x10]
	ldr r0, [r0]
	mov r1, r4
	ldr ip, [r0]
	mov r2, r5
	ldr ip, [ip, #0x30]
	blx ip
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1ef8
_020c1f58: .word data_027e0f90

	.global func_ov00_020c1f5c
	arm_func_start func_ov00_020c1f5c
func_ov00_020c1f5c: ; 0x020c1f5c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl func_ov00_020c1d58
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020c1fc4 ; =data_027e0f90
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	mov r3, r4
	bl _ZN10PlayerBase18func_ov00_020a7c60EP5Vec3pS1_i
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020c1fc4 ; =data_027e0f90
	ldrb r1, [sp, #0x14]
	ldr r0, [r0]
	ldr r2, [sp, #0x10]
	ldr ip, [r0]
	ldr r3, [sp, #0x18]
	ldr ip, [ip, #0x30]
	blx ip
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1f5c
_020c1fc4: .word data_027e0f90

	.global func_ov00_020c1fc8
	arm_func_start func_ov00_020c1fc8
func_ov00_020c1fc8: ; 0x020c1fc8
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x6c
	ldr r2, _020c2224 ; =data_027e0f74
	mov r4, r0
	ldr r0, [r2]
	mov r6, r1
	bl func_ov00_02097738
	cmp r0, #0
	addne sp, sp, #0x6c
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r4, #0x88]
	mov r5, #0
	cmp r0, #0
	blt _020c2218
	ldr r1, _020c2228 ; =data_027e0f94
	add r2, sp, #0x60
	add r0, r4, #0x48
	bl func_01ff9bf8
	mov r0, r4
	and r1, r6, #2
	bl func_ov00_020c22b8
	cmp r0, #0
	beq _020c208c
	ldr r0, _020c222c ; =data_027e0f90
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xb
	strb r2, [sp, #0x48]
	str r1, [sp, #0x58]
	str r2, [sp, #0x5c]
	bl _ZN10PlayerBase18EquipItem_vfunc_2cEv
	mov r1, r5
	ldr r5, [sp, #0x60]
	ldr r3, [sp, #0x64]
	ldr r2, [sp, #0x68]
	strb r0, [sp, #0x48]
	mov r0, r4
	str r5, [sp, #0x4c]
	str r3, [sp, #0x50]
	str r1, [sp, #0x58]
	str r1, [sp, #0x5c]
	str r2, [sp, #0x54]
	ldr r2, [r0]
	add r1, sp, #0x48
	ldr r2, [r2, #0x48]
	blx r2
	mov r5, r0
	b _020c2218
_020c208c:
	mov r0, r4
	and r1, r6, #4
	bl func_ov00_020c22b8
	cmp r0, #0
	beq _020c2110
	ldr r0, _020c2230 ; =gItemManager
	ldr ip, [sp, #0x60]
	ldr r3, [sp, #0x64]
	ldr r2, [sp, #0x68]
	mov lr, #0xb
	ldr r0, [r0]
	mov r1, #2
	str lr, [sp, #0x40]
	str r5, [sp, #0x44]
	strb r5, [sp, #0x30]
	str ip, [sp, #0x34]
	str r3, [sp, #0x38]
	str r2, [sp, #0x3c]
	bl _ZNK11ItemManager19GetActiveFairyLevelEi
	cmp r0, #1
	movge r0, #3
	strge r0, [sp, #0x40]
	movlt r0, #2
	mov r1, #0
	strlt r0, [sp, #0x40]
	str r1, [sp, #0x44]
	mov r0, r4
	ldr r2, [r0]
	add r1, sp, #0x30
	ldr r2, [r2, #0x48]
	blx r2
	mov r5, r0
	b _020c2218
_020c2110:
	mov r0, r4
	and r1, r6, #0x10
	bl func_ov00_020c22b8
	cmp r0, #0
	beq _020c218c
	ldr r0, _020c222c ; =data_027e0f90
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xb
	strb r2, [sp, #0x18]
	str r1, [sp, #0x28]
	str r2, [sp, #0x2c]
	bl _ZN10PlayerBase18EquipItem_vfunc_2cEv
	ldr lr, [sp, #0x60]
	ldr ip, [sp, #0x64]
	ldr r3, [sp, #0x68]
	mov r1, r5
	mov r2, #4
	strb r0, [sp, #0x18]
	str r1, [sp, #0x2c]
	mov r0, r4
	str lr, [sp, #0x1c]
	str ip, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	ldr r2, [r0]
	add r1, sp, #0x18
	ldr r2, [r2, #0x48]
	blx r2
	mov r5, r0
	b _020c2218
_020c218c:
	mov r0, r4
	and r1, r6, #8
	bl func_ov00_020c22b8
	cmp r0, #0
	beq _020c2218
	ldr r0, _020c2234 ; =data_027e0fc8
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xb
	strb r2, [sp]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0x78]
	blx r1
	ldr r1, [sp, #0x68]
	ldr r3, [sp, #0x60]
	ldr r2, [sp, #0x64]
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x14]
	strb r0, [sp]
	tst r0, #0xff
	movne r0, #9
	strne r0, [sp, #0x10]
	moveq r0, #2
	streq r0, [sp, #0x10]
	str r3, [sp, #4]
	mov r0, r4
	str r2, [sp, #8]
	ldr r2, [r0]
	add r1, sp, #0
	ldr r2, [r2, #0x48]
	blx r2
	mov r5, r0
_020c2218:
	mov r0, r5
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c1fc8
_020c2224: .word data_027e0f74
_020c2228: .word data_027e0f94
_020c222c: .word data_027e0f90
_020c2230: .word gItemManager
_020c2234: .word data_027e0fc8

	.global func_ov00_020c2238
	arm_func_start func_ov00_020c2238
func_ov00_020c2238: ; 0x020c2238
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r1
	ldr r1, _020c22ac ; =data_027e0f94
	add r2, sp, #0
	add r0, r0, #0x48
	bl func_01ff9bf8
	ldr r1, _020c22b0 ; =data_027e0fac
	ldr r0, [sp]
	ldrsh r4, [r1]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	rsbs r0, r4, r0, asr #16
	rsbmi r0, r0, #0
	cmp r0, #0x4000
	bgt _020c22a0
	ldr r0, _020c22b4 ; =data_027e0f90
	mov r1, r5
	ldr r0, [r0]
	mov r2, #1
	bl _ZN10PlayerBase18EquipItem_vfunc_3cEP8Cylinderi
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
_020c22a0:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2238
_020c22ac: .word data_027e0f94
_020c22b0: .word data_027e0fac
_020c22b4: .word data_027e0f90

	.global func_ov00_020c22b8
	arm_func_start func_ov00_020c22b8
func_ov00_020c22b8: ; 0x020c22b8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	movs r4, r1
	mov r5, r0
	beq _020c23b0
	ldr r1, [r5, #0x88]
	cmp r1, #0
	blt _020c23b0
	add r1, sp, #0
	bl func_ov00_020c2a0c
	tst r4, #1
	beq _020c2308
	ldr r0, _020c23bc ; =data_027e0f90
	add r1, sp, #0
	ldr r0, [r0]
	bl _ZN10PlayerBase18func_ov00_020a7c1cEP8Cylinder
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c2308:
	tst r4, #2
	beq _020c2334
	ldr r0, _020c23bc ; =data_027e0f90
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #0
	bl _ZN10PlayerBase18EquipItem_vfunc_3cEP8Cylinderi
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c2334:
	tst r4, #4
	beq _020c2358
	add r1, sp, #0
	mov r0, r5
	bl func_ov00_020c2238
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c2358:
	tst r4, #8
	ldrne r0, _020c23c0 ; =data_027e0fc8
	ldrne r0, [r0]
	cmpne r0, #0
	beq _020c2384
	add r1, sp, #0
	bl func_ov00_020bcc2c
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c2384:
	tst r4, #0x10
	beq _020c23b0
	ldr r0, _020c23bc ; =data_027e0f90
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #8
	bl _ZN10PlayerBase18EquipItem_vfunc_3cEP8Cylinderi
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c23b0:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c22b8
_020c23bc: .word data_027e0f90
_020c23c0: .word data_027e0fc8

	.global func_ov00_020c23c4
	arm_func_start func_ov00_020c23c4
func_ov00_020c23c4: ; 0x020c23c4
	ldr ip, _020c23d0 ; =func_ov00_020c23d4
	add r2, r1, #0x7c
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c23c4
_020c23d0: .word func_ov00_020c23d4

	.global func_ov00_020c23d4
	arm_func_start func_ov00_020c23d4
func_ov00_020c23d4: ; 0x020c23d4
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldr r1, [r4, #0x40]
	mov r6, r0
	str r1, [r6]
	ldr r1, [r4, #0x44]
	ldr r0, _020c2438 ; =data_027e0fe4
	str r1, [r6, #4]
	ldr r0, [r0]
	ldr r1, [r4, #0xc]
	mov r5, r2
	bl func_ov00_020c398c
	cmp r0, #0
	mvneq r0, #0
	streq r0, [r6]
	streq r0, [r6, #4]
	mvn r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	ldr r0, _020c2438 ; =data_027e0fe4
	ldr r1, [r4, #0xc]
	ldr r0, [r0]
	mov r2, r5
	bl func_ov00_020c399c
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c23d4
_020c2438: .word data_027e0fe4

	.global func_ov00_020c243c
	arm_func_start func_ov00_020c243c
func_ov00_020c243c: ; 0x020c243c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	movs r6, r2
	mov r7, r0
	movne r0, #0
	strne r0, [r6]
	ldr r0, _020c26f0 ; =data_027e0f74
	mov r5, r1
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x88]
	mov r4, #0
	cmp r0, #0
	blt _020c26e4
	ldr r0, _020c26f4 ; =data_027e0fe4
	ldr r1, [r7, #0xc]
	ldr r0, [r0]
	mov r2, r5
	mov r3, r4
	bl func_ov00_020c39ac
	movs r5, r0
	beq _020c26e4
	mov r0, #0xb
	mov r1, r4
	str r0, [sp, #0x10]
	strb r1, [sp]
	str r1, [sp, #0x14]
	ldr r1, [r5, #4]
	ldr r0, _020c26f8 ; =0x41525257
	cmp r1, r0
	ldrne r0, _020c26fc ; =0x5342454d
	cmpne r1, r0
	bne _020c2508
	ldrh r0, [r5, #0x78]
	mov r1, #0
	ldr r3, _020c2700 ; =data_02050f54
	mov r0, r0, asr #0x4
	mov r2, r0, lsl #0x1
	add r0, r2, #1
	mov r2, r2, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrsh r2, [r3, r2]
	ldrsh r0, [r3, r0]
	str r1, [sp, #8]
	str r2, [sp, #4]
	str r0, [sp, #0xc]
	b _020c2518
_020c2508:
	add r2, sp, #4
	add r0, r7, #0x48
	add r1, r5, #0x54
	bl func_01ff9bf8
_020c2518:
	ldrb r0, [r5, #0x125]
	ldr r1, _020c2704 ; =0x43424c53
	strb r0, [sp]
	str r5, [sp, #0x14]
	ldr r0, [r5, #4]
	cmp r0, r1
	bhi _020c25bc
	bhs _020c2684
	ldr r1, _020c2708 ; =0x424c5354
	cmp r0, r1
	bhi _020c2578
	bhs _020c2684
	ldr r1, _020c270c ; =0x42494752
	cmp r0, r1
	bhi _020c2568
	bhs _020c2690
	ldr r1, _020c26f8 ; =0x41525257
	cmp r0, r1
	beq _020c2660
	b _020c26a8
_020c2568:
	ldr r1, _020c2710 ; =0x424b4559
	cmp r0, r1
	beq _020c2690
	b _020c26a8
_020c2578:
	ldr r1, _020c2714 ; =0x424d5459
	cmp r0, r1
	bhi _020c2598
	bhs _020c2684
	ldr r1, _020c2718 ; =0x424d524e
	cmp r0, r1
	beq _020c266c
	b _020c26a8
_020c2598:
	ldr r1, _020c271c ; =0x424f4d42
	cmp r0, r1
	bhi _020c25ac
	beq _020c2684
	b _020c26a8
_020c25ac:
	ldr r1, _020c2720 ; =0x42545246
	cmp r0, r1
	beq _020c2690
	b _020c26a8
_020c25bc:
	ldr r1, _020c2724 ; =0x53544e45
	cmp r0, r1
	bhi _020c2610
	bhs _020c2690
	ldr r1, _020c2728 ; =0x464f5243
	cmp r0, r1
	bhi _020c25ec
	bhs _020c2690
	ldr r1, _020c272c ; =0x464c5442
	cmp r0, r1
	beq _020c2690
	b _020c26a8
_020c25ec:
	ldr r1, _020c2730 ; =0x524f5045
	cmp r0, r1
	bhi _020c2600
	beq _020c2678
	b _020c26a8
_020c2600:
	ldr r1, _020c26fc ; =0x5342454d
	cmp r0, r1
	beq _020c2654
	b _020c26a8
_020c2610:
	ldr r1, _020c2734 ; =0x54534248
	cmp r0, r1
	bhi _020c2630
	bhs _020c2690
	ldr r1, _020c2738 ; =0x54415255
	cmp r0, r1
	beq _020c2690
	b _020c26a8
_020c2630:
	ldr r1, _020c273c ; =0x54535542
	cmp r0, r1
	bhi _020c2644
	beq _020c2690
	b _020c26a8
_020c2644:
	ldr r1, _020c2740 ; =0x564c5230
	cmp r0, r1
	beq _020c269c
	b _020c26a8
_020c2654:
	mov r0, #1
	str r0, [sp, #0x10]
	b _020c26b0
_020c2660:
	mov r0, #7
	str r0, [sp, #0x10]
	b _020c26b0
_020c266c:
	mov r0, #5
	str r0, [sp, #0x10]
	b _020c26b0
_020c2678:
	mov r0, #8
	str r0, [sp, #0x10]
	b _020c26b0
_020c2684:
	mov r0, #6
	str r0, [sp, #0x10]
	b _020c26b0
_020c2690:
	mov r0, #0xa
	str r0, [sp, #0x10]
	b _020c26b0
_020c269c:
	mov r0, #4
	str r0, [sp, #0x10]
	b _020c26b0
_020c26a8:
	mov r0, #0xb
	str r0, [sp, #0x10]
_020c26b0:
	mov r0, r7
	ldr r2, [r0]
	add r1, sp, #0
	ldr r2, [r2, #0x48]
	blx r2
	movs r4, r0
	beq _020c26e4
	ldr r0, [r7, #8]
	cmp r6, #0
	str r0, [r5, #0x40]
	ldr r0, [r7, #0xc]
	str r0, [r5, #0x44]
	strne r5, [r6]
_020c26e4:
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c243c
_020c26f0: .word data_027e0f74
_020c26f4: .word data_027e0fe4
_020c26f8: .word 0x41525257
_020c26fc: .word 0x5342454d
_020c2700: .word data_02050f54
_020c2704: .word 0x43424c53
_020c2708: .word 0x424c5354
_020c270c: .word 0x42494752
_020c2710: .word 0x424b4559
_020c2714: .word 0x424d5459
_020c2718: .word 0x424d524e
_020c271c: .word 0x424f4d42
_020c2720: .word 0x42545246
_020c2724: .word 0x53544e45
_020c2728: .word 0x464f5243
_020c272c: .word 0x464c5442
_020c2730: .word 0x524f5045
_020c2734: .word 0x54534248
_020c2738: .word 0x54415255
_020c273c: .word 0x54535542
_020c2740: .word 0x564c5230

	.global func_ov00_020c2744
	arm_func_start func_ov00_020c2744
func_ov00_020c2744: ; 0x020c2744
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r1
	ldrb r1, [r5, #0x118]
	mov r4, #0
	cmp r1, #0
	beq _020c279c
	ldr r1, [r5, #0x88]
	cmp r1, #0
	ldrge r1, [r0, #0x88]
	cmpge r1, #0
	blt _020c279c
	add r1, sp, #0x10
	bl func_ov00_020c2a0c
	add r1, sp, #0
	mov r0, r5
	bl func_ov00_020c2a0c
	add r0, sp, #0x10
	add r1, sp, #0
	bl func_01ffec34
	cmp r0, #0
	movne r4, #1
_020c279c:
	mov r0, r4
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c2744

	.global func_ov00_020c27a8
	arm_func_start func_ov00_020c27a8
func_ov00_020c27a8: ; 0x020c27a8
	ldrb r2, [r0, #0x11b]
	cmp r2, #0
	movne r0, #0
	bxne lr
	cmp r1, #0
	ldr r0, [r0, #0x12c]
	bne _020c27d4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020c27d4:
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end func_ov00_020c27a8

	.global func_ov00_020c27e4
	arm_func_start func_ov00_020c27e4
func_ov00_020c27e4: ; 0x020c27e4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	add r1, sp, #0
	mov r4, r0
	bl func_ov00_020c2a0c
	mov r0, r4
	bl func_ov00_020c28d4
	ldr r1, [sp, #0xc]
	add r1, r1, #0x1000
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c27e4

	.global func_ov00_020c281c
	arm_func_start func_ov00_020c281c
func_ov00_020c281c: ; 0x020c281c
	ldr r1, _020c283c ; =data_027e0fb8
	ldr r2, [r0, #8]
	ldr r0, [r1]
	ldr r0, [r0, #0x84]
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c281c
_020c283c: .word data_027e0fb8

	.global func_ov00_020c2840
	arm_func_start func_ov00_020c2840
func_ov00_020c2840: ; 0x020c2840
	stmdb sp!, {r3, lr}
	bl func_ov00_020c281c
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _020c2860 ; =data_027e0fb8
	ldr r0, [r0]
	bl _ZN13PlayerControl13StopFollowingEv
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2840
_020c2860: .word data_027e0fb8

	.global func_ov00_020c2864
	arm_func_start func_ov00_020c2864
func_ov00_020c2864: ; 0x020c2864
	stmdb sp!, {r4, lr}
	ldr r1, _020c2888 ; =data_027e0fc8
	ldr r4, [r0, #8]
	ldr r0, [r1]
	bl func_ov00_020bc7f8
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2864
_020c2888: .word data_027e0fc8

	.global func_ov00_020c288c
	arm_func_start func_ov00_020c288c
func_ov00_020c288c: ; 0x020c288c
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r2, [r0, #0x50]
	ldr r0, [r0, #0x48]
	mov ip, #0
	str r0, [sp, #0xc]
	str ip, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r3, [r1, #8]
	ldr r2, [r1]
	add r0, sp, #0xc
	add r1, sp, #0
	str r2, [sp]
	str ip, [sp, #4]
	str r3, [sp, #8]
	bl func_01ff9ec0
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c288c

	.global func_ov00_020c28d4
	arm_func_start func_ov00_020c28d4
func_ov00_020c28d4: ; 0x020c28d4
	ldr ip, _020c28e4 ; =func_01ff9ec0
	ldr r1, _020c28e8 ; =data_027e0f94
	add r0, r0, #0x48
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c28d4
_020c28e4: .word func_01ff9ec0
_020c28e8: .word data_027e0f94

	.global func_ov00_020c28ec
	arm_func_start func_ov00_020c28ec
func_ov00_020c28ec: ; 0x020c28ec
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr lr, [r0, #0x50]
	ldr ip, [r0, #0x48]
	ldr r0, _020c2934 ; =data_027e0f94
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r2, #0
	add r0, sp, #0xc
	mov r1, r3
	str ip, [sp, #0xc]
	str r2, [sp, #0x10]
	str lr, [sp, #0x14]
	str r2, [sp, #4]
	bl func_01ff9ec0
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c28ec
_020c2934: .word data_027e0f94

	.global func_ov00_020c2938
	arm_func_start func_ov00_020c2938
func_ov00_020c2938: ; 0x020c2938
	stmdb sp!, {r4, lr}
	ldr lr, [r1, #8]
	ldr ip, [r0, #0x50]
	ldr r3, [r1]
	ldr r2, [r0, #0x48]
	ldrsh r4, [r0, #0x78]
	sub r1, lr, ip
	subs r0, r3, r2
	cmpeq r1, #0
	beq _020c296c
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
_020c296c:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c2938

	.global func_ov00_020c2974
	arm_func_start func_ov00_020c2974
func_ov00_020c2974: ; 0x020c2974
	ldr ip, _020c2980 ; =func_ov00_020c2938
	ldr r1, _020c2984 ; =data_027e0f94
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c2974
_020c2980: .word func_ov00_020c2938
_020c2984: .word data_027e0f94

	.global func_ov00_020c2988
	arm_func_start func_ov00_020c2988
func_ov00_020c2988: ; 0x020c2988
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr lr, [r1]
	ldr ip, [r0, #0x48]
	mov r4, r3
	ldr r6, [r1, #8]
	ldr r5, [r0, #0x50]
	sub r3, lr, ip
	str r3, [r4]
	mov r3, #0
	mov r7, r2
	str r3, [r4, #4]
	sub r2, r6, r5
	str r2, [r4, #8]
	bl func_ov00_020c288c
	cmp r0, r7
	movlt r7, r0
	mov r0, r4
	mov r1, r7
	bl func_0202d95c
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020c2988

	.global func_ov00_020c29d8
	arm_func_start func_ov00_020c29d8
func_ov00_020c29d8: ; 0x020c29d8
	mov r1, #0
	str r1, [r0, #0x148]
	str r1, [r0, #0x14c]
	str r1, [r0, #0x150]
	bx lr
	arm_func_end func_ov00_020c29d8

	.global func_ov00_020c29ec
	arm_func_start func_ov00_020c29ec
func_ov00_020c29ec: ; 0x020c29ec
	stmdb sp!, {r4, lr}
	add r0, r0, #0x148
	mov r4, r1
	bl func_01ff9cec
	cmp r0, r4
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c29ec

	.global func_ov00_020c2a0c
	arm_func_start func_ov00_020c2a0c
func_ov00_020c2a0c: ; 0x020c2a0c
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x88]
	ldr r3, _020c2afc ; =data_02050f54
	str r2, [r1, #0xc]
	ldrh r4, [r0, #0x78]
	ldr r2, [r0, #0x48]
	str r2, [r1]
	ldr r2, [r0, #0x4c]
	mov r4, r4, asr #0x4
	str r2, [r1, #4]
	ldr r2, [r0, #0x50]
	mov ip, r4, lsl #0x1
	str r2, [r1, #8]
	ldr r4, [r1, #4]
	ldr r2, [r0, #0x80]
	mov r5, ip, lsl #0x1
	add r2, r4, r2
	str r2, [r1, #4]
	ldrsh r2, [r3, r5]
	ldr r5, [r0, #0x84]
	add r4, ip, #1
	smull lr, ip, r5, r2
	adds lr, lr, #0x800
	mov r4, r4, lsl #0x1
	adc r5, ip, #0
	mov ip, lr, lsr #0xc
	ldr lr, [r1]
	orr ip, ip, r5, lsl #20
	add r5, lr, ip
	str r5, [r1]
	ldrsh r5, [r3, r4]
	ldr r3, [r0, #0x84]
	ldr lr, [r1, #8]
	smull ip, r4, r3, r5
	adds ip, ip, #0x800
	adc r3, r4, #0
	mov r4, ip, lsr #0xc
	orr r4, r4, r3, lsl #20
	add r3, lr, r4
	str r3, [r1, #8]
	ldr r3, [r0, #0x7c]
	ldr r4, [r1]
	smull lr, ip, r3, r5
	adds lr, lr, #0x800
	adc r3, ip, #0
	mov ip, lr, lsr #0xc
	orr ip, ip, r3, lsl #20
	add r3, r4, ip
	str r3, [r1]
	ldr r3, [r0, #0x7c]
	rsb r0, r2, #0
	smull r2, r0, r3, r0
	adds r2, r2, #0x800
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	ldr r3, [r1, #8]
	orr r2, r2, r0, lsl #20
	add r0, r3, r2
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2a0c
_020c2afc: .word data_02050f54

	.global func_ov00_020c2b00
	arm_func_start func_ov00_020c2b00
func_ov00_020c2b00: ; 0x020c2b00
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x98]
	ldr r3, _020c2bf0 ; =data_02050f54
	str r2, [r1, #0xc]
	ldrh r4, [r0, #0x78]
	ldr r2, [r0, #0x48]
	str r2, [r1]
	ldr r2, [r0, #0x4c]
	mov r4, r4, asr #0x4
	str r2, [r1, #4]
	ldr r2, [r0, #0x50]
	mov ip, r4, lsl #0x1
	str r2, [r1, #8]
	ldr r4, [r1, #4]
	ldr r2, [r0, #0x90]
	mov r5, ip, lsl #0x1
	add r2, r4, r2
	str r2, [r1, #4]
	ldrsh r2, [r3, r5]
	ldr r5, [r0, #0x94]
	add r4, ip, #1
	smull lr, ip, r5, r2
	adds lr, lr, #0x800
	mov r4, r4, lsl #0x1
	adc r5, ip, #0
	mov ip, lr, lsr #0xc
	ldr lr, [r1]
	orr ip, ip, r5, lsl #20
	add r5, lr, ip
	str r5, [r1]
	ldrsh r5, [r3, r4]
	ldr r3, [r0, #0x94]
	ldr lr, [r1, #8]
	smull ip, r4, r3, r5
	adds ip, ip, #0x800
	adc r3, r4, #0
	mov r4, ip, lsr #0xc
	orr r4, r4, r3, lsl #20
	add r3, lr, r4
	str r3, [r1, #8]
	ldr r3, [r0, #0x8c]
	ldr r4, [r1]
	smull lr, ip, r3, r5
	adds lr, lr, #0x800
	adc r3, ip, #0
	mov ip, lr, lsr #0xc
	orr ip, ip, r3, lsl #20
	add r3, r4, ip
	str r3, [r1]
	ldr r3, [r0, #0x8c]
	rsb r0, r2, #0
	smull r2, r0, r3, r0
	adds r2, r2, #0x800
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	ldr r3, [r1, #8]
	orr r2, r2, r0, lsl #20
	add r0, r3, r2
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2b00
_020c2bf0: .word data_02050f54

	.global func_ov00_020c2bf4
	arm_func_start func_ov00_020c2bf4
func_ov00_020c2bf4: ; 0x020c2bf4
	ldr r1, [r0, #0x138]
	adds r1, r1, #1
	str r1, [r0, #0x138]
	movmi r1, #0
	strmi r1, [r0, #0x138]
	bx lr
	arm_func_end func_ov00_020c2bf4

	.global func_ov00_020c2c0c
	arm_func_start func_ov00_020c2c0c
func_ov00_020c2c0c: ; 0x020c2c0c
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _020c2c68 ; =data_ov00_020dd370
	ldr r2, [r1, #0x7c]
	ldr r1, [r1, #0x78]
	str r2, [sp, #4]
	str r1, [sp]
	ldr r1, [r0, #0x88]
	add r2, sp, #0
	cmp r1, #0
	blt _020c2c5c
	ldr r3, _020c2c6c ; =data_027e0fe4
	ldr r1, [r0, #0xc]
	ldr r0, [r3]
	mov r3, #0
	bl func_ov00_020c39ac
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, pc}
_020c2c5c:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2c0c
_020c2c68: .word data_ov00_020dd370
_020c2c6c: .word data_027e0fe4

	.global func_ov00_020c2c70
	arm_func_start func_ov00_020c2c70
func_ov00_020c2c70: ; 0x020c2c70
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	bl func_ov00_020c2d44
	bl func_ov14_0213d15c
	movs r4, r0
	beq _020c2cbc
	add r2, sp, #0xc
	add r0, r4, #0x48
	add r1, r5, #0x48
	bl func_01ff9bf8
	add r0, sp, #0xc
	bl func_01ff9cec
	cmp r0, #0x1000
	ble _020c2d00
	add r0, sp, #0xc
	mov r1, #0x1000
	bl func_0202d95c
	b _020c2d00
_020c2cbc:
	ldr r0, _020c2d3c ; =data_027e0fc8
	ldr r0, [r0]
	bl func_ov00_020bc46c
	cmp r0, #1
	bne _020c2cf0
	add r1, sp, #0
	mov r0, r5
	bl func_ov00_020c3230
	add r0, sp, #0
	add r2, sp, #0xc
	add r1, r5, #0x48
	bl func_01ff9bf8
	b _020c2d00
_020c2cf0:
	ldr r0, _020c2d40 ; =data_027e0f94
	add r2, sp, #0xc
	add r1, r5, #0x48
	bl func_01ff9bf8
_020c2d00:
	add r0, r5, #0x48
	add r1, sp, #0xc
	mov r2, r0
	bl func_01ff9bc4
	ldr r0, [sp, #0xc]
	cmp r4, #0
	str r0, [r5, #0x60]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x64]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x68]
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2c70
_020c2d3c: .word data_027e0fc8
_020c2d40: .word data_027e0f94

	.global func_ov00_020c2d44
	arm_func_start func_ov00_020c2d44
func_ov00_020c2d44: ; 0x020c2d44
	ldr ip, _020c2d50 ; =func_01fffcec
	mov r0, #2
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c2d44
_020c2d50: .word func_01fffcec

	.global func_ov00_020c2d54
	arm_func_start func_ov00_020c2d54
func_ov00_020c2d54: ; 0x020c2d54
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020c2ddc ; =data_ov00_020dd370
	mov r4, r0
	ldr r0, [r1, #0x84]
	ldr r1, [r1, #0x80]
	str r0, [sp, #4]
	str r1, [sp]
	ldr r0, [r4, #0x88]
	add r2, sp, #0
	cmp r0, #0
	blt _020c2dd0
	ldr r0, _020c2de0 ; =data_027e0fe4
	ldr r1, [r4, #0xc]
	ldr r0, [r0]
	mov r3, #0
	bl func_ov00_020c39ac
	movs r5, r0
	beq _020c2dd0
	bl func_ov00_020bff70
	ldr r1, [r4, #8]
	bl func_ov14_0213d480
	cmp r0, #0
	bge _020c2dd0
	ldr r1, [r4, #8]
	add sp, sp, #8
	str r1, [r5, #0x40]
	ldr r1, [r4, #0xc]
	mov r0, #1
	str r1, [r5, #0x44]
	ldmia sp!, {r3, r4, r5, pc}
_020c2dd0:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2d54
_020c2ddc: .word data_ov00_020dd370
_020c2de0: .word data_027e0fe4

	.global func_ov00_020c2de4
	arm_func_start func_ov00_020c2de4
func_ov00_020c2de4: ; 0x020c2de4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl func_ov00_020bff70
	bl func_ov14_0213d420
	movs r4, r0
	add r2, sp, #0
	beq _020c2e30
	add r0, r4, #0x48
	add r1, r5, #0x48
	bl func_01ff9bf8
	add r0, sp, #0
	bl func_01ff9cec
	cmp r0, #0x1000
	ble _020c2e3c
	add r0, sp, #0
	mov r1, #0x1000
	bl func_0202d95c
	b _020c2e3c
_020c2e30:
	ldr r0, _020c2e78 ; =data_027e0f94
	add r1, r5, #0x48
	bl func_01ff9bf8
_020c2e3c:
	add r0, r5, #0x48
	add r1, sp, #0
	mov r2, r0
	bl func_01ff9bc4
	ldr r0, [sp]
	cmp r4, #0
	str r0, [r5, #0x60]
	ldr r0, [sp, #4]
	str r0, [r5, #0x64]
	ldr r0, [sp, #8]
	str r0, [r5, #0x68]
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2de4
_020c2e78: .word data_027e0f94

	.global func_ov00_020c2e7c
	arm_func_start func_ov00_020c2e7c
func_ov00_020c2e7c: ; 0x020c2e7c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	bl func_ov00_020bff70
	ldrb r1, [r6, #0x11d]
	mov r4, r0
	cmp r1, #0
	bne _020c2eb4
	mov r1, r6
	bl func_ov14_0213ddd4
	cmp r0, #0
	ldrgesh r1, [r4, #0x70]
	cmpge r1, r0
	movge r5, #1
_020c2eb4:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020c2e7c

	.global func_ov00_020c2ebc
	arm_func_start func_ov00_020c2ebc
func_ov00_020c2ebc: ; 0x020c2ebc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020bff70
	mov r1, r4
	bl func_ov14_0213defc
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c2ebc

	.global func_ov00_020c2ed4
	arm_func_start func_ov00_020c2ed4
func_ov00_020c2ed4: ; 0x020c2ed4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	bl func_ov00_020bff70
	ldr r1, [r4, #8]
	mov r5, r0
	bl func_ov14_0213d440
	movs r6, r0
	bmi _020c2fb0
	mov r0, r5
	bl func_ov14_0213d420
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020c2fcc
	add r2, sp, #0x10
	mov r0, r5
	mov r1, r6
	bl func_ov14_0213d81c
	cmp r0, #0
	beq _020c2fa4
	ldr r1, [sp, #0x10]
	add r0, r4, #0x48
	str r1, [r4, #0x60]
	ldr r2, [sp, #0x14]
	add r1, r4, #0x60
	str r2, [r4, #0x64]
	ldr r3, [sp, #0x18]
	mov r2, r0
	str r3, [r4, #0x68]
	bl func_01ff9bc4
	mov r0, r4
	mov r1, #1
	bl func_01fffd04
	cmp r0, #0
	bne _020c2f8c
	add r1, sp, #0
	mov r0, r4
	bl func_ov00_020c2a0c
	add r2, sp, #0
	mov r0, r5
	mov r1, r6
	bl func_ov14_0213dadc
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c2f8c:
	mov r0, r5
	mov r1, r6
	bl func_ov14_0213d91c
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c2fa4:
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c2fb0:
	ldr r1, [r4, #8]
	mov r0, r5
	bl func_ov14_0213d480
	cmp r0, #0
	addge sp, sp, #0x1c
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, r6, pc}
_020c2fcc:
	ldrb r0, [r5, #0x6a]
	cmp r0, #0
	beq _020c2ff4
	ldr r0, _020c3000 ; =data_027e0d0c
	ldr r1, [r0]
	str r1, [r4, #0x60]
	ldr r1, [r0, #4]
	str r1, [r4, #0x64]
	ldr r0, [r0, #8]
	str r0, [r4, #0x68]
_020c2ff4:
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c2ed4
_020c3000: .word data_027e0d0c

	.global func_ov00_020c3004
	arm_func_start func_ov00_020c3004
func_ov00_020c3004: ; 0x020c3004
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [r0, #0x88]
	mov lr, r1
	cmp ip, #0
	mov r1, #0
	blt _020c3064
	add r0, r0, #0x48
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #4]
	cmp lr, #0
	add r0, r0, ip
	str r0, [sp, #4]
	mov r0, r3
	mov r2, #8
	mov r1, ip
	beq _020c305c
	bl func_0202b864
	mov r1, r0
	b _020c3064
_020c305c:
	bl func_0202b894
	mov r1, r0
_020c3064:
	mov r0, r1
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end func_ov00_020c3004

	.global func_ov00_020c3070
	arm_func_start func_ov00_020c3070
func_ov00_020c3070: ; 0x020c3070
	ldr r2, [r0, #0x64]
	ldr r1, [r0, #0x6c]
	sub r2, r2, r1
	str r2, [r0, #0x64]
	ldr r1, [r0, #0x70]
	rsb r1, r1, #0
	cmp r2, r1
	strlt r1, [r0, #0x64]
	bx lr
	arm_func_end func_ov00_020c3070

	.global func_ov00_020c3094
	arm_func_start func_ov00_020c3094
func_ov00_020c3094: ; 0x020c3094
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r1, [r5, #0x48]
	ldr r0, _020c3108 ; =data_027e0e60
	str r1, [sp, #0xc]
	ldr r1, [r5, #0x4c]
	mov r4, #0
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x50]
	ldr r0, [r0]
	str r1, [sp, #0x14]
	ldr r2, [r5, #0x54]
	add r1, sp, #0xc
	str r2, [sp]
	ldr r3, [r5, #0x58]
	add r2, sp, #0
	str r3, [sp, #4]
	ldr ip, [r5, #0x5c]
	mov r3, r4
	str ip, [sp, #8]
	bl func_ov00_02083ef8
	ldr r1, [r5, #0x4c]
	cmp r1, r0
	movle r4, #1
	strle r0, [r5, #0x4c]
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3094
_020c3108: .word data_027e0e60

	.global func_ov00_020c310c
	arm_func_start func_ov00_020c310c
func_ov00_020c310c: ; 0x020c310c
	add r0, r0, #0x48
	bx lr
	arm_func_end func_ov00_020c310c

	.global func_ov00_020c3114
	arm_func_start func_ov00_020c3114
func_ov00_020c3114: ; 0x020c3114
	bx lr
	arm_func_end func_ov00_020c3114

	.global func_ov00_020c3118
	arm_func_start func_ov00_020c3118
func_ov00_020c3118: ; 0x020c3118
	stmdb sp!, {r3, lr}
	mov r2, r0
	mov ip, #0
	add r0, r2, #0x48
	add r2, r2, #8
	mov r3, #2
	str ip, [sp]
	bl func_ov00_020c5924
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c3118

	.global func_ov00_020c313c
	arm_func_start func_ov00_020c313c
func_ov00_020c313c: ; 0x020c313c
	ldr r0, _020c3154 ; =data_027e0c54
	ldrb r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c313c
_020c3154: .word data_027e0c54

	.global func_ov00_020c3158
	arm_func_start func_ov00_020c3158
func_ov00_020c3158: ; 0x020c3158
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	ldmltia sp!, {r3, pc}
	ldr r0, _020c317c ; =data_027e0e60
	mov r2, #1
	ldr r0, [r0]
	bl func_ov00_02084c5c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3158
_020c317c: .word data_027e0e60

	.global func_ov00_020c3180
	arm_func_start func_ov00_020c3180
func_ov00_020c3180: ; 0x020c3180
	stmdb sp!, {r3, lr}
	mov r1, #0
	strb r1, [r0, #0x118]
	ldrb r1, [r0, #0x119]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020c3158
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c3180

	.global func_ov00_020c31a0
	arm_func_start func_ov00_020c31a0
func_ov00_020c31a0: ; 0x020c31a0
	stmdb sp!, {r3, lr}
	mov r1, #0xa000
	ldr r2, [r0, #0x4c]
	rsb r1, r1, #0
	cmp r2, r1
	ldmgeia sp!, {r3, pc}
	bl func_ov00_020c3180
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c31a0

	.global func_ov00_020c31c0
	arm_func_start func_ov00_020c31c0
func_ov00_020c31c0: ; 0x020c31c0
	stmdb sp!, {r3, lr}
	mov ip, r0
	ldr r0, _020c31e0 ; =data_ov00_020e9c88
	ldr r3, _020c31e4 ; =func_ov00_020c31e8
	add r2, ip, #0x48
	str ip, [sp]
	bl func_ov00_0207b89c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c31c0
_020c31e0: .word data_ov00_020e9c88
_020c31e4: .word func_ov00_020c31e8

	.global func_ov00_020c31e8
	arm_func_start func_ov00_020c31e8
func_ov00_020c31e8: ; 0x020c31e8
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0xac]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c31e8

	.global func_ov00_020c31fc
	arm_func_start func_ov00_020c31fc
func_ov00_020c31fc: ; 0x020c31fc
	bx lr
	arm_func_end func_ov00_020c31fc

	.global func_ov00_020c3200
	arm_func_start func_ov00_020c3200
func_ov00_020c3200: ; 0x020c3200
	ldr ip, _020c3228 ; =data_ov00_020dd370
	mov r2, r1, lsl #0x2
	ldrsh r3, [ip, r2]
	add r2, r0, #0x100
	add r1, ip, r1, lsl #2
	strh r3, [r2, #0x22]
	strh r3, [r2, #0x20]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x124]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c3200
_020c3228: .word data_ov00_020dd370

	.global func_ov00_020c322c
	arm_func_start func_ov00_020c322c
func_ov00_020c322c: ; 0x020c322c
	bx lr
	arm_func_end func_ov00_020c322c

	.global func_ov00_020c3230
	arm_func_start func_ov00_020c3230
func_ov00_020c3230: ; 0x020c3230
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020c3288 ; =data_027e0fc8
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	beq _020c3268
	bl func_ov00_020bc46c
	cmp r0, #0
	beq _020c3268
	mov r0, r5
	mov r1, r4
	bl func_ov00_020c3290
	ldmia sp!, {r3, r4, r5, pc}
_020c3268:
	ldr r0, _020c328c ; =data_027e0f94
	ldr r1, [r0]
	str r1, [r4]
	ldr r1, [r0, #4]
	str r1, [r4, #4]
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3230
_020c3288: .word data_027e0fc8
_020c328c: .word data_027e0f94

	.global func_ov00_020c3290
	arm_func_start func_ov00_020c3290
func_ov00_020c3290: ; 0x020c3290
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _020c331c ; =data_027e0fe4
	mov r4, r1
	ldr r1, [r0]
	ldr r2, _020c3320 ; =0x504c444d
	add r0, sp, #0
	bl func_ov00_020c3894
	ldr r0, _020c331c ; =data_027e0fe4
	add r1, sp, #0
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020c32f8
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x6e]
	cmp r1, #0
	bne _020c32f8
	ldr r1, [r0, #0x48]
	add sp, sp, #8
	str r1, [r4]
	ldr r1, [r0, #0x4c]
	str r1, [r4, #4]
	ldr r0, [r0, #0x50]
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
_020c32f8:
	ldr r0, _020c3324 ; =data_027e0f94
	ldr r1, [r0]
	str r1, [r4]
	ldr r1, [r0, #4]
	str r1, [r4, #4]
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3290
_020c331c: .word data_027e0fe4
_020c3320: .word 0x504c444d
_020c3324: .word data_027e0f94

	.global func_ov00_020c3328
	arm_func_start func_ov00_020c3328
func_ov00_020c3328: ; 0x020c3328
	mov r1, #0xff
	strh r1, [r0]
	mov r1, #1
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #3]
	str r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020c3328

	.global func_ov00_020c3348
	arm_func_start func_ov00_020c3348
func_ov00_020c3348: ; 0x020c3348
	mov r2, #0
	strh r2, [r0, #0x14]
	sub r1, r2, #1
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	bx lr
	arm_func_end func_ov00_020c3348

	.global func_ov00_020c336c
	thumb_func_start func_ov00_020c336c
func_ov00_020c336c: ; 0x020c336c
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl func_0202ea24
	add r0, r5, #0
	mov r1, #0x33
	add r2, r4, #0
	mov r3, #0x80
	bl func_0202ea50
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020c336c

	.global func_ov00_020c3388
	thumb_func_start func_ov00_020c3388
func_ov00_020c3388: ; 0x020c3388
	push {r4, lr}
	ldr r1, _020c33a8 ; =data_027e0ce0
	add r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, #0x18
	mov r2, #4
	blx _ZN9SysObjectnwEmPjj
	cmp r0, #0
	beq _020c33a2
	add r1, r4, #0
	bl func_ov00_020c336c
_020c33a2:
	ldr r1, _020c33ac ; =data_027e0fe0
	str r0, [r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020c3388
_020c33a8: .word data_027e0ce0
_020c33ac: .word data_027e0fe0

	.global func_ov00_020c33b0
	thumb_func_start func_ov00_020c33b0
func_ov00_020c33b0: ; 0x020c33b0
	push {r4, lr}
	ldr r0, _020c33d0 ; =data_027e0fe0
	ldr r4, [r0]
	cmp r4, #0
	beq _020c33c6
	add r0, r4, #0
	bl func_0202ea34
	add r0, r4, #0
	blx _ZN9SysObjectdlEPv
_020c33c6:
	ldr r0, _020c33d0 ; =data_027e0fe0
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020c33b0
_020c33d0: .word data_027e0fe0

	.global func_ov00_020c33d4
	arm_func_start func_ov00_020c33d4
func_ov00_020c33d4: ; 0x020c33d4
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _020c3404
	mov r1, r5, lsl #0x10
	ldr r0, [r6, #0x14]
	mov r1, r1, lsr #0x10
	bl func_ov00_020c3f54
	ldr r0, [r6, #0x10]
	ldr r0, [r0, r5, lsl #2]
	bl func_ov00_020c2840
_020c3404:
	ldr r0, [r6, #0x10]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _020c3420
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020c3420:
	ldr r0, [r6, #0x10]
	mov r1, #0
	str r1, [r0, r5, lsl #2]
	cmp r4, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r0, [r6, #2]
	add r1, r5, #1
	sub r0, r0, #1
	strh r0, [r6, #2]
	ldr r0, [r6, #4]
	cmp r1, r0
	ldmneia sp!, {r4, r5, r6, pc}
	subs r1, r5, #1
	bmi _020c3470
	ldr r2, [r6, #0x10]
_020c345c:
	ldr r0, [r2, r1, lsl #2]
	cmp r0, #0
	bne _020c3470
	subs r1, r1, #1
	bpl _020c345c
_020c3470:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020c33d4

	.global func_ov00_020c3484
	arm_func_start func_ov00_020c3484
func_ov00_020c3484: ; 0x020c3484
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mvn r3, #0
	str r3, [sl]
	ldr r0, _020c3570 ; =data_027e103c
	str r3, [sl, #4]
	ldr r0, [r0]
	mov sb, r2
	ldrb r0, [r0, #0x24]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _020c3574 ; =data_027e077c
	ldr r2, _020c3578 ; =data_02056be4
	ldr r0, [r0]
	ldr r6, [r1, #0x10]
	ldrb r0, [r2, r0]
	sub r5, r3, #0x80000000
	tst r0, #1
	ldr r0, [r1, #4]
	movne r8, #1
	moveq r8, #0
	add r7, r6, r0, lsl #2
	cmp r6, r7
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r4, #0
_020c34e8:
	ldr r0, [r6]
	cmp r0, #0
	ldrneb r1, [r0, #0x118]
	cmpne r1, #0
	beq _020c3560
	mov r1, sb
	bl func_ov00_020c27a8
	cmp r0, #0
	beq _020c3560
	ldr r0, [r6]
	ldrb r1, [r0, #0xa4]
	cmp r1, #0
	cmpeq r8, #0
	beq _020c3560
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x40]
	blx r2
	cmp r0, #0
	beq _020c3560
	ldr r0, [r6]
	bl func_ov00_020c28d4
	cmp r0, r5
	bge _020c3560
	ldr r1, [r6]
	mov r5, r0
	ldr r0, [r1, #8]
	str r0, [sl]
	ldr r0, [r1, #0xc]
	str r0, [sl, #4]
_020c3560:
	add r6, r6, #4
	cmp r6, r7
	blo _020c34e8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3484
_020c3570: .word data_027e103c
_020c3574: .word data_027e077c
_020c3578: .word data_02056be4

	.global func_ov00_020c357c
	arm_func_start func_ov00_020c357c
func_ov00_020c357c: ; 0x020c357c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	ldr r7, [r5, #0x10]
	mov r4, r1
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
_020c359c:
	ldr r0, [r7]
	cmp r0, #0
	ldrneb r1, [r0, #0x118]
	cmpne r1, #0
	beq _020c35c0
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x10]
	blx r2
_020c35c0:
	ldr r0, [r5, #4]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #4
	blt _020c359c
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020c357c

	.global func_ov00_020c35d8
	arm_func_start func_ov00_020c35d8
func_ov00_020c35d8: ; 0x020c35d8
	stmdb sp!, {r3, lr}
	cmp r1, #0
	mov ip, #0
	blt _020c366c
	ldr r3, [r0, #8]
	cmp r3, #0
	blt _020c3628
	ldr r2, [r0, #4]
	cmp r3, r2
	bge _020c3628
	ldr r2, [r0, #0x10]
	ldr r3, [r2, r3, lsl #2]
	cmp r3, #0
	ldrneb r2, [r3, #0x118]
	cmpne r2, #0
	beq _020c3628
	ldr r2, [r3, #8]
	cmp r1, r2
	moveq ip, r3
	beq _020c366c
_020c3628:
	ldr r3, [r0, #0x10]
	ldr r0, [r0, #4]
	add lr, r3, r0, lsl #2
	cmp r3, lr
	bhs _020c366c
_020c363c:
	ldr r2, [r3]
	cmp r2, #0
	ldrneb r0, [r2, #0x118]
	cmpne r0, #0
	beq _020c3660
	ldr r0, [r2, #8]
	cmp r1, r0
	moveq ip, r2
	beq _020c366c
_020c3660:
	add r3, r3, #4
	cmp r3, lr
	blo _020c363c
_020c366c:
	mov r0, ip
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c35d8

	.global func_ov00_020c3674
	arm_func_start func_ov00_020c3674
func_ov00_020c3674: ; 0x020c3674
	ldr r2, [r1, #4]
	cmp r2, #0
	movlt r0, #0
	bxlt lr
	ldr r0, [r0, #0x10]
	ldr r0, [r0, r2, lsl #2]
	cmp r0, #0
	ldrneb r2, [r0, #0x118]
	cmpne r2, #0
	beq _020c36ac
	ldr r2, [r1]
	ldr r1, [r0, #8]
	cmp r2, r1
	bxeq lr
_020c36ac:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020c3674

	.global func_ov00_020c36b4
	arm_func_start func_ov00_020c36b4
func_ov00_020c36b4: ; 0x020c36b4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	addne sp, sp, #0x18
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #8]
	mvn r0, #0
	cmp r1, r0
	ldrne r0, [r4, #0x34]
	cmpne r1, r0
	addne sp, sp, #0x18
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr ip, [r5, #0x10]
	cmp ip, #0
	beq _020c3748
	mov r3, #0
	ldr r1, [ip]
	sub r0, r3, #1
	cmp r1, r0
	beq _020c3748
	mvn r0, #0
_020c3720:
	ldr r2, [ip, r3, lsl #3]
	ldr r1, [r4, #8]
	cmp r2, r1
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r3, r3, #1
	ldr r1, [ip, r3, lsl #3]
	cmp r1, r0
	bne _020c3720
_020c3748:
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _020c3794
	ldr r0, [r4, #0x48]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x4c]
	add r0, r5, #0x18
	str r2, [sp, #0x10]
	ldr r2, [r4, #0x50]
	str r2, [sp, #0x14]
	bl func_ov00_0208e7a4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_020c3794:
	ldrb r0, [r5, #0x30]
	cmp r0, #0
	beq _020c37e0
	ldr r0, [r4, #0x48]
	add r1, sp, #0
	str r0, [sp]
	ldr r2, [r4, #0x4c]
	add r0, r5, #0x34
	str r2, [sp, #4]
	ldr r2, [r4, #0x50]
	str r2, [sp, #8]
	bl func_ov00_0208f318
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_020c37e0:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c36b4

	.global func_ov00_020c37ec
	arm_func_start func_ov00_020c37ec
func_ov00_020c37ec: ; 0x020c37ec
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r2
	mov r4, #0
	strne r4, [r7, #8]
	ldr r5, [r0, #0x10]
	ldr r0, [r0, #4]
	mov r8, r1
	add r6, r5, r0, lsl #2
	cmp r5, r6
	bhs _020c388c
_020c3814:
	ldr r1, [r5]
	cmp r1, #0
	ldrneb r0, [r1, #0x118]
	cmpne r0, #0
	beq _020c3880
	mov r0, r8
	ldr r2, [r0]
	ldr r2, [r2]
	blx r2
	cmp r0, #0
	beq _020c3880
	cmp r7, #0
	beq _020c387c
	ldmib r7, {r0, ip}
	cmp ip, r0
	bge _020c387c
	ldr r1, [r5]
	ldr r2, [r7]
	ldr r0, [r1, #8]
	add r3, r2, ip, lsl #3
	str r0, [r2, ip, lsl #3]
	ldr r0, [r1, #0xc]
	str r0, [r3, #4]
	ldr r0, [r7, #8]
	add r0, r0, #1
	str r0, [r7, #8]
_020c387c:
	add r4, r4, #1
_020c3880:
	add r5, r5, #4
	cmp r5, r6
	blo _020c3814
_020c388c:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end func_ov00_020c37ec

	.global func_ov00_020c3894
	arm_func_start func_ov00_020c3894
func_ov00_020c3894: ; 0x020c3894
	stmdb sp!, {r3, lr}
	mvn r3, #0
	str r3, [r0]
	str r3, [r0, #4]
	ldr ip, [r1, #0x10]
	ldr r1, [r1, #4]
	add lr, ip, r1, lsl #2
	cmp ip, lr
	ldmhsia sp!, {r3, pc}
_020c38b8:
	ldr r3, [ip]
	cmp r3, #0
	ldrneb r1, [r3, #0x118]
	cmpne r1, #0
	beq _020c38ec
	ldr r1, [r3, #4]
	cmp r2, r1
	bne _020c38ec
	ldr r1, [r3, #8]
	str r1, [r0]
	ldr r1, [r3, #0xc]
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
_020c38ec:
	add ip, ip, #4
	cmp ip, lr
	blo _020c38b8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c3894

	.global func_ov00_020c38fc
	arm_func_start func_ov00_020c38fc
func_ov00_020c38fc: ; 0x020c38fc
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mvn r4, #0
	mov sb, r0
	str r4, [sb]
	str r4, [sb, #4]
	ldr r5, [r1, #0x10]
	ldr r0, [r1, #4]
	mov r8, r2
	add r6, r5, r0, lsl #2
	mov r7, r3
	sub r4, r4, #0x80000000
	cmp r5, r6
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020c3930:
	ldr r2, [r5]
	cmp r2, #0
	ldrneb r0, [r2, #0x118]
	cmpne r0, #0
	beq _020c397c
	ldr r0, [r2, #4]
	cmp r8, r0
	bne _020c397c
	mov r1, r7
	add r0, r2, #0x48
	bl func_01ff9ec0
	cmp r0, r4
	bge _020c397c
	ldr r1, [r5]
	mov r4, r0
	ldr r0, [r1, #8]
	str r0, [sb]
	ldr r0, [r1, #0xc]
	str r0, [sb, #4]
_020c397c:
	add r5, r5, #4
	cmp r5, r6
	blo _020c3930
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end func_ov00_020c38fc

	.global func_ov00_020c398c
	arm_func_start func_ov00_020c398c
func_ov00_020c398c: ; 0x020c398c
	ldr ip, _020c3998 ; =func_ov00_020c3f08
	ldr r0, [r0, #0x14]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c398c
_020c3998: .word func_ov00_020c3f08

	.global func_ov00_020c399c
	arm_func_start func_ov00_020c399c
func_ov00_020c399c: ; 0x020c399c
	ldr ip, _020c39a8 ; =func_ov00_020c3f3c
	ldr r0, [r0, #0x14]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c399c
_020c39a8: .word func_ov00_020c3f3c

	.global func_ov00_020c39ac
	arm_func_start func_ov00_020c39ac
func_ov00_020c39ac: ; 0x020c39ac
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	movs r8, r2
	mov sl, r0
	mov sb, r1
	mov r7, r3
	bne _020c39d8
	cmp r7, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c39d8:
	ldr r0, [sl, #0x10]
	mov r4, #0
	ldr fp, [r0, sb, lsl #2]
	cmp fp, #0
	ldrneb r0, [fp, #0x118]
	cmpne r0, #0
	beq _020c3b20
	ldr r0, [sl, #4]
	cmp r8, #0
	cmpeq r7, #0
	moveq r6, #1
	movne r6, #0
	mov r5, #0
	cmp r0, #0
	ble _020c3b20
_020c3a14:
	cmp r5, sb
	ldrne r0, [sl, #0x10]
	ldrne r0, [r0, r5, lsl #2]
	cmpne r0, #0
	beq _020c3b08
	ldr r0, [sl, #0x14]
	mov r1, r5
	bl func_ov00_020c3f08
	cmp r0, #0
	beq _020c3b08
	cmp r6, #0
	bne _020c3a60
	ldr r0, [sl, #0x10]
	mov r1, r8
	ldr r0, [r0, r5, lsl #2]
	ldr r0, [r0, #4]
	bl func_ov00_020c3e1c
	cmp r7, r0
	beq _020c3b08
_020c3a60:
	ldr r0, [sl, #0x10]
	add r3, sp, #0
	ldr r0, [r0, r5, lsl #2]
	add ip, r0, #0x7c
	ldmia ip, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [ip, #0xc]
	mov r1, r5
	str r0, [sp, #0xc]
	ldr r0, [sl, #0x14]
	bl func_ov00_020c3ef0
	ldr r1, [sl, #0x10]
	ldr r3, [r0]
	ldr r2, [r1, r5, lsl #2]
	mov r1, fp
	str r3, [r2, #0x7c]
	ldr r3, [r0, #4]
	str r3, [r2, #0x80]
	ldr r3, [r0, #8]
	str r3, [r2, #0x84]
	ldr r0, [r0, #0xc]
	str r0, [r2, #0x88]
	ldr r0, [sl, #0x10]
	ldr r0, [r0, r5, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	cmp r0, #0
	ldrne r0, [sl, #0x10]
	ldr r1, [sl, #0x10]
	ldrne r4, [r0, r5, lsl #2]
	ldr r0, [sp]
	ldr r1, [r1, r5, lsl #2]
	cmp r4, #0
	str r0, [r1, #0x7c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x80]
	ldr r0, [sp, #8]
	str r0, [r1, #0x84]
	ldr r0, [sp, #0xc]
	str r0, [r1, #0x88]
	bne _020c3b20
_020c3b08:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	ldr r1, [sl, #4]
	mov r5, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bgt _020c3a14
_020c3b20:
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov00_020c39ac

	.global func_ov00_020c3b2c
	arm_func_start func_ov00_020c3b2c
func_ov00_020c3b2c: ; 0x020c3b2c
	stmdb sp!, {r4, lr}
	cmp r1, #0
	movne r2, #0
	strne r2, [r1]
	ldr r2, [r0, #4]
	mov lr, #0
	mov ip, lr
	cmp r2, #0
	ldr r4, [r0, #0x10]
	ble _020c3ba8
_020c3b54:
	ldr r3, [r4]
	cmp r3, #0
	ldrneb r2, [r3, #0x118]
	cmpne r2, #0
	ldrneb r2, [r3, #0x128]
	cmpne r2, #0
	beq _020c3b94
	cmp r1, #0
	beq _020c3b90
	add r2, r3, #0x100
	ldrsh r2, [r2, #0x20]
	cmp r2, #0
	ldrgt r2, [r1]
	addgt r2, r2, #1
	strgt r2, [r1]
_020c3b90:
	add lr, lr, #1
_020c3b94:
	ldr r2, [r0, #4]
	add ip, ip, #1
	cmp ip, r2
	add r4, r4, #4
	blt _020c3b54
_020c3ba8:
	mov r0, lr
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c3b2c

	.global func_ov00_020c3bb0
	arm_func_start func_ov00_020c3bb0
func_ov00_020c3bb0: ; 0x020c3bb0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xd4
	movs sl, r2
	str r0, [sp]
	movne r0, #0
	strne r0, [sl]
	ldr r0, _020c3ce4 ; =data_027e0e60
	add r2, sp, #0x14
	ldr r0, [r0]
	mov r3, #8
	bl func_ov00_020836cc
	mov r5, r0
	cmp r5, #0
	addle sp, sp, #0xd4
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp]
	mov fp, #0
	ldr r0, [r0, #4]
	str fp, [sp, #4]
	cmp r0, #0
	ldr r0, [sp]
	ldr r7, [r0, #0x10]
	ble _020c3cd8
_020c3c10:
	ldr r1, [r7]
	cmp r1, #0
	ldrneb r0, [r1, #0x118]
	cmpne r0, #0
	ldrneb r0, [r1, #0x128]
	cmpne r0, #0
	beq _020c3cb8
	mov r6, #0
	mov r8, r6
	cmp r5, #0
	ble _020c3c88
	add sb, sp, #0x14
	add r4, sp, #8
_020c3c44:
	ldr r3, [r7]
	mov r0, sb
	ldr r2, [r3, #0x48]
	mov r1, r4
	str r2, [sp, #8]
	ldr r2, [r3, #0x4c]
	str r2, [sp, #0xc]
	ldr r2, [r3, #0x50]
	str r2, [sp, #0x10]
	bl func_ov00_0208e7a4
	cmp r0, #0
	movne r6, #1
	bne _020c3c88
	add r8, r8, #1
	cmp r8, r5
	add sb, sb, #0x18
	blt _020c3c44
_020c3c88:
	cmp r6, #0
	beq _020c3cb8
	cmp sl, #0
	beq _020c3cb4
	ldr r0, [r7]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	ldrgt r0, [sl]
	addgt r0, r0, #1
	strgt r0, [sl]
_020c3cb4:
	add fp, fp, #1
_020c3cb8:
	ldr r0, [sp]
	add r7, r7, #4
	ldr r1, [r0, #4]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, r1
	blt _020c3c10
_020c3cd8:
	mov r0, fp
	add sp, sp, #0xd4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3bb0
_020c3ce4: .word data_027e0e60

	.global func_ov00_020c3ce8
	arm_func_start func_ov00_020c3ce8
func_ov00_020c3ce8: ; 0x020c3ce8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xcc
	ldr r3, _020c3dcc ; =data_027e0e60
	mov fp, r0
	ldr r0, [r3]
	mov sl, r2
	add r2, sp, #0xc
	mov r3, #8
	bl func_ov00_020836cc
	mov r5, r0
	cmp r5, #0
	addle sp, sp, #0xcc
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [fp, #4]
	ldr r7, [fp, #0x10]
	cmp r0, #0
	mov r6, #0
	addle sp, sp, #0xcc
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sp, #0
_020c3d38:
	ldr r1, [r7]
	cmp r1, #0
	ldrneb r0, [r1, #0x118]
	cmpne r0, #0
	ldrneb r0, [r1, #0x128]
	cmpne r0, #0
	beq _020c3db0
	mov r8, #0
	cmp r5, #0
	ble _020c3db0
	add sb, sp, #0xc
_020c3d64:
	ldr r3, [r7]
	mov r0, sb
	ldr r2, [r3, #0x48]
	mov r1, r4
	str r2, [sp]
	ldr r2, [r3, #0x4c]
	str r2, [sp, #4]
	ldr r2, [r3, #0x50]
	str r2, [sp, #8]
	bl func_ov00_0208e72c
	cmp r0, #0
	beq _020c3da0
	ldr r0, [r7]
	mov r1, sl
	bl func_ov00_020c1898
_020c3da0:
	add r8, r8, #1
	cmp r8, r5
	add sb, sb, #0x18
	blt _020c3d64
_020c3db0:
	ldr r0, [fp, #4]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #4
	blt _020c3d38
	add sp, sp, #0xcc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3ce8
_020c3dcc: .word data_027e0e60

	.global func_ov00_020c3dd0
	arm_func_start func_ov00_020c3dd0
func_ov00_020c3dd0: ; 0x020c3dd0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrh r0, [r6]
	ldr r5, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
_020c3dec:
	ldr r0, [r5]
	cmp r0, #0
	beq _020c3e04
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
_020c3e04:
	ldrh r0, [r6]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _020c3dec
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020c3dd0

	.global func_ov00_020c3e1c
	arm_func_start func_ov00_020c3e1c
func_ov00_020c3e1c: ; 0x020c3e1c
	ldr ip, [r1]
	ldr r2, _020c3e50 ; =0x4e554c4c
	mov r3, #0
	cmp ip, r2
	beq _020c3e48
_020c3e30:
	cmp r0, ip
	moveq r3, #1
	beq _020c3e48
	ldr ip, [r1, #4]!
	cmp ip, r2
	bne _020c3e30
_020c3e48:
	mov r0, r3
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c3e1c
_020c3e50: .word 0x4e554c4c

	.global func_ov00_020c3e54
	arm_func_start func_ov00_020c3e54
func_ov00_020c3e54: ; 0x020c3e54
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020c3e54

	.global func_ov00_020c3e5c
	arm_func_start func_ov00_020c3e5c
func_ov00_020c3e5c: ; 0x020c3e5c
	stmdb sp!, {r3, r4, r5, lr}
	mov r3, r1, asr #0x4
	add r3, r1, r3, lsr #27
	ldr r5, [r0, #4]
	mov r4, r3, asr #0x5
	ldr lr, [r5, r4, lsl #2]
	and r3, r1, #0x1f
	mov ip, #1
	orr r3, lr, ip, lsl r3
	str r3, [r5, r4, lsl #2]
	ldr r3, [r0, #8]
	ldr r0, [r2]
	add ip, r3, r1, lsl #4
	str r0, [r3, r1, lsl #4]
	ldr r0, [r2, #4]
	str r0, [ip, #4]
	ldr r0, [r2, #8]
	str r0, [ip, #8]
	ldr r0, [r2, #0xc]
	str r0, [ip, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c3e5c

	.global func_ov00_020c3eb0
	arm_func_start func_ov00_020c3eb0
func_ov00_020c3eb0: ; 0x020c3eb0
	ldrb r1, [r0, #2]
	ldr ip, _020c3eec ; =func_02007938
	eor r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	eor r1, r1, #1
	strb r1, [r0, #3]
	ldrb r1, [r0, #2]
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #4]
	mov r0, #0
	ldrh r2, [r1]
	ldr r1, [r1, #4]
	mov r2, r2, lsl #0x2
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c3eb0
_020c3eec: .word func_02007938

	.global func_ov00_020c3ef0
	arm_func_start func_ov00_020c3ef0
func_ov00_020c3ef0: ; 0x020c3ef0
	ldrb r2, [r0, #3]
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end func_ov00_020c3ef0

	.global func_ov00_020c3f08
	arm_func_start func_ov00_020c3f08
func_ov00_020c3f08: ; 0x020c3f08
	ldrb r3, [r0, #3]
	mov r2, r1, asr #0x4
	add r2, r1, r2, lsr #27
	add r0, r0, r3, lsl #2
	ldr r3, [r0, #4]
	mov r0, r2, asr #0x5
	ldr r2, [r3, #4]
	and r3, r1, #0x1f
	ldr r1, [r2, r0, lsl #2]
	mov r0, #1
	tst r1, r0, lsl r3
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020c3f08

	.global func_ov00_020c3f3c
	arm_func_start func_ov00_020c3f3c
func_ov00_020c3f3c: ; 0x020c3f3c
	ldrb r3, [r0, #2]
	ldr ip, _020c3f50 ; =func_ov00_020c3e5c
	add r0, r0, r3, lsl #2
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c3f3c
_020c3f50: .word func_ov00_020c3e5c

	.global func_ov00_020c3f54
	arm_func_start func_ov00_020c3f54
func_ov00_020c3f54: ; 0x020c3f54
	stmdb sp!, {r3, lr}
	mov r2, r1, asr #0x4
	add r2, r1, r2, lsr #27
	and r1, r1, #0x1f
	mov r3, #1
	mvn lr, r3, lsl r1
	mov r3, r2, asr #0x5
	mov ip, #0
_020c3f74:
	add r1, r0, ip, lsl #2
	ldr r1, [r1, #4]
	add ip, ip, #1
	ldr r2, [r1, #4]
	cmp ip, #2
	ldr r1, [r2, r3, lsl #2]
	and r1, r1, lr
	str r1, [r2, r3, lsl #2]
	blt _020c3f74
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c3f54

	.global func_ov00_020c3f9c
	arm_func_start func_ov00_020c3f9c
func_ov00_020c3f9c: ; 0x020c3f9c
	stmdb sp!, {r3, lr}
	ldr r1, _020c3fcc ; =data_027e0ce0
	mov r0, #1
	ldr r1, [r1, #4]
	mov r2, #4
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	beq _020c3fc0
	bl func_ov00_020c400c
_020c3fc0:
	ldr r1, _020c3fd0 ; =data_027e0fe8
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3f9c
_020c3fcc: .word data_027e0ce0
_020c3fd0: .word data_027e0fe8

	.global func_ov00_020c3fd4
	arm_func_start func_ov00_020c3fd4
func_ov00_020c3fd4: ; 0x020c3fd4
	stmdb sp!, {r4, lr}
	ldr r0, _020c4008 ; =data_027e0fe8
	ldr r4, [r0]
	cmp r4, #0
	beq _020c3ff8
	mov r0, r4
	bl func_ov00_020c4010
	mov r0, r4
	bl _ZN9SysObjectdlEPv
_020c3ff8:
	ldr r0, _020c4008 ; =data_027e0fe8
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c3fd4
_020c4008: .word data_027e0fe8

	.global func_ov00_020c400c
	arm_func_start func_ov00_020c400c
func_ov00_020c400c: ; 0x020c400c
	bx lr
	arm_func_end func_ov00_020c400c

	.global func_ov00_020c4010
	arm_func_start func_ov00_020c4010
func_ov00_020c4010: ; 0x020c4010
	bx lr
	arm_func_end func_ov00_020c4010

	.global func_ov00_020c4014
	arm_func_start func_ov00_020c4014
func_ov00_020c4014: ; 0x020c4014
	bx lr
	arm_func_end func_ov00_020c4014

	.global func_ov00_020c4018
	arm_func_start func_ov00_020c4018
func_ov00_020c4018: ; 0x020c4018
	bx lr
	arm_func_end func_ov00_020c4018

	.global func_ov00_020c401c
	arm_func_start func_ov00_020c401c
func_ov00_020c401c: ; 0x020c401c
	stmdb sp!, {r4, lr}
	mov r0, r1
	mov r4, #0
	bl func_0203e868
	cmp r0, #0
	beq _020c4040
	ldr r0, [r0, #4]
	blx r0
	mov r4, r0
_020c4040:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c401c

	.global func_ov00_020c4048
	arm_func_start func_ov00_020c4048
func_ov00_020c4048: ; 0x020c4048
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _020c42cc ; =data_027e0fe4
	mov fp, r1
	ldr r7, [r4]
	mov sl, r2
	ldrh r2, [r7]
	mov sb, r3
	ldr r8, [sp, #0x28]
	cmp r2, #0
	ldr r6, [r7, #0x10]
	mvn r4, #0
	mov r5, #0
	ble _020c42ac
_020c407c:
	ldr r1, [r6]
	cmp r1, #0
	bne _020c429c
	mov r1, fp
	bl func_ov00_020c401c
	str r0, [r6]
	cmp r0, #0
	bne _020c40b4
	cmp r8, #0
	mvnne r0, #0
	strne r0, [r8]
	strne r0, [r8, #4]
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c40b4:
	str fp, [r0, #4]
	ldr r1, [r7, #0xc]
	ldr r0, [r6]
	str r1, [r0, #8]
	ldr r0, [r6]
	str r5, [r0, #0xc]
	ldr r1, [r6]
	ldr r0, [sl]
	str r0, [r1, #0x14]
	ldr r0, [sl, #4]
	str r0, [r1, #0x18]
	ldr r0, [sl, #8]
	str r0, [r1, #0x1c]
	ldrh r2, [sb]
	ldrh r1, [sb, #2]
	ldr r0, [r6]
	strh r2, [r0, #0x20]
	strh r1, [r0, #0x22]
	ldrh r2, [sb, #4]
	ldrh r1, [sb, #6]
	strh r2, [r0, #0x24]
	strh r1, [r0, #0x26]
	ldrb r2, [sb, #8]
	ldrb r1, [sb, #9]
	strb r2, [r0, #0x28]
	strb r1, [r0, #0x29]
	ldrb r2, [sb, #0xa]
	ldrb r1, [sb, #0xb]
	strb r2, [r0, #0x2a]
	strb r1, [r0, #0x2b]
	ldrsb r1, [sb, #0xc]
	strb r1, [r0, #0x2c]
	ldrb r1, [sb, #0xd]
	strb r1, [r0, #0x2d]
	ldrb r1, [sb, #0xe]
	strb r1, [r0, #0x2e]
	ldrsb r1, [sb, #0xf]
	strb r1, [r0, #0x2f]
	ldr r1, [sb, #0x10]
	str r1, [r0, #0x30]
	ldrsh r1, [sb, #0x14]
	ldr r0, [r6]
	strh r1, [r0, #0x78]
	ldrsh r1, [sb, #0x14]
	ldr r0, [r6]
	strh r1, [r0, #0x12]
	ldrsh r0, [sb, #0x14]
	bl func_0202bbbc
	ldr r2, [r6]
	ldr r1, _020c42d0 ; =0x0000ffff
	str r0, [r2, #0x74]
	ldr r2, [sb, #0x18]
	ldr r0, [r6]
	cmp r2, r1
	subge r1, r1, #0x10000
	strge r1, [r0, #0x3c]
	strlt r2, [r0, #0x3c]
	ldr r2, [r6]
	ldr r1, [sb, #0x1c]
	ldr r0, _020c42d4 ; =data_027e0e60
	str r1, [r2, #0x34]
	ldr r1, [sb, #0x20]
	str r1, [r2, #0x38]
	ldr r2, [sb, #0x24]
	ldr r1, [r6]
	str r2, [r1, #0x140]
	ldr r2, [sb, #0x28]
	ldr r1, [r6]
	str r2, [r1, #0x144]
	ldr r2, [r6]
	ldr r1, [sl]
	str r1, [r2, #0x48]
	ldr r1, [sl, #4]
	str r1, [r2, #0x4c]
	ldr r1, [sl, #8]
	str r1, [r2, #0x50]
	ldr r1, [sl]
	str r1, [r2, #0x54]
	ldr r1, [sl, #4]
	str r1, [r2, #0x58]
	ldr r1, [sl, #8]
	str r1, [r2, #0x5c]
	ldr r0, [r0]
	bl func_ov00_02082d28
	ldr r2, [r6]
	ldr r1, _020c42d4 ; =data_027e0e60
	strb r0, [r2, #0x10]
	ldr r0, [r1]
	bl func_ov00_02082d34
	ldr r2, [r6]
	add r1, r5, #1
	strb r0, [r2, #0x11]
	mov r0, r1, lsl #0x10
	ldr r1, [r7, #4]
	mov r2, r0, lsr #0x10
	cmp r1, r0, lsr #16
	strlt r2, [r7, #4]
	str r5, [r7, #8]
	ldr r4, [r7, #0xc]
	cmp r8, #0
	stmneia r8, {r4, r5}
	ldr r0, [r7, #0xc]
	add r0, r0, #1
	str r0, [r7, #0xc]
	ldrh r0, [r7, #2]
	add r0, r0, #1
	strh r0, [r7, #2]
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _020c42ac
	ldr r0, [r6]
	mov r1, #0
	strb r1, [r0, #0x118]
	cmp r8, #0
	subne r0, r1, #1
	strne r0, [r8]
	strne r0, [r8, #4]
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c429c:
	add r5, r5, #1
	cmp r5, r2
	add r6, r6, #4
	blt _020c407c
_020c42ac:
	mvn r0, #0
	cmp r4, r0
	bne _020c42c4
	cmp r8, #0
	strne r0, [r8]
	strne r0, [r8, #4]
_020c42c4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c4048
_020c42cc: .word data_027e0fe4
_020c42d0: .word 0x0000ffff
_020c42d4: .word data_027e0e60

	.global func_ov00_020c42d8
	arm_func_start func_ov00_020c42d8
func_ov00_020c42d8: ; 0x020c42d8
	ldr r2, _020c42e8 ; =data_ov00_020ddfa0
	mov r1, #0xc
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c42d8
_020c42e8: .word data_ov00_020ddfa0

	.global func_ov00_020c42ec
	arm_func_start func_ov00_020c42ec
func_ov00_020c42ec: ; 0x020c42ec
	ldr r2, _020c4318 ; =data_ov00_020ddad8
	mov r3, #0
_020c42f4:
	ldr r1, [r2, r3, lsl #3]
	cmp r0, r1
	addeq r0, r2, r3, lsl #3
	bxeq lr
	add r3, r3, #1
	cmp r3, #0x99
	blt _020c42f4
	mov r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c42ec
_020c4318: .word data_ov00_020ddad8

	.global func_ov00_020c431c
	arm_func_start func_ov00_020c431c
func_ov00_020c431c: ; 0x020c431c
	mov r3, #0
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	sub r1, r3, #1
	ldr r2, _020c4378 ; =data_02057878
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldr r1, _020c437c ; =data_02057840
	str r3, [r0, #0x20]
	str r1, [r0, #0x14]
	ldr r1, _020c4380 ; =data_ov00_020e835c
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	str r3, [r0, #0x2c]
	ldr r1, _020c4384 ; =data_0205785c
	str r3, [r0, #0x30]
	str r1, [r0, #0x24]
	strb r3, [r0, #0x34]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c431c
_020c4378: .word data_02057878
_020c437c: .word data_02057840
_020c4380: .word data_ov00_020e835c
_020c4384: .word data_0205785c

	.global func_ov00_020c4388
	arm_func_start func_ov00_020c4388
func_ov00_020c4388: ; 0x020c4388
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x24
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [r4]
	cmp r0, #0
	beq _020c43b8
	blx func_0202d5dc
	mov r0, #0
	str r0, [r4]
_020c43b8:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c4388

	.global func_ov00_020c43c8
	arm_func_start func_ov00_020c43c8
func_ov00_020c43c8: ; 0x020c43c8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x88
	mov r5, r0
	ldr r0, [r5]
	cmp r0, #0
	addne sp, sp, #0x88
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10]
	bl func_ov00_020c42d8
	ldr r1, _020c4560 ; =data_ov00_020e77bc
	mov r4, r0
	ldr r1, [r1]
	add r0, sp, #0x48
	bl func_02047024
	ldr r1, [r4, #4]
	add r0, sp, #0x48
	bl func_0204713c
	ldr r1, _020c4564 ; =data_ov00_020e8364
	add r0, sp, #0x48
	bl func_0204713c
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, _020c4568 ; =data_027e0ce0
	ldr r2, [r4]
	ldr r1, [r1, #4]
	mov r0, #0xb3
	add r3, sp, #0x48
	blx func_0202d598
	str r0, [r5]
	ldr r1, [r4]
	add r0, sp, #0x48
	bl func_02047024
	ldr r1, _020c456c ; =data_ov00_020e836c
	add r0, sp, #0x48
	bl func_0204713c
	add r0, sp, #0x48
	blx func_02016fe8
	cmp r0, #0
	beq _020c4534
	ldr r1, _020c4560 ; =data_ov00_020e77bc
	add r0, sp, #8
	ldr r1, [r1]
	bl func_02047024
	ldr r1, [r4, #4]
	add r0, sp, #8
	bl func_0204713c
	ldr r1, _020c4570 ; =data_ov00_020e837c
	add r0, sp, #8
	bl func_0204713c
	add r0, r5, #0x14
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r1, sp, #0x48
	add r0, r5, #0x24
	str r1, [r5, #0x18]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, sp, #8
	str r0, [r5, #0x28]
	ldr r0, [r4, #8]
	mov r3, #0
	tst r0, #0x400
	moveq r2, #1
	movne r2, #0
	tst r0, #0x800
	ldrne r0, _020c4574 ; =data_027e0d38
	ldrne r0, [r0]
	cmpne r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #1
	beq _020c4508
	ldr r0, _020c4578 ; =gOverlayManager
	ldr r1, _020c457c ; =0x0000001d
	ldr r0, [r0, #0x18]
	cmp r0, r1
	ldreq r3, _020c4580 ; =func_ov29_0216d918
_020c4508:
	add r0, r5, #0x14
	add r1, r5, #0x24
	blx func_ov00_020bd728
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r5, #0x2c]
	bl func_0201e4cc
	str r0, [r5, #8]
_020c4534:
	ldr r1, [r4]
	add r0, sp, #0x48
	bl func_02047024
	ldr r1, _020c4584 ; =data_ov00_020e8384
	add r0, sp, #0x48
	bl func_0204713c
	add r0, sp, #0x48
	blx func_02016fe8
	str r0, [r5, #0xc]
	add sp, sp, #0x88
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c43c8
_020c4560: .word data_ov00_020e77bc
_020c4564: .word data_ov00_020e8364
_020c4568: .word data_027e0ce0
_020c456c: .word data_ov00_020e836c
_020c4570: .word data_ov00_020e837c
_020c4574: .word data_027e0d38
_020c4578: .word gOverlayManager
_020c457c: .word 0x0000001d
_020c4580: .word func_ov29_0216d918
_020c4584: .word data_ov00_020e8384

	.global func_ov00_020c4588
	arm_func_start func_ov00_020c4588
func_ov00_020c4588: ; 0x020c4588
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _020c45a0
	bl func_01ffa8d4
_020c45a0:
	mov r0, r4
	bl func_ov00_020c43c8
	ldr r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c4588

	.global func_ov00_020c45b0
	arm_func_start func_ov00_020c45b0
func_ov00_020c45b0: ; 0x020c45b0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c43c8
	ldr r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c45b0

	.global func_ov00_020c45c4
	arm_func_start func_ov00_020c45c4
func_ov00_020c45c4: ; 0x020c45c4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #0
	ldr r7, _020c4644 ; =0x00000126
	mov r6, r0
	mov r5, r1
	mov r8, r4
_020c45dc:
	mov r0, r4
	bl func_ov00_020c42d8
	ldr r0, [r0, #8]
	tst r0, #0x200
	bne _020c4630
	tst r0, #0x100
	bne _020c4630
	ldr r0, [r6]
	cmp r0, #0
	beq _020c4630
	mov r0, r6
	bl func_ov00_020c4588
	movs sb, r0
	beq _020c4630
	mov r1, r8
	bl func_02019654
	cmp r0, #2
	beq _020c4630
	mov r0, sb
	mov r1, r5
	bl func_020196fc
_020c4630:
	add r4, r4, #1
	cmp r4, r7
	add r6, r6, #0x38
	blt _020c45dc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020c45c4
_020c4644: .word 0x00000126

	.global func_ov00_020c4648
	arm_func_start func_ov00_020c4648
func_ov00_020c4648: ; 0x020c4648
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #0
	ldr r7, _020c46c8 ; =0x00000126
	mov r6, r0
	mov r5, r1
	mov r8, r4
_020c4660:
	mov r0, r4
	bl func_ov00_020c42d8
	ldr r0, [r0, #8]
	tst r0, #0x200
	bne _020c46b4
	tst r0, #0x100
	bne _020c46b4
	ldr r0, [r6]
	cmp r0, #0
	beq _020c46b4
	mov r0, r6
	bl func_ov00_020c4588
	movs sb, r0
	beq _020c46b4
	mov r1, r8
	bl func_02019654
	cmp r0, #2
	beq _020c46b4
	mov r0, sb
	mov r1, r5
	bl func_020196bc
_020c46b4:
	add r4, r4, #1
	cmp r4, r7
	add r6, r6, #0x38
	blt _020c4660
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020c4648
_020c46c8: .word 0x00000126

	.global func_ov00_020c46cc
	arm_func_start func_ov00_020c46cc
func_ov00_020c46cc: ; 0x020c46cc
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #0
	ldr r7, _020c4748 ; =0x00000126
	mov r6, r0
	mov r5, r1
	mov r8, r4
_020c46e4:
	mov r0, r4
	bl func_ov00_020c42d8
	ldr r0, [r0, #8]
	tst r0, #0x200
	bne _020c4734
	tst r0, #0x100
	ldrne r0, [r6]
	cmpne r0, #0
	beq _020c4734
	mov r0, r6
	bl func_ov00_020c4588
	movs sb, r0
	beq _020c4734
	mov r1, r8
	bl func_02019654
	cmp r0, #2
	beq _020c4734
	mov r0, sb
	mov r1, r5
	bl func_020196fc
_020c4734:
	add r4, r4, #1
	cmp r4, r7
	add r6, r6, #0x38
	blt _020c46e4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020c46cc
_020c4748: .word 0x00000126

	.global func_ov00_020c474c
	arm_func_start func_ov00_020c474c
func_ov00_020c474c: ; 0x020c474c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #0
	ldr r7, _020c47c8 ; =0x00000126
	mov r6, r0
	mov r5, r1
	mov r8, r4
_020c4764:
	mov r0, r4
	bl func_ov00_020c42d8
	ldr r0, [r0, #8]
	tst r0, #0x200
	bne _020c47b4
	tst r0, #0x100
	ldrne r0, [r6]
	cmpne r0, #0
	beq _020c47b4
	mov r0, r6
	bl func_ov00_020c4588
	movs sb, r0
	beq _020c47b4
	mov r1, r8
	bl func_02019654
	cmp r0, #2
	beq _020c47b4
	mov r0, sb
	mov r1, r5
	bl func_020196bc
_020c47b4:
	add r4, r4, #1
	cmp r4, r7
	add r6, r6, #0x38
	blt _020c4764
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020c474c
_020c47c8: .word 0x00000126

	.global func_ov00_020c47cc
	arm_func_start func_ov00_020c47cc
func_ov00_020c47cc: ; 0x020c47cc
	ldrb r2, [r1]
	ldr r0, [r0]
	ldrsb r1, [r1, #1]
	add r0, r0, r2, lsl #3
	ldr r2, [r0, #4]
	mov r0, #0x24
	mla r0, r1, r0, r2
	bx lr
	arm_func_end func_ov00_020c47cc

	.global func_ov00_020c47ec
	arm_func_start func_ov00_020c47ec
func_ov00_020c47ec: ; 0x020c47ec
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov r7, r2
	mov r8, r1
	mov r6, r3
	bl func_ov00_020c47cc
	mov r5, r0
	mov r0, r4
	mov r1, r7
	bl func_ov00_020c47cc
	mov r4, r0
	add r0, r5, #4
	ldmia r0, {r0, r1, r2}
	add lr, sp, #0xc
	add ip, r4, #4
	stmia lr, {r0, r1, r2}
	add r3, sp, #0
	ldmia ip, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, lr
	mov r1, r3
	blx r6
	cmp r0, #0
	mov r0, r5
	mov r1, r7
	beq _020c4878
	mov r2, #1
	bl func_ov00_020c8ca4
	mov r0, r4
	mov r1, r8
	mov r2, #1
	bl func_ov00_020c8ca4
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c4878:
	mov r2, #0
	bl func_ov00_020c8ca4
	mov r0, r4
	mov r1, r8
	mov r2, #0
	bl func_ov00_020c8ca4
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end func_ov00_020c47ec

	.global func_ov00_020c4898
	arm_func_start func_ov00_020c4898
func_ov00_020c4898: ; 0x020c4898
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl func_ov00_020c47cc
	mov r4, #0
	add r5, r0, #0x14
	mov sb, r4
	mov sl, #1
_020c48bc:
	ldrsb r0, [r5, #2]
	cmp r0, #0
	cmpne r0, #4
	movne r0, sl
	moveq r0, sb
	cmp r0, #0
	beq _020c48ec
	mov r0, r8
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl func_ov00_020c47ec
_020c48ec:
	add r4, r4, #1
	cmp r4, #4
	add r5, r5, #4
	blt _020c48bc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end func_ov00_020c4898

	.global func_ov00_020c4900
	arm_func_start func_ov00_020c4900
func_ov00_020c4900: ; 0x020c4900
	ldrsb r2, [r0, #4]
	mvn r0, #0
	cmp r2, r0
	ldrne r0, [r1]
	ldrneb r0, [r0, #4]
	cmpne r2, r0
	movne r0, #0
	moveq r0, #1
	bx lr
	arm_func_end func_ov00_020c4900

	.global func_ov00_020c4924
	arm_func_start func_ov00_020c4924
func_ov00_020c4924: ; 0x020c4924
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	mov r6, r0
	ldrb r0, [r6, #5]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	beq _020c498c
	ldr r3, [r5]
	mov r1, #0
	ldrb r0, [r3, #5]
	mov r2, r1
	cmp r0, #0
	ldrneb r0, [r3, #2]
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	beq _020c497c
	ldrb r0, [r3, #1]
	sub r0, r0, #1
	cmp r4, r0
	moveq r1, #1
_020c497c:
	cmp r1, #0
	addne sp, sp, #0x2c
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
_020c498c:
	ldr r1, [r5, #4]
	mov r0, #0x24
	mla r0, r4, r0, r1
	add r0, r0, #4
	add r3, sp, #0x20
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _020c49fc
	ldr r0, _020c4ae0 ; =data_027e0e60
	ldr lr, [sp, #0x20]
	ldr ip, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r1, [r0]
	add r0, sp, #4
	add r2, sp, #8
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	str r3, [sp, #0x10]
	bl func_ov00_02083fb0
	ldr r0, [sp, #4]
	mov r0, r0, lsr #0x5
	and r0, r0, #3
	cmp r0, #2
	addeq sp, sp, #0x2c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_020c49fc:
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _020c4a78
	add r0, sp, #0x20
	add r1, r6, #8
	bl func_01ff9ec0
	ldr r1, [r6, #0x18]
	cmp r0, r1
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0x20
	add r2, sp, #0x14
	add r1, r6, #8
	bl func_01ff9bf8
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	bl func_01ffa0f4
	ldrsh r1, [r6, #0x14]
	mov r0, r0, lsl #0x10
	rsb r0, r1, r0, asr #16
	mov r0, r0, lsl #0x10
	movs r1, r0, asr #0x10
	rsbmi r0, r1, #0
	movmi r0, r0, lsl #0x10
	movmi r1, r0, asr #0x10
	ldrsh r0, [r6, #0x16]
	cmp r1, r0
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, pc}
_020c4a78:
	mvn r0, #0
	strb r0, [sp]
	strb r0, [sp, #1]
	ldr r1, [r5]
	ldr r0, _020c4ae4 ; =data_027e0ff0
	ldrb r2, [r1]
	ldr r0, [r0]
	add r1, sp, #0
	strb r2, [sp]
	strb r4, [sp, #1]
	bl func_ov00_020c47cc
	ldrb r1, [r6, #0x1c]
	cmp r1, #0
	beq _020c4ad4
	ldrsb r0, [r0, #0x16]
	cmp r0, #0
	cmpne r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x2c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_020c4ad4:
	mov r0, #1
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c4924
_020c4ae0: .word data_027e0e60
_020c4ae4: .word data_027e0ff0

	.global func_ov00_020c4ae8
	arm_func_start func_ov00_020c4ae8
func_ov00_020c4ae8: ; 0x020c4ae8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, [r0, #4]
	str r0, [sp]
	mov r0, #0
	mov r5, r0
	str r0, [sp, #8]
	mov r0, r5
	cmp r4, #0
	str r1, [sp, #4]
	mov sl, r2
	mov sb, r3
	sub r4, r0, #0x80000001
	ble _020c4bf4
_020c4b20:
	ldr r0, [sp]
	and r1, r5, #0xff
	ldr r2, [r0]
	ldr r0, [r2, r1, lsl #3]
	add r7, r2, r1, lsl #3
	cmp r0, #0
	beq _020c4bd8
	mov r0, sl
	ldr r2, [r0]
	mov r1, r7
	ldr r2, [r2]
	blx r2
	cmp r0, #0
	beq _020c4bd8
	ldr r0, [r7]
	mov r6, #0
	ldrb fp, [r0, #1]
	cmp fp, #0
	ble _020c4bd8
	mov r8, r6
_020c4b70:
	mov r0, sl
	ldr r3, [r0]
	mov r1, r7
	mov r2, r6
	ldr r3, [r3, #4]
	blx r3
	cmp r0, #0
	beq _020c4bc0
	ldr r0, [r7, #4]
	ldr r1, [sp, #4]
	add r0, r0, r8
	add r0, r0, #4
	bl func_01ff9ec0
	cmp r0, r4
	bge _020c4bc0
	mov r4, r0
	strb r5, [sb]
	mov r0, #1
	str r0, [sp, #8]
	strb r6, [sb, #1]
_020c4bc0:
	add r0, r6, #1
	mov r0, r0, lsl #0x18
	cmp fp, r0, asr #24
	add r8, r8, #0x24
	mov r6, r0, asr #0x18
	bgt _020c4b70
_020c4bd8:
	add r0, r5, #1
	mov r1, r0, lsl #0x18
	ldr r0, [sp]
	mov r5, r1, asr #0x18
	ldr r0, [r0, #4]
	cmp r0, r1, asr #24
	bgt _020c4b20
_020c4bf4:
	ldr r0, [sp, #8]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov00_020c4ae8

	.global func_ov00_020c4c00
	arm_func_start func_ov00_020c4c00
func_ov00_020c4c00: ; 0x020c4c00
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov sl, r1
	mov sb, r3
	bl func_ov00_020c4ae8
	cmp r0, #0
	beq _020c4d4c
	ldr r0, _020c4d58 ; =data_027e0ff0
	mov r1, sb
	ldr r0, [r0]
	bl func_ov00_020c47cc
	mov r4, r0
	add r0, r4, #4
	add r5, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r3, sp, #0x34
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r3, sp, #0x28
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r1, r3
	mov r0, sl
	bl func_ov00_020ce2f0
	mov r6, r0
	ldrsb r0, [sb]
	add r8, r4, #0x14
	mov r7, #0
	str r0, [sp]
	ldrsb fp, [sb, #1]
	add r5, sp, #0x1c
	add r4, sp, #0x10
_020c4c84:
	ldrsb r0, [r8, #2]
	cmp r0, #0
	cmpne r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020c4d0c
	ldr r0, _020c4d58 ; =data_027e0ff0
	mov r1, r8
	ldr r0, [r0]
	bl func_ov00_020c47cc
	add r0, r0, #4
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	mov r3, r4
	add r0, sp, #0x28
	mov r1, r5
	mov r2, sl
	bl func_ov00_020ce440
	mov r0, sl
	mov r1, r4
	bl func_ov00_020ce2f0
	cmp r6, r0
	ble _020c4d0c
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	ldrsb r1, [r8]
	mov r6, r0
	str r1, [sp]
	ldrsb fp, [r8, #1]
_020c4d0c:
	add r7, r7, #1
	cmp r7, #4
	add r8, r8, #4
	blt _020c4c84
	ldr r1, [sp, #0x34]
	mov r0, #1
	str r1, [sb, #4]
	ldr r1, [sp, #0x38]
	str r1, [sb, #8]
	ldr r1, [sp, #0x3c]
	str r1, [sb, #0xc]
	ldr r1, [sp]
	add sp, sp, #0x40
	strb r1, [sb, #2]
	strb fp, [sb, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c4d4c:
	mov r0, #0
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c4c00
_020c4d58: .word data_027e0ff0

	.global func_ov00_020c4d5c
	arm_func_start func_ov00_020c4d5c
func_ov00_020c4d5c: ; 0x020c4d5c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x204
	mov fp, r0
	mov sl, r1
	add r3, sp, #4
	str r2, [sp]
	mov r7, #0
	mvn r1, #0
	add r0, sp, #0x204
_020c4d80:
	strb r1, [r3]
	strb r1, [r3, #1]
	add r3, r3, #2
	cmp r3, r0
	blo _020c4d80
	ldr r0, [fp, #4]
	mov r5, #0
	cmp r0, #0
	ble _020c4e4c
	add r4, sp, #4
_020c4da8:
	ldr r2, [fp]
	and r1, r5, #0xff
	ldr r0, [r2, r1, lsl #3]
	add sb, r2, r1, lsl #3
	cmp r0, #0
	beq _020c4e34
	mov r0, sl
	ldr r2, [r0]
	mov r1, sb
	ldr r2, [r2]
	blx r2
	cmp r0, #0
	beq _020c4e34
	ldr r0, [sb]
	mov r6, #0
	ldrb r8, [r0, #1]
	cmp r8, #0
	ble _020c4e34
_020c4df0:
	mov r0, sl
	ldr r3, [r0]
	mov r1, sb
	ldr r3, [r3, #4]
	mov r2, r6
	blx r3
	cmp r0, #0
	beq _020c4e20
	strb r5, [r4, r7, lsl #1]
	add r0, r4, r7, lsl #1
	strb r6, [r0, #1]
	add r7, r7, #1
_020c4e20:
	add r0, r6, #1
	mov r0, r0, lsl #0x18
	cmp r8, r0, asr #24
	mov r6, r0, asr #0x18
	bgt _020c4df0
_020c4e34:
	add r0, r5, #1
	mov r0, r0, lsl #0x18
	ldr r1, [fp, #4]
	mov r5, r0, asr #0x18
	cmp r1, r0, asr #24
	bgt _020c4da8
_020c4e4c:
	cmp r7, #0
	ble _020c4ed4
	movle r3, #0
	ble _020c4ea8
	ldr r0, _020c4ee0 ; =data_027e0764
	ldr r2, [r0]
	ldmib r0, {r1, r3}
	umull r5, r4, r3, r2
	mla r4, r3, r1, r4
	ldr r1, [r0, #0xc]
	ldr r3, [r0, #0x10]
	mla r4, r1, r2, r4
	ldr r1, [r0, #0x14]
	adds r2, r3, r5
	adc r3, r1, r4
	stmia r0, {r2, r3}
	cmp r7, #0
	beq _020c4ea8
	mov r2, #0
	umull r1, r0, r3, r7
	mla r0, r3, r2, r0
	mla r0, r2, r7, r0
	mov r3, r0
_020c4ea8:
	add r1, sp, #4
	mov r0, r3, lsl #0x1
	ldrsb r2, [r1, r0]
	add r3, r1, r3, lsl #1
	ldr r1, [sp]
	add sp, sp, #0x204
	strb r2, [r1]
	ldrsb r2, [r3, #1]
	mov r0, #1
	strb r2, [r1, #1]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c4ed4:
	mov r0, #0
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c4d5c
_020c4ee0: .word data_027e0764

	.global func_ov00_020c4ee4
	arm_func_start func_ov00_020c4ee4
func_ov00_020c4ee4: ; 0x020c4ee4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c4fbc
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c4ee4

	.global func_ov00_020c4ef8
	arm_func_start func_ov00_020c4ef8
func_ov00_020c4ef8: ; 0x020c4ef8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	str r1, [r5]
	ldrb r4, [r1, #1]
	ldr r2, _020c4f54 ; =data_027e0ce0
	mov r0, #0x24
	ldr r1, [r2, #4]
	smulbb r0, r4, r0
	mov r2, #4
	bl func_0202e9f4
	cmp r0, #0
	beq _020c4f48
	ldr r2, _020c4f58 ; =func_ov00_020c4f5c
	mov r1, r4
	str r2, [sp]
	mov r3, #0
	mov r2, #0x24
	str r3, [sp, #4]
	bl func_0204f558
_020c4f48:
	str r0, [r5, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c4ef8
_020c4f54: .word data_027e0ce0
_020c4f58: .word func_ov00_020c4f5c

	.global func_ov00_020c4f5c
	arm_func_start func_ov00_020c4f5c
func_ov00_020c4f5c: ; 0x020c4f5c
	add r3, r0, #0x14
	add r1, r0, #0x24
	mvn r2, #0
	mov ip, #0
_020c4f6c:
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3]
	strb r2, [r3, #1]
	strb ip, [r3, #2]
	strb ip, [r3, #3]
	add r3, r3, #4
	cmp r3, r1
	blo _020c4f6c
	mvn r3, #0
	mov r1, #0
_020c4f98:
	add r2, r0, ip, lsl #2
	strb r3, [r2, #0x14]
	strb r3, [r2, #0x15]
	strb r1, [r2, #0x16]
	add ip, ip, #1
	strb r1, [r2, #0x17]
	cmp ip, #4
	blt _020c4f98
	bx lr
	arm_func_end func_ov00_020c4f5c

	.global func_ov00_020c4fbc
	arm_func_start func_ov00_020c4fbc
func_ov00_020c4fbc: ; 0x020c4fbc
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl func_0202ea18
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c4fbc

	.global func_ov00_020c4fe8
	arm_func_start func_ov00_020c4fe8
func_ov00_020c4fe8: ; 0x020c4fe8
	mov r2, #0
	cmp r1, #0
	moveq r2, #1
	beq _020c500c
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	sub r0, r0, #1
	cmp r1, r0
	moveq r2, #1
_020c500c:
	mov r0, r2
	bx lr
	arm_func_end func_ov00_020c4fe8

	.global func_ov00_020c5014
	arm_func_start func_ov00_020c5014
func_ov00_020c5014: ; 0x020c5014
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl]
	mov fp, #0
	ldrb r4, [r0, #1]
	mov sb, r1
	str r2, [sp]
	mov r8, r3
	mov r5, fp
	cmp r4, #0
	sub r6, fp, #0x80000001
	ble _020c50c0
	mov r7, fp
_020c5048:
	cmp r8, #0
	beq _020c5090
	ldr r3, [sl]
	mov r1, #0
	ldrb r0, [r3, #5]
	mov r2, r1
	cmp r0, #0
	ldrneb r0, [r3, #2]
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	beq _020c5088
	ldrb r0, [r3, #1]
	sub r0, r0, #1
	cmp r5, r0
	moveq r1, #1
_020c5088:
	cmp r1, #0
	bne _020c50b0
_020c5090:
	ldr r0, [sl, #4]
	mov r1, sb
	add r0, r0, r7
	add r0, r0, #4
	bl func_01ff9ec0
	cmp r0, r6
	movlt r6, r0
	movlt fp, r5
_020c50b0:
	add r5, r5, #1
	cmp r5, r4
	add r7, r7, #0x24
	blt _020c5048
_020c50c0:
	ldr r0, [sp]
	cmp r0, #0
	strne r6, [r0]
	mov r0, fp
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov00_020c5014

	.global func_ov00_020c50d4
	arm_func_start func_ov00_020c50d4
func_ov00_020c50d4: ; 0x020c50d4
	ldr ip, _020c50e0 ; =func_ov00_020c51d0
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c50d4
_020c50e0: .word func_ov00_020c51d0

	.global func_ov00_020c50e4
	arm_func_start func_ov00_020c50e4
func_ov00_020c50e4: ; 0x020c50e4
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x90]
	bx lr
	arm_func_end func_ov00_020c50e4

	.global func_ov00_020c50f0
	arm_func_start func_ov00_020c50f0
func_ov00_020c50f0: ; 0x020c50f0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x8c]
	bx lr
	arm_func_end func_ov00_020c50f0

	.global func_ov00_020c50fc
	arm_func_start func_ov00_020c50fc
func_ov00_020c50fc: ; 0x020c50fc
	ldr r0, [r0, #4]
	mov r1, #0
	str r1, [r0, #0x8c]
	bx lr
	arm_func_end func_ov00_020c50fc

	.global func_ov00_020c510c
	arm_func_start func_ov00_020c510c
func_ov00_020c510c: ; 0x020c510c
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x88]
	bx lr
	arm_func_end func_ov00_020c510c

	.global func_ov00_020c5118
	arm_func_start func_ov00_020c5118
func_ov00_020c5118: ; 0x020c5118
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x84]
	bx lr
	arm_func_end func_ov00_020c5118

	.global func_ov00_020c5124
	arm_func_start func_ov00_020c5124
func_ov00_020c5124: ; 0x020c5124
	mov r2, #0x20
	str r2, [r0, #0x80]
	str r1, [r0, #0x84]
	str r2, [r0, #0x90]
	mov r2, #0
	mov r1, r2
_020c513c:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x20
	blt _020c513c
	bx lr
	arm_func_end func_ov00_020c5124

	.global func_ov00_020c5150
	arm_func_start func_ov00_020c5150
func_ov00_020c5150: ; 0x020c5150
	str r2, [r0, r1, lsl #2]
	str r0, [r2, #4]
	bx lr
	arm_func_end func_ov00_020c5150

	.global func_ov00_020c515c
	arm_func_start func_ov00_020c515c
func_ov00_020c515c: ; 0x020c515c
	stmdb sp!, {r3, lr}
	str r1, [r0, #0x80]
	mov r1, #0
	str r1, [r0, #0x88]
	str r1, [r0, #0x8c]
	ldr r3, [r0, #0x80]
	mov r1, r2
	ldr r0, [r0, r3, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c515c

	.global func_ov00_020c518c
	arm_func_start func_ov00_020c518c
func_ov00_020c518c: ; 0x020c518c
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x88]
	adds r1, r1, #1
	str r1, [r0, #0x88]
	movmi r1, #0
	strmi r1, [r0, #0x88]
	ldr r1, [r0, #0x8c]
	adds r1, r1, #1
	str r1, [r0, #0x8c]
	movmi r1, #0
	strmi r1, [r0, #0x8c]
	ldr r1, [r0, #0x80]
	ldr r0, [r0, r1, lsl #2]
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c518c

	.global func_ov00_020c51d0
	arm_func_start func_ov00_020c51d0
func_ov00_020c51d0: ; 0x020c51d0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x80]
	mov r5, r1
	mov r4, r2
	cmp r5, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, r0, lsl #2]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0
	str r0, [r6, #0x88]
	str r0, [r6, #0x8c]
	ldr r0, [r6, #0x80]
	mov r1, r4
	str r0, [r6, #0x90]
	str r5, [r6, #0x80]
	ldr r0, [r6, r5, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020c51d0

	.global func_ov00_020c522c
	arm_func_start func_ov00_020c522c
func_ov00_020c522c: ; 0x020c522c
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _020c5284 ; =data_027e0e60
	mov r6, r0
	ldr r4, [r2]
	mov r5, r1
	ldr r1, [r6]
	mov r0, r4
	bl func_ov00_020839d4
	mov r1, r0
	mov r0, r4
	bl func_ov00_02083c24
	str r0, [r5]
	ldr r1, [r6, #4]
	mov r0, r4
	str r1, [r5, #4]
	ldr r1, [r6, #8]
	bl func_ov00_020839f8
	mov r1, r0
	mov r0, r4
	bl func_ov00_02083c50
	str r0, [r5, #8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c522c
_020c5284: .word data_027e0e60

	.global func_ov00_020c5288
	arm_func_start func_ov00_020c5288
func_ov00_020c5288: ; 0x020c5288
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r1, _020c532c ; =data_027e0e60
	mov r2, #0
	mov r5, r0
	ldr r4, [r1]
	strb r2, [sp]
	strb r2, [sp, #1]
	ldr r1, [r5]
	mov r0, r4
	bl func_ov00_020839d4
	strb r0, [sp]
	ldr r1, [r5, #8]
	mov r0, r4
	bl func_ov00_020839f8
	strb r0, [sp, #1]
	add r1, sp, #0
	mov r0, r4
	bl func_ov00_020840dc
	cmp r0, #0x1e
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r5]
	add r0, sp, #4
	str r1, [sp, #8]
	ldr r1, [r5, #4]
	add r2, sp, #8
	str r1, [sp, #0xc]
	ldr r3, [r5, #8]
	mov r1, r4
	str r3, [sp, #0x10]
	bl func_ov00_02083fb0
	ldr r0, [sp, #4]
	mov r0, r0, lsr #0x9
	and r0, r0, #3
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5288
_020c532c: .word data_027e0e60

	.global func_ov00_020c5330
	arm_func_start func_ov00_020c5330
func_ov00_020c5330: ; 0x020c5330
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _020c5370 ; =data_027e0e60
	mov r5, r1
	ldrb r1, [r6, #1]
	ldr r0, [r0]
	bl func_ov00_02083c50
	ldr r2, _020c5370 ; =data_027e0e60
	mov r4, r0
	ldrb r1, [r6]
	ldr r0, [r2]
	bl func_ov00_02083c24
	str r0, [r5]
	mov r0, #0
	stmib r5, {r0, r4}
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5330
_020c5370: .word data_027e0e60

	.global func_ov00_020c5374
	arm_func_start func_ov00_020c5374
func_ov00_020c5374: ; 0x020c5374
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _020c53ac ; =data_027e0e60
	mov r4, r1
	ldr r1, [r3]
	mov r2, r0
	add r0, sp, #0
	bl func_ov00_02083a1c
	ldrb r0, [sp]
	strb r0, [r4]
	ldrb r0, [sp, #1]
	strb r0, [r4, #1]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5374
_020c53ac: .word data_027e0e60

	.global func_ov00_020c53b0
	arm_func_start func_ov00_020c53b0
func_ov00_020c53b0: ; 0x020c53b0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r1, r0
	ldr r0, _020c53e4 ; =data_027e0f94
	add r2, sp, #0
	bl func_01ff9bf8
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
	arm_func_end func_ov00_020c53b0
_020c53e4: .word data_027e0f94

	.global func_ov00_020c53e8
	arm_func_start func_ov00_020c53e8
func_ov00_020c53e8: ; 0x020c53e8
	stmdb sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r1
	cmp r2, #0
	bne _020c5420
	ldr r1, _020c545c ; =data_027e0f94
	mov r0, #1
	ldr r2, [r1]
	str r2, [r4]
	ldr r2, [r1, #4]
	str r2, [r4, #4]
	ldr r1, [r1, #8]
	str r1, [r4, #8]
	ldmia sp!, {r4, pc}
_020c5420:
	ldr r2, _020c5460 ; =data_027e0fe4
	mov r1, r0
	ldr r0, [r2]
	bl func_ov00_020c3674
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r0, #0x48]
	str r1, [r4]
	ldr r1, [r0, #0x4c]
	str r1, [r4, #4]
	ldr r1, [r0, #0x50]
	mov r0, #1
	str r1, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c53e8
_020c545c: .word data_027e0f94
_020c5460: .word data_027e0fe4

	.global func_ov00_020c5464
	arm_func_start func_ov00_020c5464
func_ov00_020c5464: ; 0x020c5464
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #4]
	ldr r2, _020c549c ; =0x03555e39
	ldr r3, [r1, #4]
	smull r1, lr, r2, ip
	mov r0, ip, lsr #0x1f
	smull r1, ip, r2, r3
	mov r1, r3, lsr #0x1f
	add lr, r0, lr, asr #6
	add ip, r1, ip, asr #6
	cmp lr, ip
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5464
_020c549c: .word 0x03555e39

	.global func_ov00_020c54a0
	arm_func_start func_ov00_020c54a0
func_ov00_020c54a0: ; 0x020c54a0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	smull r5, r4, r2, r2
	adds r5, r5, #0x800
	mov r7, r0
	mov r6, r1
	adc ip, r4, #0
	mov r4, r5, lsr #0xc
	ldr r0, [sp, #0x20]
	add r2, sp, #0
	mov r1, r7
	mov r5, r3
	orr r4, r4, ip, lsl #20
	bl func_01ff9bf8
	ldr r1, [sp, #0x20]
	mov r0, r7
	bl func_ov00_020c5464
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #8]
	ldr ip, [sp]
	smull r2, r1, r0, r0
	smull r0, r3, ip, ip
	adds ip, r0, #0x800
	mov r0, #0
	adc r3, r3, r0
	adds r2, r2, #0x800
	mov ip, ip, lsr #0xc
	adc r1, r1, r0
	mov r2, r2, lsr #0xc
	orr ip, ip, r3, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	cmp r1, r4
	addgt sp, sp, #0xc
	ldmgtia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	rsb r0, r6, r0, asr #16
	mov r0, r0, lsl #0x10
	ldr r1, _020c5588 ; =0xffff8001
	mov r2, r0, asr #0x10
	cmp r1, r0, asr #16
	movgt r2, r1, lsr #0x11
	bgt _020c5574
	cmp r2, #0
	rsblt r0, r2, #0
	movlt r0, r0, lsl #0x10
	movlt r2, r0, asr #0x10
_020c5574:
	cmp r2, r5
	movgt r0, #0
	movle r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c54a0
_020c5588: .word 0xffff8001

	.global func_ov00_020c558c
	arm_func_start func_ov00_020c558c
func_ov00_020c558c: ; 0x020c558c
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x40
	mov r4, r1
	add r3, sp, #0x34
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x38]
	add lr, sp, #0x28
	add r3, r0, #0x9a
	ldmia r4, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	add lr, r3, #0x100
	ldr r3, [sp, #0x28]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	str r3, [sp, #0x1c]
	ldr r3, _020c5650 ; =data_ov00_020e892c
	str r2, [sp, #0x24]
	str r1, [sp, #0x10]
	str r0, [sp, #0x18]
	mov ip, #6
	str r3, [sp, #0xc]
	str lr, [sp, #0x38]
	str lr, [sp, #0x2c]
	str lr, [sp, #0x20]
	str lr, [sp, #0x14]
	str ip, [sp]
	mov r0, #0x8f
	str r0, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	ldr r0, _020c5654 ; =data_027e0e60
	add r1, sp, #0x1c
	ldr r0, [r0]
	add r2, sp, #0x10
	add r3, ip, #0x194
	bl func_01ffe1cc
	cmp r0, #0
	add r0, sp, #0xc
	beq _020c5640
	bl func_ov00_02081f4c
	add sp, sp, #0x40
	mov r0, #1
	ldmia sp!, {r4, pc}
_020c5640:
	bl func_ov00_02081f4c
	mov r0, #0
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c558c
_020c5650: .word data_ov00_020e892c
_020c5654: .word data_027e0e60

	.global func_ov00_020c5658
	arm_func_start func_ov00_020c5658
func_ov00_020c5658: ; 0x020c5658
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c5658

	.global func_ov00_020c566c
	arm_func_start func_ov00_020c566c
func_ov00_020c566c: ; 0x020c566c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [sp, #0x18]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl func_ov00_020c5288
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr ip, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl func_ov00_020c54a0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x18]
	mov r0, r7
	bl func_ov00_020c558c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020c566c

	.global func_ov00_020c56d8
	arm_func_start func_ov00_020c56d8
func_ov00_020c56d8: ; 0x020c56d8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr ip, _020c576c ; =data_027e0f90
	mov r4, r0
	ldr r0, [ip]
	mov r7, r1
	ldr r1, [r0]
	mov r6, r2
	ldr r1, [r1, #4]
	mov r5, r3
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020c5770 ; =data_027e0f94
	add ip, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str ip, [sp]
	bl func_ov00_020c54a0
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r1, sp, #4
	mov r0, r4
	bl func_ov00_020c558c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c56d8
_020c576c: .word data_027e0f90
_020c5770: .word data_027e0f94

	.global func_ov00_020c5774
	arm_func_start func_ov00_020c5774
func_ov00_020c5774: ; 0x020c5774
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r2, _020c57f4 ; =data_027e0f90
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, _020c57f8 ; =data_027e0f94
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r5
	mov r1, r3
	bl func_ov00_020ce2f0
	cmp r0, r4
	addgt sp, sp, #0xc
	movgt r0, #0
	ldmgtia sp!, {r4, r5, pc}
	add r1, sp, #0
	mov r0, r5
	bl func_ov00_020c558c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5774
_020c57f4: .word data_027e0f90
_020c57f8: .word data_027e0f94

	.global func_ov00_020c57fc
	arm_func_start func_ov00_020c57fc
func_ov00_020c57fc: ; 0x020c57fc
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [sp, #0x14]
	ldr r5, [r0, #4]
	ldr r4, [ip, #4]
	ldr lr, [sp, #0x10]
	subs r4, r5, r4
	rsbmi r4, r4, #0
	cmp r4, r3
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020c591c
_020c5830: ; jump table
	b _020c5840 ; case 0
	b _020c5874 ; case 1
	b _020c58ac ; case 2
	b _020c58e4 ; case 3
_020c5840:
	ldr r3, [ip, #8]
	ldr r1, [r0, #8]
	subs r1, r3, r1
	rsbmi r1, r1, #0
	cmp r1, r2
	ldrlt r1, [ip]
	ldrlt r0, [r0]
	cmplt r0, r1
	addlt r0, r0, lr
	cmplt r1, r0
	bge _020c591c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020c5874:
	ldr r3, [ip, #8]
	ldr r1, [r0, #8]
	subs r1, r3, r1
	rsbmi r1, r1, #0
	cmp r1, r2
	bge _020c591c
	ldr r2, [r0]
	ldr r1, [ip]
	sub r0, r2, lr
	cmp r0, r1
	cmplt r1, r2
	bge _020c591c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020c58ac:
	ldr r3, [ip]
	ldr r1, [r0]
	subs r1, r3, r1
	rsbmi r1, r1, #0
	cmp r1, r2
	ldrlt r1, [ip, #8]
	ldrlt r0, [r0, #8]
	cmplt r0, r1
	bge _020c591c
	add r0, r0, lr
	cmp r0, r1
	ble _020c591c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020c58e4:
	ldr r3, [ip]
	ldr r1, [r0]
	subs r1, r3, r1
	rsbmi r1, r1, #0
	cmp r1, r2
	bge _020c591c
	ldr r1, [ip, #8]
	ldr r0, [r0, #8]
	cmp r0, r1
	ble _020c591c
	sub r0, r0, lr
	cmp r0, r1
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, pc}
_020c591c:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c57fc

	.global func_ov00_020c5924
	arm_func_start func_ov00_020c5924
func_ov00_020c5924: ; 0x020c5924
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x38
	mvn r4, #0
	mov r8, r0
	add r0, sp, #0xc
	mov r7, r1
	mov r6, r2
	mov r5, r3
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r4, [sp, #0x50]
	bl func_ov00_020c1500
	mvn r1, #0
	add r0, sp, #0xc
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	bl func_ov00_020c3348
	and r0, r7, #0xff
	strh r0, [sp, #0xc]
	ldr r0, [r6]
	cmp r5, #3
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	str r0, [sp, #0x2c]
	addls pc, pc, r5, lsl #2
	b _020c59c8
_020c598c: ; jump table
	b _020c599c ; case 0
	b _020c59a8 ; case 1
	b _020c59b4 ; case 2
	b _020c59c0 ; case 3
_020c599c:
	mov r0, #0
	str r0, [sp, #0x34]
	b _020c59c8
_020c59a8:
	mov r0, #1
	str r0, [sp, #0x34]
	b _020c59c8
_020c59b4:
	mov r0, #2
	str r0, [sp, #0x34]
	b _020c59c8
_020c59c0:
	mov r0, #3
	str r0, [sp, #0x34]
_020c59c8:
	add r1, sp, #4
	str r1, [sp]
	ldr r0, _020c5a1c ; =data_027e0fe8
	ldr r1, _020c5a20 ; =0x52555059
	ldr r0, [r0]
	add r3, sp, #0xc
	mov r2, r8
	bl func_ov00_020c4048
	cmp r4, #0
	beq _020c5a00
	ldr r0, [sp, #4]
	str r0, [r4]
	ldr r0, [sp, #8]
	str r0, [r4, #4]
_020c5a00:
	ldr r1, [sp, #4]
	mvn r0, #0
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5924
_020c5a1c: .word data_027e0fe8
_020c5a20: .word 0x52555059

	.global func_ov00_020c5a24
	arm_func_start func_ov00_020c5a24
func_ov00_020c5a24: ; 0x020c5a24
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _020c5a58 ; =data_ov00_020ded6c
	add lr, sp, #0
	mov r5, r0
	mov ip, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [ip, r5, lsl #2]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5a24
_020c5a58: .word data_ov00_020ded6c

	.global func_ov00_020c5a5c
	arm_func_start func_ov00_020c5a5c
func_ov00_020c5a5c: ; 0x020c5a5c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	cmp r1, #0
	mov r3, #0
	ble _020c5a80
	mvn r2, #0
_020c5a70:
	str r2, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r1
	blt _020c5a70
_020c5a80:
	mov r3, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
_020c5a8c:
	sub r2, r1, r3
	cmp r2, #0
	movle ip, #0
	ble _020c5ae8
	ldr lr, _020c5b30 ; =data_027e0764
	ldr r5, [lr]
	ldmib lr, {r4, ip}
	umull r7, r6, ip, r5
	mla r6, ip, r4, r6
	ldr r4, [lr, #0xc]
	ldr ip, [lr, #0x10]
	mla r6, r4, r5, r6
	ldr r4, [lr, #0x14]
	adds r5, ip, r7
	adc ip, r4, r6
	stmia lr, {r5, ip}
	cmp r2, #0
	beq _020c5ae8
	mov r5, #0
	umull r4, lr, ip, r2
	mla lr, ip, r5, lr
	mla lr, r5, r2, lr
	mov ip, lr
_020c5ae8:
	mov r5, #0
	mov r4, r5
	cmp r1, #0
	ble _020c5b20
	mvn r2, #0
_020c5afc:
	ldr lr, [r0, r4, lsl #2]
	cmp lr, r2
	addeq r5, r5, #1
	subeq lr, r5, #1
	cmpeq lr, ip
	streq r3, [r0, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r1
	blt _020c5afc
_020c5b20:
	add r3, r3, #1
	cmp r3, r1
	blt _020c5a8c
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5a5c
_020c5b30: .word data_027e0764

	.global func_ov00_020c5b34
	arm_func_start func_ov00_020c5b34
func_ov00_020c5b34: ; 0x020c5b34
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r3, _020c5be8 ; =data_027e0f64
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	ldr r0, [r0, #4]
	mov r1, r6
	mov r4, r2
	bl func_ov00_02087d34
	ldr r1, _020c5be8 ; =data_027e0f64
	add r0, sp, #0
	ldr lr, [r1]
	add r1, sp, #0xc
	ldr ip, [lr, #4]
	mov r2, r0
	ldr r3, [ip, #0x260]
	str r3, [sp, #0xc]
	ldr r3, [ip, #0x264]
	str r3, [sp, #0x10]
	ldr r3, [ip, #0x268]
	str r3, [sp, #0x14]
	ldr ip, [lr, #4]
	ldr r3, [ip, #0x26c]
	str r3, [sp]
	ldr r3, [ip, #0x270]
	str r3, [sp, #4]
	ldr r3, [ip, #0x274]
	str r3, [sp, #8]
	bl func_01ff9bf8
	ldr r1, [r6, #0xc]
	add r0, sp, #0
	add r1, r4, r1, lsl #1
	mov r4, r1, lsl #0x10
	mov r1, r4, asr #0x10
	bl func_ov00_020a6110
	mov r2, r5
	add r0, sp, #0
	add r1, sp, #0xc
	bl func_01ff9bc4
	ldr r0, [r6, #0x10]
	sub r0, r0, r4, asr #16
	str r0, [r6, #0x10]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5b34
_020c5be8: .word data_027e0f64

	.global func_ov00_020c5bec
	arm_func_start func_ov00_020c5bec
func_ov00_020c5bec: ; 0x020c5bec
	stmdb sp!, {r3, lr}
	ldr ip, _020c5c28 ; =data_ov00_020e83cc
	ldr lr, [sp, #8]
	str ip, [r0]
	ldr ip, [sp, #0xc]
	str lr, [r0, #4]
	str ip, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	mvn r3, #0
	ldr r2, [sp, #0x10]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5bec
_020c5c28: .word data_ov00_020e83cc

	.global func_ov00_020c5c2c
	arm_func_start func_ov00_020c5c2c
func_ov00_020c5c2c: ; 0x020c5c2c
	stmdb sp!, {r3, lr}
	ldr lr, _020c5c60 ; =data_ov00_020e83cc
	mov ip, #0
	str lr, [r0]
	str ip, [r0, #4]
	str ip, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	sub r2, ip, #1
	str r2, [r0, #0x14]
	str ip, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5c2c
_020c5c60: .word data_ov00_020e83cc

	.global func_ov00_020c5c64
	arm_func_start func_ov00_020c5c64
func_ov00_020c5c64: ; 0x020c5c64
	stmdb sp!, {r4, lr}
	mov r4, r0
	stmib r4, {r1, r2}
	str r3, [r4, #0x18]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c5c64

	.global func_ov00_020c5c98
	arm_func_start func_ov00_020c5c98
func_ov00_020c5c98: ; 0x020c5c98
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r3, #0x38
	mul r5, r1, r3
	ldr r1, _020c5ce0 ; =data_027e0fec
	mov r8, r0
	ldr r6, [r1]
	mov r7, r2
	add r0, r6, r5
	bl func_ov00_020c4588
	mov r4, r0
	add r0, r6, r5
	bl func_ov00_020c45b0
	mov r1, r4
	mov r3, r7
	mov r2, r0
	mov r0, r8
	bl func_ov00_020c5c64
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5c98
_020c5ce0: .word data_027e0fec

	.global func_ov00_020c5ce4
	arm_func_start func_ov00_020c5ce4
func_ov00_020c5ce4: ; 0x020c5ce4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr lr, _020c5d30 ; =data_027e0fec
	mov ip, #0x38
	ldr r5, [lr]
	mov r8, r0
	mla r0, r1, ip, r5
	mov r7, r2
	mov r6, r3
	bl func_ov00_020c4588
	mov r1, #0x38
	mov r4, r0
	mla r0, r7, r1, r5
	bl func_ov00_020c45b0
	mov r1, r4
	mov r3, r6
	mov r2, r0
	mov r0, r8
	bl func_ov00_020c5c64
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5ce4
_020c5d30: .word data_027e0fec

	.global func_ov00_020c5d34
	arm_func_start func_ov00_020c5d34
func_ov00_020c5d34: ; 0x020c5d34
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov ip, #0x14
	mul r4, r1, ip
	mov r7, r0
	ldr r1, [r7, #0x18]
	ldr r0, [r7, #8]
	mov r6, r2
	add r1, r1, r4
	mov r5, r3
	bl func_0201e544
	str r0, [r6]
	ldr r0, [r7, #0x18]
	add r0, r0, r4
	ldr r0, [r0, #0x10]
	str r0, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020c5d34

	.global func_ov00_020c5d74
	arm_func_start func_ov00_020c5d74
func_ov00_020c5d74: ; 0x020c5d74
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r4, r1
	cmp r4, r0
	bne _020c5dac
	ldr r1, [r5, #0x18]
	mov r0, #0x14
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x10]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
_020c5dac:
	mov r1, #0
	str r1, [sp, #4]
	mov r0, r5
	ldr ip, [r0]
	add r2, sp, #4
	ldr ip, [ip]
	add r3, sp, #0
	mov r1, r4
	blx ip
	ldr r1, [sp, #4]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10]
	ldr r3, [sp]
	mov r2, #0
	bl func_ov00_020c0cc8
	ldr r0, [r5, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	str r4, [r5, #0x14]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c5d74

	.global func_ov00_020c5e20
	arm_func_start func_ov00_020c5e20
func_ov00_020c5e20: ; 0x020c5e20
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	mvn r0, #0
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x10]
	bl func_ov00_020c0e04
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c5e20

	.global func_ov00_020c5e54
	arm_func_start func_ov00_020c5e54
func_ov00_020c5e54: ; 0x020c5e54
	bx lr
	arm_func_end func_ov00_020c5e54

	.global func_ov00_020c5e58
	arm_func_start func_ov00_020c5e58
func_ov00_020c5e58: ; 0x020c5e58
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #0
	bl func_02019688
	cmp r0, #0x1f
	ldr r0, [r4, #0xc]
	bne _020c5e80
	bl func_ov00_020b41ec
	ldmia sp!, {r4, pc}
_020c5e80:
	bl func_ov00_020b421c
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c5e58

	.global func_ov00_020c5e88
	arm_func_start func_ov00_020c5e88
func_ov00_020c5e88: ; 0x020c5e88
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, [r0]
	mov r6, r0
	ldr r3, [r3, #8]
	mov r5, r1
	mov r4, r2
	blx r3
	ldr r0, [r6, #0xc]
	mov r1, r5
	ldr r3, [r0]
	mov r2, r4
	ldr r3, [r3, #0x14]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020c5e88

	.global func_ov00_020c5ec0
	arm_func_start func_ov00_020c5ec0
func_ov00_020c5ec0: ; 0x020c5ec0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov ip, r1, lsl #0x1
	add r1, ip, #1
	mov r5, r0
	ldr r3, _020c5f18 ; =data_02050f54
	mov ip, ip, lsl #0x1
	mov r0, r1, lsl #0x1
	mov r4, r2
	ldrsh r2, [r3, r0]
	ldrsh r1, [r3, ip]
	add r0, sp, #0
	blx func_01ff8214
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl func_ov00_020c5e88
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5ec0
_020c5f18: .word data_02050f54

	.global func_ov00_020c5f1c
	arm_func_start func_ov00_020c5f1c
func_ov00_020c5f1c: ; 0x020c5f1c
	ldr r2, [r0, #0x1c]
	ldr ip, _020c5f30 ; =func_ov00_020c5ec0
	ldrsh r1, [r2, #0x78]
	add r2, r2, #0x48
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c5f1c
_020c5f30: .word func_ov00_020c5ec0

	.global func_ov00_020c5f34
	arm_func_start func_ov00_020c5f34
func_ov00_020c5f34: ; 0x020c5f34
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov lr, r0
	ldr r0, [lr, #0x1c]
	add r3, sp, #0
	add r0, r0, #0x48
	mov ip, r1
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #4]
	mov r0, lr
	add r1, r1, ip
	str r1, [sp, #4]
	ldr r1, [lr, #0x1c]
	mov r2, r3
	ldrsh r1, [r1, #0x78]
	bl func_ov00_020c5ec0
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end func_ov00_020c5f34

	.global func_ov00_020c5f80
	arm_func_start func_ov00_020c5f80
func_ov00_020c5f80: ; 0x020c5f80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, [r0]
	mov r7, r0
	ldr ip, [ip, #8]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	blx ip
	ldr r0, [r7, #0xc]
	mov r1, r6
	ldr ip, [r0]
	mov r2, r5
	ldr ip, [ip, #0x10]
	mov r3, r4
	blx ip
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020c5f80

	.global func_ov00_020c5fc0
	arm_func_start func_ov00_020c5fc0
func_ov00_020c5fc0: ; 0x020c5fc0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x1c]
	mov r4, r1
	ldrh r2, [r0, #0x78]
	ldr r3, _020c6020 ; =data_02050f54
	add r0, sp, #0
	mov r1, r2, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	mov ip, r2, lsl #0x1
	mov r2, r1, lsl #0x1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	blx func_01ff8214
	ldr r3, [r5, #0x1c]
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	add r3, r3, #0x48
	bl func_ov00_020c5f80
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020c5fc0
_020c6020: .word data_02050f54

	.global func_ov00_020c6024
	arm_func_start func_ov00_020c6024
func_ov00_020c6024: ; 0x020c6024
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0]
	mov r5, r0
	ldr r2, [r2, #8]
	mov r4, r1
	blx r2
	ldr r0, [r5, #0xc]
	mov r1, r4
	bl func_ov00_020b3ee8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c6024

	.global func_ov00_020c604c
	arm_func_start func_ov00_020c604c
func_ov00_020c604c: ; 0x020c604c
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, [r0]
	mov r6, r0
	ldr r3, [r3, #8]
	mov r5, r1
	mov r4, r2
	blx r3
	ldr r0, [r6, #0xc]
	mov r1, r5
	mov r2, r4
	bl func_ov00_020b3f24
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020c604c

	.global func_ov00_020c607c
	arm_func_start func_ov00_020c607c
func_ov00_020c607c: ; 0x020c607c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r4, #0x38
	mul r6, r2, r4
	ldr r2, _020c6108 ; =data_027e0fec
	mov r4, r0
	ldr r7, [r2]
	mov sb, r1
	add r0, r7, r6
	mov r8, r3
	bl func_ov00_020c4588
	mov r5, r0
	add r0, r7, r6
	bl func_ov00_020c45b0
	str r5, [sp]
	stmib sp, {r0, r8}
	mov r1, sb
	mov r0, r4
	add r2, r4, #0x20
	add r3, r4, #0x7c
	bl func_ov00_020c5bec
	ldr r1, _020c610c ; =data_ov00_020e83a8
	add r0, r4, #0x20
	str r1, [r4]
	ldr r1, [r4, #4]
	blx func_ov00_020a9588
	ldr r2, [r4, #4]
	add r0, r4, #0x7c
	add r1, r4, #0xa0
	blx func_ov00_020c0c08
	ldr r1, _020c6110 ; =data_ov00_020e83bc
	mov r0, r4
	str r1, [r4, #0x7c]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020c607c
_020c6108: .word data_027e0fec
_020c610c: .word data_ov00_020e83a8
_020c6110: .word data_ov00_020e83bc

	.global func_ov00_020c6114
	arm_func_start func_ov00_020c6114
func_ov00_020c6114: ; 0x020c6114
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x20
	add r3, r4, #0x7c
	bl func_ov00_020c5c2c
	ldr r2, _020c615c ; =data_ov00_020e83a8
	add r0, r4, #0x20
	mov r1, #0
	str r2, [r4]
	blx func_ov00_020a9588
	add r0, r4, #0x7c
	add r1, r4, #0xa0
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020c6160 ; =data_ov00_020e83bc
	mov r0, r4
	str r1, [r4, #0x7c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c6114
_020c615c: .word data_ov00_020e83a8
_020c6160: .word data_ov00_020e83bc

	.global func_ov00_020c6164
	arm_func_start func_ov00_020c6164
func_ov00_020c6164: ; 0x020c6164
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r5, r2
	mov r0, r1
	mov r1, r4
	add r2, sp, #0
	mov r4, r3
	bl func_01ff9bf8
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	bne _020c61b4
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #8]
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c61b4:
	cmp r5, #0
	bne _020c61d0
	mov r0, #0
	str r0, [r4]
	add sp, sp, #0xc
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c61d0:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	ldr r3, [sp, #8]
	ldr lr, [sp]
	smull r1, r2, r3, r3
	smull ip, r3, lr, lr
	adds lr, ip, #0x800
	adc ip, r3, #0
	adds r3, r1, #0x800
	mov lr, lr, lsr #0xc
	mov r1, r0, lsl #0x10
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr lr, lr, ip, lsl #20
	orr r2, r2, r0, lsl #20
	add r0, lr, r2
	mov r6, r1, asr #0x10
	bl func_01ff9958
	cmp r5, r0
	bge _020c6288
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r2, r0, lsl #0x1
	add r0, r2, #1
	ldr r1, _020c62ec ; =data_02050f54
	mov r2, r2, lsl #0x1
	ldrsh r2, [r1, r2]
	mov r0, r0, lsl #0x1
	ldrsh r1, [r1, r0]
	smull r2, r3, r5, r2
	adds ip, r2, #0x800
	smull r2, r1, r5, r1
	mov r0, #0
	adc r3, r3, r0
	adds r2, r2, #0x800
	mov r5, ip, lsr #0xc
	orr r5, r5, r3, lsl #20
	adc r1, r1, r0
	mov r2, r2, lsr #0xc
	str r5, [r4]
	orr r2, r2, r1, lsl #20
	add sp, sp, #0xc
	str r2, [r4, #8]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c6288:
	mov r1, r6, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	ldr r3, _020c62ec ; =data_02050f54
	mov r2, r2, lsl #0x1
	mov r1, r1, lsl #0x1
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	smull r2, r3, r0, r2
	adds r5, r2, #0x800
	smull r2, r1, r0, r1
	adc r0, r3, #0
	adds r2, r2, #0x800
	mov r3, r5, lsr #0xc
	orr r3, r3, r0, lsl #20
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	str r3, [r4]
	orr r1, r1, r0, lsl #20
	str r1, [r4, #8]
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c6164
_020c62ec: .word data_02050f54

	.global func_ov00_020c62f0
	arm_func_start func_ov00_020c62f0
func_ov00_020c62f0: ; 0x020c62f0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r8, r2
	mov r0, r1
	mov r1, r4
	add r2, sp, #0
	mov r7, r3
	ldr r6, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	bl func_01ff9bf8
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	bne _020c6348
	mov r0, #0
	str r0, [r6]
	str r0, [r6, #8]
	add sp, sp, #0xc
	strh r7, [r4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020c6348:
	cmp r8, #0
	bne _020c6368
	mov r0, #0
	str r0, [r6]
	str r0, [r6, #8]
	add sp, sp, #0xc
	strh r7, [r4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020c6368:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	mov r0, r7
	mov r1, r5
	bl func_0202aff0
	smull r0, r3, r8, r0
	adds r8, r0, #0x800
	ldrsh r2, [sp, #0x28]
	mov r0, r4
	mov r1, r5
	adc r3, r3, #0
	mov r4, r8, lsr #0xc
	orr r4, r4, r3, lsl #20
	bl func_0202b154
	ldr r2, [sp, #8]
	ldr r8, [sp]
	smull r1, r0, r2, r2
	smull r3, r2, r8, r8
	adds r3, r3, #0x800
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	bl func_01ff9958
	cmp r4, r0
	bge _020c6474
	ldrb r0, [sp, #0x34]
	cmp r0, #0
	beq _020c6414
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	ldr r2, _020c64d4 ; =data_02050f54
	b _020c642c
_020c6414:
	mov r0, r7, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	ldr r2, _020c64d4 ; =data_02050f54
	add r0, r1, #1
_020c642c:
	mov r1, r1, lsl #0x1
	ldrsh r1, [r2, r1]
	mov r0, r0, lsl #0x1
	ldrsh r0, [r2, r0]
	smull r1, r2, r4, r1
	adds r3, r1, #0x800
	smull r1, r0, r4, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	str r3, [r6]
	orr r1, r1, r0, lsl #20
	add sp, sp, #0xc
	str r1, [r6, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020c6474:
	mov r1, r5, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	ldr r3, _020c64d4 ; =data_02050f54
	mov r2, r2, lsl #0x1
	mov r1, r1, lsl #0x1
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	smull r2, r3, r0, r2
	adds r4, r2, #0x800
	smull r2, r1, r0, r1
	adc r0, r3, #0
	adds r2, r2, #0x800
	mov r3, r4, lsr #0xc
	orr r3, r3, r0, lsl #20
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	str r3, [r6]
	orr r1, r1, r0, lsl #20
	str r1, [r6, #8]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c62f0
_020c64d4: .word data_02050f54

	.global func_ov00_020c64d8
	arm_func_start func_ov00_020c64d8
func_ov00_020c64d8: ; 0x020c64d8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldrsh r4, [sp, #0x18]
	ldr lr, [sp, #0x1c]
	ldr ip, [sp, #0x20]
	stmia sp, {r4, lr}
	str ip, [sp, #8]
	mov ip, #0
	str ip, [sp, #0xc]
	bl func_ov00_020c62f0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c64d8

	.global func_ov00_020c6508
	arm_func_start func_ov00_020c6508
func_ov00_020c6508: ; 0x020c6508
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldrsh r4, [sp, #0x18]
	ldr lr, [sp, #0x1c]
	ldr ip, [sp, #0x20]
	stmia sp, {r4, lr}
	str ip, [sp, #8]
	mov ip, #1
	str ip, [sp, #0xc]
	bl func_ov00_020c62f0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c6508

	.global func_ov00_020c6538
	arm_func_start func_ov00_020c6538
func_ov00_020c6538: ; 0x020c6538
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r6, r2
	mov r0, r1
	add r2, sp, #0
	mov r1, r4
	mov r5, r3
	bl func_01ff9bf8
	ldr r1, [sp]
	cmp r1, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	bne _020c6588
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #8]
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c6588:
	cmp r6, #0
	bne _020c65a4
	mov r0, #0
	str r0, [r5]
	add sp, sp, #0xc
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c65a4:
	ldr r4, [sp, #8]
	smull r3, r2, r1, r1
	smull r1, r0, r4, r4
	adds r3, r3, #0x800
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	bl func_01ff9958
	mov r4, r0
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	cmp r6, r4
	mov r0, r0, lsr #0x10
	bge _020c665c
	mov r0, r0, asr #0x4
	mov r2, r0, lsl #0x1
	add r0, r2, #1
	ldr r1, _020c66b8 ; =data_02050f54
	mov r2, r2, lsl #0x1
	ldrsh r2, [r1, r2]
	mov r0, r0, lsl #0x1
	ldrsh r1, [r1, r0]
	smull r2, r3, r6, r2
	adds r4, r2, #0x800
	smull r2, r1, r6, r1
	mov r0, #0
	adc r3, r3, r0
	adds r2, r2, #0x800
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	adc r1, r1, r0
	mov r2, r2, lsr #0xc
	str r4, [r5]
	orr r2, r2, r1, lsl #20
	add sp, sp, #0xc
	str r2, [r5, #8]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c665c:
	mov r0, r0, asr #0x4
	mov r2, r0, lsl #0x1
	add r0, r2, #1
	ldr r1, _020c66b8 ; =data_02050f54
	mov r2, r2, lsl #0x1
	ldrsh r2, [r1, r2]
	mov r0, r0, lsl #0x1
	ldrsh r1, [r1, r0]
	smull r2, r3, r4, r2
	adds r6, r2, #0x800
	smull r2, r1, r4, r1
	adc r3, r3, #0
	adds r2, r2, #0x800
	mov r4, r6, lsr #0xc
	orr r4, r4, r3, lsl #20
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	str r4, [r5]
	orr r2, r2, r1, lsl #20
	mov r0, #1
	str r2, [r5, #8]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c6538
_020c66b8: .word data_02050f54

	.global func_ov00_020c66bc
	arm_func_start func_ov00_020c66bc
func_ov00_020c66bc: ; 0x020c66bc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c6908
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c66bc

	.global func_ov00_020c66d0
	arm_func_start func_ov00_020c66d0
func_ov00_020c66d0: ; 0x020c66d0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c6928
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c66d0

	.global func_ov00_020c66e4
	arm_func_start func_ov00_020c66e4
func_ov00_020c66e4: ; 0x020c66e4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r6, #0
	mov r4, r0
	str r6, [r4, #0x14]
	sub lr, r6, #1
	mov ip, #1
	ldr r0, _020c6780 ; =data_027e0ff0
	ldr r5, _020c6784 ; =data_ov00_020e8398
	mov r7, r2
	strb r3, [sp, #0x14]
	ldr r0, [r0]
	add r2, sp, #0x10
	add r3, sp, #0
	mov r8, r1
	str r5, [sp, #0x10]
	strb ip, [sp, #0x15]
	strb r6, [sp, #0x16]
	strb r6, [sp, #0x17]
	strb ip, [sp, #0x2c]
	strb lr, [sp]
	strb lr, [sp, #1]
	strb lr, [sp, #2]
	strb lr, [sp, #3]
	bl func_ov00_020c4ae8
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, r6
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r4
	bl func_ov00_020c6940
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl func_ov00_020c69e8
	mov r0, #1
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c66e4
_020c6780: .word data_027e0ff0
_020c6784: .word data_ov00_020e8398

	.global func_ov00_020c6788
	arm_func_start func_ov00_020c6788
func_ov00_020c6788: ; 0x020c6788
	ldr ip, _020c6790 ; =func_ov00_020c6c78
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c6788
_020c6790: .word func_ov00_020c6c78

	.global func_ov00_020c6794
	arm_func_start func_ov00_020c6794
func_ov00_020c6794: ; 0x020c6794
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r6, [r5, #4]
	mov r4, r1
	ldr r1, [r6]
	ldrb r1, [r1, #2]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	beq _020c67ec
	bl func_ov00_020c6ce0
	cmp r0, #0
	bne _020c67ec
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl func_ov00_020c6e8c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_020c67ec:
	ldr r1, [r6]
	ldrb r0, [r5, #0xc]
	ldrb r1, [r1, #1]
	cmp r0, #0
	sub r6, r1, #1
	bne _020c6830
	mov r0, r5
	bl func_ov00_020c6ce0
	cmp r6, r0
	bne _020c6830
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl func_ov00_020c6e8c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_020c6830:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020c6794

	.global func_ov00_020c6838
	arm_func_start func_ov00_020c6838
func_ov00_020c6838: ; 0x020c6838
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r8, r0
	mov r0, #0
	ldr r4, [sp, #0x44]
	movs r6, r2
	str r0, [r8, #0x14]
	streq r0, [r4]
	mov r7, r1
	mov r5, r3
	addeq sp, sp, #0x24
	streq r0, [r4, #8]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, sp, #0xc
	mov r1, r8
	bl func_ov00_020c6e08
	add r0, sp, #0xc
	add r3, sp, #0x18
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r7, #4]
	mov r1, r3
	str r0, [sp, #0x1c]
	ldrsh r0, [sp, #0x40]
	mov r3, r5
	ldr r5, [sp, #0x48]
	str r0, [sp]
	mov r2, r6
	mov r0, r7
	stmib sp, {r4, r5}
	bl func_ov00_020c6508
	ldr r1, _020c6904 ; =0x0000019a
	add r2, sp, #0x18
	mov r0, r7
	bl func_ov00_020ce284
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0x14]
	mov r0, r8
	orr r1, r1, #1
	str r1, [r8, #0x14]
	bl func_ov00_020c6d9c
	cmp r0, #0
	ldr r0, [r8, #0x14]
	orrne r0, r0, #4
	strne r0, [r8, #0x14]
	orreq r0, r0, #8
	streq r0, [r8, #0x14]
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c6838
_020c6904: .word 0x0000019a

	.global func_ov00_020c6908
	arm_func_start func_ov00_020c6908
func_ov00_020c6908: ; 0x020c6908
	ldr r1, _020c6924 ; =data_ov00_020e83e0
	mov r2, #0
	stmia r0, {r1, r2}
	sub r1, r2, #1
	str r1, [r0, #8]
	strb r2, [r0, #0xc]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c6908
_020c6924: .word data_ov00_020e83e0

	.global func_ov00_020c6928
	arm_func_start func_ov00_020c6928
func_ov00_020c6928: ; 0x020c6928
	bx lr
	arm_func_end func_ov00_020c6928

	.global func_ov00_020c692c
	arm_func_start func_ov00_020c692c
func_ov00_020c692c: ; 0x020c692c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c692c

	.global func_ov00_020c6940
	arm_func_start func_ov00_020c6940
func_ov00_020c6940: ; 0x020c6940
	ldr r2, _020c6970 ; =data_027e0ff0
	ldrb r3, [r1]
	ldr ip, [r2]
	mov r2, #0
	ldr ip, [ip]
	add r3, ip, r3, lsl #3
	str r3, [r0, #4]
	ldrsb r1, [r1, #1]
	str r1, [r0, #8]
	strb r2, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c6940
_020c6970: .word data_027e0ff0

	.global func_ov00_020c6974
	arm_func_start func_ov00_020c6974
func_ov00_020c6974: ; 0x020c6974
	stmdb sp!, {r3, lr}
	mvn r3, #0
	strb r3, [sp]
	strb r3, [sp, #1]
	ldr r3, [r1]
	add r1, sp, #0
	ldrb r3, [r3]
	strb r3, [sp]
	strb r2, [sp, #1]
	bl func_ov00_020c6940
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c6974

	.global func_ov00_020c69a0
	arm_func_start func_ov00_020c69a0
func_ov00_020c69a0: ; 0x020c69a0
	ldr r2, [r0, #4]
	ldr r2, [r2]
	ldrb r2, [r2, #5]
	cmp r2, #0
	movne r0, #0
	bxne lr
	ldrb r2, [r0, #0xc]
	cmp r2, r1
	strneb r1, [r0, #0xc]
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c69a0

	.global func_ov00_020c69cc
	arm_func_start func_ov00_020c69cc
func_ov00_020c69cc: ; 0x020c69cc
	ldrb r1, [r0, #0xc]
	ldr ip, _020c69e4 ; =func_ov00_020c69a0
	cmp r1, #0
	moveq r1, #1
	movne r1, #0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c69cc
_020c69e4: .word func_ov00_020c69a0

	.global func_ov00_020c69e8
	arm_func_start func_ov00_020c69e8
func_ov00_020c69e8: ; 0x020c69e8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r3, [r7, #4]
	mov r6, r1
	ldr r1, [r3]
	str r2, [sp]
	ldrb r1, [r1, #1]
	cmp r1, #2
	bhi _020c6a60
	ldr r0, _020c6ba4 ; =data_027e0764
	ldr r2, [r0]
	ldmib r0, {r1, r3}
	umull r5, r4, r3, r2
	mla r4, r3, r1, r4
	ldr r1, [r0, #0xc]
	ldr r3, [r0, #0x10]
	mla r4, r1, r2, r4
	ldr r1, [r0, #0x14]
	adds r2, r3, r5
	adc r1, r1, r4
	str r2, [r0]
	str r1, [r0, #4]
	tst r1, #0x80000000
	movne r1, #1
	moveq r1, #0
	mov r0, r7
	bl func_ov00_020c69a0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c6a60:
	bl func_ov00_020c6d34
	mov r4, r0
	mov r0, r7
	bl func_ov00_020c6ce0
	mov r5, r0
	mov r0, r7
	bl func_ov00_020c6ce8
	ldr r2, [r7, #4]
	mov r1, #0x24
	ldr r2, [r2, #4]
	str r0, [sp, #8]
	mla sb, r0, r1, r2
	mla sl, r5, r1, r2
	mla r8, r4, r1, r2
	ldr r2, [sl, #0xc]
	ldr r1, [r6, #8]
	ldr r0, [r6]
	sub fp, r2, r1
	ldr r2, [sl, #4]
	mov r1, fp
	sub r0, r2, r0
	str r0, [sp, #4]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	ldr r3, [r8, #4]
	ldr r0, [sl, #4]
	ldr r2, [r8, #0xc]
	ldr r1, [sl, #0xc]
	sub r0, r3, r0
	sub r1, r2, r1
	bl func_01ffa0f4
	mov r8, r0, lsl #0x10
	ldr r3, [sb, #4]
	ldr r0, [sl, #4]
	ldr r2, [sb, #0xc]
	ldr r1, [sl, #0xc]
	sub r0, r3, r0
	sub r1, r2, r1
	bl func_01ffa0f4
	ldr r1, [sp, #4]
	cmp r1, #0
	cmpeq fp, #0
	ldreq r6, [sp]
	mov r1, r0, lsl #0x10
	cmp r4, r5
	bne _020c6b30
	mov r0, r7
	mov r1, #0
	bl func_ov00_020c69a0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c6b30:
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _020c6b50
	mov r0, r7
	mov r1, #1
	bl func_ov00_020c69a0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c6b50:
	sub r0, r6, r1, asr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	movs r1, r0, asr #0x3
	sub r0, r6, r8, asr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	rsbmi r1, r1, #0
	movs r0, r0, asr #0x3
	rsbmi r0, r0, #0
	cmp r0, r1
	mov r0, r7
	bge _020c6b94
	mov r1, #1
	bl func_ov00_020c69a0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020c6b94:
	mov r1, #0
	bl func_ov00_020c69a0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c69e8
_020c6ba4: .word data_027e0764

	.global func_ov00_020c6ba8
	arm_func_start func_ov00_020c6ba8
func_ov00_020c6ba8: ; 0x020c6ba8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r1, r3
	add r2, sp, #0
	mov r3, #0
	bl func_ov00_020c5014
	ldr r1, [r5, #4]
	mov r4, r0
	ldr r2, [r1]
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _020c6c18
	ldr r0, [r5, #8]
	cmp r4, r0
	ble _020c6bf8
	mov r0, r5
	mov r1, #1
	bl func_ov00_020c69a0
	b _020c6c70
_020c6bf8:
	cmp r4, r0
	mov r0, r5
	bge _020c6c10
	mov r1, #0
	bl func_ov00_020c69a0
	b _020c6c70
_020c6c10:
	bl func_ov00_020c69cc
	b _020c6c70
_020c6c18:
	ldr r3, [r5, #8]
	subs r1, r4, r3
	ldrmib r0, [r2, #1]
	submi r0, r0, r3
	addmi r1, r4, r0
	subs r0, r3, r4
	ldrmib r0, [r2, #1]
	submi r0, r0, r4
	addmi r0, r3, r0
	cmp r1, r0
	bge _020c6c54
	mov r0, r5
	mov r1, #1
	bl func_ov00_020c69a0
	b _020c6c70
_020c6c54:
	cmp r1, r0
	mov r0, r5
	ble _020c6c6c
	mov r1, #0
	bl func_ov00_020c69a0
	b _020c6c70
_020c6c6c:
	bl func_ov00_020c69cc
_020c6c70:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c6ba8

	.global func_ov00_020c6c78
	arm_func_start func_ov00_020c6c78
func_ov00_020c6c78: ; 0x020c6c78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c69cc
	cmp r0, #0
	beq _020c6ca0
	mov r0, r4
	bl func_ov00_020c6d9c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020c6ca0:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c6c78

	.global func_ov00_020c6ca8
	arm_func_start func_ov00_020c6ca8
func_ov00_020c6ca8: ; 0x020c6ca8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r4, [r5, #0xc]
	bl func_ov00_020c6ba8
	ldrb r0, [r5, #0xc]
	cmp r4, r0
	beq _020c6cd8
	mov r0, r5
	bl func_ov00_020c6d9c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c6cd8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c6ca8

	.global func_ov00_020c6ce0
	arm_func_start func_ov00_020c6ce0
func_ov00_020c6ce0: ; 0x020c6ce0
	ldr r0, [r0, #8]
	bx lr
	arm_func_end func_ov00_020c6ce0

	.global func_ov00_020c6ce8
	arm_func_start func_ov00_020c6ce8
func_ov00_020c6ce8: ; 0x020c6ce8
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1]
	add r0, r0, #1
	ldrb r2, [r1, #1]
	ldrb r1, [r1, #2]
	cmp r0, r2
	bxlt lr
	cmp r1, #0
	beq _020c6d24
	cmp r1, #1
	beq _020c6d2c
	cmp r1, #2
	subeq r0, r2, #2
	bx lr
_020c6d24:
	mov r0, #0
	bx lr
_020c6d2c:
	sub r0, r2, #1
	bx lr
	arm_func_end func_ov00_020c6ce8

	.global func_ov00_020c6d34
	arm_func_start func_ov00_020c6d34
func_ov00_020c6d34: ; 0x020c6d34
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1]
	subs r0, r0, #1
	ldrb r2, [r1, #1]
	ldrb r1, [r1, #2]
	bxpl lr
	cmp r1, #0
	beq _020c6d6c
	cmp r1, #1
	beq _020c6d74
	cmp r1, #2
	moveq r0, #1
	bx lr
_020c6d6c:
	sub r0, r2, #1
	bx lr
_020c6d74:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020c6d34

	.global func_ov00_020c6d7c
	arm_func_start func_ov00_020c6d7c
func_ov00_020c6d7c: ; 0x020c6d7c
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _020c6d94
	bl func_ov00_020c6d34
	ldmia sp!, {r3, pc}
_020c6d94:
	bl func_ov00_020c6ce8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c6d7c

	.global func_ov00_020c6d9c
	arm_func_start func_ov00_020c6d9c
func_ov00_020c6d9c: ; 0x020c6d9c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl func_ov00_020c6d7c
	ldr r1, [r5, #8]
	mov r4, r0
	cmp r4, r1
	beq _020c6e00
	ldr r0, [r5, #4]
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	cmp r1, #2
	bne _020c6de4
	mov r1, r4
	bl func_ov00_020c4fe8
	cmp r0, #0
	beq _020c6de4
	mov r0, r5
	bl func_ov00_020c69cc
_020c6de4:
	str r4, [r5, #8]
	ldr r0, [r5, #0x10]
	cmp r0, #0xff
	addlt r0, r0, #1
	strlt r0, [r5, #0x10]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020c6e00:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c6d9c

	.global func_ov00_020c6e08
	arm_func_start func_ov00_020c6e08
func_ov00_020c6e08: ; 0x020c6e08
	ldr r3, [r1, #4]
	ldr r2, [r1, #8]
	ldr r3, [r3, #4]
	mov r1, #0x24
	mla r1, r2, r1, r3
	mov r3, r0
	add r0, r1, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end func_ov00_020c6e08

	.global func_ov00_020c6e30
	arm_func_start func_ov00_020c6e30
func_ov00_020c6e30: ; 0x020c6e30
	ldr r3, [r0, #4]
	ldr r2, [r3]
	ldrb r0, [r2, #5]
	cmp r0, #0
	beq _020c6e84
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _020c6e84
	ldrb r2, [r2, #1]
	ldr r3, [r3, #4]
	mov r0, #0x24
	sub r2, r2, #1
	mla r3, r2, r0, r3
	ldr r2, [r3, #4]
	mov r0, #1
	str r2, [r1]
	ldr r2, [r3, #8]
	str r2, [r1, #4]
	ldr r2, [r3, #0xc]
	str r2, [r1, #8]
	bx lr
_020c6e84:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020c6e30

	.global func_ov00_020c6e8c
	arm_func_start func_ov00_020c6e8c
func_ov00_020c6e8c: ; 0x020c6e8c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r3, [r0, #4]
	mov r0, #0x24
	ldr ip, [r3, #4]
	add r3, sp, #0
	mla r0, r2, r0, ip
	add r0, r0, #4
	mov r4, r1
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp]
	ldr r0, [r4]
	sub r0, r1, r0
	bl func_02042f74
	ldr r1, _020c6f04 ; =0x0000019a
	cmp r0, r1
	bgt _020c6ef8
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	bl func_02042f74
	ldr r1, _020c6f04 ; =0x0000019a
	cmp r0, r1
	addle sp, sp, #0xc
	movle r0, #1
	ldmleia sp!, {r3, r4, pc}
_020c6ef8:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c6e8c
_020c6f04: .word 0x0000019a

	.global func_ov00_020c6f08
	arm_func_start func_ov00_020c6f08
func_ov00_020c6f08: ; 0x020c6f08
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #4]
	ldr r3, [r2]
	ldrb r2, [r3, #5]
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r3, #2]
	cmp r2, #1
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r2, [r3, #1]
	ldr r3, [r0, #8]
	sub r2, r2, #1
	cmp r3, r2
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl func_ov00_020c6e8c
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c6f08

	.global func_ov00_020c6f60
	arm_func_start func_ov00_020c6f60
func_ov00_020c6f60: ; 0x020c6f60
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	ldr r2, [r2]
	ldrb r2, [r2, #2]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #8]
	cmp r2, #0
	bne _020c6fa4
	mov r2, #0
	bl func_ov00_020c6e8c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c6fa4:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	ldr r1, [r1]
	ldrb r1, [r1, #1]
	sub r2, r1, #1
	cmp r0, r2
	bne _020c6fd8
	mov r0, r5
	mov r1, r4
	bl func_ov00_020c6e8c
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020c6fd8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c6f60

	.global func_ov00_020c6fe0
	arm_func_start func_ov00_020c6fe0
func_ov00_020c6fe0: ; 0x020c6fe0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	ldr r1, _020c7098 ; =data_027e0e58
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1]
	mov r2, r4
	mov r1, #0x208
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c7098 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c709c ; =0x00000209
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c7098 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c70a0 ; =0x0000020a
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _020c7098 ; =data_027e0e58
	ldr r1, _020c70a4 ; =0x0000020b
	ldr r0, [r0]
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r2, r4
	ldr r0, _020c70a8 ; =data_027e0ffc
	mov r1, #0x198
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c6fe0
_020c7098: .word data_027e0e58
_020c709c: .word 0x00000209
_020c70a0: .word 0x0000020a
_020c70a4: .word 0x0000020b
_020c70a8: .word data_027e0ffc

	.global func_ov00_020c70ac
	arm_func_start func_ov00_020c70ac
func_ov00_020c70ac: ; 0x020c70ac
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	ldr r1, _020c7140 ; =data_027e0e58
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1]
	mov r2, r4
	mov r1, #0x20c
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c7140 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c7144 ; =0x0000020d
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c7140 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c7148 ; =0x0000020e
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r2, r4
	ldr r0, _020c714c ; =data_027e0ffc
	ldr r1, _020c7150 ; =0x00000197
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c70ac
_020c7140: .word data_027e0e58
_020c7144: .word 0x0000020d
_020c7148: .word 0x0000020e
_020c714c: .word data_027e0ffc
_020c7150: .word 0x00000197

	.global func_ov00_020c7154
	arm_func_start func_ov00_020c7154
func_ov00_020c7154: ; 0x020c7154
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	ldr r1, _020c71e8 ; =data_027e0e58
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1]
	ldr r1, _020c71ec ; =0x0000020f
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c71e8 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, r4
	mov r1, #0x210
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c71e8 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c71f0 ; =0x00000211
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r2, r4
	ldr r0, _020c71f4 ; =data_027e0ffc
	ldr r1, _020c71f8 ; =0x00000197
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7154
_020c71e8: .word data_027e0e58
_020c71ec: .word 0x0000020f
_020c71f0: .word 0x00000211
_020c71f4: .word data_027e0ffc
_020c71f8: .word 0x00000197

	.global func_ov00_020c71fc
	arm_func_start func_ov00_020c71fc
func_ov00_020c71fc: ; 0x020c71fc
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	ldr r1, _020c7258 ; =data_027e0e58
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1]
	ldr r1, _020c725c ; =0x00000222
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c7258 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c7260 ; =0x00000223
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c71fc
_020c7258: .word data_027e0e58
_020c725c: .word 0x00000222
_020c7260: .word 0x00000223

	.global func_ov00_020c7264
	arm_func_start func_ov00_020c7264
func_ov00_020c7264: ; 0x020c7264
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	ldr r1, _020c72c0 ; =data_027e0e58
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1]
	mov r2, r4
	mov r1, #9
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c72c0 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, r4
	mov r1, #0xa
	mov r3, #2
	bl func_ov00_0207c1b0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7264
_020c72c0: .word data_027e0e58

	.global func_ov00_020c72c4
	arm_func_start func_ov00_020c72c4
func_ov00_020c72c4: ; 0x020c72c4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	ldr r1, _020c7344 ; =data_027e0e58
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1]
	ldr r1, _020c7348 ; =0x0000023e
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c7344 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c734c ; =0x0000023f
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c7344 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, r4
	mov r1, #0x240
	mov r3, #2
	bl func_ov00_0207c1b0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c72c4
_020c7344: .word data_027e0e58
_020c7348: .word 0x0000023e
_020c734c: .word 0x0000023f

	.global func_ov00_020c7350
	arm_func_start func_ov00_020c7350
func_ov00_020c7350: ; 0x020c7350
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	ldr r1, _020c73ac ; =data_027e0e58
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1]
	ldr r1, _020c73b0 ; =0x00000241
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	ldr r0, _020c73ac ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, _020c73b4 ; =0x00000242
	mov r2, r4
	mov r3, #2
	bl func_ov00_0207c1b0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7350
_020c73ac: .word data_027e0e58
_020c73b0: .word 0x00000241
_020c73b4: .word 0x00000242

	.global func_ov00_020c73b8
	arm_func_start func_ov00_020c73b8
func_ov00_020c73b8: ; 0x020c73b8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x38
	mvn r4, #0
	mov r8, r0
	add r0, sp, #0xc
	mov r7, r1
	mov r6, r2
	mov r5, r3
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r4, [sp, #0x50]
	bl func_ov00_020c1500
	mvn r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r0, sp, #0xc
	bl func_ov00_020c3348
	str r8, [sp, #0x30]
	str r7, [sp, #0x34]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, _020c7478 ; =data_027e0fe8
	ldr r1, _020c747c ; =0x45465756
	ldr r0, [r0]
	mov r2, r6
	add r3, sp, #0xc
	bl func_ov00_020c4048
	ldr r0, _020c7480 ; =data_027e0fe4
	add r1, sp, #4
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r4, #0
	beq _020c744c
	ldr r1, [sp, #4]
	str r1, [r4]
	ldr r1, [sp, #8]
	str r1, [r4, #4]
_020c744c:
	cmp r0, #0
	addeq sp, sp, #0x38
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0x1000
	strne r5, [r0, #0x260]
	strne r5, [r0, #0x264]
	strne r5, [r0, #0x268]
	mov r0, #1
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c73b8
_020c7478: .word data_027e0fe8
_020c747c: .word 0x45465756
_020c7480: .word data_027e0fe4

	.global func_ov00_020c7484
	arm_func_start func_ov00_020c7484
func_ov00_020c7484: ; 0x020c7484
	stmdb sp!, {r3, lr}
	mov ip, r0
	str r2, [sp]
	mov r0, #0
	mov r3, r1
	mov r1, r0
	mov r2, ip
	bl func_ov00_020c73b8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c7484

	.global func_ov00_020c74a8
	arm_func_start func_ov00_020c74a8
func_ov00_020c74a8: ; 0x020c74a8
	stmdb sp!, {r3, lr}
	mov r3, r1
	str r2, [sp]
	mov r2, r0
	mov r0, #0
	mov r1, #1
	bl func_ov00_020c73b8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c74a8

	.global func_ov00_020c74c8
	arm_func_start func_ov00_020c74c8
func_ov00_020c74c8: ; 0x020c74c8
	stmdb sp!, {r3, lr}
	mov r3, r1
	str r2, [sp]
	mov r2, r0
	mov r0, #0
	mov r1, #2
	bl func_ov00_020c73b8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c74c8

	.global func_ov00_020c74e8
	arm_func_start func_ov00_020c74e8
func_ov00_020c74e8: ; 0x020c74e8
	stmdb sp!, {r3, lr}
	mov ip, r2
	str r3, [sp]
	mov r2, r1
	mov r3, ip
	mov r1, #0
	bl func_ov00_020c73b8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c74e8

	.global func_ov00_020c7508
	arm_func_start func_ov00_020c7508
func_ov00_020c7508: ; 0x020c7508
	stmdb sp!, {r3, lr}
	mov ip, r2
	str r3, [sp]
	mov r2, r1
	mov r3, ip
	mov r1, #2
	bl func_ov00_020c73b8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c7508

	.global func_ov00_020c7528
	arm_func_start func_ov00_020c7528
func_ov00_020c7528: ; 0x020c7528
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mvn ip, #0
	mov r7, r0
	add r0, sp, #0xc
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [sp, #4]
	str ip, [sp, #8]
	bl func_ov00_020c1500
	mvn r1, #0
	add r0, sp, #0xc
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	bl func_ov00_020c3348
	str r7, [sp, #0x30]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, _020c75e8 ; =data_027e0fe8
	ldr r1, _020c75ec ; =0x45465250
	ldr r0, [r0]
	mov r2, r6
	add r3, sp, #0xc
	bl func_ov00_020c4048
	ldr r0, _020c75f0 ; =data_027e0fe4
	add r1, sp, #4
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r4, #0
	beq _020c75b4
	ldr r1, [sp, #4]
	str r1, [r4]
	ldr r1, [sp, #8]
	str r1, [r4, #4]
_020c75b4:
	cmp r0, #0
	addeq sp, sp, #0x38
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x1000
	strne r5, [r0, #0x258]
	strne r5, [r0, #0x25c]
	ldrb r1, [sp, #0x50]
	strne r5, [r0, #0x260]
	strb r1, [r0, #0x264]
	mov r0, #1
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7528
_020c75e8: .word data_027e0fe8
_020c75ec: .word 0x45465250
_020c75f0: .word data_027e0fe4

	.global func_ov00_020c75f4
	arm_func_start func_ov00_020c75f4
func_ov00_020c75f4: ; 0x020c75f4
	stmdb sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0
	bl func_ov00_020c7528
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c75f4

	.global func_ov00_020c761c
	arm_func_start func_ov00_020c761c
func_ov00_020c761c: ; 0x020c761c
	stmdb sp!, {r3, lr}
	ldrb ip, [sp, #8]
	str ip, [sp]
	bl func_ov00_020c7528
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c761c

	.global func_ov00_020c7630
	arm_func_start func_ov00_020c7630
func_ov00_020c7630: ; 0x020c7630
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	ldr r4, _020c7728 ; =data_027e0fe4
	mov r6, r0
	ldr r0, [r4]
	mov r7, r1
	mov r1, r6
	mov r5, r2
	mov r4, r3
	bl func_ov00_020c3674
	cmp r0, #0
	bne _020c76e0
	mvn r1, #0
	add r0, sp, #0xc
	str r1, [sp, #4]
	str r1, [sp, #8]
	bl func_ov00_020c1500
	mvn r1, #0
	add r0, sp, #0xc
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	bl func_ov00_020c3348
	add r1, sp, #4
	str r7, [sp, #0x30]
	str r1, [sp]
	ldr r0, _020c772c ; =data_027e0fe8
	ldr r1, _020c7730 ; =0x4546524c
	ldr r0, [r0]
	add r3, sp, #0xc
	mov r2, r5
	bl func_ov00_020c4048
	ldr r0, _020c7728 ; =data_027e0fe4
	add r1, sp, #4
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	addeq sp, sp, #0x38
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp, #4]
	str r1, [r6]
	ldr r1, [sp, #8]
	str r1, [r6, #4]
	b _020c76f8
_020c76e0:
	ldr r1, [r5]
	str r1, [r0, #0x48]
	ldr r1, [r5, #4]
	str r1, [r0, #0x4c]
	ldr r1, [r5, #8]
	str r1, [r0, #0x50]
_020c76f8:
	mov r1, #0
	strb r1, [r0, #0x484]
	str r4, [r0, #0x470]
	str r4, [r0, #0x474]
	ldr r2, [sp, #0x50]
	str r4, [r0, #0x478]
	ldrb r1, [sp, #0x54]
	str r2, [r0, #0x47c]
	strb r1, [r0, #0x485]
	mov r0, #1
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7630
_020c7728: .word data_027e0fe4
_020c772c: .word data_027e0fe8
_020c7730: .word 0x4546524c

	.global func_ov00_020c7734
	arm_func_start func_ov00_020c7734
func_ov00_020c7734: ; 0x020c7734
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldrb ip, [sp, #0x10]
	mov lr, r2
	str r3, [sp]
	mov r2, r1
	mov r3, lr
	mov r1, #0
	str ip, [sp, #4]
	bl func_ov00_020c7630
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c7734

	.global func_ov00_020c7764
	arm_func_start func_ov00_020c7764
func_ov00_020c7764: ; 0x020c7764
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	add r4, sp, #0x14
	movs r5, r3
	mov r7, r0
	mov r6, r2
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	beq _020c77e0
	mov r0, #0x1000
	ldr r1, [sp, #0x18]
	rsb r0, r0, #0
	cmp r1, r0
	strlt r0, [sp, #0x18]
	ldr r0, _020c7e9c ; =data_027e0e60
	ldr ip, [sp, #0x14]
	ldr r4, [r0]
	ldr r8, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r1, sp, #8
	mov r0, r4
	mov r2, #0
	str ip, [sp, #8]
	str r8, [sp, #0xc]
	str r3, [sp, #0x10]
	bl func_ov00_02083ee0
	mov r8, r0
	mov r0, r4
	bl func_ov00_02084120
	add r0, r8, r0
	str r0, [sp, #0x18]
_020c77e0:
	ldr r0, _020c7ea0 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x31
	bne _020c7a38
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _020c7e94
_020c7804: ; jump table
	b _020c7814 ; case 0
	b _020c78a0 ; case 1
	b _020c7928 ; case 2
	b _020c79b0 ; case 3
_020c7814:
	mov r4, #0
	add r2, sp, #0x14
	mov r0, #3
	mov r1, #2
	mov r3, #0x1800
	str r4, [sp]
	bl func_ov00_020c73b8
	mov r1, r4
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	add r2, sp, #0x14
	ldr r0, [r0]
	mov r1, #0x1e8
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, r4
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ea8 ; =0x000001ee
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, r4
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c78a0:
	mov r0, #3
	mov r1, #0
	add r2, sp, #0x14
	rsb r3, r0, #0xcd0
	str r1, [sp]
	bl func_ov00_020c73b8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7eb4 ; =0x000001e9
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7eb8 ; =0x000001ed
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7928:
	ldr r3, _020c7ebc ; =0x0000099a
	mov r1, #0
	add r2, sp, #0x14
	mov r0, #3
	str r1, [sp]
	bl func_ov00_020c73b8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ec0 ; =0x000001ea
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ec4 ; =0x000001ef
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c79b0:
	mov r0, #3
	mov r1, #0
	add r2, sp, #0x14
	rsb r3, r0, #0x4d0
	str r1, [sp]
	bl func_ov00_020c73b8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ec8 ; =0x000001eb
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	add r2, sp, #0x14
	ldr r0, [r0]
	mov r1, #0x25c
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7a38:
	ldr r0, _020c7e9c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02084838
	cmp r0, #0
	beq _020c7c8c
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _020c7e94
_020c7a58: ; jump table
	b _020c7a68 ; case 0
	b _020c7af4 ; case 1
	b _020c7b7c ; case 2
	b _020c7c04 ; case 3
_020c7a68:
	mov r0, #2
	mov r4, #0
	add r2, sp, #0x14
	mov r1, r0
	mov r3, #0x1800
	str r4, [sp]
	bl func_ov00_020c73b8
	mov r1, r4
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	add r2, sp, #0x14
	ldr r0, [r0]
	mov r1, #0x1e8
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, r4
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ea8 ; =0x000001ee
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, r4
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7af4:
	ldr r3, _020c7ecc ; =0x00000ccd
	mov r1, #0
	add r2, sp, #0x14
	mov r0, #2
	str r1, [sp]
	bl func_ov00_020c73b8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7eb4 ; =0x000001e9
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7eb8 ; =0x000001ed
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7b7c:
	ldr r3, _020c7ebc ; =0x0000099a
	mov r1, #0
	add r2, sp, #0x14
	mov r0, #2
	str r1, [sp]
	bl func_ov00_020c73b8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ec0 ; =0x000001ea
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ec4 ; =0x000001ef
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7c04:
	ldr r3, _020c7ed0 ; =0x000004cd
	mov r1, #0
	add r2, sp, #0x14
	mov r0, #2
	str r1, [sp]
	bl func_ov00_020c73b8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ec8 ; =0x000001eb
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	add r2, sp, #0x14
	ldr r0, [r0]
	mov r1, #0x25c
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7c8c:
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _020c7e94
_020c7c98: ; jump table
	b _020c7ca8 ; case 0
	b _020c7d28 ; case 1
	b _020c7da4 ; case 2
	b _020c7e20 ; case 3
_020c7ca8:
	mov r4, #0
	add r2, sp, #0x14
	mov r0, #1
	mov r1, #2
	mov r3, #0x1800
	str r4, [sp]
	bl func_ov00_020c73b8
	add r1, sp, #0x14
	mov r0, #1
	mov r2, #0x1800
	mov r3, r4
	str r5, [sp]
	bl func_ov00_020c7528
	mov r1, r4
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ea8 ; =0x000001ee
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, r4
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7d28:
	ldr r3, _020c7ecc ; =0x00000ccd
	mov r1, #0
	add r2, sp, #0x14
	mov r0, #1
	str r1, [sp]
	bl func_ov00_020c73b8
	ldr r2, _020c7ed4 ; =0x00001333
	add r1, sp, #0x14
	mov r0, #1
	mov r3, #0
	str r5, [sp]
	bl func_ov00_020c7528
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7eb8 ; =0x000001ed
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7da4:
	ldr r3, _020c7ebc ; =0x0000099a
	mov r1, #0
	add r2, sp, #0x14
	mov r0, #1
	str r1, [sp]
	bl func_ov00_020c73b8
	ldr r2, _020c7ed8 ; =0x00000e66
	add r1, sp, #0x14
	mov r0, #1
	mov r3, #0
	str r5, [sp]
	bl func_ov00_020c7528
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	ldr r1, _020c7ec4 ; =0x000001ef
	ldr r0, [r0]
	add r2, sp, #0x14
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c7e20:
	ldr r3, _020c7ed0 ; =0x000004cd
	mov r1, #0
	add r2, sp, #0x14
	mov r0, #1
	str r1, [sp]
	bl func_ov00_020c73b8
	add r1, sp, #0x14
	mov r0, #1
	mov r2, #0x400
	mov r3, #0
	str r5, [sp]
	bl func_ov00_020c7528
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _020c7ea4 ; =data_027e0e58
	add r2, sp, #0x14
	ldr r0, [r0]
	mov r1, #0x25c
	mov r3, #2
	bl func_ov00_0207c1b0
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020c7eac ; =data_027e0ffc
	ldr r1, _020c7eb0 ; =0x00000195
	add r2, sp, #0x14
	mov r3, #0
	bl func_ov00_020ceacc
_020c7e94:
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7764
_020c7e9c: .word data_027e0e60
_020c7ea0: .word data_027e0d38
_020c7ea4: .word data_027e0e58
_020c7ea8: .word 0x000001ee
_020c7eac: .word data_027e0ffc
_020c7eb0: .word 0x00000195
_020c7eb4: .word 0x000001e9
_020c7eb8: .word 0x000001ed
_020c7ebc: .word 0x0000099a
_020c7ec0: .word 0x000001ea
_020c7ec4: .word 0x000001ef
_020c7ec8: .word 0x000001eb
_020c7ecc: .word 0x00000ccd
_020c7ed0: .word 0x000004cd
_020c7ed4: .word 0x00001333
_020c7ed8: .word 0x00000e66

	.global func_ov00_020c7edc
	arm_func_start func_ov00_020c7edc
func_ov00_020c7edc: ; 0x020c7edc
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mvn r3, #0
	mov r6, r0
	add r0, sp, #0xc
	mov r5, r1
	mov r4, r2
	str r3, [sp, #4]
	str r3, [sp, #8]
	bl func_ov00_020c1500
	mvn r1, #0
	add r0, sp, #0xc
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	bl func_ov00_020c3348
	add r1, sp, #4
	str r1, [sp]
	ldr r0, _020c7f8c ; =data_027e0fe8
	ldr r1, _020c7f90 ; =0x4546574c
	ldr r0, [r0]
	mov r2, r6
	add r3, sp, #0xc
	bl func_ov00_020c4048
	ldr r0, _020c7f94 ; =data_027e0fe4
	add r1, sp, #4
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r4, #0
	beq _020c7f60
	ldr r1, [sp, #4]
	str r1, [r4]
	ldr r1, [sp, #8]
	str r1, [r4, #4]
_020c7f60:
	cmp r0, #0
	addeq sp, sp, #0x38
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0x1000
	strne r5, [r0, #0x260]
	strne r5, [r0, #0x264]
	strne r5, [r0, #0x268]
	mov r0, #1
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7edc
_020c7f8c: .word data_027e0fe8
_020c7f90: .word 0x4546574c
_020c7f94: .word data_027e0fe4

	.global func_ov00_020c7f98
	arm_func_start func_ov00_020c7f98
func_ov00_020c7f98: ; 0x020c7f98
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add r4, sp, #0x10
	mov r6, r0
	ldmia r1, {r0, r1, r2}
	movs r5, r3
	stmia r4, {r0, r1, r2}
	beq _020c7ffc
	ldr r0, _020c8048 ; =data_027e0e60
	ldr ip, [sp, #0x10]
	ldr r4, [r0]
	ldr r7, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r1, sp, #4
	mov r0, r4
	mov r2, #0
	str ip, [sp, #4]
	str r7, [sp, #8]
	str r3, [sp, #0xc]
	bl func_ov00_02083ee0
	mov r7, r0
	mov r0, r4
	bl func_ov00_02084120
	add r0, r7, r0
	str r0, [sp, #0x14]
_020c7ffc:
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _020c8040
_020c8008: ; jump table
	b _020c8040 ; case 0
	b _020c8018 ; case 1
	b _020c8040 ; case 2
	b _020c8040 ; case 3
_020c8018:
	ldr r1, _020c804c ; =0x00000ccd
	add r0, sp, #0x10
	mov r2, #0
	bl func_ov00_020c7edc
	mov r0, #3
	add r1, sp, #0x10
	rsb r2, r0, #0xcd0
	mov r3, #0
	str r5, [sp]
	bl func_ov00_020c7528
_020c8040:
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c7f98
_020c8048: .word data_027e0e60
_020c804c: .word 0x00000ccd

	.global func_ov00_020c8050
	arm_func_start func_ov00_020c8050
func_ov00_020c8050: ; 0x020c8050
	ldr r1, _020c8314 ; =0x4f435441
	cmp r0, r1
	bhi _020c81ac
	bhs _020c82fc
	ldr r1, _020c8318 ; =0x4653484d
	cmp r0, r1
	bhi _020c8114
	bhs _020c82f4
	ldr r2, _020c831c ; =0x43485352
	cmp r0, r2
	bhi _020c80d0
	bhs _020c82f4
	ldr r1, _020c8320 ; =0x42454530
	cmp r0, r1
	bhi _020c80a0
	bhs _020c8304
	ldr r1, _020c8324 ; =0x42424c45
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c80a0:
	sub r1, r2, #0x1c
	cmp r0, r1
	bhi _020c830c
	sub r1, r2, #0x20
	cmp r0, r1
	blo _020c830c
	subne r1, r2, #0x1e
	cmpne r0, r1
	subne r1, r2, #0x1c
	cmpne r0, r1
	beq _020c82f4
	b _020c830c
_020c80d0:
	ldr r1, _020c8328 ; =0x43524f57
	cmp r0, r1
	bhi _020c80f0
	bhs _020c82fc
	ldr r1, _020c832c ; =0x43485543
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c80f0:
	ldr r1, _020c8330 ; =0x45475354
	cmp r0, r1
	bhi _020c8104
	beq _020c82fc
	b _020c830c
_020c8104:
	ldr r1, _020c8334 ; =0x464c5442
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8114:
	ldr r1, _020c8338 ; =0x49434843
	cmp r0, r1
	bhi _020c8168
	bhs _020c82fc
	ldr r1, _020c833c ; =0x484c4d4b
	cmp r0, r1
	bhi _020c8144
	bhs _020c82fc
	ldr r1, _020c8340 ; =0x47454c4c
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8144:
	ldr r1, _020c8344 ; =0x484e4b53
	cmp r0, r1
	bhi _020c8158
	beq _020c82f4
	b _020c830c
_020c8158:
	ldr r1, _020c8348 ; =0x48504c50
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8168:
	ldr r1, _020c834c ; =0x4b4d4244
	cmp r0, r1
	bhi _020c8188
	bhs _020c82f4
	ldr r1, _020c8350 ; =0x4b455448
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8188:
	ldr r1, _020c8354 ; =0x4b4f4b4f
	cmp r0, r1
	bhi _020c819c
	beq _020c82fc
	b _020c830c
_020c819c:
	ldr r1, _020c8358 ; =0x4c4b4c4b
	cmp r0, r1
	beq _020c82f4
	b _020c830c
_020c81ac:
	ldr r2, _020c835c ; =0x53544c46
	cmp r0, r2
	bhi _020c8254
	bhs _020c82f4
	ldr r1, _020c8360 ; =0x504f4f4e
	cmp r0, r1
	bhi _020c8210
	bhs _020c82fc
	ldr r1, _020c8364 ; =0x50425a4b
	cmp r0, r1
	bhi _020c81ec
	bhs _020c82fc
	ldr r1, _020c8368 ; =0x50424c4e
	cmp r0, r1
	beq _020c82f4
	b _020c830c
_020c81ec:
	ldr r1, _020c836c ; =0x504c5356
	cmp r0, r1
	bhi _020c8200
	beq _020c82ec
	b _020c830c
_020c8200:
	ldr r1, _020c8370 ; =0x504d4554
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8210:
	ldr r1, _020c8374 ; =0x52415431
	cmp r0, r1
	bhi _020c8230
	bhs _020c82fc
	sub r1, r1, #1
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8230:
	ldr r1, _020c8378 ; =0x534e414b
	cmp r0, r1
	bhi _020c8244
	beq _020c82fc
	b _020c830c
_020c8244:
	ldr r1, _020c837c ; =0x53504452
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8254:
	ldr r1, _020c8380 ; =0x54454b54
	cmp r0, r1
	bhi _020c82a8
	bhs _020c82fc
	add r1, r2, #0xa
	cmp r0, r1
	bhi _020c8284
	bhs _020c82f4
	add r1, r2, #2
	cmp r0, r1
	beq _020c82fc
	b _020c830c
_020c8284:
	add r1, r2, #0x11
	cmp r0, r1
	bhi _020c8298
	beq _020c82f4
	b _020c830c
_020c8298:
	ldr r1, _020c8384 ; =0x5441494c
	cmp r0, r1
	beq _020c82f4
	b _020c830c
_020c82a8:
	ldr r1, _020c8388 ; =0x564c5230
	cmp r0, r1
	bhi _020c82c8
	bhs _020c82ec
	ldr r1, _020c838c ; =0x55424c4e
	cmp r0, r1
	beq _020c82f4
	b _020c830c
_020c82c8:
	ldr r1, _020c8390 ; =0x57544352
	cmp r0, r1
	bhi _020c82dc
	beq _020c82fc
	b _020c830c
_020c82dc:
	ldr r1, _020c8394 ; =0x59455449
	cmp r0, r1
	beq _020c82f4
	b _020c830c
_020c82ec:
	mov r0, #0
	bx lr
_020c82f4:
	mov r0, #1
	bx lr
_020c82fc:
	mov r0, #2
	bx lr
_020c8304:
	mov r0, #3
	bx lr
_020c830c:
	mov r0, #1
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c8050
_020c8314: .word 0x4f435441
_020c8318: .word 0x4653484d
_020c831c: .word 0x43485352
_020c8320: .word 0x42454530
_020c8324: .word 0x42424c45
_020c8328: .word 0x43524f57
_020c832c: .word 0x43485543
_020c8330: .word 0x45475354
_020c8334: .word 0x464c5442
_020c8338: .word 0x49434843
_020c833c: .word 0x484c4d4b
_020c8340: .word 0x47454c4c
_020c8344: .word 0x484e4b53
_020c8348: .word 0x48504c50
_020c834c: .word 0x4b4d4244
_020c8350: .word 0x4b455448
_020c8354: .word 0x4b4f4b4f
_020c8358: .word 0x4c4b4c4b
_020c835c: .word 0x53544c46
_020c8360: .word 0x504f4f4e
_020c8364: .word 0x50425a4b
_020c8368: .word 0x50424c4e
_020c836c: .word 0x504c5356
_020c8370: .word 0x504d4554
_020c8374: .word 0x52415431
_020c8378: .word 0x534e414b
_020c837c: .word 0x53504452
_020c8380: .word 0x54454b54
_020c8384: .word 0x5441494c
_020c8388: .word 0x564c5230
_020c838c: .word 0x55424c4e
_020c8390: .word 0x57544352
_020c8394: .word 0x59455449

	.global func_ov00_020c8398
	arm_func_start func_ov00_020c8398
func_ov00_020c8398: ; 0x020c8398
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl func_ov00_020c8050
	mov r1, r5
	mov r2, r4
	mov r3, #1
	bl func_ov00_020c7764
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c8398

	.global func_ov00_020c83bc
	arm_func_start func_ov00_020c83bc
func_ov00_020c83bc: ; 0x020c83bc
	ldr r1, _020c870c ; =0x4d4c4457
	cmp r0, r1
	bhi _020c8568
	bhs _020c86ec
	ldr r1, _020c8710 ; =0x4653484d
	cmp r0, r1
	bhi _020c84a8
	bhs _020c86ec
	ldr r2, _020c8714 ; =0x43485352
	cmp r0, r2
	bhi _020c8450
	bhs _020c86ec
	ldr r1, _020c8718 ; =0x42454530
	cmp r0, r1
	bhi _020c840c
	bhs _020c86fc
	ldr r1, _020c871c ; =0x42424c45
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c840c:
	ldr r1, _020c8720 ; =0x43425330
	cmp r0, r1
	bhi _020c8420
	beq _020c86e4
	b _020c8704
_020c8420:
	sub r1, r2, #0x1c
	cmp r0, r1
	bhi _020c8704
	sub r1, r2, #0x20
	cmp r0, r1
	blo _020c8704
	subne r1, r2, #0x1e
	cmpne r0, r1
	subne r1, r2, #0x1c
	cmpne r0, r1
	beq _020c86ec
	b _020c8704
_020c8450:
	ldr r1, _020c8724 ; =0x45475354
	cmp r0, r1
	bhi _020c8484
	bhs _020c86f4
	ldr r1, _020c8728 ; =0x43485543
	cmp r0, r1
	bhi _020c8474
	beq _020c86f4
	b _020c8704
_020c8474:
	ldr r1, _020c872c ; =0x43524f57
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c8484:
	ldr r1, _020c8730 ; =0x46425353
	cmp r0, r1
	bhi _020c8498
	beq _020c86e4
	b _020c8704
_020c8498:
	ldr r1, _020c8734 ; =0x464c5442
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c84a8:
	ldr r2, _020c8738 ; =0x49434843
	cmp r0, r2
	bhi _020c8510
	bhs _020c86f4
	ldr r1, _020c873c ; =0x484c4d4b
	cmp r0, r1
	bhi _020c84ec
	bhs _020c86f4
	ldr r1, _020c8740 ; =0x47454c4c
	cmp r0, r1
	bhi _020c84dc
	beq _020c86fc
	b _020c8704
_020c84dc:
	ldr r1, _020c8744 ; =0x474f314d
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c84ec:
	ldr r1, _020c8748 ; =0x484e4b53
	cmp r0, r1
	bhi _020c8500
	beq _020c86ec
	b _020c8704
_020c8500:
	ldr r1, _020c874c ; =0x48504c50
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c8510:
	ldr r1, _020c8750 ; =0x4b4d4244
	cmp r0, r1
	bhi _020c8544
	bhs _020c86f4
	add r1, r2, #5
	cmp r0, r1
	bhi _020c8534
	beq _020c86f4
	b _020c8704
_020c8534:
	ldr r1, _020c8754 ; =0x4b455448
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c8544:
	ldr r1, _020c8758 ; =0x4b4f4b4f
	cmp r0, r1
	bhi _020c8558
	beq _020c86f4
	b _020c8704
_020c8558:
	ldr r1, _020c875c ; =0x4c4b4c4b
	cmp r0, r1
	beq _020c86ec
	b _020c8704
_020c8568:
	ldr r1, _020c8760 ; =0x534e414b
	cmp r0, r1
	bhi _020c8624
	bhs _020c86f4
	ldr r1, _020c8764 ; =0x504d4554
	cmp r0, r1
	bhi _020c85cc
	bhs _020c86f4
	ldr r1, _020c8768 ; =0x50424c4e
	cmp r0, r1
	bhi _020c85a8
	bhs _020c86f4
	ldr r1, _020c876c ; =0x4f435441
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c85a8:
	ldr r1, _020c8770 ; =0x50425a4b
	cmp r0, r1
	bhi _020c85bc
	beq _020c86f4
	b _020c8704
_020c85bc:
	ldr r1, _020c8774 ; =0x504c5356
	cmp r0, r1
	beq _020c86ec
	b _020c8704
_020c85cc:
	ldr r2, _020c8778 ; =0x52415431
	cmp r0, r2
	bhi _020c8600
	bhs _020c86f4
	ldr r1, _020c877c ; =0x504f4f4e
	cmp r0, r1
	bhi _020c85f0
	beq _020c86f4
	b _020c8704
_020c85f0:
	sub r1, r2, #1
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c8600:
	ldr r1, _020c8780 ; =0x5259444d
	cmp r0, r1
	bhi _020c8614
	beq _020c86f4
	b _020c8704
_020c8614:
	ldr r1, _020c8784 ; =0x52595244
	cmp r0, r1
	beq _020c86e4
	b _020c8704
_020c8624:
	ldr r1, _020c8788 ; =0x5441494c
	cmp r0, r1
	bhi _020c868c
	bhs _020c86ec
	ldr r2, _020c878c ; =0x53544c48
	cmp r0, r2
	bhi _020c8668
	bhs _020c86f4
	ldr r1, _020c8790 ; =0x53504452
	cmp r0, r1
	bhi _020c8658
	beq _020c86f4
	b _020c8704
_020c8658:
	sub r1, r2, #2
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c8668:
	add r1, r2, #8
	cmp r0, r1
	bhi _020c867c
	beq _020c86f4
	b _020c8704
_020c867c:
	add r1, r2, #0xf
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c868c:
	ldr r1, _020c8794 ; =0x57425353
	cmp r0, r1
	bhi _020c86c0
	bhs _020c86e4
	ldr r1, _020c8798 ; =0x54454b54
	cmp r0, r1
	bhi _020c86b0
	beq _020c86f4
	b _020c8704
_020c86b0:
	ldr r1, _020c879c ; =0x55424c4e
	cmp r0, r1
	beq _020c86f4
	b _020c8704
_020c86c0:
	ldr r1, _020c87a0 ; =0x57544352
	cmp r0, r1
	bhi _020c86d4
	beq _020c86f4
	b _020c8704
_020c86d4:
	ldr r1, _020c87a4 ; =0x59455449
	cmp r0, r1
	beq _020c86ec
	b _020c8704
_020c86e4:
	mov r0, #0
	bx lr
_020c86ec:
	mov r0, #1
	bx lr
_020c86f4:
	mov r0, #2
	bx lr
_020c86fc:
	mov r0, #3
	bx lr
_020c8704:
	mov r0, #2
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c83bc
_020c870c: .word 0x4d4c4457
_020c8710: .word 0x4653484d
_020c8714: .word 0x43485352
_020c8718: .word 0x42454530
_020c871c: .word 0x42424c45
_020c8720: .word 0x43425330
_020c8724: .word 0x45475354
_020c8728: .word 0x43485543
_020c872c: .word 0x43524f57
_020c8730: .word 0x46425353
_020c8734: .word 0x464c5442
_020c8738: .word 0x49434843
_020c873c: .word 0x484c4d4b
_020c8740: .word 0x47454c4c
_020c8744: .word 0x474f314d
_020c8748: .word 0x484e4b53
_020c874c: .word 0x48504c50
_020c8750: .word 0x4b4d4244
_020c8754: .word 0x4b455448
_020c8758: .word 0x4b4f4b4f
_020c875c: .word 0x4c4b4c4b
_020c8760: .word 0x534e414b
_020c8764: .word 0x504d4554
_020c8768: .word 0x50424c4e
_020c876c: .word 0x4f435441
_020c8770: .word 0x50425a4b
_020c8774: .word 0x504c5356
_020c8778: .word 0x52415431
_020c877c: .word 0x504f4f4e
_020c8780: .word 0x5259444d
_020c8784: .word 0x52595244
_020c8788: .word 0x5441494c
_020c878c: .word 0x53544c48
_020c8790: .word 0x53504452
_020c8794: .word 0x57425353
_020c8798: .word 0x54454b54
_020c879c: .word 0x55424c4e
_020c87a0: .word 0x57544352
_020c87a4: .word 0x59455449

	.global func_ov00_020c87a8
	arm_func_start func_ov00_020c87a8
func_ov00_020c87a8: ; 0x020c87a8
	stmdb sp!, {r3, lr}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_020c87b8: ; jump table
	b _020c87c8 ; case 0
	b _020c87d4 ; case 1
	b _020c87e0 ; case 2
	b _020c87ec ; case 3
_020c87c8:
	mov r0, r1
	bl func_ov00_020c6fe0
	ldmia sp!, {r3, pc}
_020c87d4:
	mov r0, r1
	bl func_ov00_020c6fe0
	ldmia sp!, {r3, pc}
_020c87e0:
	mov r0, r1
	bl func_ov00_020c70ac
	ldmia sp!, {r3, pc}
_020c87ec:
	mov r0, r1
	bl func_ov00_020c7154
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c87a8

	.global func_ov00_020c87f8
	arm_func_start func_ov00_020c87f8
func_ov00_020c87f8: ; 0x020c87f8
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl func_ov00_020c83bc
	mov r1, r4
	bl func_ov00_020c87a8
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c87f8

	.global func_ov00_020c8810
	arm_func_start func_ov00_020c8810
func_ov00_020c8810: ; 0x020c8810
	ldr r1, _020c8b3c ; =0x4b4f4b4f
	cmp r0, r1
	bhi _020c89a0
	bhs _020c8b2c
	ldr r1, _020c8b40 ; =0x45475354
	cmp r0, r1
	bhi _020c88f4
	bhs _020c8b2c
	ldr r1, _020c8b44 ; =0x43425330
	cmp r0, r1
	bhi _020c8884
	bhs _020c8b1c
	ldr r1, _020c8b48 ; =0x42424c45
	cmp r0, r1
	bhi _020c8860
	bhs _020c8b2c
	ldr r1, _020c8b4c ; =0x414d4f53
	cmp r0, r1
	beq _020c8b24
	b _020c8b34
_020c8860:
	ldr r1, _020c8b50 ; =0x42454530
	cmp r0, r1
	bhi _020c8874
	beq _020c8b2c
	b _020c8b34
_020c8874:
	ldr r1, _020c8b54 ; =0x424d4f53
	cmp r0, r1
	beq _020c8b24
	b _020c8b34
_020c8884:
	ldr r1, _020c8b58 ; =0x43485543
	cmp r0, r1
	bhi _020c88d0
	bhs _020c8b2c
	ldr r2, _020c8b5c ; =0x43485336
	cmp r0, r2
	bhi _020c88c0
	sub r1, r2, #4
	cmp r0, r1
	blo _020c8b34
	subne r1, r2, #2
	cmpne r0, r1
	cmpne r0, r2
	beq _020c8b24
	b _020c8b34
_020c88c0:
	add r1, r2, #0x1c
	cmp r0, r1
	beq _020c8b24
	b _020c8b34
_020c88d0:
	ldr r1, _020c8b60 ; =0x43524f57
	cmp r0, r1
	bhi _020c88e4
	beq _020c8b2c
	b _020c8b34
_020c88e4:
	ldr r1, _020c8b64 ; =0x4353574d
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c88f4:
	ldr r1, _020c8b68 ; =0x484c4d4b
	cmp r0, r1
	bhi _020c8948
	bhs _020c8b2c
	ldr r1, _020c8b6c ; =0x464c5442
	cmp r0, r1
	bhi _020c8924
	bhs _020c8b2c
	ldr r1, _020c8b70 ; =0x46425353
	cmp r0, r1
	beq _020c8b24
	b _020c8b34
_020c8924:
	ldr r1, _020c8b74 ; =0x4653484d
	cmp r0, r1
	bhi _020c8938
	beq _020c8b24
	b _020c8b34
_020c8938:
	ldr r1, _020c8b78 ; =0x47454c4c
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c8948:
	ldr r1, _020c8b7c ; =0x49434843
	cmp r0, r1
	bhi _020c897c
	bhs _020c8b2c
	ldr r1, _020c8b80 ; =0x484e4b53
	cmp r0, r1
	bhi _020c896c
	beq _020c8b1c
	b _020c8b34
_020c896c:
	ldr r1, _020c8b84 ; =0x48504c50
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c897c:
	ldr r1, _020c8b88 ; =0x4b455448
	cmp r0, r1
	bhi _020c8990
	beq _020c8b2c
	b _020c8b34
_020c8990:
	ldr r1, _020c8b8c ; =0x4b4d4244
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c89a0:
	ldr r1, _020c8b90 ; =0x52595244
	cmp r0, r1
	bhi _020c8a5c
	bhs _020c8b24
	ldr r1, _020c8b94 ; =0x504c5356
	cmp r0, r1
	bhi _020c8a04
	bhs _020c8b24
	ldr r1, _020c8b98 ; =0x4f435441
	cmp r0, r1
	bhi _020c89e0
	bhs _020c8b2c
	ldr r1, _020c8b9c ; =0x4c4b4c4b
	cmp r0, r1
	beq _020c8b24
	b _020c8b34
_020c89e0:
	ldr r1, _020c8ba0 ; =0x50424c4e
	cmp r0, r1
	bhi _020c89f4
	beq _020c8b2c
	b _020c8b34
_020c89f4:
	ldr r1, _020c8ba4 ; =0x50425a4b
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c8a04:
	ldr r2, _020c8ba8 ; =0x52415430
	cmp r0, r2
	bhi _020c8a38
	bhs _020c8b2c
	ldr r1, _020c8bac ; =0x504d4554
	cmp r0, r1
	bhi _020c8a28
	beq _020c8b2c
	b _020c8b34
_020c8a28:
	ldr r1, _020c8bb0 ; =0x504f4f4e
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c8a38:
	add r1, r2, #1
	cmp r0, r1
	bhi _020c8a4c
	beq _020c8b2c
	b _020c8b34
_020c8a4c:
	ldr r1, _020c8bb4 ; =0x5259444d
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c8a5c:
	ldr r2, _020c8bb8 ; =0x53544c57
	cmp r0, r2
	bhi _020c8ac4
	bhs _020c8b2c
	sub r1, r2, #0x11
	cmp r0, r1
	bhi _020c8aa0
	bhs _020c8b2c
	ldr r1, _020c8bbc ; =0x534e414b
	cmp r0, r1
	bhi _020c8a90
	beq _020c8b2c
	b _020c8b34
_020c8a90:
	ldr r1, _020c8bc0 ; =0x53504452
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c8aa0:
	sub r1, r2, #0xf
	cmp r0, r1
	bhi _020c8ab4
	beq _020c8b2c
	b _020c8b34
_020c8ab4:
	sub r1, r2, #7
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c8ac4:
	ldr r1, _020c8bc4 ; =0x57425353
	cmp r0, r1
	bhi _020c8af8
	bhs _020c8b24
	ldr r1, _020c8bc8 ; =0x54454b54
	cmp r0, r1
	bhi _020c8ae8
	beq _020c8b2c
	b _020c8b34
_020c8ae8:
	ldr r1, _020c8bcc ; =0x55424c4e
	cmp r0, r1
	beq _020c8b2c
	b _020c8b34
_020c8af8:
	ldr r1, _020c8bd0 ; =0x57544352
	cmp r0, r1
	bhi _020c8b0c
	beq _020c8b2c
	b _020c8b34
_020c8b0c:
	ldr r1, _020c8bd4 ; =0x59455449
	cmp r0, r1
	beq _020c8b24
	b _020c8b34
_020c8b1c:
	mov r0, #0
	bx lr
_020c8b24:
	mov r0, #1
	bx lr
_020c8b2c:
	mov r0, #2
	bx lr
_020c8b34:
	mov r0, #2
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020c8810
_020c8b3c: .word 0x4b4f4b4f
_020c8b40: .word 0x45475354
_020c8b44: .word 0x43425330
_020c8b48: .word 0x42424c45
_020c8b4c: .word 0x414d4f53
_020c8b50: .word 0x42454530
_020c8b54: .word 0x424d4f53
_020c8b58: .word 0x43485543
_020c8b5c: .word 0x43485336
_020c8b60: .word 0x43524f57
_020c8b64: .word 0x4353574d
_020c8b68: .word 0x484c4d4b
_020c8b6c: .word 0x464c5442
_020c8b70: .word 0x46425353
_020c8b74: .word 0x4653484d
_020c8b78: .word 0x47454c4c
_020c8b7c: .word 0x49434843
_020c8b80: .word 0x484e4b53
_020c8b84: .word 0x48504c50
_020c8b88: .word 0x4b455448
_020c8b8c: .word 0x4b4d4244
_020c8b90: .word 0x52595244
_020c8b94: .word 0x504c5356
_020c8b98: .word 0x4f435441
_020c8b9c: .word 0x4c4b4c4b
_020c8ba0: .word 0x50424c4e
_020c8ba4: .word 0x50425a4b
_020c8ba8: .word 0x52415430
_020c8bac: .word 0x504d4554
_020c8bb0: .word 0x504f4f4e
_020c8bb4: .word 0x5259444d
_020c8bb8: .word 0x53544c57
_020c8bbc: .word 0x534e414b
_020c8bc0: .word 0x53504452
_020c8bc4: .word 0x57425353
_020c8bc8: .word 0x54454b54
_020c8bcc: .word 0x55424c4e
_020c8bd0: .word 0x57544352
_020c8bd4: .word 0x59455449

	.global func_ov00_020c8bd8
	arm_func_start func_ov00_020c8bd8
func_ov00_020c8bd8: ; 0x020c8bd8
	stmdb sp!, {r3, lr}
	cmp r0, #0
	beq _020c8bf8
	cmp r0, #1
	beq _020c8c04
	cmp r0, #2
	beq _020c8c10
	ldmia sp!, {r3, pc}
_020c8bf8:
	mov r0, r1
	bl func_ov00_020c7264
	ldmia sp!, {r3, pc}
_020c8c04:
	mov r0, r1
	bl func_ov00_020c72c4
	ldmia sp!, {r3, pc}
_020c8c10:
	mov r0, r1
	bl func_ov00_020c7350
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c8bd8

	.global func_ov00_020c8c1c
	arm_func_start func_ov00_020c8c1c
func_ov00_020c8c1c: ; 0x020c8c1c
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl func_ov00_020c8810
	mov r1, r4
	bl func_ov00_020c8bd8
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c8c1c

	.global func_ov00_020c8c34
	arm_func_start func_ov00_020c8c34
func_ov00_020c8c34: ; 0x020c8c34
	stmdb sp!, {r3, lr}
	add lr, r0, #0x14
	mov ip, #0
_020c8c40:
	ldrsb r2, [lr, #2]
	cmp r2, #0
	beq _020c8c68
	ldrsb r3, [lr]
	ldrsb r2, [r1]
	cmp r3, r2
	ldreqsb r3, [lr, #1]
	ldreqsb r2, [r1, #1]
	cmpeq r3, r2
	bne _020c8c90
_020c8c68:
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add ip, r0, ip, lsl #2
	strb r3, [ip, #0x14]
	strb r2, [ip, #0x15]
	ldrsb r0, [r1, #2]
	strb r0, [ip, #0x16]
	ldrsb r0, [r1, #3]
	strb r0, [ip, #0x17]
	ldmia sp!, {r3, pc}
_020c8c90:
	add ip, ip, #1
	cmp ip, #4
	add lr, lr, #4
	blt _020c8c40
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c8c34

	.global func_ov00_020c8ca4
	arm_func_start func_ov00_020c8ca4
func_ov00_020c8ca4: ; 0x020c8ca4
	stmdb sp!, {r4, lr}
	ldrsb r4, [r1]
	add lr, r0, #0x14
	mov ip, #0
_020c8cb4:
	ldrsb r0, [lr]
	cmp r0, r4
	ldreqsb r3, [lr, #1]
	ldreqsb r0, [r1, #1]
	cmpeq r3, r0
	streqb r2, [lr, #3]
	ldmeqia sp!, {r4, pc}
	add ip, ip, #1
	cmp ip, #4
	add lr, lr, #4
	blt _020c8cb4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c8ca4

	.global func_ov00_020c8ce4
	arm_func_start func_ov00_020c8ce4
func_ov00_020c8ce4: ; 0x020c8ce4
	mov r1, #0
	str r1, [r0]
	sub r1, r1, #1
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	strb r1, [r0, #0x12]
	strb r1, [r0, #0x13]
	bx lr
	arm_func_end func_ov00_020c8ce4

	.global func_ov00_020c8d04
	arm_func_start func_ov00_020c8d04
func_ov00_020c8d04: ; 0x020c8d04
	ldrsb r2, [r1]
	strb r2, [r0, #0x10]
	ldrsb r2, [r1, #1]
	strb r2, [r0, #0x11]
	ldrsb r2, [r1]
	strb r2, [r0, #0x12]
	ldrsb r1, [r1, #1]
	strb r1, [r0, #0x13]
	bx lr
	arm_func_end func_ov00_020c8d04

	.global func_ov00_020c8d28
	arm_func_start func_ov00_020c8d28
func_ov00_020c8d28: ; 0x020c8d28
	ldrsb r3, [r2]
	strb r3, [r0, #0x10]
	ldrsb r2, [r2, #1]
	strb r2, [r0, #0x11]
	ldrsb r2, [r1]
	strb r2, [r0, #0x12]
	ldrsb r1, [r1, #1]
	strb r1, [r0, #0x13]
	bx lr
	arm_func_end func_ov00_020c8d28

	.global func_ov00_020c8d4c
	arm_func_start func_ov00_020c8d4c
func_ov00_020c8d4c: ; 0x020c8d4c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldrsb r2, [r1]
	mov fp, r0
	ldr r0, _020c8e3c ; =data_027e0ff0
	strb r2, [fp, #0x12]
	ldrsb r2, [r1, #1]
	strb r2, [fp, #0x13]
	ldr r0, [r0]
	bl func_ov00_020c47cc
	mov r6, r0
	ldr r0, _020c8e40 ; =0x00007fff
	ldrsb r8, [fp, #0x12]
	ldrsb sb, [fp, #0x13]
	add sl, r6, #0x14
	mov r7, #0x2000
	mov r5, #0
	rsb r4, r0, #0
_020c8d94:
	ldrsb r0, [sl, #2]
	sub r0, r0, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	and r0, r0, #0xff
	cmp r0, #1
	bhi _020c8e1c
	ldr r0, _020c8e3c ; =data_027e0ff0
	mov r1, sl
	ldr r0, [r0]
	bl func_ov00_020c47cc
	add r0, r0, #4
	add r1, r6, #4
	add r2, sp, #0
	bl func_01ff9bf8
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	ldrsh r1, [r6, #2]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, asr #16
	mov r0, r0, lsl #0x10
	cmp r4, r0, asr #16
	mov r0, r0, asr #0x10
	ldrgt r0, _020c8e40 ; =0x00007fff
	bgt _020c8e0c
	cmp r0, #0
	rsblt r0, r0, #0
	movlt r0, r0, lsl #0x10
	movlt r0, r0, asr #0x10
_020c8e0c:
	cmp r0, r7
	ldrltsb r8, [sl]
	ldrltsb sb, [sl, #1]
	movlt r7, r0
_020c8e1c:
	add r5, r5, #1
	cmp r5, #4
	add sl, sl, #4
	blt _020c8d94
	strb r8, [fp, #0x10]
	strb sb, [fp, #0x11]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020c8d4c
_020c8e3c: .word data_027e0ff0
_020c8e40: .word 0x00007fff

	.global func_ov00_020c8e44
	arm_func_start func_ov00_020c8e44
func_ov00_020c8e44: ; 0x020c8e44
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r4, r2
	ldrsb r3, [r5]
	ldrsb r2, [r4]
	mov r6, r0
	cmp r3, r2
	ldreqsb r3, [r5, #1]
	ldreqsb r2, [r4, #1]
	cmpeq r3, r2
	beq _020c8f74
	ldr r0, _020c8f80 ; =data_027e0ff0
	mvn r2, #0
	ldr r0, [r0]
	mov r1, r5
	strb r2, [sp, #2]
	strb r2, [sp, #3]
	strb r2, [sp]
	strb r2, [sp, #1]
	bl func_ov00_020c47cc
	mov r2, #0
	ldrsb lr, [r4]
	mov r3, r2
	add ip, r0, #0x14
_020c8ea8:
	ldrsb r0, [ip]
	cmp r0, lr
	ldreqsb r1, [ip, #1]
	ldreqsb r0, [r4, #1]
	cmpeq r1, r0
	ldreqsb r2, [ip, #2]
	beq _020c8ed4
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #4
	blt _020c8ea8
_020c8ed4:
	cmp r2, #0
	beq _020c8f5c
	cmp r2, #1
	bne _020c8f08
	ldrsb r0, [r4]
	strb r0, [sp]
	ldrsb r0, [r4, #1]
	strb r0, [sp, #1]
	ldrsb r0, [r5]
	strb r0, [sp, #2]
	ldrsb r0, [r5, #1]
	strb r0, [sp, #3]
	b _020c8f5c
_020c8f08:
	cmp r2, #2
	bne _020c8f34
	ldrsb r0, [r4]
	strb r0, [sp]
	ldrsb r0, [r4, #1]
	strb r0, [sp, #1]
	ldrsb r0, [r5]
	strb r0, [sp, #2]
	ldrsb r0, [r5, #1]
	strb r0, [sp, #3]
	b _020c8f5c
_020c8f34:
	cmp r2, #3
	bne _020c8f5c
	ldrsb r0, [r5]
	strb r0, [sp]
	ldrsb r0, [r5, #1]
	strb r0, [sp, #1]
	ldrsb r0, [r4]
	strb r0, [sp, #2]
	ldrsb r0, [r4, #1]
	strb r0, [sp, #3]
_020c8f5c:
	add r1, sp, #2
	add r2, sp, #0
	mov r0, r6
	bl func_ov00_020c8d28
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_020c8f74:
	bl func_ov00_020c8d04
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c8e44
_020c8f80: .word data_027e0ff0

	.global func_ov00_020c8f84
	arm_func_start func_ov00_020c8f84
func_ov00_020c8f84: ; 0x020c8f84
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	ldr r2, _020c9004 ; =data_027e0ff0
	mvn r4, #0
	mov r6, r0
	mov lr, #1
	mov ip, #0
	ldr r5, _020c9008 ; =data_ov00_020e8398
	ldr r0, [r2]
	strb r3, [sp, #0x14]
	add r2, sp, #0x10
	add r3, sp, #0
	str r5, [sp, #0x10]
	strb lr, [sp, #0x15]
	strb ip, [sp, #0x16]
	strb ip, [sp, #0x17]
	strb r4, [sp]
	strb r4, [sp, #1]
	strb r4, [sp, #2]
	strb r4, [sp, #3]
	strb lr, [sp, #0x2c]
	bl func_ov00_020c4ae8
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r1, sp, #0
	mov r0, r6
	bl func_ov00_020c8d4c
	mov r0, #1
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c8f84
_020c9004: .word data_027e0ff0
_020c9008: .word data_ov00_020e8398

	.global func_ov00_020c900c
	arm_func_start func_ov00_020c900c
func_ov00_020c900c: ; 0x020c900c
	ldrsb r3, [r0, #0x10]
	ldrsb r2, [r0, #0x11]
	ldrsb r1, [r0, #0x12]
	strb r1, [r0, #0x10]
	ldrsb r1, [r0, #0x13]
	strb r1, [r0, #0x11]
	strb r3, [r0, #0x12]
	strb r2, [r0, #0x13]
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020c900c

	.global func_ov00_020c9034
	arm_func_start func_ov00_020c9034
func_ov00_020c9034: ; 0x020c9034
	stmdb sp!, {r4, lr}
	ldr r2, _020c906c ; =data_027e0ff0
	mov r3, r0
	ldr r0, [r2]
	mov r4, r1
	add r1, r3, #0x10
	bl func_ov00_020c47cc
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0, #8]
	str r1, [r4, #4]
	ldr r0, [r0, #0xc]
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9034
_020c906c: .word data_027e0ff0

	.global func_ov00_020c9070
	arm_func_start func_ov00_020c9070
func_ov00_020c9070: ; 0x020c9070
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r1, _020c91a0 ; =data_027e0ff0
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0x10
	bl func_ov00_020c47cc
	ldr r1, [r4]
	mvn r2, #0
	mov r3, r2
	cmp r1, #0
	beq _020c90b4
	cmp r1, #1
	beq _020c9134
	cmp r1, #2
	beq _020c9154
	b _020c9170
_020c90b4:
	ldrsb r1, [r0, #0x11]
	add r0, r1, #1
	cmp r0, #1
	bhi _020c90e4
	add r0, sp, #8
	mov r1, r4
	add r2, r4, #0x10
	add r3, r4, #0x12
	bl func_ov00_020c927c
	ldrsb r2, [sp, #8]
	ldrsb r3, [sp, #9]
	b _020c9170
_020c90e4:
	cmp r1, #1
	bne _020c910c
	add r0, sp, #6
	mov r1, r4
	add r2, r4, #0x10
	add r3, r4, #0x12
	bl func_ov00_020c93c0
	ldrsb r2, [sp, #6]
	ldrsb r3, [sp, #7]
	b _020c9170
_020c910c:
	cmp r1, #2
	bne _020c9170
	add r0, sp, #4
	mov r1, r4
	add r2, r4, #0x10
	add r3, r4, #0x12
	bl func_ov00_020c9490
	ldrsb r2, [sp, #4]
	ldrsb r3, [sp, #5]
	b _020c9170
_020c9134:
	add r0, sp, #2
	mov r1, r4
	add r2, r4, #0x10
	add r3, r4, #0x12
	bl func_ov00_020c955c
	ldrsb r2, [sp, #2]
	ldrsb r3, [sp, #3]
	b _020c9170
_020c9154:
	add r0, sp, #0
	mov r1, r4
	add r2, r4, #0x10
	add r3, r4, #0x12
	bl func_ov00_020c9600
	ldrsb r2, [sp]
	ldrsb r3, [sp, #1]
_020c9170:
	mvn r0, #0
	cmp r2, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, pc}
	ldrsb r0, [r4, #0x10]
	strb r0, [r4, #0x12]
	ldrsb r0, [r4, #0x11]
	strb r0, [r4, #0x13]
	strb r2, [r4, #0x10]
	strb r3, [r4, #0x11]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9070
_020c91a0: .word data_027e0ff0

	.global func_ov00_020c91a4
	arm_func_start func_ov00_020c91a4
func_ov00_020c91a4: ; 0x020c91a4
	stmdb sp!, {r4, lr}
	ldr r1, _020c9220 ; =data_027e0ff0
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0x10
	bl func_ov00_020c47cc
	mov r3, #0
	ldrsb lr, [r4, #0x12]
	mov r2, r3
	add ip, r0, #0x14
_020c91cc:
	ldrsb r0, [ip]
	cmp lr, r0
	ldreqsb r1, [r4, #0x13]
	ldreqsb r0, [ip, #1]
	cmpeq r1, r0
	beq _020c9200
	ldrsb r0, [ip, #2]
	sub r0, r0, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	and r0, r0, #0xff
	cmp r0, #2
	addls r3, r3, #1
_020c9200:
	add r2, r2, #1
	cmp r2, #4
	add ip, ip, #4
	blt _020c91cc
	cmp r3, #2
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c91a4
_020c9220: .word data_027e0ff0

	.global func_ov00_020c9224
	arm_func_start func_ov00_020c9224
func_ov00_020c9224: ; 0x020c9224
	stmdb sp!, {r3, lr}
	ldr r1, _020c9278 ; =data_027e0ff0
	mov r2, r0
	ldr r0, [r1]
	add r1, r2, #0x10
	bl func_ov00_020c47cc
	ldrsb r1, [r0, #0x10]
	add r0, r1, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	and r0, r0, #0xff
	cmp r0, #1
	movls r0, #0
	ldmlsia sp!, {r3, pc}
	cmp r1, #1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r1, #2
	moveq r0, #2
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9224
_020c9278: .word data_027e0ff0

	.global func_ov00_020c927c
	arm_func_start func_ov00_020c927c
func_ov00_020c927c: ; 0x020c927c
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r1, _020c93b8 ; =data_027e0ff0
	mov r5, r0
	ldr r0, [r1]
	mov r1, r2
	mov r4, r3
	bl func_ov00_020c47cc
	mov r2, #0
	mov r3, r2
	mov r1, r2
	add ip, r0, #0x14
	mov r6, #1
	add r7, sp, #0
_020c92b4:
	ldrsb r8, [ip, #2]
	sub r8, r8, #1
	mov lr, r8, lsl #0x18
	mov r8, lr, asr #0x18
	and r8, r8, #0xff
	cmp r8, #1
	bhi _020c92f4
	ldrsb lr, [ip]
	ldrsb r8, [r4]
	cmp lr, r8
	ldreqsb r8, [ip, #1]
	ldreqsb lr, [r4, #1]
	cmpeq r8, lr
	strne r1, [r7, r2, lsl #2]
	addne r2, r2, #1
	moveq r3, r6
_020c92f4:
	add r1, r1, #1
	cmp r1, #4
	add ip, ip, #4
	blt _020c92b4
	cmp r2, #0
	bne _020c9340
	cmp r3, #0
	beq _020c932c
	ldrsb r0, [r4]
	add sp, sp, #0x10
	strb r0, [r5]
	ldrsb r0, [r4, #1]
	strb r0, [r5, #1]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c932c:
	mvn r0, #0
	strb r0, [r5]
	add sp, sp, #0x10
	strb r0, [r5, #1]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020c9340:
	movle r6, #0
	ble _020c9394
	ldr r1, _020c93bc ; =data_027e0764
	ldr r4, [r1]
	ldmib r1, {r3, ip}
	umull r6, lr, ip, r4
	mla lr, ip, r3, lr
	ldr r3, [r1, #0xc]
	ldr ip, [r1, #0x10]
	mla lr, r3, r4, lr
	ldr r3, [r1, #0x14]
	adds r4, ip, r6
	adc r6, r3, lr
	stmia r1, {r4, r6}
	cmp r2, #0
	beq _020c9394
	mov r4, #0
	umull r3, r1, r6, r2
	mla r1, r6, r4, r1
	mla r1, r4, r2, r1
	mov r6, r1
_020c9394:
	add r1, sp, #0
	ldr r1, [r1, r6, lsl #2]
	add r1, r0, r1, lsl #2
	ldrsb r0, [r1, #0x14]
	strb r0, [r5]
	ldrsb r0, [r1, #0x15]
	strb r0, [r5, #1]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020c927c
_020c93b8: .word data_027e0ff0
_020c93bc: .word data_027e0764

	.global func_ov00_020c93c0
	arm_func_start func_ov00_020c93c0
func_ov00_020c93c0: ; 0x020c93c0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _020c948c ; =data_027e0ff0
	mov sb, r0
	mov r7, r2
	mov r8, r1
	ldr r0, [r4]
	mov r6, r3
	mov r1, r7
	bl func_ov00_020c47cc
	mov r4, r0
	ldrsb ip, [r6]
	add r3, r4, #0x14
	mvn r5, #0
	mov r2, #0
_020c93f8:
	ldrsb r0, [r3]
	cmp r0, ip
	ldreqsb r1, [r3, #1]
	ldreqsb r0, [r6, #1]
	add r3, r3, #4
	cmpeq r1, r0
	moveq r5, r2
	add r2, r2, #1
	cmp r2, #4
	blt _020c93f8
	mvn r0, #0
	cmp r5, r0
	beq _020c9440
	add r0, sp, #0
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl func_ov00_020c927c
_020c9440:
	mov r2, #0
	mov r1, r2
_020c9448:
	add r5, r5, #1
	cmp r5, #4
	movgt r5, r1
	add r0, r4, r5, lsl #2
	ldrsb r0, [r0, #0x16]
	cmp r0, #1
	cmpne r0, #2
	beq _020c9474
	add r2, r2, #1
	cmp r2, #4
	blt _020c9448
_020c9474:
	add r1, r4, r5, lsl #2
	ldrsb r0, [r1, #0x14]
	strb r0, [sb]
	ldrsb r0, [r1, #0x15]
	strb r0, [sb, #1]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020c93c0
_020c948c: .word data_027e0ff0

	.global func_ov00_020c9490
	arm_func_start func_ov00_020c9490
func_ov00_020c9490: ; 0x020c9490
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _020c9558 ; =data_027e0ff0
	mov sb, r0
	mov r7, r2
	mov r8, r1
	ldr r0, [r4]
	mov r6, r3
	mov r1, r7
	bl func_ov00_020c47cc
	mov r4, r0
	ldrsb ip, [r6]
	add r3, r4, #0x14
	mvn r5, #0
	mov r2, #0
_020c94c8:
	ldrsb r0, [r3]
	cmp r0, ip
	ldreqsb r1, [r3, #1]
	ldreqsb r0, [r6, #1]
	add r3, r3, #4
	cmpeq r1, r0
	moveq r5, r2
	add r2, r2, #1
	cmp r2, #4
	blt _020c94c8
	mvn r0, #0
	cmp r5, r0
	beq _020c9510
	add r0, sp, #0
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl func_ov00_020c927c
_020c9510:
	mov r2, #0
	mov r1, #3
_020c9518:
	subs r5, r5, #1
	movmi r5, r1
	add r0, r4, r5, lsl #2
	ldrsb r0, [r0, #0x16]
	cmp r0, #1
	cmpne r0, #2
	beq _020c9540
	add r2, r2, #1
	cmp r2, #4
	blt _020c9518
_020c9540:
	add r1, r4, r5, lsl #2
	ldrsb r0, [r1, #0x14]
	strb r0, [sb]
	ldrsb r0, [r1, #0x15]
	strb r0, [sb, #1]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9490
_020c9558: .word data_027e0ff0

	.global func_ov00_020c955c
	arm_func_start func_ov00_020c955c
func_ov00_020c955c: ; 0x020c955c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r3, _020c95fc ; =data_027e0ff0
	mov sl, r0
	ldr r0, [r3]
	mov sb, r1
	mov r1, r2
	bl func_ov00_020c47cc
	mov r4, r0
	add r8, r4, #0x14
	mvn r6, #0
	mov r7, #0x80000000
	mov r5, #0
_020c958c:
	ldrsb r0, [r8, #2]
	sub r0, r0, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	and r0, r0, #0xff
	cmp r0, #1
	bhi _020c95c0
	add r0, r4, #4
	add r1, sb, #4
	bl func_01ff9ec0
	cmp r7, r0
	movlt r7, r0
	movlt r6, r5
_020c95c0:
	add r5, r5, #1
	cmp r5, #4
	add r8, r8, #4
	blt _020c958c
	mvn r0, #0
	cmp r6, r0
	streqb r0, [sl]
	streqb r0, [sl, #1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r1, r4, r6, lsl #2
	ldrsb r0, [r1, #0x14]
	strb r0, [sl]
	ldrsb r0, [r1, #0x15]
	strb r0, [sl, #1]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020c955c
_020c95fc: .word data_027e0ff0

	.global func_ov00_020c9600
	arm_func_start func_ov00_020c9600
func_ov00_020c9600: ; 0x020c9600
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r3, _020c96a0 ; =data_027e0ff0
	mov sl, r0
	ldr r0, [r3]
	mov sb, r1
	mov r1, r2
	bl func_ov00_020c47cc
	mov r4, r0
	mvn r6, #0
	sub r7, r6, #0x80000000
	add r8, r4, #0x14
	mov r5, #0
_020c9630:
	ldrsb r0, [r8, #2]
	sub r0, r0, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	and r0, r0, #0xff
	cmp r0, #1
	bhi _020c9664
	add r0, r4, #4
	add r1, sb, #4
	bl func_01ff9ec0
	cmp r7, r0
	movgt r7, r0
	movgt r6, r5
_020c9664:
	add r5, r5, #1
	cmp r5, #4
	add r8, r8, #4
	blt _020c9630
	mvn r0, #0
	cmp r6, r0
	streqb r0, [sl]
	streqb r0, [sl, #1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r1, r4, r6, lsl #2
	ldrsb r0, [r1, #0x14]
	strb r0, [sl]
	ldrsb r0, [r1, #0x15]
	strb r0, [sl, #1]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9600
_020c96a0: .word data_027e0ff0

	.global func_ov00_020c96a4
	arm_func_start func_ov00_020c96a4
func_ov00_020c96a4: ; 0x020c96a4
	stmdb sp!, {r3, lr}
	ldr r1, _020c96d0 ; =data_027e0fe0
	mov r0, #0x26c
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020c9a9c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c96a4
_020c96d0: .word data_027e0fe0

	.global func_ov00_020c96d4
	arm_func_start func_ov00_020c96d4
func_ov00_020c96d4: ; 0x020c96d4
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	blx func_ov00_020a956c
	ldr r0, _020c96fc ; =data_ov00_020e8540
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	strb r1, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c96d4
_020c96fc: .word data_ov00_020e8540

	.global func_ov00_020c9700
	arm_func_start func_ov00_020c9700
func_ov00_020c9700: ; 0x020c9700
	ldr ip, _020c9710 ; =func_ov00_020a9998
	mov r1, #4
	mov r2, #2
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c9700
_020c9710: .word func_ov00_020a9998

	.global func_ov00_020c9714
	arm_func_start func_ov00_020c9714
func_ov00_020c9714: ; 0x020c9714
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r4, [r1, #0xb0]
	ldr r0, _020c9884 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	ldr r1, [r4, #0xc]
	mov r0, r0, lsl #0x1a
	bic r1, r1, #0x3f000000
	orr r0, r1, r0, lsr #2
	str r0, [r4, #0xc]
	ldrb r0, [r5, #0x5c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020c9888 ; =data_027e0f88
	mov r1, #0
	ldr r0, [r0]
	bl func_ov00_020a19fc
	ldrh r1, [r0, #2]
	ldrh r2, [r0]
	ldrh r0, [r0, #4]
	strh r1, [sp, #2]
	ldrsh r3, [sp, #2]
	strh r0, [sp, #4]
	strh r2, [sp]
	cmp r3, #0
	rsblt r0, r3, #0
	movlt r0, r0, lsl #0x10
	movlt r3, r0, asr #0x10
	ldr r0, _020c988c ; =data_027e0f78
	mov ip, #0
	ldr r0, [r0]
	ldrh r5, [r0, #0x1e]
	ldrh r2, [r0, #0x1c]
	and r1, r5, #0x3e0
	and r0, r5, #0x7c00
	mov r5, r5, lsl #0x1b
	mov r1, r1, asr #0x5
	mov r0, r0, asr #0xa
	mov r1, r1, lsl #0xc
	mov r5, r5, lsr #0xf
	mov lr, r0, lsl #0xc
	smull r5, r0, r3, r5
	adds r5, r5, #0x800
	smull r1, r6, r3, r1
	adc r0, r0, #0
	adds r7, r1, #0x800
	mov r1, r5, lsr #0xc
	smull r5, lr, r3, lr
	adc r3, r6, #0
	mov r6, r7, lsr #0xc
	adds r5, r5, #0x800
	orr r6, r6, r3, lsl #20
	adc r3, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r3, lsl #20
	orr r1, r1, r0, lsl #20
	and r3, r2, #0x1f
	adds lr, r3, r1, asr #12
	and r7, r2, #0x3e0
	mov r3, r6, asr #0xc
	and r1, r2, #0x7c00
	mov r0, r5, asr #0xc
	add r2, r3, r7, asr #5
	add r3, r0, r1, asr #10
	movmi lr, ip
	bmi _020c9830
	cmp lr, #0x1f
	movgt lr, #0x1f
_020c9830:
	cmp r2, #0
	movlt r2, #0
	blt _020c9844
	cmp r2, #0x1f
	movgt r2, #0x1f
_020c9844:
	cmp r3, #0
	movlt r3, #0
	blt _020c9858
	cmp r3, #0x1f
	movgt r3, #0x1f
_020c9858:
	orr r1, lr, r2, lsl #5
	mov r0, #0x8000
	ldr r2, [r4, #4]
	rsb r0, r0, #0
	orr r1, r1, r3, lsl #10
	and r2, r2, r0
	mov r0, r1, lsl #0x10
	orr r0, r2, r0, lsr #16
	str r0, [r4, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9714
_020c9884: .word data_ov00_020e9360
_020c9888: .word data_027e0f88
_020c988c: .word data_027e0f78

	.global func_ov00_020c9890
	arm_func_start func_ov00_020c9890
func_ov00_020c9890: ; 0x020c9890
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r2
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020c9990
_020c98ac: ; jump table
	b _020c98bc ; case 0
	b _020c98f8 ; case 1
	b _020c992c ; case 2
	b _020c9960 ; case 3
_020c98bc:
	ldr r0, _020c9a60 ; =data_027e0fec
	ldr r7, [r0]
	mov r0, r7
	bl func_ov00_020c4588
	mov r6, r0
	add r0, r7, #0xe0
	bl func_ov00_020c45b0
	mov r2, r0
	ldr r3, _020c9a64 ; =data_ov00_020ded90
	mov r0, r5
	mov r1, r6
	bl func_ov00_020c5c64
	mov r0, #1
	strb r0, [r5, #0x7c]
	b _020c9990
_020c98f8:
	ldr r0, _020c9a60 ; =data_027e0fec
	ldr r7, [r0]
	add r0, r7, #0x38
	bl func_ov00_020c4588
	mov r6, r0
	add r0, r7, #0xe0
	bl func_ov00_020c45b0
	mov r2, r0
	ldr r3, _020c9a64 ; =data_ov00_020ded90
	mov r0, r5
	mov r1, r6
	bl func_ov00_020c5c64
	b _020c9990
_020c992c:
	ldr r0, _020c9a60 ; =data_027e0fec
	ldr r7, [r0]
	add r0, r7, #0x70
	bl func_ov00_020c4588
	mov r6, r0
	add r0, r7, #0xe0
	bl func_ov00_020c45b0
	mov r2, r0
	ldr r3, _020c9a64 ; =data_ov00_020ded90
	mov r0, r5
	mov r1, r6
	bl func_ov00_020c5c64
	b _020c9990
_020c9960:
	ldr r0, _020c9a60 ; =data_027e0fec
	ldr r7, [r0]
	add r0, r7, #0xa8
	bl func_ov00_020c4588
	mov r6, r0
	add r0, r7, #0xe0
	bl func_ov00_020c45b0
	mov r2, r0
	ldr r3, _020c9a64 ; =data_ov00_020ded90
	mov r0, r5
	mov r1, r6
	bl func_ov00_020c5c64
_020c9990:
	ldr r1, [r5, #4]
	add r0, r5, #0x20
	str r1, [r5, #0xcc]
	bl func_ov00_020c9700
	cmp r4, #0
	ldr r0, _020c9a68 ; =data_ov00_020e83e8
	ldr r6, _020c9a6c ; =data_ov00_020e83ec
	mvn r7, #0
	beq _020c99d0
	cmp r4, #1
	beq _020c99e0
	cmp r4, #2
	ldreq r0, _020c9a70 ; =data_ov00_020e8434
	ldreq r6, _020c9a74 ; =data_ov00_020e844c
	moveq r7, #2
	b _020c99ec
_020c99d0:
	ldr r0, _020c9a78 ; =data_ov00_020e83f0
	ldr r6, _020c9a7c ; =data_ov00_020e8404
	mov r7, #0
	b _020c99ec
_020c99e0:
	ldr r0, _020c9a80 ; =data_ov00_020e8410
	ldr r6, _020c9a84 ; =data_ov00_020e8428
	mov r7, #1
_020c99ec:
	blx func_02016fe8
	mov r4, r0
	add r0, sp, #0
	mov r1, r6
	mov r2, #0x10
	bl func_020470ec
	add r1, sp, #0
	mov r0, r4
	bl func_0201e544
	mov r2, #0
	mov r1, r0
	add r0, r5, #0xc4
	mov r3, r2
	bl func_ov00_020c0cc8
	mov r0, #0x1000
	str r0, [r5, #0xd4]
	add r0, r5, #0x20
	ldr r2, [r0]
	add r1, r5, #0xc4
	ldr r2, [r2, #0x24]
	blx r2
	mov r1, r7
	mov r0, r5
	bl func_ov00_020c5d74
	ldr r0, [r5, #0x10]
	mov r1, #0x1000
	str r1, [r0, #0x10]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9890
_020c9a60: .word data_027e0fec
_020c9a64: .word data_ov00_020ded90
_020c9a68: .word data_ov00_020e83e8
_020c9a6c: .word data_ov00_020e83ec
_020c9a70: .word data_ov00_020e8434
_020c9a74: .word data_ov00_020e844c
_020c9a78: .word data_ov00_020e83f0
_020c9a7c: .word data_ov00_020e8404
_020c9a80: .word data_ov00_020e8410
_020c9a84: .word data_ov00_020e8428

	.global func_ov00_020c9a88
	arm_func_start func_ov00_020c9a88
func_ov00_020c9a88: ; 0x020c9a88
	ldr ip, _020c9a94 ; =func_ov00_020c0e04
	add r0, r0, #0xc4
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c9a88
_020c9a94: .word func_ov00_020c0e04

	.global func_ov00_020c9a98
	arm_func_start func_ov00_020c9a98
func_ov00_020c9a98: ; 0x020c9a98
	bx lr
	arm_func_end func_ov00_020c9a98

	.global func_ov00_020c9a9c
	arm_func_start func_ov00_020c9a9c
func_ov00_020c9a9c: ; 0x020c9a9c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr ip, _020c9b0c ; =data_ov00_020e8460
	mov r1, r4
	add r0, r4, #0x158
	add r2, r4, #0x178
	add r3, r4, #0x1d8
	str ip, [r4]
	bl func_ov00_020c5c2c
	ldr r1, _020c9b10 ; =data_ov00_020e851c
	add r0, r4, #0x178
	str r1, [r4, #0x158]
	bl func_ov00_020c96d4
	add r0, r4, #0x1d8
	add r1, r4, #0x1fc
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020c9b14 ; =data_ov00_020e8530
	add r0, r4, #0x21c
	str r1, [r4, #0x1d8]
	add r1, r4, #0x240
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020c9b14 ; =data_ov00_020e8530
	mov r0, r4
	str r1, [r4, #0x21c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9a9c
_020c9b0c: .word data_ov00_020e8460
_020c9b10: .word data_ov00_020e851c
_020c9b14: .word data_ov00_020e8530

	.global func_ov00_020c9b18
	arm_func_start func_ov00_020c9b18
func_ov00_020c9b18: ; 0x020c9b18
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c9b18

	.global func_ov00_020c9b2c
	arm_func_start func_ov00_020c9b2c
func_ov00_020c9b2c: ; 0x020c9b2c
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, _020c9b78 ; =0x0000019a
	str r1, [r4, #0xa8]
	str r0, [r4, #0xac]
	str r1, [r4, #0xb0]
	add r0, r0, #0x1000
	str r0, [r4, #0xb4]
	ldr r1, [r4, #0x140]
	ldr r2, [r4, #0x144]
	add r0, r4, #0x158
	bl func_ov00_020c9890
	mov r0, #0x1000
	str r0, [r4, #0x260]
	str r0, [r4, #0x264]
	str r0, [r4, #0x268]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9b2c
_020c9b78: .word 0x0000019a

	.global func_ov00_020c9b7c
	arm_func_start func_ov00_020c9b7c
func_ov00_020c9b7c: ; 0x020c9b7c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020c313c
	cmp r0, #0
	beq _020c9bc0
	mov r0, r5
	bl func_ov00_020c2bf4
	add r0, r5, #0x158
	bl func_ov00_020c5e20
	ldr r0, [r5, #0x168]
	add r0, r0, #0xc
	bl func_0202e58c
	cmp r0, #0
	beq _020c9bc0
	mov r0, r5
	bl func_ov00_020c3180
_020c9bc0:
	mov r1, r4
	add r0, r5, #0xa4
	add r2, r5, #0x48
	bl func_ov00_0207a1c8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020c9b7c

	.global func_ov00_020c9bd4
	arm_func_start func_ov00_020c9bd4
func_ov00_020c9bd4: ; 0x020c9bd4
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c9bd4

	.global func_ov00_020c9be8
	arm_func_start func_ov00_020c9be8
func_ov00_020c9be8: ; 0x020c9be8
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldrneb r2, [r0, #0xa5]
	ldreqb r2, [r0, #0xa4]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020c31c0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020c9be8

	.global func_ov00_020c9c08
	arm_func_start func_ov00_020c9c08
func_ov00_020c9c08: ; 0x020c9c08
	ldr ip, _020c9c1c ; =func_ov00_020c5fc0
	mov r1, r0
	add r0, r1, #0x158
	add r1, r1, #0x260
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c9c08
_020c9c1c: .word func_ov00_020c5fc0

	.global func_ov00_020c9c20
	arm_func_start func_ov00_020c9c20
func_ov00_020c9c20: ; 0x020c9c20
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x21c
	blx func_ov00_020a9aac
	add r0, r4, #0x1d8
	blx func_ov00_020a9aac
	add r0, r4, #0x178
	blx func_ov00_020a95ec
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c9c20

	.global func_ov00_020c9c58
	arm_func_start func_ov00_020c9c58
func_ov00_020c9c58: ; 0x020c9c58
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x21c
	blx func_ov00_020a9aac
	add r0, r4, #0x1d8
	blx func_ov00_020a9aac
	add r0, r4, #0x178
	blx func_ov00_020a95ec
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c9c58

	.global func_ov00_020c9c88
	arm_func_start func_ov00_020c9c88
func_ov00_020c9c88: ; 0x020c9c88
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020c9c88

	.global func_ov00_020c9ca4
	arm_func_start func_ov00_020c9ca4
func_ov00_020c9ca4: ; 0x020c9ca4
	stmdb sp!, {r3, lr}
	ldr r1, _020c9cd0 ; =data_027e0fe0
	mov r0, #0x268
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020c9fb8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9ca4
_020c9cd0: .word data_027e0fe0

	.global func_ov00_020c9cd4
	arm_func_start func_ov00_020c9cd4
func_ov00_020c9cd4: ; 0x020c9cd4
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	blx func_ov00_020a956c
	ldr r0, _020c9cfc ; =data_ov00_020e86b8
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	strb r1, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9cd4
_020c9cfc: .word data_ov00_020e86b8

	.global func_ov00_020c9d00
	arm_func_start func_ov00_020c9d00
func_ov00_020c9d00: ; 0x020c9d00
	ldr ip, _020c9d10 ; =func_ov00_020a9998
	mov r1, #4
	mov r2, #2
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c9d00
_020c9d10: .word func_ov00_020a9998

	.global func_ov00_020c9d14
	arm_func_start func_ov00_020c9d14
func_ov00_020c9d14: ; 0x020c9d14
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, [r1, #0xb0]
	ldr r1, [r4, #0xc]
	bic r1, r1, #0x3f000000
	str r1, [r4, #0xc]
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020c9e6c ; =data_027e0f88
	mov r1, #0
	ldr r0, [r0]
	bl func_ov00_020a19fc
	ldrh r1, [r0, #2]
	ldrh r2, [r0]
	ldrh r0, [r0, #4]
	strh r1, [sp, #2]
	ldrsh r3, [sp, #2]
	strh r0, [sp, #4]
	strh r2, [sp]
	cmp r3, #0
	rsblt r0, r3, #0
	movlt r0, r0, lsl #0x10
	movlt r3, r0, asr #0x10
	ldr r0, _020c9e70 ; =data_027e0f78
	mov ip, #0
	ldr r0, [r0]
	ldrh r5, [r0, #0x1e]
	ldrh r2, [r0, #0x1c]
	and r1, r5, #0x3e0
	and r0, r5, #0x7c00
	mov r5, r5, lsl #0x1b
	mov r1, r1, asr #0x5
	mov r0, r0, asr #0xa
	mov r1, r1, lsl #0xc
	mov r5, r5, lsr #0xf
	mov lr, r0, lsl #0xc
	smull r5, r0, r3, r5
	adds r5, r5, #0x800
	smull r1, r6, r3, r1
	adc r0, r0, #0
	adds r7, r1, #0x800
	mov r1, r5, lsr #0xc
	smull r5, lr, r3, lr
	adc r3, r6, #0
	mov r6, r7, lsr #0xc
	adds r5, r5, #0x800
	orr r6, r6, r3, lsl #20
	adc r3, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r3, lsl #20
	orr r1, r1, r0, lsl #20
	and r3, r2, #0x1f
	adds lr, r3, r1, asr #12
	and r7, r2, #0x3e0
	mov r3, r6, asr #0xc
	and r1, r2, #0x7c00
	mov r0, r5, asr #0xc
	add r2, r3, r7, asr #5
	add r3, r0, r1, asr #10
	movmi lr, ip
	bmi _020c9e18
	cmp lr, #0x1f
	movgt lr, #0x1f
_020c9e18:
	cmp r2, #0
	movlt r2, #0
	blt _020c9e2c
	cmp r2, #0x1f
	movgt r2, #0x1f
_020c9e2c:
	cmp r3, #0
	movlt r3, #0
	blt _020c9e40
	cmp r3, #0x1f
	movgt r3, #0x1f
_020c9e40:
	orr r1, lr, r2, lsl #5
	mov r0, #0x8000
	ldr r2, [r4, #4]
	rsb r0, r0, #0
	orr r1, r1, r3, lsl #10
	and r2, r2, r0
	mov r0, r1, lsl #0x10
	orr r0, r2, r0, lsr #16
	str r0, [r4, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9d14
_020c9e6c: .word data_027e0f88
_020c9e70: .word data_027e0f78

	.global func_ov00_020c9e74
	arm_func_start func_ov00_020c9e74
func_ov00_020c9e74: ; 0x020c9e74
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r4, r0
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	b _020c9ef4
_020c9e90: ; jump table
	b _020c9ea0 ; case 0
	b _020c9ebc ; case 1
	b _020c9ed0 ; case 2
	b _020c9ee4 ; case 3
_020c9ea0:
	ldr r3, _020c9f8c ; =data_ov00_020dedcc
	mov r1, #6
	mov r2, #9
	bl func_ov00_020c5ce4
	mov r0, #1
	strb r0, [r4, #0x7c]
	b _020c9ef4
_020c9ebc:
	ldr r3, _020c9f8c ; =data_ov00_020dedcc
	mov r1, #7
	mov r2, #9
	bl func_ov00_020c5ce4
	b _020c9ef4
_020c9ed0:
	ldr r3, _020c9f8c ; =data_ov00_020dedcc
	mov r1, #8
	mov r2, #9
	bl func_ov00_020c5ce4
	b _020c9ef4
_020c9ee4:
	mov r1, #0xa
	ldr r3, _020c9f90 ; =data_ov00_020dede0
	mov r2, r1
	bl func_ov00_020c5ce4
_020c9ef4:
	ldr r1, [r4, #4]
	add r0, r4, #0x20
	str r1, [r4, #0xc8]
	bl func_ov00_020c9d00
	cmp r5, #3
	ldreq r0, _020c9f94 ; =data_ov00_020e8580
	ldreq r6, _020c9f98 ; =data_ov00_020e859c
	ldrne r0, _020c9f9c ; =data_ov00_020e85ac
	ldrne r6, _020c9fa0 ; =data_ov00_020e85c4
	blx func_02016fe8
	mov r5, r0
	add r0, sp, #0
	mov r1, r6
	mov r2, #0x10
	bl func_020470ec
	add r1, sp, #0
	mov r0, r5
	bl func_0201e544
	mov r2, #0
	mov r1, r0
	add r0, r4, #0xc0
	mov r3, r2
	bl func_ov00_020c0cc8
	mov r0, #0x1000
	str r0, [r4, #0xd0]
	add r0, r4, #0x20
	ldr r2, [r0]
	add r1, r4, #0xc0
	ldr r2, [r2, #0x24]
	blx r2
	mov r0, r4
	mov r1, #0
	bl func_ov00_020c5d74
	ldr r0, [r4, #0x10]
	mov r1, #0x1000
	str r1, [r0, #0x10]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9e74
_020c9f8c: .word data_ov00_020dedcc
_020c9f90: .word data_ov00_020dede0
_020c9f94: .word data_ov00_020e8580
_020c9f98: .word data_ov00_020e859c
_020c9f9c: .word data_ov00_020e85ac
_020c9fa0: .word data_ov00_020e85c4

	.global func_ov00_020c9fa4
	arm_func_start func_ov00_020c9fa4
func_ov00_020c9fa4: ; 0x020c9fa4
	ldr ip, _020c9fb0 ; =func_ov00_020c0e04
	add r0, r0, #0xc0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020c9fa4
_020c9fb0: .word func_ov00_020c0e04

	.global func_ov00_020c9fb4
	arm_func_start func_ov00_020c9fb4
func_ov00_020c9fb4: ; 0x020c9fb4
	bx lr
	arm_func_end func_ov00_020c9fb4

	.global func_ov00_020c9fb8
	arm_func_start func_ov00_020c9fb8
func_ov00_020c9fb8: ; 0x020c9fb8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr ip, _020ca028 ; =data_ov00_020e85d8
	mov r1, r4
	add r0, r4, #0x158
	add r2, r4, #0x178
	add r3, r4, #0x1d8
	str ip, [r4]
	bl func_ov00_020c5c2c
	ldr r1, _020ca02c ; =data_ov00_020e8694
	add r0, r4, #0x178
	str r1, [r4, #0x158]
	bl func_ov00_020c9cd4
	add r0, r4, #0x1d8
	add r1, r4, #0x1fc
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020ca030 ; =data_ov00_020e86a8
	add r0, r4, #0x218
	str r1, [r4, #0x1d8]
	add r1, r4, #0x23c
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020ca030 ; =data_ov00_020e86a8
	mov r0, r4
	str r1, [r4, #0x218]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020c9fb8
_020ca028: .word data_ov00_020e85d8
_020ca02c: .word data_ov00_020e8694
_020ca030: .word data_ov00_020e86a8

	.global func_ov00_020ca034
	arm_func_start func_ov00_020ca034
func_ov00_020ca034: ; 0x020ca034
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ca034

	.global func_ov00_020ca048
	arm_func_start func_ov00_020ca048
func_ov00_020ca048: ; 0x020ca048
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, _020ca090 ; =0x0000019a
	str r1, [r4, #0xa8]
	str r0, [r4, #0xac]
	str r1, [r4, #0xb0]
	add r0, r0, #0x1000
	str r0, [r4, #0xb4]
	ldr r1, [r4, #0x140]
	add r0, r4, #0x158
	bl func_ov00_020c9e74
	mov r0, #0x1000
	str r0, [r4, #0x258]
	str r0, [r4, #0x25c]
	str r0, [r4, #0x260]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca048
_020ca090: .word 0x0000019a

	.global func_ov00_020ca094
	arm_func_start func_ov00_020ca094
func_ov00_020ca094: ; 0x020ca094
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	bl func_ov00_020c313c
	cmp r0, #0
	beq _020ca12c
	mov r0, r5
	bl func_ov00_020c2bf4
	ldrb r0, [r5, #0x264]
	cmp r0, #0
	beq _020ca108
	ldr r1, [r5, #0x48]
	ldr r0, _020ca144 ; =data_027e0e60
	str r1, [sp]
	ldr r1, [r5, #0x4c]
	ldr r7, [r0]
	str r1, [sp, #4]
	ldr r3, [r5, #0x50]
	add r1, sp, #0
	mov r0, r7
	mov r2, #0
	str r3, [sp, #8]
	bl func_ov00_02083ee0
	mov r6, r0
	mov r0, r7
	bl func_ov00_02084120
	add r0, r6, r0
	str r0, [r5, #0x4c]
_020ca108:
	add r0, r5, #0x158
	bl func_ov00_020c5e20
	ldr r0, [r5, #0x168]
	add r0, r0, #0xc
	bl func_0202e58c
	cmp r0, #0
	beq _020ca12c
	mov r0, r5
	bl func_ov00_020c3180
_020ca12c:
	mov r1, r4
	add r0, r5, #0xa4
	add r2, r5, #0x48
	bl func_ov00_0207a1c8
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca094
_020ca144: .word data_027e0e60

	.global func_ov00_020ca148
	arm_func_start func_ov00_020ca148
func_ov00_020ca148: ; 0x020ca148
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020ca148

	.global func_ov00_020ca15c
	arm_func_start func_ov00_020ca15c
func_ov00_020ca15c: ; 0x020ca15c
	stmdb sp!, {r3, lr}
	mov r2, r0
	cmp r1, #0
	ldrneb r0, [r2, #0xa5]
	ldreqb r0, [r2, #0xa4]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r2, #0x158
	add r1, r2, #0x258
	bl func_ov00_020c5fc0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020ca15c

	.global func_ov00_020ca188
	arm_func_start func_ov00_020ca188
func_ov00_020ca188: ; 0x020ca188
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x218
	blx func_ov00_020a9a8c
	add r0, r4, #0x1d8
	blx func_ov00_020a9a8c
	add r0, r4, #0x178
	blx func_ov00_020a95ec
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ca188

	.global func_ov00_020ca1c0
	arm_func_start func_ov00_020ca1c0
func_ov00_020ca1c0: ; 0x020ca1c0
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x218
	blx func_ov00_020a9a8c
	add r0, r4, #0x1d8
	blx func_ov00_020a9a8c
	add r0, r4, #0x178
	blx func_ov00_020a95ec
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ca1c0

	.global func_ov00_020ca1f0
	arm_func_start func_ov00_020ca1f0
func_ov00_020ca1f0: ; 0x020ca1f0
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ca1f0

	.global func_ov00_020ca20c
	arm_func_start func_ov00_020ca20c
func_ov00_020ca20c: ; 0x020ca20c
	stmdb sp!, {r4, lr}
	ldr r1, _020ca244 ; =data_027e0fe0
	mov r0, #0x158
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	movs r4, r0
	beq _020ca23c
	bl func_ov00_020c1554
	ldr r0, _020ca248 ; =data_ov00_020e8700
	str r0, [r4]
_020ca23c:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca20c
_020ca244: .word data_027e0fe0
_020ca248: .word data_ov00_020e8700

	.global func_ov00_020ca24c
	arm_func_start func_ov00_020ca24c
func_ov00_020ca24c: ; 0x020ca24c
	ldr ip, _020ca260 ; =func_ov00_0207a1c8
	mov r2, r0
	add r0, r2, #0xa4
	add r2, r2, #0x48
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020ca24c
_020ca260: .word func_ov00_0207a1c8

	.global func_ov00_020ca264
	arm_func_start func_ov00_020ca264
func_ov00_020ca264: ; 0x020ca264
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ca264

	.global func_ov00_020ca280
	arm_func_start func_ov00_020ca280
func_ov00_020ca280: ; 0x020ca280
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ca280

	.global func_ov00_020ca294
	arm_func_start func_ov00_020ca294
func_ov00_020ca294: ; 0x020ca294
	mul r2, r0, r1
	cmp r2, #0
	addle r0, r0, r1
	bxle lr
	cmp r0, #0
	blt _020ca2b8
	cmp r0, r1
	movle r0, r1
	bx lr
_020ca2b8:
	cmp r0, r1
	movge r0, r1
	bx lr
	arm_func_end func_ov00_020ca294

	.global func_ov00_020ca2c4
	arm_func_start func_ov00_020ca2c4
func_ov00_020ca2c4: ; 0x020ca2c4
	ldr r2, _020ca2d4 ; =data_ov00_020e88ec
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020ca2c4
_020ca2d4: .word data_ov00_020e88ec

	.global func_ov00_020ca2d8
	arm_func_start func_ov00_020ca2d8
func_ov00_020ca2d8: ; 0x020ca2d8
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020ca2d8

	.global func_ov00_020ca2e0
	arm_func_start func_ov00_020ca2e0
func_ov00_020ca2e0: ; 0x020ca2e0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020ca338 ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #4
	bl func_ov00_02093a1c
	ldr r0, [sp, #4]
	mov r1, r0, lsr #0x5
	and r1, r1, #3
	cmp r1, #2
	bne _020ca32c
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x4c]
	blx r2
_020ca32c:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca2e0
_020ca338: .word data_027e0f6c

	.global func_ov00_020ca33c
	arm_func_start func_ov00_020ca33c
func_ov00_020ca33c: ; 0x020ca33c
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020ca33c

	.global func_ov00_020ca344
	arm_func_start func_ov00_020ca344
func_ov00_020ca344: ; 0x020ca344
	ldr r3, _020ca364 ; =data_ov00_020e88cc
	mov r2, #0
	str r3, [r0]
	str r1, [r0, #4]
	strh r2, [r0, #8]
	mov r1, #0x1f
	strh r1, [r0, #0xa]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020ca344
_020ca364: .word data_ov00_020e88cc

	.global func_ov00_020ca368
	arm_func_start func_ov00_020ca368
func_ov00_020ca368: ; 0x020ca368
	ldr r3, _020ca388 ; =data_ov00_020e88cc
	mov r2, #0
	str r3, [r0]
	str r1, [r0, #4]
	strh r2, [r0, #8]
	mov r1, #0x1f
	strh r1, [r0, #0xa]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020ca368
_020ca388: .word data_ov00_020e88cc

	.global func_ov00_020ca38c
	arm_func_start func_ov00_020ca38c
func_ov00_020ca38c: ; 0x020ca38c
	cmp r1, #0
	ldrh r1, [r0, #0xa]
	orrne r1, r1, #1
	biceq r1, r1, #1
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end func_ov00_020ca38c

	.global func_ov00_020ca3a4
	arm_func_start func_ov00_020ca3a4
func_ov00_020ca3a4: ; 0x020ca3a4
	cmp r1, #0
	ldrh r1, [r0, #0xa]
	orrne r1, r1, #2
	biceq r1, r1, #2
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end func_ov00_020ca3a4

	.global func_ov00_020ca3bc
	arm_func_start func_ov00_020ca3bc
func_ov00_020ca3bc: ; 0x020ca3bc
	cmp r1, #0
	ldrh r1, [r0, #0xa]
	orrne r1, r1, #4
	biceq r1, r1, #4
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end func_ov00_020ca3bc

	.global func_ov00_020ca3d4
	arm_func_start func_ov00_020ca3d4
func_ov00_020ca3d4: ; 0x020ca3d4
	cmp r1, #0
	ldrh r1, [r0, #0xa]
	orrne r1, r1, #8
	biceq r1, r1, #8
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end func_ov00_020ca3d4

	.global func_ov00_020ca3ec
	arm_func_start func_ov00_020ca3ec
func_ov00_020ca3ec: ; 0x020ca3ec
	cmp r1, #0
	ldrh r1, [r0, #0xa]
	orrne r1, r1, #0x10
	biceq r1, r1, #0x10
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end func_ov00_020ca3ec

	.global func_ov00_020ca404
	arm_func_start func_ov00_020ca404
func_ov00_020ca404: ; 0x020ca404
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _020ca46c ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #0
	bl func_ov00_02093a1c
	ldr r0, [sp]
	tst r0, #0x1f
	moveq r0, r0, lsr #0x7
	andeq r0, r0, #3
	cmpeq r0, #1
	bne _020ca460
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0xb0]
	tst r0, #2
	ldrneb r0, [r1, #0x11d]
	cmpne r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, pc}
_020ca460:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca404
_020ca46c: .word data_027e0f6c

	.global func_ov00_020ca470
	arm_func_start func_ov00_020ca470
func_ov00_020ca470: ; 0x020ca470
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020ca4e0 ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #4
	bl func_ov00_02093a1c
	ldr r0, [sp, #4]
	mov r1, r0, lsr #0x5
	and r1, r1, #3
	cmp r1, #2
	bne _020ca4c8
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x4c]
	blx r2
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_020ca4c8:
	ldrh r1, [r4, #8]
	mov r0, #1
	orr r1, r1, #2
	strh r1, [r4, #8]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca470
_020ca4e0: .word data_027e0f6c

	.global func_ov00_020ca4e4
	arm_func_start func_ov00_020ca4e4
func_ov00_020ca4e4: ; 0x020ca4e4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	ldr r1, [r0]
	mov r4, #1
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x47
	bgt _020ca54c
	bge _020ca5f0
	cmp r0, #0x15
	bgt _020ca540
	cmp r0, #0x11
	blt _020ca534
	beq _020ca5b4
	cmp r0, #0x14
	beq _020ca580
	cmp r0, #0x15
	beq _020ca5f0
	b _020ca5f8
_020ca534:
	cmp r0, #5
	beq _020ca5a0
	b _020ca5f8
_020ca540:
	cmp r0, #0x45
	beq _020ca5c8
	b _020ca5f8
_020ca54c:
	cmp r0, #0x7d
	bgt _020ca564
	bge _020ca5dc
	cmp r0, #0x59
	beq _020ca5f0
	b _020ca5f8
_020ca564:
	cmp r0, #0x7e
	bgt _020ca574
	beq _020ca5dc
	b _020ca5f8
_020ca574:
	cmp r0, #0x81
	beq _020ca5a0
	b _020ca5f8
_020ca580:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x11d]
	cmp r0, #0
	ldrh r0, [r5, #8]
	movne r4, #0
	orr r0, r0, #1
	strh r0, [r5, #8]
	b _020ca5f8
_020ca5a0:
	ldrh r0, [r5, #0xa]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020ca5b4:
	ldrh r0, [r5, #0xa]
	tst r0, #2
	movne r0, r4
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020ca5c8:
	ldrh r0, [r5, #0xa]
	tst r0, #4
	movne r0, r4
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020ca5dc:
	ldrh r0, [r5, #0xa]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020ca5f0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020ca5f8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020ca4e4

	.global func_ov00_020ca600
	arm_func_start func_ov00_020ca600
func_ov00_020ca600: ; 0x020ca600
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #0xa]
	tst r0, #0x10
	bne _020ca644
	ldr r0, _020ca64c ; =data_027e0fe4
	mov r1, r2
	ldr r0, [r0]
	bl func_ov00_020c35d8
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #4]
	ldr r0, _020ca650 ; =0x43525053
	cmp r1, r0
	bne _020ca644
	mov r0, #0
	ldmia sp!, {r3, pc}
_020ca644:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca600
_020ca64c: .word data_027e0fe4
_020ca650: .word 0x43525053

	.global func_ov00_020ca654
	arm_func_start func_ov00_020ca654
func_ov00_020ca654: ; 0x020ca654
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ca654

	.global func_ov00_020ca668
	arm_func_start func_ov00_020ca668
func_ov00_020ca668: ; 0x020ca668
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl func_ov00_020c1554
	ldr r0, _020ca7d4 ; =data_ov00_020e87bc
	mov ip, #0
	str r0, [r4]
	str ip, [r4, #0x158]
	str ip, [r4, #0x15c]
	str ip, [r4, #0x160]
	str ip, [r4, #0x164]
	mov r1, #2
	str r1, [r4, #0x168]
	add r0, r4, #0x100
	strh ip, [r0, #0x80]
	mov r2, #0xf
	strh r2, [r0, #0x82]
	ldr r3, _020ca7d8 ; =0x000004cd
	str ip, [r4, #0x184]
	str r3, [r4, #0x188]
	ldr r2, _020ca7dc ; =0x00000e66
	ldr r3, _020ca7e0 ; =func_ov00_020ca834
	str r2, [r4, #0x18c]
	strh ip, [r0, #0x92]
	mov r2, #1
	strb r2, [r4, #0x1a0]
	strb r2, [r4, #0x1a1]
	strb r2, [r4, #0x1a2]
	strb r2, [r4, #0x1a3]
	strb r2, [r4, #0x1a4]
	strb r2, [r4, #0x1a5]
	strb r2, [r4, #0x1a6]
	strb r2, [r4, #0x1a7]
	strb r2, [r4, #0x1a8]
	strb r2, [r4, #0x1a9]
	strb r2, [r4, #0x1aa]
	strb r2, [r4, #0x1ab]
	strb r2, [r4, #0x1ac]
	mov r2, #0xa
	strh r2, [r0, #0xae]
	mov r2, #5
	strh r2, [r0, #0xb0]
	mov r2, #0x1000
	str r2, [r4, #0x1b4]
	str r2, [r4, #0x1b8]
	str r2, [r4, #0x1bc]
	strh ip, [r0, #0xc4]
	mov r2, #0x96
	strh r2, [r0, #0xc6]
	ldr ip, _020ca7e4 ; =func_ov00_020b7d74
	add r0, r4, #0x1c8
	mov r2, #4
	str ip, [sp]
	bl func_0204f614
	mov r2, #0
	mov r1, r4
	add r0, r4, #0x1d8
	str r2, [r4, #0x1d0]
	bl func_ov00_020ca368
	mov r0, #0
	strb r0, [r4, #0x1e4]
	strb r0, [r4, #0x1e5]
	sub r1, r0, #1
	add r0, r4, #0x1f8
	str r1, [r4, #0x1e8]
	bl func_ov00_020ccef0
	mvn r1, #0
	str r1, [r4, #0x20c]
	mov r0, #0x800
	str r0, [r4, #0x210]
	mov r2, #0
	str r2, [r4, #0x214]
	str r1, [r4, #0x218]
	mov r0, #0x1000
	str r0, [r4, #0x194]
	str r0, [r4, #0x198]
	str r0, [r4, #0x19c]
	str r2, [r4, #0x1ec]
	str r2, [r4, #0x1f0]
	str r2, [r4, #0x1f4]
	add r0, r4, #0x1d8
	str r0, [r4, #0xa0]
	mov r1, r2
_020ca7b4:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x170]
	cmp r2, #4
	blt _020ca7b4
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca668
_020ca7d4: .word data_ov00_020e87bc
_020ca7d8: .word 0x000004cd
_020ca7dc: .word 0x00000e66
_020ca7e0: .word func_ov00_020ca834
_020ca7e4: .word func_ov00_020b7d74

	.global func_ov00_020ca7e8
	arm_func_start func_ov00_020ca7e8
func_ov00_020ca7e8: ; 0x020ca7e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _020ca82c ; =data_027e0fe4
	add r1, r4, #0x34
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r0, #4]
	ldr r0, _020ca830 ; =0x454e4745
	cmp r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020c3180
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca7e8
_020ca82c: .word data_027e0fe4
_020ca830: .word 0x454e4745

	.global func_ov00_020ca834
	arm_func_start func_ov00_020ca834
func_ov00_020ca834: ; 0x020ca834
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end func_ov00_020ca834

	.global func_ov00_020ca840
	arm_func_start func_ov00_020ca840
func_ov00_020ca840: ; 0x020ca840
	stmdb sp!, {r4, lr}
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f
	cmp r0, #8
	bne _020ca878
	ldr r0, [r4, #4]
	add r1, r4, #0x48
	mov r2, #1
	bl func_ov00_020c8398
	mov r0, r4
	bl func_ov00_020c3180
	mov r0, #1
	ldmia sp!, {r4, pc}
_020ca878:
	ldr r0, _020ca89c ; =data_027e0ffc
	ldr r1, _020ca8a0 ; =0x0000018f
	add r2, r4, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	mov r0, r4
	bl func_ov00_020c3180
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ca840
_020ca89c: .word data_027e0ffc
_020ca8a0: .word 0x0000018f

	.global func_ov00_020ca8a4
	arm_func_start func_ov00_020ca8a4
func_ov00_020ca8a4: ; 0x020ca8a4
	ldr ip, _020ca8b0 ; =func_ov00_020ca8b4
	str r1, [r0, #0x158]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020ca8a4
_020ca8b0: .word func_ov00_020ca8b4

	.global func_ov00_020ca8b4
	arm_func_start func_ov00_020ca8b4
func_ov00_020ca8b4: ; 0x020ca8b4
	ldrsh r3, [r1]
	add r2, r0, #0x100
	strh r3, [r2, #0x22]
	strh r3, [r2, #0x20]
	ldrb r2, [r1, #2]
	strb r2, [r0, #0x124]
	ldrb r2, [r1, #3]
	strb r2, [r0, #0x125]
	ldr r2, [r1, #4]
	str r2, [r0, #0x214]
	ldrh r2, [r1, #0x4e]
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	strb r2, [r0, #0x128]
	ldr r3, [r1, #8]
	add r2, r0, #0x100
	str r3, [r0, #0x12c]
	ldr r3, [r1, #0xc]
	str r3, [r0, #0x1b4]
	ldr r3, [r1, #0x10]
	str r3, [r0, #0x1b8]
	ldr r3, [r1, #0x14]
	str r3, [r0, #0x1bc]
	ldr r3, [r1, #0x18]
	strb r3, [r0, #0x1ac]
	ldr r3, [r1, #0x1c]
	strb r3, [r0, #0x1a0]
	ldr r3, [r1, #0x20]
	strb r3, [r0, #0x1a1]
	ldr r3, [r1, #0x24]
	strb r3, [r0, #0x1a2]
	ldr r3, [r1, #0x28]
	strb r3, [r0, #0x1a3]
	ldr r3, [r1, #0x2c]
	strb r3, [r0, #0x1a4]
	ldr r3, [r1, #0x30]
	strb r3, [r0, #0x1a5]
	ldr r3, [r1, #0x34]
	strb r3, [r0, #0x1a6]
	ldr r3, [r1, #0x38]
	strb r3, [r0, #0x1a7]
	ldr r3, [r1, #0x3c]
	strb r3, [r0, #0x1a8]
	ldr r3, [r1, #0x40]
	strb r3, [r0, #0x1a9]
	ldr r3, [r1, #0x44]
	strb r3, [r0, #0x1ab]
	ldrsh r3, [r1, #0x4c]
	strh r3, [r2, #0xc6]
	ldr r3, [r1, #0x48]
	str r3, [r0, #0x1d0]
	ldr r3, [r1, #0x50]
	str r3, [r0, #0x8c]
	ldr r3, [r1, #0x54]
	str r3, [r0, #0x90]
	ldr r3, [r1, #0x58]
	str r3, [r0, #0x94]
	ldr r3, [r1, #0x5c]
	str r3, [r0, #0x98]
	ldr r3, [r0, #0x8c]
	str r3, [r0, #0x7c]
	ldr r3, [r0, #0x90]
	str r3, [r0, #0x80]
	ldr r3, [r0, #0x94]
	str r3, [r0, #0x84]
	ldr ip, [r0, #0x98]
	str ip, [r0, #0x88]
	ldr r3, [r0, #0x7c]
	add ip, ip, #0x1000
	str r3, [r0, #0xa8]
	ldr r3, [r0, #0x80]
	str r3, [r0, #0xac]
	ldr r3, [r0, #0x84]
	str r3, [r0, #0xb0]
	str ip, [r0, #0xb4]
	ldrsh r3, [r1, #0x68]
	strh r3, [r2, #0x1e]
	ldr r2, [r1, #0x78]
	str r2, [r0, #0x164]
	ldr r1, [r1, #0x7c]
	str r1, [r0, #0x168]
	bx lr
	arm_func_end func_ov00_020ca8b4

	.global func_ov00_020caa00
	arm_func_start func_ov00_020caa00
func_ov00_020caa00: ; 0x020caa00
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x14
	add r1, r4, #0x1e4
	bl func_ov00_020c5374
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020caa00

	.global func_ov00_020caa28
	arm_func_start func_ov00_020caa28
func_ov00_020caa28: ; 0x020caa28
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020c313c
	cmp r0, #0
	beq _020caa7c
	ldr r1, [r5, #0x218]
	mvn r0, #0
	cmp r1, r0
	beq _020caa64
	mov r0, r5
	bl func_ov00_020cc980
	cmp r0, #0
	mvnne r0, #0
	strne r0, [r5, #0x218]
_020caa64:
	mov r0, r5
	bl func_ov00_020c1cf8
	mov r1, #0
	mov r0, r5
	strb r1, [r5, #0x16c]
	bl func_ov00_020caa90
_020caa7c:
	mov r1, r4
	add r0, r5, #0xa4
	add r2, r5, #0x48
	bl func_ov00_0207a1c8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020caa28

	.global func_ov00_020caa90
	arm_func_start func_ov00_020caa90
func_ov00_020caa90: ; 0x020caa90
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r1, r4, #0x100
	mov r2, #0
	strh r2, [r1, #0xe0]
	ldr r1, [r4, #0x15c]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020cab14
_020caab8: ; jump table
	b _020caac8 ; case 0
	b _020caadc ; case 1
	b _020caaf0 ; case 2
	b _020cab04 ; case 3
_020caac8:
	ldr r1, [r0]
	ldr r1, [r1, #0xcc]
	blx r1
	mov r2, r0
	b _020cab14
_020caadc:
	ldr r1, [r0]
	ldr r1, [r1, #0xd8]
	blx r1
	mov r2, r0
	b _020cab14
_020caaf0:
	ldr r1, [r0]
	ldr r1, [r1, #0xe4]
	blx r1
	mov r2, r0
	b _020cab14
_020cab04:
	ldr r1, [r0]
	ldr r1, [r1, #0xf0]
	blx r1
	mov r2, r0
_020cab14:
	cmp r2, #0
	beq _020cacd0
	add r0, r4, #0x100
	ldrh r0, [r0, #0xe0]
	tst r0, #2
	movne r1, #1
	moveq r1, #0
	cmp r1, #1
	bne _020cab8c
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020cab8c
	mov r2, #0
	add r1, sp, #4
	add r0, r4, #0x48
	strb r2, [sp, #4]
	strb r2, [sp, #5]
	bl func_ov00_020c5374
	ldr r0, _020cace8 ; =data_027e0e60
	add r1, sp, #4
	ldr r0, [r0]
	bl func_ov00_02084164
	cmp r0, #0
	beq _020cab8c
	ldrb r0, [sp, #4]
	strb r0, [r4, #0x1e4]
	ldrb r0, [sp, #5]
	strb r0, [r4, #0x1e5]
_020cab8c:
	add r0, r4, #0x100
	ldrsh r0, [r0, #0xc4]
	cmp r0, #0
	ble _020cac48
	add r0, r4, #0x48
	add r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0x1d0]
	add r2, r4, #0x1c8
	add r3, r1, r0
	add r1, r4, #0x1d0
	str r3, [sp, #0xc]
	cmp r2, r1
	beq _020cac28
	ldr ip, [sp, #0x10]
_020cabd0:
	ldr r0, [r2]
	cmp r0, #0
	beq _020cac1c
	ldr r5, [r0, #0x20]
	ldr lr, [sp, #8]
	ldr r5, [r5]
	ldr r5, [r5, #4]
	add r5, lr, r5
	str r5, [r0, #0x28]
	ldr r5, [r0, #0x20]
	ldr r5, [r5]
	ldr r5, [r5, #8]
	add r5, r3, r5
	str r5, [r0, #0x2c]
	ldr r5, [r0, #0x20]
	ldr r5, [r5]
	ldr r5, [r5, #0xc]
	add r5, ip, r5
	str r5, [r0, #0x30]
_020cac1c:
	add r2, r2, #4
	cmp r2, r1
	bne _020cabd0
_020cac28:
	mov r0, #0
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, _020cacec ; =data_027e0ffc
	add r2, r4, #0x48
	mov r1, #0x194
	bl func_ov00_020cec60
	b _020cac6c
_020cac48:
	add r6, r4, #0x1c8
	add r5, r4, #0x1d0
	cmp r6, r5
	beq _020cac6c
_020cac58:
	mov r0, r6
	bl func_ov00_020b7e6c
	add r6, r6, #4
	cmp r6, r5
	bne _020cac58
_020cac6c:
	ldr r0, [r4, #0x164]
	tst r0, #0x10
	beq _020cac8c
	ldr r0, _020cacf0 ; =data_027e0f64
	add r1, r4, #0x48
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl func_ov00_02088010
_020cac8c:
	ldr r1, [r4, #0x20c]
	mvn r0, #0
	cmp r1, r0
	beq _020cacac
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x100]
	blx r1
_020cacac:
	mov r0, r4
	bl func_ov00_020cb16c
	ldr r0, [r4, #0x48]
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x5c]
	b _020cacd8
_020cacd0:
	mvn r0, #0
	str r0, [r4, #0x1e8]
_020cacd8:
	mov r0, r4
	bl func_ov00_020c31a0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020caa90
_020cace8: .word data_027e0e60
_020cacec: .word data_027e0ffc
_020cacf0: .word data_027e0f64

	.global func_ov00_020cacf4
	arm_func_start func_ov00_020cacf4
func_ov00_020cacf4: ; 0x020cacf4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cc138
	cmp r0, #0
	beq _020cad20
	ldr r1, [r4, #0x218]
	mvn r0, #0
	cmp r1, r0
	ldreqb r0, [r4, #0x11b]
	cmpeq r0, #0
	beq _020cad28
_020cad20:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020cad28:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cacf4

	.global func_ov00_020cad30
	arm_func_start func_ov00_020cad30
func_ov00_020cad30: ; 0x020cad30
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020c313c
	cmp r0, #0
	beq _020cad9c
	ldr r1, [r5, #0x218]
	mvn r0, #0
	cmp r1, r0
	beq _020cad6c
	mov r0, r5
	bl func_ov00_020cc980
	cmp r0, #0
	mvnne r0, #0
	strne r0, [r5, #0x218]
_020cad6c:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r0, #0
	beq _020cad9c
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x154]
	mov r1, #1
	strb r1, [r5, #0x16c]
	bl func_ov00_020caa90
_020cad9c:
	mov r1, r4
	add r0, r5, #0xa4
	add r2, r5, #0x48
	bl func_ov00_0207a1c8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cad30

	.global func_ov00_020cadb0
	arm_func_start func_ov00_020cadb0
func_ov00_020cadb0: ; 0x020cadb0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x15c]
	mov r4, r1
	cmp r2, #3
	addls pc, pc, r2, lsl #2
	b _020cae18
_020cadcc: ; jump table
	b _020caddc ; case 0
	b _020cadec ; case 1
	b _020cadfc ; case 2
	b _020cae0c ; case 3
_020caddc:
	ldr r1, [r0]
	ldr r1, [r1, #0xd0]
	blx r1
	b _020cae18
_020cadec:
	ldr r1, [r0]
	ldr r1, [r1, #0xdc]
	blx r1
	b _020cae18
_020cadfc:
	ldr r1, [r0]
	ldr r1, [r1, #0xe8]
	blx r1
	b _020cae18
_020cae0c:
	ldr r1, [r0]
	ldr r1, [r1, #0xf4]
	blx r1
_020cae18:
	ldr r0, [r5, #0x15c]
	cmp r4, #3
	str r0, [r5, #0x160]
	str r4, [r5, #0x15c]
	addls pc, pc, r4, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_020cae30: ; jump table
	b _020cae40 ; case 0
	b _020cae54 ; case 1
	b _020cae68 ; case 2
	b _020cae7c ; case 3
_020cae40:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xc8]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
_020cae54:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xd4]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
_020cae68:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xe0]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
_020cae7c:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xec]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cadb0

	.global func_ov00_020cae90
	arm_func_start func_ov00_020cae90
func_ov00_020cae90: ; 0x020cae90
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cae90

	.global func_ov00_020cae98
	arm_func_start func_ov00_020cae98
func_ov00_020cae98: ; 0x020cae98
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cae98

	.global func_ov00_020caea0
	arm_func_start func_ov00_020caea0
func_ov00_020caea0: ; 0x020caea0
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020caea0

	.global func_ov00_020caea8
	arm_func_start func_ov00_020caea8
func_ov00_020caea8: ; 0x020caea8
	ldr ip, _020caeb0 ; =func_ov00_020cc180
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020caea8
_020caeb0: .word func_ov00_020cc180

	.global func_ov00_020caeb4
	arm_func_start func_ov00_020caeb4
func_ov00_020caeb4: ; 0x020caeb4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cb60c
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl func_ov00_020cadb0
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020caeb4

	.global func_ov00_020caee0
	arm_func_start func_ov00_020caee0
func_ov00_020caee0: ; 0x020caee0
	ldr r1, [r0, #0x154]
	ldr r0, [r0, #0x168]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	bx lr
	arm_func_end func_ov00_020caee0

	.global func_ov00_020caef8
	arm_func_start func_ov00_020caef8
func_ov00_020caef8: ; 0x020caef8
	bx lr
	arm_func_end func_ov00_020caef8

	.global func_ov00_020caefc
	arm_func_start func_ov00_020caefc
func_ov00_020caefc: ; 0x020caefc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020caee0
	cmp r0, #0
	beq _020cafb0
	ldrb r0, [r4, #0x16c]
	cmp r0, #0
	bne _020caf68
	ldr r0, [r4, #0x164]
	tst r0, #1
	beq _020caf48
	mov r0, r4
	bl func_ov00_020cc27c
	cmp r0, #0
	beq _020caf48
	mov r0, r4
	mov r1, #3
	bl func_ov00_020cadb0
	b _020caf68
_020caf48:
	ldr r0, [r4, #0x154]
	cmp r0, #0
	bne _020caf68
	ldr r0, [r4, #0x164]
	tst r0, #8
	beq _020caf68
	mov r0, r4
	bl func_ov00_020cb58c
_020caf68:
	ldr r0, [r4, #0x15c]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xbc]
	blx r1
	cmp r0, #0
	beq _020cafb0
	mov r0, r4
	bl func_ov00_020c2bf4
	ldr r0, [r4, #0x184]
	cmp r0, #0
	beq _020cafa8
	bl func_ov00_020c518c
_020cafa8:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020cafb0:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020caefc

	.global func_ov00_020cafb8
	arm_func_start func_ov00_020cafb8
func_ov00_020cafb8: ; 0x020cafb8
	bx lr
	arm_func_end func_ov00_020cafb8

	.global func_ov00_020cafbc
	arm_func_start func_ov00_020cafbc
func_ov00_020cafbc: ; 0x020cafbc
	add r0, r0, #0x100
	ldrh r1, [r0, #0x82]
	bic r1, r1, #0xf
	strh r1, [r0, #0x82]
	bx lr
	arm_func_end func_ov00_020cafbc

	.global func_ov00_020cafd0
	arm_func_start func_ov00_020cafd0
func_ov00_020cafd0: ; 0x020cafd0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cbee8
	mov r0, r4
	bl func_ov00_020cc138
	cmp r0, #0
	beq _020cb050
	ldrb r0, [r4, #0x118]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x100
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	bgt _020cb028
	ldr r1, [r4, #0x164]
	mov r0, r4
	bic r2, r1, #9
	mov r1, #0
	str r2, [r4, #0x164]
	bl func_ov00_020cadb0
	b _020cb050
_020cb028:
	mov r0, r4
	bl func_ov00_020cc168
	cmp r0, #0
	mov r0, r4
	beq _020cb048
	mov r1, #2
	bl func_ov00_020cadb0
	b _020cb050
_020cb048:
	mov r1, #0
	bl func_ov00_020cadb0
_020cb050:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cafd0

	.global func_ov00_020cb058
	arm_func_start func_ov00_020cb058
func_ov00_020cb058: ; 0x020cb058
	add r0, r0, #0x100
	ldrh r1, [r0, #0x82]
	orr r1, r1, #0xf
	strh r1, [r0, #0x82]
	bx lr
	arm_func_end func_ov00_020cb058

	.global func_ov00_020cb06c
	arm_func_start func_ov00_020cb06c
func_ov00_020cb06c: ; 0x020cb06c
	add r0, r0, #0x100
	ldrh r1, [r0, #0x82]
	bic r1, r1, #0xf
	strh r1, [r0, #0x82]
	bx lr
	arm_func_end func_ov00_020cb06c

	.global func_ov00_020cb080
	arm_func_start func_ov00_020cb080
func_ov00_020cb080: ; 0x020cb080
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x164]
	tst r1, #1
	beq _020cb0b0
	bl func_ov00_020cc27c
	cmp r0, #0
	beq _020cb0b0
	mov r0, r4
	mov r1, #3
	bl func_ov00_020cadb0
	b _020cb0d0
_020cb0b0:
	ldr r0, [r4, #0x154]
	cmp r0, #0
	bne _020cb0d0
	ldr r0, [r4, #0x164]
	tst r0, #8
	beq _020cb0d0
	mov r0, r4
	bl func_ov00_020cb58c
_020cb0d0:
	ldr r0, [r4, #0x15c]
	cmp r0, #2
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020cc214
	mov r0, r4
	bl func_ov00_020cc22c
	cmp r0, #0
	beq _020cb104
	mov r0, r4
	mov r1, #0
	bl func_ov00_020cadb0
_020cb104:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cb080

	.global func_ov00_020cb10c
	arm_func_start func_ov00_020cb10c
func_ov00_020cb10c: ; 0x020cb10c
	add r0, r0, #0x100
	ldrh r1, [r0, #0x82]
	orr r1, r1, #0xf
	strh r1, [r0, #0x82]
	bx lr
	arm_func_end func_ov00_020cb10c

	.global func_ov00_020cb120
	arm_func_start func_ov00_020cb120
func_ov00_020cb120: ; 0x020cb120
	ldr ip, _020cb128 ; =func_ov00_020cc2d4
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cb120
_020cb128: .word func_ov00_020cc2d4

	.global func_ov00_020cb12c
	arm_func_start func_ov00_020cb12c
func_ov00_020cb12c: ; 0x020cb12c
	stmdb sp!, {r3, lr}
	bl func_ov00_020cc308
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cb12c

	.global func_ov00_020cb13c
	arm_func_start func_ov00_020cb13c
func_ov00_020cb13c: ; 0x020cb13c
	bx lr
	arm_func_end func_ov00_020cb13c

	.global func_ov00_020cb140
	arm_func_start func_ov00_020cb140
func_ov00_020cb140: ; 0x020cb140
	add r2, r0, #0x100
	ldrsh r3, [r2, #0x80]
	add r0, r0, r3, lsl #2
	str r1, [r0, #0x170]
	ldrsh r0, [r2, #0x80]
	add r0, r0, #1
	strh r0, [r2, #0x80]
	bx lr
	arm_func_end func_ov00_020cb140

	.global func_ov00_020cb160
	arm_func_start func_ov00_020cb160
func_ov00_020cb160: ; 0x020cb160
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x170]
	bx lr
	arm_func_end func_ov00_020cb160

	.global func_ov00_020cb16c
	arm_func_start func_ov00_020cb16c
func_ov00_020cb16c: ; 0x020cb16c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r7, r6, #0x100
	ldrsh r0, [r7, #0x80]
	mov r5, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #1
_020cb18c:
	ldrh r0, [r7, #0x82]
	tst r0, r4, lsl r5
	beq _020cb1a4
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x170]
	bl func_ov00_020c5e20
_020cb1a4:
	ldrsh r1, [r7, #0x80]
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, asr #16
	mov r5, r0, asr #0x10
	bgt _020cb18c
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020cb16c

	.global func_ov00_020cb1c0
	arm_func_start func_ov00_020cb1c0
func_ov00_020cb1c0: ; 0x020cb1c0
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldrneb r1, [r0, #0xa5]
	ldreqb r1, [r0, #0xa4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0xc0]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cb1c0

	.global func_ov00_020cb1e8
	arm_func_start func_ov00_020cb1e8
func_ov00_020cb1e8: ; 0x020cb1e8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r3, [r1, #8]
	ldr r2, [r1]
	mov r1, #0
	mov r4, r0
	str r2, [sp]
	str r3, [sp, #8]
	str r1, [sp, #4]
	ldr r1, [r4, #0x188]
	add r0, sp, #0
	bl func_0202d95c
	ldr r1, [sp]
	mov r0, #0
	str r1, [r4, #0x60]
	ldr r1, [sp, #4]
	str r1, [r4, #0x64]
	ldr r1, [sp, #8]
	str r1, [r4, #0x68]
	str r0, [r4, #0x64]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov00_020cb1e8

	.global func_ov00_020cb240
	arm_func_start func_ov00_020cb240
func_ov00_020cb240: ; 0x020cb240
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, [r4, #0x60]
	ldr r2, [r4, #0x18c]
	add r1, r4, #0x100
	smull ip, r2, r3, r2
	adds r3, ip, #0x800
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [r4, #0x60]
	ldr ip, [r4, #0x68]
	ldr r3, [r4, #0x18c]
	mov r2, #0
	smull lr, r3, ip, r3
	adds ip, lr, #0x800
	adc r3, r3, #0
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	str ip, [r4, #0x68]
	ldrh r1, [r1, #0xb0]
	tst r1, #2
	strne r2, [r4, #0x64]
	bne _020cb2a4
	bl func_ov00_020c3070
_020cb2a4:
	add r0, r4, #0x48
	add r1, r4, #0x60
	mov r2, r0
	bl func_01ff9bc4
	mov r0, r4
	mov r1, #0
	bl func_01fffd04
	ldrb r0, [r4, #0x110]
	cmp r0, #0
	ldreqb r0, [r4, #0x112]
	cmpeq r0, #0
	ldreqb r0, [r4, #0x113]
	cmpeq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x60]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x68]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	str r0, [r4, #0x68]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cb240

	.global func_ov00_020cb300
	arm_func_start func_ov00_020cb300
func_ov00_020cb300: ; 0x020cb300
	mov r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	str r1, [r0, #0x68]
	bx lr
	arm_func_end func_ov00_020cb300

	.global func_ov00_020cb314
	arm_func_start func_ov00_020cb314
func_ov00_020cb314: ; 0x020cb314
	stmdb sp!, {r3, lr}
	mov ip, r0
	mov r3, #0
	str r3, [ip, #0x60]
	ldr r1, [ip, #0x64]
	add r0, ip, #0x48
	sub r1, r1, #0xcd
	str r1, [ip, #0x64]
	add r1, ip, #0x60
	mov r2, r0
	str r3, [ip, #0x68]
	bl func_01ff9bc4
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cb314

	.global func_ov00_020cb348
	arm_func_start func_ov00_020cb348
func_ov00_020cb348: ; 0x020cb348
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	add r0, r7, #0x100
	ldrsb ip, [r0, #0xac]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	beq _020cb384
	cmp ip, #1
	beq _020cb3d0
	cmp ip, #2
	beq _020cb428
	b _020cb47c
_020cb384:
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	bgt _020cb3b0
	cmp r4, #0
	beq _020cb47c
	ldr r0, _020cb530 ; =data_027e0ffc
	ldr r1, _020cb534 ; =0x00000191
	add r2, r7, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	b _020cb47c
_020cb3b0:
	cmp r4, #0
	beq _020cb47c
	ldr r0, _020cb530 ; =data_027e0ffc
	add r2, r7, #0x48
	mov r1, #0x190
	mov r3, #0
	bl func_ov00_020ceacc
	b _020cb47c
_020cb3d0:
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	bgt _020cb408
	ldr r0, _020cb538 ; =data_027e0e5c
	mov r1, #0
	bl func_ov00_0207c7e8
	cmp r4, #0
	beq _020cb47c
	ldr r0, _020cb530 ; =data_027e0ffc
	ldr r1, _020cb534 ; =0x00000191
	add r2, r7, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	b _020cb47c
_020cb408:
	cmp r4, #0
	beq _020cb47c
	ldr r0, _020cb530 ; =data_027e0ffc
	add r2, r7, #0x48
	mov r1, #0x190
	mov r3, #0
	bl func_ov00_020ceacc
	b _020cb47c
_020cb428:
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	bgt _020cb460
	ldr r0, _020cb538 ; =data_027e0e5c
	mov r1, #1
	bl func_ov00_0207c7e8
	cmp r4, #0
	beq _020cb47c
	ldr r0, _020cb530 ; =data_027e0ffc
	ldr r1, _020cb534 ; =0x00000191
	add r2, r7, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	b _020cb47c
_020cb460:
	cmp r4, #0
	beq _020cb47c
	ldr r0, _020cb530 ; =data_027e0ffc
	add r2, r7, #0x48
	mov r1, #0x190
	mov r3, #0
	bl func_ov00_020ceacc
_020cb47c:
	cmp r5, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, r7
	bl func_ov00_020c2a0c
	ldr r0, [r6]
	ldr r1, [r6, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	ldr r3, [sp, #0xc]
	ldr r2, _020cb53c ; =data_02050f54
	mov r1, r1, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrsh r1, [r2, r1]
	rsb r3, r3, #0
	ldrsh r0, [r2, r0]
	smull r2, r4, r1, r3
	adds r5, r2, #0x800
	ldr r1, [sp, #4]
	smull r3, r2, r0, r3
	adc r4, r4, #0
	adds r3, r3, #0x800
	mov r5, r5, lsr #0xc
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r5, r5, r4, lsl #20
	ldr r3, [sp]
	orr r2, r2, r0, lsl #20
	ldr r4, [sp, #8]
	add r3, r3, r5
	add r2, r4, r2
	add r0, sp, #0x10
	str r1, [sp, #0x14]
	str r3, [sp, #0x10]
	str r2, [sp, #0x18]
	bl func_ov00_020c71fc
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020cb348
_020cb530: .word data_027e0ffc
_020cb534: .word 0x00000191
_020cb538: .word data_027e0e5c
_020cb53c: .word data_02050f54

	.global func_ov00_020cb540
	arm_func_start func_ov00_020cb540
func_ov00_020cb540: ; 0x020cb540
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	mov ip, r0
	add r0, ip, #0x100
	ldrsh r3, [r0, #0xc6]
	add r2, ip, #0x48
	mov r1, #2
	strh r3, [r0, #0xc4]
	str r2, [sp]
	ldr r0, _020cb588 ; =data_027e0e58
	str r1, [sp, #4]
	ldr r0, [r0]
	add r1, ip, #0x1c8
	mov r2, #0x7a
	mov r3, #0x7b
	bl func_ov00_0207c2e8
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cb540
_020cb588: .word data_027e0e58

	.global func_ov00_020cb58c
	arm_func_start func_ov00_020cb58c
func_ov00_020cb58c: ; 0x020cb58c
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x100
	ldrsb r1, [r0, #0xa2]
	mov r2, #0
	cmp r1, #0
	ldreqsb r0, [r0, #0xa3]
	cmpeq r0, #0
	add r0, r4, #0x100
	ldrsb r0, [r0, #0xa0]
	orrne r2, r2, #4
	cmp r0, #0
	add r0, r4, #0x100
	ldrsb r0, [r0, #0xa4]
	orrne r2, r2, #2
	cmp r0, #0
	orrne r2, r2, #0x10
	mov r0, r4
	orr r1, r2, #8
	bl func_ov00_020c1fc8
	cmp r0, #0
	bne _020cb5fc
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl func_ov00_020c243c
	cmp r0, #0
	beq _020cb604
_020cb5fc:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020cb604:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cb58c

	.global func_ov00_020cb60c
	arm_func_start func_ov00_020cb60c
func_ov00_020cb60c: ; 0x020cb60c
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r2, #1
	mov r5, r0
	mov r0, #0
	mvn r3, #0
	mov r4, r1
	str r3, [sp]
	strb r0, [sp, #4]
	strb r2, [sp, #0x14]
	strb r2, [sp, #0x15]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r1, [r4]
	strb r1, [sp, #4]
	ldr r1, [r4, #4]
	str r1, [sp, #8]
	ldr r1, [r4, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x10]
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cb674: ; jump table
	b _020cb6a4 ; case 0
	b _020cb730 ; case 1
	b _020cb7d0 ; case 2
	b _020cb81c ; case 3
	b _020cb868 ; case 4
	b _020cb914 ; case 5
	b _020cb9d4 ; case 6
	b _020cba64 ; case 7
	b _020cbb04 ; case 8
	b _020cbbb4 ; case 9
	b _020cbc18 ; case 10
	b _020cbc7c ; case 11
_020cb6a4:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa0]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cb6b8: ; jump table
	b _020cb6d0 ; case 0
	b _020cb6d8 ; case 1
	b _020cb6e0 ; case 2
	b _020cb6f0 ; case 3
	b _020cb6fc ; case 4
	b _020cb724 ; case 5
_020cb6d0:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cb6d8:
	str r0, [sp]
	b _020cbcdc
_020cb6e0:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cbcdc
_020cb6f0:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cb6fc:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	strb r0, [sp, #0x14]
	strb r0, [sp, #0x15]
	bl _ZN10PlayerBase13GetEquipSwordEv
	mov r1, #0xf6
	mov r2, #0
	bl func_ov00_020bf008
	b _020cbcdc
_020cb724:
	str r2, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cb730:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa1]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cb744: ; jump table
	b _020cb758 ; case 0
	b _020cb760 ; case 1
	b _020cb768 ; case 2
	b _020cb778 ; case 3
	b _020cb784 ; case 4
_020cb758:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cb760:
	str r0, [sp]
	b _020cbcdc
_020cb768:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cbcdc
_020cb778:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cb784:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020cbcdc
	ldr r2, [r0, #4]
	ldr r1, _020cbd0c ; =0x5342454d
	cmp r2, r1
	bne _020cbcdc
	bl func_ov14_02146634
	ldr r0, _020cbd10 ; =data_027e0ffc
	add r2, r5, #0x48
	mov r1, #0xf6
	mov r3, #0
	bl func_ov00_020ceacc
	mov r0, #0
	strb r0, [sp, #0x15]
	b _020cbcdc
_020cb7d0:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa2]
	cmp r1, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r1, #1
	beq _020cb7f8
	cmp r1, #2
	beq _020cb808
	b _020cbcdc
_020cb7f8:
	mov r1, #3
	str r1, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cb808:
	mov r1, #4
	str r1, [sp]
	strb r0, [sp, #4]
	strb r0, [sp, #0x14]
	b _020cbcdc
_020cb81c:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa3]
	cmp r1, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r1, #1
	beq _020cb844
	cmp r1, #2
	beq _020cb854
	b _020cbcdc
_020cb844:
	mov r1, #3
	str r1, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cb854:
	mov r1, #4
	str r1, [sp]
	strb r0, [sp, #4]
	strb r0, [sp, #0x14]
	b _020cbcdc
_020cb868:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa4]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _020cb8e8
_020cb87c: ; jump table
	b _020cb894 ; case 0
	b _020cb89c ; case 1
	b _020cb8a8 ; case 2
	b _020cb8bc ; case 3
	b _020cb8cc ; case 4
	b _020cb8dc ; case 5
_020cb894:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cb89c:
	mov r0, #2
	str r0, [sp]
	b _020cb8e8
_020cb8a8:
	mov r1, #2
	mov r0, #0xff
	str r1, [sp]
	strb r0, [sp, #4]
	b _020cb8e8
_020cb8bc:
	mov r1, #2
	str r1, [sp]
	strb r0, [sp, #4]
	b _020cb8e8
_020cb8cc:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	b _020cb8e8
_020cb8dc:
	str r2, [sp]
	strb r0, [sp, #4]
	strb r0, [sp, #0x14]
_020cb8e8:
	add r0, r5, #0x100
	ldrh r0, [r0, #0xb0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldreq r0, [sp]
	cmpeq r0, #2
	moveq r0, #0
	streq r0, [sp]
	b _020cbcdc
_020cb914:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa5]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cb928: ; jump table
	b _020cb940 ; case 0
	b _020cb948 ; case 1
	b _020cb954 ; case 2
	b _020cb968 ; case 3
	b _020cb978 ; case 4
	b _020cb9c4 ; case 5
_020cb940:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cb948:
	str r0, [sp]
	strb r0, [sp, #0x14]
	b _020cbcdc
_020cb954:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	strb r0, [sp, #0x14]
	b _020cbcdc
_020cb968:
	str r0, [sp]
	strb r0, [sp, #4]
	strb r0, [sp, #0x14]
	b _020cbcdc
_020cb978:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020cbcdc
	ldr r2, [r0, #4]
	ldr r1, _020cbd14 ; =0x424d524e
	cmp r2, r1
	bne _020cbcdc
	bl func_ov14_021231d4
	ldr r0, _020cbd10 ; =data_027e0ffc
	ldr r1, _020cbd18 ; =0x0000019d
	add r2, r5, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	mov r0, #0
	strb r0, [sp, #0x15]
	b _020cbcdc
_020cb9c4:
	str r2, [sp]
	strb r0, [sp, #4]
	strb r0, [sp, #0x14]
	b _020cbcdc
_020cb9d4:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa6]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020cba38
_020cb9e8: ; jump table
	b _020cb9fc ; case 0
	b _020cba04 ; case 1
	b _020cba0c ; case 2
	b _020cba1c ; case 3
	b _020cba28 ; case 4
_020cb9fc:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cba04:
	str r0, [sp]
	b _020cba38
_020cba0c:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cba38
_020cba1c:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cba38
_020cba28:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	strb r0, [sp, #0x15]
_020cba38:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020cbcdc
	ldr r2, [r0, #4]
	ldr r1, _020cbd1c ; =0x424f4d42
	cmp r2, r1
	bne _020cbcdc
	bl func_ov14_02122e98
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020cba64:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa7]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cba78: ; jump table
	b _020cba90 ; case 0
	b _020cba98 ; case 1
	b _020cbaa0 ; case 2
	b _020cbab0 ; case 3
	b _020cbabc ; case 4
	b _020cbaf8 ; case 5
_020cba90:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cba98:
	str r0, [sp]
	b _020cbcdc
_020cbaa0:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cbcdc
_020cbab0:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbabc:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020cbcdc
	ldr r3, [r0, #4]
	ldr r1, _020cbd20 ; =0x41525257
	cmp r3, r1
	bne _020cbcdc
	ldrsh r1, [r5, #0x78]
	bl func_ov14_02120ac4
	mov r0, #0
	strb r0, [sp, #0x15]
	b _020cbcdc
_020cbaf8:
	str r2, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbb04:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cbb18: ; jump table
	b _020cbb30 ; case 0
	b _020cbb38 ; case 1
	b _020cbb40 ; case 2
	b _020cbb50 ; case 3
	b _020cbb5c ; case 4
	b _020cbba8 ; case 5
_020cbb30:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cbb38:
	str r0, [sp]
	b _020cbcdc
_020cbb40:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cbcdc
_020cbb50:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbb5c:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020cbcdc
	ldr r2, [r0, #4]
	ldr r1, _020cbd24 ; =0x524f5045
	cmp r2, r1
	bne _020cbcdc
	bl func_ov14_02123904
	ldr r0, _020cbd10 ; =data_027e0ffc
	add r2, r5, #0x48
	mov r1, #0xf6
	mov r3, #0
	bl func_ov00_020ceacc
	mov r0, #0
	strb r0, [sp, #0x15]
	b _020cbcdc
_020cbba8:
	str r2, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbbb4:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xaa]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cbbc8: ; jump table
	b _020cbbdc ; case 0
	b _020cbbe4 ; case 1
	b _020cbbec ; case 2
	b _020cbbfc ; case 3
	b _020cbc08 ; case 4
_020cbbdc:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cbbe4:
	str r0, [sp]
	b _020cbcdc
_020cbbec:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cbcdc
_020cbbfc:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbc08:
	mov r1, #3
	str r1, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbc18:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xa9]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cbc2c: ; jump table
	b _020cbc40 ; case 0
	b _020cbc48 ; case 1
	b _020cbc50 ; case 2
	b _020cbc60 ; case 3
	b _020cbc6c ; case 4
_020cbc40:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cbc48:
	str r0, [sp]
	b _020cbcdc
_020cbc50:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cbcdc
_020cbc60:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbc6c:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbc7c:
	add r1, r5, #0x100
	ldrsb r1, [r1, #0xab]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020cbcdc
_020cbc90: ; jump table
	b _020cbca4 ; case 0
	b _020cbcac ; case 1
	b _020cbcb4 ; case 2
	b _020cbcc4 ; case 3
	b _020cbcd0 ; case 4
_020cbca4:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
_020cbcac:
	str r0, [sp]
	b _020cbcdc
_020cbcb4:
	mov r1, #0xff
	str r0, [sp]
	strb r1, [sp, #4]
	b _020cbcdc
_020cbcc4:
	str r0, [sp]
	strb r0, [sp, #4]
	b _020cbcdc
_020cbcd0:
	mov r1, #5
	str r1, [sp]
	strb r0, [sp, #4]
_020cbcdc:
	add r1, sp, #0
	mov r0, r5
	bl func_ov00_020cbd28
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x10]
	mov r0, #1
	strb r1, [r5, #0x190]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020cb60c
_020cbd0c: .word 0x5342454d
_020cbd10: .word data_027e0ffc
_020cbd14: .word 0x424d524e
_020cbd18: .word 0x0000019d
_020cbd1c: .word 0x424f4d42
_020cbd20: .word 0x41525257
_020cbd24: .word 0x524f5045

	.global func_ov00_020cbd28
	arm_func_start func_ov00_020cbd28
func_ov00_020cbd28: ; 0x020cbd28
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020cc138
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r4]
	add r0, r5, #0x100
	str r1, [r5, #0x1c0]
	ldrsh r2, [r0, #0xae]
	mov r1, #1
	strh r2, [r0, #0x92]
	strb r1, [r5, #0x11d]
	ldrh r0, [r0, #0xb0]
	tst r0, #4
	beq _020cbd80
	mov r0, r5
	ldr r2, [r0]
	add r1, r4, #8
	ldr r2, [r2, #0xf8]
	blx r2
_020cbd80:
	ldr r0, [r5, #0x1c0]
	add r0, r0, #1
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020cbec0
_020cbd94: ; jump table
	b _020cbdb0 ; case 0
	b _020cbdb8 ; case 1
	b _020cbde4 ; case 2
	b _020cbe74 ; case 3
	b _020cbdfc ; case 4
	b _020cbe38 ; case 5
	b _020cbea0 ; case 6
_020cbdb0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020cbdb8:
	add r2, r5, #0x100
	ldrsh ip, [r2, #0x20]
	ldrb r3, [r4, #4]
	mov r0, r5
	add r1, r4, #8
	sub r3, ip, r3
	strh r3, [r2, #0x20]
	ldrb r2, [r4, #0x14]
	ldrb r3, [r4, #0x15]
	bl func_ov00_020cb348
	b _020cbec0
_020cbde4:
	ldrb r2, [r4, #0x14]
	ldrb r3, [r4, #0x15]
	mov r0, r5
	add r1, r4, #8
	bl func_ov00_020cb348
	b _020cbec0
_020cbdfc:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _020cbe20
	bl _ZN10PlayerBase14GetEquipShieldEv
	add r2, r5, #0x48
	mov r1, #0x18c
	mov r3, #0
	bl func_ov00_020c070c
	b _020cbec0
_020cbe20:
	bl _ZN10PlayerBase14GetEquipShieldEv
	add r2, r5, #0x48
	mvn r1, #0
	mov r3, #0
	bl func_ov00_020c070c
	b _020cbec0
_020cbe38:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _020cbe5c
	bl _ZN10PlayerBase14GetEquipShieldEv
	add r2, r5, #0x48
	mov r1, #0x18c
	mov r3, #0
	bl func_ov00_020c070c
	b _020cbec0
_020cbe5c:
	bl _ZN10PlayerBase14GetEquipShieldEv
	add r2, r5, #0x48
	mvn r1, #0
	mov r3, #0
	bl func_ov00_020c070c
	b _020cbec0
_020cbe74:
	add r2, r5, #0x100
	ldrsh ip, [r2, #0x20]
	ldrb r3, [r4, #4]
	mov r0, r5
	add r1, r4, #8
	sub r3, ip, r3
	strh r3, [r2, #0x20]
	ldrb r2, [r4, #0x14]
	ldrb r3, [r4, #0x15]
	bl func_ov00_020cb348
	b _020cbec0
_020cbea0:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _020cbec0
	ldr r0, _020cbee0 ; =data_027e0ffc
	ldr r1, _020cbee4 ; =0x00000193
	add r2, r5, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
_020cbec0:
	add r0, r5, #0x100
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	bgt _020cbed8
	mov r0, r5
	bl func_ov00_020cc244
_020cbed8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020cbd28
_020cbee0: .word data_027e0ffc
_020cbee4: .word 0x00000193

	.global func_ov00_020cbee8
	arm_func_start func_ov00_020cbee8
func_ov00_020cbee8: ; 0x020cbee8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x100
	ldrsh r2, [r1, #0x92]
	cmp r2, #0
	ble _020cc124
	sub r2, r2, #1
	strh r2, [r1, #0x92]
	ldrh r1, [r1, #0xb0]
	tst r1, #4
	beq _020cbf20
	ldr r1, [r0]
	ldr r1, [r1, #0xfc]
	blx r1
_020cbf20:
	ldr r0, [r4, #0x1c0]
	add r0, r0, #1
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020cc0d0
_020cbf34: ; jump table
	b _020cbf50 ; case 0
	b _020cbf64 ; case 1
	b _020cbf64 ; case 2
	b _020cbff0 ; case 3
	b _020cbf64 ; case 4
	b _020cbf64 ; case 5
	b _020cbf50 ; case 6
_020cbf50:
	mov r0, #0x1000
	str r0, [r4, #0x194]
	str r0, [r4, #0x198]
	str r0, [r4, #0x19c]
	b _020cc0d0
_020cbf64:
	add r0, r4, #0x100
	ldrsh r2, [r0, #0xae]
	ldrsh r0, [r0, #0x92]
	mov r1, r2, lsl #0xc
	sub r0, r2, r0
	mov r0, r0, lsl #0xc
	bl Divide
	ldr ip, [r4, #0x1b4]
	rsb r1, ip, #0x1000
	smull r3, r2, r1, r0
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	str r1, [r4, #0x194]
	ldr ip, [r4, #0x1b8]
	rsb r1, ip, #0x1000
	smull r3, r2, r1, r0
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	str r1, [r4, #0x198]
	ldr r3, [r4, #0x1bc]
	rsb r1, r3, #0x1000
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r4, #0x19c]
	b _020cc0d0
_020cbff0:
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x20]
	cmp r1, #0
	bgt _020cc01c
	ldr r0, [r4, #0x1b4]
	str r0, [r4, #0x194]
	ldr r0, [r4, #0x1b8]
	str r0, [r4, #0x198]
	ldr r0, [r4, #0x1bc]
	str r0, [r4, #0x19c]
	b _020cc0d0
_020cc01c:
	ldrsh r2, [r0, #0xae]
	ldrsh r1, [r0, #0x92]
	mov r0, r2, asr #0x1
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	mov r2, r0, asr #0x2
	ble _020cc054
	ldr r0, [r4, #0x1b4]
	str r0, [r4, #0x194]
	ldr r0, [r4, #0x1b8]
	str r0, [r4, #0x198]
	ldr r0, [r4, #0x1bc]
	str r0, [r4, #0x19c]
	b _020cc0d0
_020cc054:
	sub r0, r2, r1
	mov r0, r0, lsl #0xc
	mov r1, r2, lsl #0xc
	bl Divide
	ldr ip, [r4, #0x1b4]
	rsb r1, ip, #0x1000
	smull r3, r2, r1, r0
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	str r1, [r4, #0x194]
	ldr ip, [r4, #0x1b8]
	rsb r1, ip, #0x1000
	smull r3, r2, r1, r0
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	str r1, [r4, #0x198]
	ldr r3, [r4, #0x1bc]
	rsb r1, r3, #0x1000
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r4, #0x19c]
_020cc0d0:
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x92]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #0
	strb r1, [r4, #0x11d]
	ldr r1, [r4, #0x1c0]
	cmp r1, #1
	cmpne r1, #4
	bne _020cc104
	mov r0, r4
	bl func_ov00_020cb540
	ldmia sp!, {r4, pc}
_020cc104:
	ldrsh r0, [r0, #0x20]
	cmp r0, #0
	ldmgtia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc4]
	blx r1
	ldmia sp!, {r4, pc}
_020cc124:
	mov r0, #0x1000
	str r0, [r4, #0x194]
	str r0, [r4, #0x198]
	str r0, [r4, #0x19c]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cbee8

	.global func_ov00_020cc138
	arm_func_start func_ov00_020cc138
func_ov00_020cc138: ; 0x020cc138
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x92]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	bx lr
	arm_func_end func_ov00_020cc138

	.global func_ov00_020cc150
	arm_func_start func_ov00_020cc150
func_ov00_020cc150: ; 0x020cc150
	ldr ip, _020cc158 ; =func_ov00_020cb1e8
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cc150
_020cc158: .word func_ov00_020cb1e8

	.global func_ov00_020cc15c
	arm_func_start func_ov00_020cc15c
func_ov00_020cc15c: ; 0x020cc15c
	ldr ip, _020cc164 ; =func_ov00_020cb240
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cc15c
_020cc164: .word func_ov00_020cb240

	.global func_ov00_020cc168
	arm_func_start func_ov00_020cc168
func_ov00_020cc168: ; 0x020cc168
	add r0, r0, #0x100
	ldrsh r0, [r0, #0xc4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end func_ov00_020cc168

	.global func_ov00_020cc180
	arm_func_start func_ov00_020cc180
func_ov00_020cc180: ; 0x020cc180
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x48]
	ldr r0, _020cc1f4 ; =data_027e0e60
	str r1, [sp]
	ldr r1, [r4, #0x4c]
	ldr r0, [r0]
	str r1, [sp, #4]
	ldr r2, [r4, #0x50]
	add r1, sp, #0
	str r2, [sp, #8]
	mov r2, #1
	bl func_ov00_02083ee0
	ldr r1, [r4, #0x4c]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	beq _020cc1d8
	mov r0, r4
	bl func_ov00_020cc8bc
_020cc1d8:
	ldr r0, [r4, #4]
	add r1, r4, #0x48
	bl func_ov00_020c87f8
	mov r0, r4
	bl func_ov00_020c3180
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc180
_020cc1f4: .word data_027e0e60

	.global func_ov00_020cc1f8
	arm_func_start func_ov00_020cc1f8
func_ov00_020cc1f8: ; 0x020cc1f8
	ldr r2, [r0, #0x194]
	str r2, [r1]
	ldr r2, [r0, #0x198]
	str r2, [r1, #4]
	ldr r0, [r0, #0x19c]
	str r0, [r1, #8]
	bx lr
	arm_func_end func_ov00_020cc1f8

	.global func_ov00_020cc214
	arm_func_start func_ov00_020cc214
func_ov00_020cc214: ; 0x020cc214
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xc4]
	cmp r1, #0
	subgt r1, r1, #1
	strgth r1, [r0, #0xc4]
	bx lr
	arm_func_end func_ov00_020cc214

	.global func_ov00_020cc22c
	arm_func_start func_ov00_020cc22c
func_ov00_020cc22c: ; 0x020cc22c
	add r0, r0, #0x100
	ldrsh r0, [r0, #0xc4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end func_ov00_020cc22c

	.global func_ov00_020cc244
	arm_func_start func_ov00_020cc244
func_ov00_020cc244: ; 0x020cc244
	stmdb sp!, {r3, r4, r5, lr}
	add r1, r0, #0x100
	mov r2, #0
	add r5, r0, #0x1c8
	add r4, r0, #0x1d0
	strh r2, [r1, #0xc4]
	cmp r5, r4
	ldmeqia sp!, {r3, r4, r5, pc}
_020cc264:
	mov r0, r5
	bl func_ov00_020b7e6c
	add r5, r5, #4
	cmp r5, r4
	bne _020cc264
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cc244

	.global func_ov00_020cc27c
	arm_func_start func_ov00_020cc27c
func_ov00_020cc27c: ; 0x020cc27c
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r2, [r0, #0x48]
	ldr r1, _020cc2d0 ; =data_027e0e60
	str r2, [sp, #4]
	ldr r2, [r0, #0x4c]
	ldr r1, [r1]
	str r2, [sp, #8]
	ldr r3, [r0, #0x50]
	add r0, sp, #0
	add r2, sp, #4
	str r3, [sp, #0xc]
	bl func_ov00_02083fb0
	ldr r0, [sp]
	mov r0, r0, lsr #0x5
	and r0, r0, #3
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc27c
_020cc2d0: .word data_027e0e60

	.global func_ov00_020cc2d4
	arm_func_start func_ov00_020cc2d4
func_ov00_020cc2d4: ; 0x020cc2d4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020cc300 ; =data_027e0ffc
	ldr r1, _020cc304 ; =0x0000018e
	add r2, r4, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	mov r0, r4
	bl func_ov00_020cb300
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc2d4
_020cc300: .word data_027e0ffc
_020cc304: .word 0x0000018e

	.global func_ov00_020cc308
	arm_func_start func_ov00_020cc308
func_ov00_020cc308: ; 0x020cc308
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x94
	mov r4, r0
	add r0, sp, #0x14
	mov r1, r4
	bl func_ov00_020ca2c4
	mov r0, r4
	bl func_ov00_020cb314
	mov r0, #0
	ldr r1, _020cc3e0 ; =0x0000ffff
	strh r0, [sp, #0x60]
	strb r0, [sp, #0x82]
	strb r0, [sp, #0x83]
	strb r0, [sp, #0x84]
	strb r0, [sp, #0x85]
	strb r0, [sp, #0x8c]
	strb r0, [sp, #0x8d]
	strb r0, [sp, #0x8e]
	strb r0, [sp, #0x8f]
	strb r0, [sp, #0x90]
	strb r0, [sp, #0x91]
	strh r1, [sp, #0x58]
	strh r1, [sp, #0x5a]
	strh r1, [sp, #0x5c]
	strh r1, [sp, #0x5e]
	ldr r1, [r4, #0x48]
	add r3, r4, #0x8c
	str r1, [sp, #0x28]
	ldr r1, [r4, #0x4c]
	mov r5, #2
	str r1, [sp, #0x2c]
	ldr r1, [r4, #0x50]
	add lr, sp, #0x14
	str r1, [sp, #0x30]
	ldr r1, [r4, #0x54]
	ldr ip, _020cc3e4 ; =data_027e0e60
	str r1, [sp, #0x1c]
	ldr r2, [r4, #0x58]
	add r1, sp, #0x34
	str r2, [sp, #0x20]
	ldr r6, [r4, #0x5c]
	add r2, sp, #0x28
	str r6, [sp, #0x24]
	str r3, [sp]
	ldr r4, [r4, #8]
	add r3, sp, #0x1c
	stmib sp, {r4, r5, lr}
	str r0, [sp, #0x10]
	ldr r0, [ip]
	bl func_01ffbe78
	add r0, sp, #0x14
	bl func_ov00_02081f4c
	add sp, sp, #0x94
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc308
_020cc3e0: .word 0x0000ffff
_020cc3e4: .word data_027e0e60

	.global func_ov00_020cc3e8
	arm_func_start func_ov00_020cc3e8
func_ov00_020cc3e8: ; 0x020cc3e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cc3e8

	.global func_ov00_020cc3fc
	arm_func_start func_ov00_020cc3fc
func_ov00_020cc3fc: ; 0x020cc3fc
	stmdb sp!, {r4, lr}
	ldr r1, _020cc434 ; =data_027e0ff4
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #0x1e8]
	add r2, r4, #0x1ec
	bl func_ov05_0210d6dc
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x48
	add r1, r4, #0x1ec
	mov r2, r0
	bl func_01ff9bc4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc3fc
_020cc434: .word data_027e0ff4

	.global func_ov00_020cc438
	arm_func_start func_ov00_020cc438
func_ov00_020cc438: ; 0x020cc438
	stmdb sp!, {r4, lr}
	ldr r1, _020cc458 ; =data_027e0ff4
	mov r4, r0
	ldr r0, [r1]
	mov r1, r4
	bl func_ov05_0210d3d8
	str r0, [r4, #0x1e8]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc438
_020cc458: .word data_027e0ff4

	.global func_ov00_020cc45c
	arm_func_start func_ov00_020cc45c
func_ov00_020cc45c: ; 0x020cc45c
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1f8
	add r1, r4, #8
	bl func_ov00_020ccf0c
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r4, #0x48
	ldr r0, [r4, #0x210]
	add r1, r4, #0x1f8
	mov r3, r2
	bl func_01ff9e64
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cc45c

	.global func_ov00_020cc490
	arm_func_start func_ov00_020cc490
func_ov00_020cc490: ; 0x020cc490
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, #0
	mov r3, r0
	str r4, [sp, #0x18]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr lr, [r3, #0x88]
	ldr r0, [r3, #0x7c]
	mov r2, lr, lsl #0x1
	str r0, [sp, #0xc]
	ldr r1, [r3, #0x80]
	add r0, sp, #0xc
	str r1, [sp, #0x10]
	ldr ip, [r3, #0x84]
	sub r1, r4, #1
	str ip, [sp, #0x14]
	str lr, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r0, [sp]
	ldr r2, [r3, #0x20c]
	ldr r0, _020cc510 ; =data_027e0ff8
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r0]
	add r1, r3, #8
	add r2, r3, #0x48
	add r3, r3, #0x54
	bl func_ov05_021082e4
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc490
_020cc510: .word data_027e0ff8

	.global func_ov00_020cc514
	arm_func_start func_ov00_020cc514
func_ov00_020cc514: ; 0x020cc514
	ldr ip, _020cc520 ; =func_ov00_020ccf40
	add r0, r0, #0x1f8
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cc514
_020cc520: .word func_ov00_020ccf40

	.global func_ov00_020cc524
	arm_func_start func_ov00_020cc524
func_ov00_020cc524: ; 0x020cc524
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	add r0, r4, #0x60
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r4, #0x20c]
	mvn r0, #0
	cmp r1, r0
	beq _020cc5e4
	ldr r0, [r4, #0x210]
	cmp r0, #0
	ble _020cc5e4
	add r0, r4, #0x1f8
	add r1, r4, #8
	bl func_ov00_020ccf0c
	cmp r0, #0
	beq _020cc5e4
	ldr r3, [r4, #0x210]
	ldr r1, [r4, #0x1f8]
	mov r2, #0
	smull r1, ip, r3, r1
	ldr r0, [r4, #0x200]
	adds lr, r1, #0x800
	smull r1, r0, r3, r0
	adc r3, ip, #0
	adds r1, r1, #0x800
	mov ip, lr, lsr #0xc
	orr ip, ip, r3, lsl #20
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	cmp ip, #0
	cmpeq r2, #0
	str ip, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	cmpeq r1, #0
	beq _020cc5e4
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl func_ov00_020ca294
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	bl func_ov00_020ca294
	str r0, [sp, #0x14]
_020cc5e4:
	add r0, r4, #0x48
	add r1, sp, #0xc
	mov r2, r0
	bl func_01ff9bc4
	mov r0, r4
	mov r1, #0
	bl func_01fffd04
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cc524

	.global func_ov00_020cc608
	arm_func_start func_ov00_020cc608
func_ov00_020cc608: ; 0x020cc608
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x78
	sub sp, sp, #0x400
	ldr r3, _020cc6d8 ; =data_027e0764
	mov r2, #0
	ldr r4, [r3]
	ldmib r3, {r0, r5}
	umull lr, ip, r5, r4
	mla ip, r5, r0, ip
	ldr r0, [r3, #0xc]
	ldr r5, [r3, #0x10]
	mla ip, r0, r4, ip
	ldr r0, [r3, #0x14]
	adds r5, r5, lr
	adc lr, r0, ip
	str r5, [r3]
	mov r0, #0x64
	umull r4, ip, lr, r0
	mla ip, lr, r2, ip
	str lr, [r3, #4]
	mla ip, r2, r0, ip
	ldr r5, _020cc6dc ; =data_ov00_020dedf4
	add r4, sp, #0
	mov r6, r1
	mov lr, #0x47
_020cc66c:
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs lr, lr, #1
	bne _020cc66c
	add r1, sp, #0
	mov r0, #0x58
	mla r3, r6, r0, r1
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	mvn r0, #0
	mov r2, #0
_020cc698:
	ldr r1, [r3, r2, lsl #3]
	cmp r1, ip
	bgt _020cc6c0
	add r1, r3, r2, lsl #3
	ldr r1, [r1, #4]
	cmp ip, r1
	addlt sp, sp, #0x78
	addlt sp, sp, #0x400
	movlt r0, r2
	ldmltia sp!, {r4, r5, r6, pc}
_020cc6c0:
	add r2, r2, #1
	cmp r2, #0xb
	blt _020cc698
	add sp, sp, #0x78
	add sp, sp, #0x400
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc608
_020cc6d8: .word data_027e0764
_020cc6dc: .word data_ov00_020dedf4

	.global func_ov00_020cc6e0
	arm_func_start func_ov00_020cc6e0
func_ov00_020cc6e0: ; 0x020cc6e0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r4, r0
	add r0, sp, #4
	mov r5, r1
	bl func_ov00_020c1500
	mvn r1, #0
	add r0, sp, #4
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	bl func_ov00_020c3348
	ldr r1, [r4, #8]
	add r0, r5, #1
	str r1, [sp, #0x20]
	ldr r1, [r4, #0xc]
	cmp r0, #0xb
	str r1, [sp, #0x24]
	addls pc, pc, r0, lsl #2
	b _020cc89c
_020cc72c: ; jump table
	b _020cc89c ; case 0
	b _020cc75c ; case 1
	b _020cc784 ; case 2
	b _020cc798 ; case 3
	b _020cc7ac ; case 4
	b _020cc7c0 ; case 5
	b _020cc7d4 ; case 6
	b _020cc7e8 ; case 7
	b _020cc7fc ; case 8
	b _020cc824 ; case 9
	b _020cc84c ; case 10
	b _020cc874 ; case 11
_020cc75c:
	mov r1, #0
	str r1, [sp]
	ldr r0, _020cc8a4 ; =data_027e0fe8
	ldr r1, _020cc8a8 ; =0x48415254
	ldr r0, [r0]
	add r3, sp, #4
	add r2, r4, #0x48
	bl func_ov00_020c4048
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc784:
	mov r0, r4
	mov r1, #0
	bl func_ov00_020c3118
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc798:
	mov r0, r4
	mov r1, #1
	bl func_ov00_020c3118
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc7ac:
	mov r0, r4
	mov r1, #2
	bl func_ov00_020c3118
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc7c0:
	mov r0, r4
	mov r1, #3
	bl func_ov00_020c3118
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc7d4:
	mov r0, r4
	mov r1, #4
	bl func_ov00_020c3118
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc7e8:
	mov r0, r4
	mov r1, #5
	bl func_ov00_020c3118
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc7fc:
	mov r1, #0
	str r1, [sp]
	ldr r0, _020cc8a4 ; =data_027e0fe8
	ldr r1, _020cc8ac ; =0x464c414c
	ldr r0, [r0]
	add r3, sp, #4
	add r2, r4, #0x48
	bl func_ov00_020c4048
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc824:
	mov r1, #0
	str r1, [sp]
	ldr r0, _020cc8a4 ; =data_027e0fe8
	ldr r1, _020cc8b0 ; =0x464c424d
	ldr r0, [r0]
	add r3, sp, #4
	add r2, r4, #0x48
	bl func_ov00_020c4048
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc84c:
	mov r1, #0
	str r1, [sp]
	ldr r0, _020cc8a4 ; =data_027e0fe8
	ldr r1, _020cc8b4 ; =0x464c4254
	ldr r0, [r0]
	add r3, sp, #4
	add r2, r4, #0x48
	bl func_ov00_020c4048
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_020cc874:
	mov r0, #5
	strh r0, [sp, #4]
	mov r1, #0
	str r1, [sp]
	ldr r0, _020cc8a4 ; =data_027e0fe8
	ldr r1, _020cc8b8 ; =0x464c544d
	ldr r0, [r0]
	add r3, sp, #4
	add r2, r4, #0x48
	bl func_ov00_020c4048
_020cc89c:
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc6e0
_020cc8a4: .word data_027e0fe8
_020cc8a8: .word 0x48415254
_020cc8ac: .word 0x464c414c
_020cc8b0: .word 0x464c424d
_020cc8b4: .word 0x464c4254
_020cc8b8: .word 0x464c544d

	.global func_ov00_020cc8bc
	arm_func_start func_ov00_020cc8bc
func_ov00_020cc8bc: ; 0x020cc8bc
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x214]
	bl func_ov00_020cc608
	mov r1, r0
	mov r0, r4
	bl func_ov00_020cc6e0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cc8bc

	.global func_ov00_020cc8dc
	arm_func_start func_ov00_020cc8dc
func_ov00_020cc8dc: ; 0x020cc8dc
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x218]
	mvn r1, #0
	cmp r2, r1
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl func_ov00_020c198c
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cc8dc

	.global func_ov00_020cc908
	arm_func_start func_ov00_020cc908
func_ov00_020cc908: ; 0x020cc908
	stmdb sp!, {r4, lr}
	ldr r2, _020cc924 ; =data_027e0f74
	mov r4, r0
	ldr r0, [r2]
	bl func_ov00_02097810
	str r0, [r4, #0x218]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc908
_020cc924: .word data_027e0f74

	.global func_ov00_020cc928
	arm_func_start func_ov00_020cc928
func_ov00_020cc928: ; 0x020cc928
	ldr r1, [r0, #0x218]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020cc928

	.global func_ov00_020cc940
	arm_func_start func_ov00_020cc940
func_ov00_020cc940: ; 0x020cc940
	ldr r1, _020cc958 ; =data_027e0f74
	mov r2, r0
	ldr r0, [r1]
	ldr ip, _020cc95c ; =func_ov00_02097b9c
	ldr r1, [r2, #0x218]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cc940
_020cc958: .word data_027e0f74
_020cc95c: .word func_ov00_02097b9c

	.global func_ov00_020cc960
	arm_func_start func_ov00_020cc960
func_ov00_020cc960: ; 0x020cc960
	ldr r1, _020cc978 ; =data_027e0f74
	mov r2, r0
	ldr r0, [r1]
	ldr ip, _020cc97c ; =func_ov00_02097bcc
	ldr r1, [r2, #0x218]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cc960
_020cc978: .word data_027e0f74
_020cc97c: .word func_ov00_02097bcc

	.global func_ov00_020cc980
	arm_func_start func_ov00_020cc980
func_ov00_020cc980: ; 0x020cc980
	stmdb sp!, {r3, lr}
	ldr r1, _020cc9c0 ; =data_027e0f74
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x218]
	bl func_ov00_02097bac
	cmp r0, #0
	beq _020cc9b8
	ldr r0, _020cc9c0 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020cc9b8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc980
_020cc9c0: .word data_027e0f74

	.global func_ov00_020cc9c4
	arm_func_start func_ov00_020cc9c4
func_ov00_020cc9c4: ; 0x020cc9c4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr lr, [r4, #0x158]
	mov r3, #1
	ldr r2, [lr, #0x64]
	ldr r0, _020cca14 ; =data_ov00_020e9370
	str r2, [sp]
	ldrsh ip, [r4, #0x78]
	add r2, r4, #0x48
	str ip, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [lr, #0x60]
	bl func_ov05_02102c2c
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cc9c4
_020cca14: .word data_ov00_020e9370

	.global func_ov00_020cca18
	arm_func_start func_ov00_020cca18
func_ov00_020cca18: ; 0x020cca18
	ldr r2, [r0, #0x158]
	ldr ip, _020cca30 ; =func_ov00_020c56d8
	ldrsh r3, [r2, #0x6a]
	add r0, r0, #0x48
	ldr r2, [r2, #0x70]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cca18
_020cca30: .word func_ov00_020c56d8

	.global func_ov00_020cca34
	arm_func_start func_ov00_020cca34
func_ov00_020cca34: ; 0x020cca34
	ldr r2, [r0, #0x158]
	ldr ip, _020cca4c ; =func_ov00_020c56d8
	ldrsh r3, [r2, #0x6a]
	add r0, r0, #0x48
	ldr r2, [r2, #0x74]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cca34
_020cca4c: .word func_ov00_020c56d8

	.global func_ov00_020cca50
	arm_func_start func_ov00_020cca50
func_ov00_020cca50: ; 0x020cca50
	ldr ip, _020cca60 ; =func_ov00_020c5464
	ldr r1, _020cca64 ; =data_027e0f94
	add r0, r0, #0x48
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cca50
_020cca60: .word func_ov00_020c5464
_020cca64: .word data_027e0f94

	.global func_ov00_020cca68
	arm_func_start func_ov00_020cca68
func_ov00_020cca68: ; 0x020cca68
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	mov r4, r0
	ldr r2, [r4, #0x98]
	mov r5, r1
	cmp r2, #0
	addle sp, sp, #0x34
	movle r0, #0
	ldmleia sp!, {r4, r5, pc}
	add r1, sp, #0x24
	bl func_ov00_020c2b00
	add r3, sp, #0x18
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr ip, [sp, #0x28]
	ldr r3, [sp, #0x18]
	str ip, [sp, #0x1c]
	ldrh r0, [r4, #0x9c]
	ldr r1, [sp, #0x20]
	ldr r2, _020ccb00 ; =data_027e0e60
	bic r0, r0, #2
	mov r0, r0, lsl #0x10
	str r3, [sp, #0xc]
	str ip, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r1, [r4, #8]
	mov r0, r0, lsr #0x10
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0xa0]
	add r1, sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r2]
	ldr r3, [r4, #0x98]
	add r2, sp, #0x24
	bl func_01ffe1cc
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020cca68
_020ccb00: .word data_027e0e60

	.global func_ov00_020ccb04
	arm_func_start func_ov00_020ccb04
func_ov00_020ccb04: ; 0x020ccb04
	ldr ip, _020ccb10 ; =func_ov00_020cca68
	ldr r1, _020ccb14 ; =data_027e0f94
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020ccb04
_020ccb10: .word func_ov00_020cca68
_020ccb14: .word data_027e0f94

	.global func_ov00_020ccb18
	arm_func_start func_ov00_020ccb18
func_ov00_020ccb18: ; 0x020ccb18
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r3, r0
	add ip, sp, #0
	mov r4, r1
	add r0, r3, #0x48
	mov lr, r2
	ldmia r0, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020ccb94
_020ccb48: ; jump table
	b _020ccb58 ; case 0
	b _020ccb68 ; case 1
	b _020ccb78 ; case 2
	b _020ccb88 ; case 3
_020ccb58:
	ldr r0, [sp]
	add r0, r0, lr
	str r0, [sp]
	b _020ccb94
_020ccb68:
	ldr r0, [sp]
	sub r0, r0, lr
	str r0, [sp]
	b _020ccb94
_020ccb78:
	ldr r0, [sp, #8]
	add r0, r0, lr
	str r0, [sp, #8]
	b _020ccb94
_020ccb88:
	ldr r0, [sp, #8]
	sub r0, r0, lr
	str r0, [sp, #8]
_020ccb94:
	add r1, sp, #0
	mov r0, r3
	bl func_ov00_020cca68
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov00_020ccb18

	.global func_ov00_020ccba8
	arm_func_start func_ov00_020ccba8
func_ov00_020ccba8: ; 0x020ccba8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	cmp r1, r2
	bne _020ccbc4
	bl func_ov00_020ccc60
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_020ccbc4:
	mov ip, #0
	mov r4, ip
	add r3, sp, #0
_020ccbd0:
	cmp ip, r1
	cmpne ip, r2
	strne ip, [r3, r4, lsl #2]
	add ip, ip, #1
	addne r4, r4, #1
	cmp ip, #4
	blt _020ccbd0
	ldr r1, _020ccc5c ; =data_027e0764
	ldr r3, [r1]
	ldmib r1, {r2, ip}
	umull r4, lr, ip, r3
	mla lr, ip, r2, lr
	ldr r2, [r1, #0xc]
	ldr ip, [r1, #0x10]
	mla lr, r2, r3, lr
	ldr r2, [r1, #0x14]
	adds r3, ip, r4
	adc r2, r2, lr
	str r3, [r1]
	tst r2, #0x80000000
	str r2, [r1, #4]
	movne r4, #1
	moveq r4, #0
	add r1, sp, #0
	ldr r5, [r1, r4, lsl #2]
	mov r2, #0x1000
	mov r1, r5
	bl func_ov00_020ccb18
	cmp r0, #0
	addne r0, sp, #0
	rsbne r1, r4, #1
	ldrne r5, [r0, r1, lsl #2]
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ccba8
_020ccc5c: .word data_027e0764

	.global func_ov00_020ccc60
	arm_func_start func_ov00_020ccc60
func_ov00_020ccc60: ; 0x020ccc60
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl func_0202bae0
	mov r4, r0
	mov r0, r6
	mov r1, r4
	mov r2, #0x1000
	bl func_ov00_020ccb18
	cmp r0, #0
	beq _020ccca4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl func_ov00_020ccba8
	mov r4, r0
_020ccca4:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020ccc60

	.global func_ov00_020cccac
	arm_func_start func_ov00_020cccac
func_ov00_020cccac: ; 0x020cccac
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _020ccd20 ; =data_027e0764
	mov r1, #0
	ldr ip, [r3]
	ldmib r3, {r2, lr}
	umull r5, r4, lr, ip
	mla r4, lr, r2, r4
	ldr r2, [r3, #0xc]
	ldr lr, [r3, #0x10]
	mla r4, r2, ip, r4
	ldr r2, [r3, #0x14]
	adds r5, lr, r5
	adc r4, r2, r4
	str r5, [r3]
	mov r6, r1, lsl #0x2
	orr r6, r6, r4, lsr #30
	mov r1, r6
	mov r2, #0x1000
	mov r5, r0
	str r4, [r3, #4]
	bl func_ov00_020ccb18
	cmp r0, #0
	beq _020ccd18
	mov r0, r5
	mov r1, r6
	bl func_ov00_020ccc60
	mov r6, r0
_020ccd18:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cccac
_020ccd20: .word data_027e0764

	.global func_ov00_020ccd24
	arm_func_start func_ov00_020ccd24
func_ov00_020ccd24: ; 0x020ccd24
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1d8
	bl func_ov00_02081f4c
	ldr r3, _020ccd60 ; =func_ov00_020b7d74
	add r0, r4, #0x1c8
	mov r1, #2
	mov r2, #4
	bl func_0204f754
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ccd24
_020ccd60: .word func_ov00_020b7d74

	.global func_ov00_020ccd64
	arm_func_start func_ov00_020ccd64
func_ov00_020ccd64: ; 0x020ccd64
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1d8
	bl func_ov00_02081f4c
	ldr r3, _020ccd98 ; =func_ov00_020b7d74
	add r0, r4, #0x1c8
	mov r1, #2
	mov r2, #4
	bl func_0204f754
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ccd64
_020ccd98: .word func_ov00_020b7d74

	.global func_ov00_020ccd9c
	arm_func_start func_ov00_020ccd9c
func_ov00_020ccd9c: ; 0x020ccd9c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ccd9c

	.global func_ov00_020ccdb8
	arm_func_start func_ov00_020ccdb8
func_ov00_020ccdb8: ; 0x020ccdb8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ccdb8

	.global func_ov00_020ccdd4
	arm_func_start func_ov00_020ccdd4
func_ov00_020ccdd4: ; 0x020ccdd4
	strh r1, [r0]
	strb r2, [r0, #2]
	ldr r1, [sp]
	strb r3, [r0, #3]
	ldrh r2, [sp, #4]
	str r1, [r0, #4]
	ldr r1, [sp, #8]
	strh r2, [r0, #0x4e]
	ldr r2, [sp, #0xc]
	str r1, [r0, #8]
	ldr r1, [sp, #0x10]
	str r2, [r0, #0xc]
	ldr r2, [sp, #0x14]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x18]
	str r2, [r0, #0x14]
	ldr r2, [sp, #0x1c]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x20]
	str r2, [r0, #0x1c]
	ldr r2, [sp, #0x24]
	str r1, [r0, #0x20]
	ldr r1, [sp, #0x28]
	str r2, [r0, #0x24]
	ldr r2, [sp, #0x2c]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0x30]
	str r2, [r0, #0x2c]
	ldr r2, [sp, #0x34]
	str r1, [r0, #0x30]
	ldr r1, [sp, #0x38]
	str r2, [r0, #0x34]
	ldr r2, [sp, #0x3c]
	str r1, [r0, #0x38]
	ldr r1, [sp, #0x40]
	str r2, [r0, #0x3c]
	ldr r2, [sp, #0x44]
	str r1, [r0, #0x40]
	ldrsh r1, [sp, #0x48]
	str r2, [r0, #0x44]
	ldr r2, [sp, #0x4c]
	strh r1, [r0, #0x4c]
	ldr r1, [sp, #0x50]
	str r2, [r0, #0x48]
	ldr r2, [sp, #0x54]
	str r1, [r0, #0x50]
	ldr r1, [sp, #0x58]
	str r2, [r0, #0x54]
	ldr r2, [sp, #0x5c]
	str r1, [r0, #0x58]
	ldr r1, [sp, #0x60]
	str r2, [r0, #0x5c]
	ldr r2, [sp, #0x64]
	str r1, [r0, #0x60]
	ldrsh r1, [sp, #0x68]
	str r2, [r0, #0x64]
	ldrsh r2, [sp, #0x6c]
	strh r1, [r0, #0x68]
	ldr r1, [sp, #0x70]
	strh r2, [r0, #0x6a]
	ldrsh r2, [sp, #0x74]
	str r1, [r0, #0x70]
	ldr r1, [sp, #0x78]
	strh r2, [r0, #0x6c]
	ldr r2, [sp, #0x7c]
	str r1, [r0, #0x74]
	ldr r1, [sp, #0x80]
	str r2, [r0, #0x78]
	str r1, [r0, #0x7c]
	bx lr
	arm_func_end func_ov00_020ccdd4

	.global func_ov00_020cceec
	arm_func_start func_ov00_020cceec
func_ov00_020cceec: ; 0x020cceec
	bx lr
	arm_func_end func_ov00_020cceec

	.global func_ov00_020ccef0
	arm_func_start func_ov00_020ccef0
func_ov00_020ccef0: ; 0x020ccef0
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end func_ov00_020ccef0

	.global func_ov00_020ccf0c
	arm_func_start func_ov00_020ccf0c
func_ov00_020ccf0c: ; 0x020ccf0c
	stmdb sp!, {r4, lr}
	ldr r2, _020ccf3c ; =data_027e0ff8
	mov r4, r0
	ldr r0, [r2]
	mov r2, r4
	add r3, r4, #0x10
	bl func_ov05_0210826c
	str r0, [r4, #0xc]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ccf0c
_020ccf3c: .word data_027e0ff8

	.global func_ov00_020ccf40
	arm_func_start func_ov00_020ccf40
func_ov00_020ccf40: ; 0x020ccf40
	ldr r1, [r0, #0xc]
	mov r2, #0
	cmp r1, #0
	ble _020ccf74
	ldr r3, [r0, #0x10]
_020ccf54:
	ldr r1, [r3, r2, lsl #3]
	cmp r1, #0
	moveq r0, #1
	bxeq lr
	ldr r1, [r0, #0xc]
	add r2, r2, #1
	cmp r2, r1
	blt _020ccf54
_020ccf74:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020ccf40

	.global func_ov00_020ccf7c
	arm_func_start func_ov00_020ccf7c
func_ov00_020ccf7c: ; 0x020ccf7c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	ldr r0, [r8, #0xc]
	mov r7, r1
	mov r6, r2
	cmp r0, #0
	mov r4, #0
	ble _020cd004
	ldr sb, _020cd00c ; =data_027e0fe4
	mov r5, r4
_020ccfa4:
	ldr r1, [r8, #0x10]
	ldr r0, [sb]
	add r1, r1, r5
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020ccff0
	ldr r0, [r0, #4]
	cmp r7, r0
	bne _020ccff0
	cmp r6, #0
	beq _020ccfe8
	ldr r1, [r8, #0x10]
	ldr r0, [r1, r4, lsl #3]
	add r1, r1, r4, lsl #3
	str r0, [r6]
	ldr r0, [r1, #4]
	str r0, [r6, #4]
_020ccfe8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020ccff0:
	ldr r0, [r8, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #8
	blt _020ccfa4
_020cd004:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020ccf7c
_020cd00c: .word data_027e0fe4

	.global func_ov00_020cd010
	arm_func_start func_ov00_020cd010
func_ov00_020cd010: ; 0x020cd010
	str r1, [r0]
	mov r0, #0
	str r0, [r1, #0x60]
	str r0, [r1, #0x64]
	str r0, [r1, #0x68]
	bx lr
	arm_func_end func_ov00_020cd010

	.global func_ov00_020cd028
	arm_func_start func_ov00_020cd028
func_ov00_020cd028: ; 0x020cd028
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x60]
	ldr r0, [r4]
	str r1, [r0, #0x68]
	ldr r0, [r4]
	bl func_ov00_020c3070
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cd028

	.global func_ov00_020cd060
	arm_func_start func_ov00_020cd060
func_ov00_020cd060: ; 0x020cd060
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	add r0, r0, #0x78
	bl func_0202b154
	mov r0, r4
	bl func_ov00_020cd028
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cd060

	.global func_ov00_020cd080
	arm_func_start func_ov00_020cd080
func_ov00_020cd080: ; 0x020cd080
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	bl func_ov00_020c2974
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl func_ov00_020cd060
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cd080

	.global func_ov00_020cd0a8
	arm_func_start func_ov00_020cd0a8
func_ov00_020cd0a8: ; 0x020cd0a8
	str r1, [r0]
	ldr r1, [r2]
	str r1, [r0, #4]
	ldr r1, [r2, #4]
	str r1, [r0, #8]
	ldr r1, [r2, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end func_ov00_020cd0a8

	.global func_ov00_020cd0c8
	arm_func_start func_ov00_020cd0c8
func_ov00_020cd0c8: ; 0x020cd0c8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr ip, [r4]
	str r2, [sp]
	add r0, ip, #0x60
	str r0, [sp, #4]
	add r0, ip, #0x78
	str r0, [sp, #8]
	mov r2, r1
	ldrsh r3, [ip, #0x78]
	add r0, ip, #0x48
	add r1, r4, #4
	bl func_ov00_020c64d8
	ldr r0, [r4]
	bl func_ov00_020c3070
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov00_020cd0c8

	.global func_ov00_020cd120
	arm_func_start func_ov00_020cd120
func_ov00_020cd120: ; 0x020cd120
	stmdb sp!, {r3, lr}
	ldr ip, [r1]
	str ip, [r0, #4]
	ldr ip, [r1, #4]
	str ip, [r0, #8]
	ldr ip, [r1, #8]
	mov r1, r2
	mov r2, r3
	str ip, [r0, #0xc]
	bl func_ov00_020cd0c8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cd120

	.global func_ov00_020cd14c
	arm_func_start func_ov00_020cd14c
func_ov00_020cd14c: ; 0x020cd14c
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1], #4
	bl func_ov00_020c288c
	ldr r1, _020cd170 ; =0x0000019a
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cd14c
_020cd170: .word 0x0000019a

	.global func_ov00_020cd174
	arm_func_start func_ov00_020cd174
func_ov00_020cd174: ; 0x020cd174
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	ldr r0, _020cd274 ; =data_027e0f94
	add r4, sp, #0xc
	str r1, [r6]
	mov r5, r2
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r6]
	mov r1, r4
	add r2, sp, #0
	add r0, r0, #0x48
	mov r4, r3
	bl func_01ff9bf8
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	cmp r5, #0
	mov r0, r0, asr #0x10
	beq _020cd204
	cmp r5, #1
	beq _020cd1e0
	cmp r5, #2
	beq _020cd1f4
	b _020cd204
_020cd1e0:
	add r0, r0, #0x55
	add r0, r0, #0x1500
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	b _020cd204
_020cd1f4:
	sub r0, r0, #0x55
	sub r0, r0, #0x1500
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
_020cd204:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	mov r3, r1, lsl #0x1
	ldr r2, _020cd278 ; =data_02050f54
	mov r0, r0, lsl #0x1
	str r5, [r6, #0x10]
	ldrsh r5, [r2, r0]
	ldrsh lr, [r2, r3]
	add r1, sp, #0
	mov ip, #0
	add r2, sp, #0xc
	mov r0, r4
	mov r3, r1
	str lr, [sp]
	str ip, [sp, #4]
	str r5, [sp, #8]
	bl func_01ff9e64
	ldr r0, [sp]
	str r0, [r6, #4]
	ldr r0, [sp, #4]
	str r0, [r6, #8]
	ldr r0, [sp, #8]
	str r0, [r6, #0xc]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cd174
_020cd274: .word data_027e0f94
_020cd278: .word data_02050f54

	.global func_ov00_020cd27c
	arm_func_start func_ov00_020cd27c
func_ov00_020cd27c: ; 0x020cd27c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	bl func_ov00_020c2974
	ldr r3, [r4]
	mov r1, r0
	mov r2, r5
	add r0, r3, #0x78
	bl func_0202b154
	ldr r1, [r4]
	add r2, sp, #0
	add r0, r4, #4
	add r1, r1, #0x48
	bl func_01ff9bf8
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0
	mov r1, r6
	mov r2, r0
	bl func_0202da8c
	ldr r1, [sp]
	ldr r0, [r4]
	str r1, [r0, #0x60]
	ldr r1, [sp, #8]
	ldr r0, [r4]
	str r1, [r0, #0x68]
	ldr r0, [r4]
	bl func_ov00_020c3070
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end func_ov00_020cd27c

	.global func_ov00_020cd310
	arm_func_start func_ov00_020cd310
func_ov00_020cd310: ; 0x020cd310
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1], #4
	bl func_ov00_020c288c
	ldr r1, _020cd334 ; =0x0000019a
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cd310
_020cd334: .word 0x0000019a

	.global func_ov00_020cd338
	arm_func_start func_ov00_020cd338
func_ov00_020cd338: ; 0x020cd338
	ldr r2, [r0]
	ldrb r0, [r2, #0x110]
	cmp r0, #0
	movne r0, #1
	bxne lr
	ldr r1, [r2, #0x20c]
	mvn r0, #0
	cmp r1, r0
	beq _020cd374
	arm_func_end func_ov00_020cd338

	.global func_ov00_020cd35c
	arm_func_start func_ov00_020cd35c
func_ov00_020cd35c: ; 0x020cd35c
	ldr r0, [r2, #0x210]
	cmp r0, #0
	ldrgt r0, [r2, #0x204]
	cmpgt r0, #0
	movgt r0, #1
	bxgt lr
_020cd374:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cd35c

	.global func_ov00_020cd37c
	arm_func_start func_ov00_020cd37c
func_ov00_020cd37c: ; 0x020cd37c
	str r1, [r0]
	bx lr
	arm_func_end func_ov00_020cd37c

	.global func_ov00_020cd384
	arm_func_start func_ov00_020cd384
func_ov00_020cd384: ; 0x020cd384
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr ip, _020cd4e0 ; =data_027e0f94
	add r6, sp, #0xc
	mov r5, r0
	mov r4, r1
	mov r7, r2
	ldmia ip, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r0, [r5]
	mov r6, r3
	bl func_ov00_020c2974
	ldr r3, [r5]
	mov r1, r0
	mov r2, r7
	add r0, r3, #0x78
	bl func_0202b154
	ldr r0, [r5]
	add r1, sp, #0xc
	add r0, r0, #0x48
	add r2, sp, #0
	bl func_01ff9bf8
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	cmp r6, #0
	beq _020cd430
	cmp r6, #1
	beq _020cd40c
	cmp r6, #2
	beq _020cd420
	b _020cd430
_020cd40c:
	ldrsh r0, [sp, #0x34]
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	b _020cd430
_020cd420:
	ldrsh r0, [sp, #0x34]
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
_020cd430:
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r2, r0, lsl #0x1
	add r0, r2, #1
	ldr r1, _020cd4e4 ; =data_02050f54
	mov r2, r2, lsl #0x1
	ldrsh r6, [r1, r2]
	mov r0, r0, lsl #0x1
	ldrsh ip, [r1, r0]
	add r1, sp, #0
	mov lr, #0
	ldr r0, [sp, #0x30]
	add r2, sp, #0xc
	mov r3, r1
	str r6, [sp]
	str lr, [sp, #4]
	str ip, [sp, #8]
	bl func_01ff9e64
	ldr r1, [r5]
	add r0, sp, #0
	add r1, r1, #0x48
	mov r2, r0
	bl func_01ff9bf8
	add r0, sp, #0
	mov r3, #0
	mov r1, r4
	mov r2, r0
	str r3, [sp, #4]
	bl func_0202da8c
	ldr r1, [sp]
	ldr r0, [r5]
	str r1, [r0, #0x60]
	ldr r1, [sp, #8]
	ldr r0, [r5]
	str r1, [r0, #0x68]
	ldr r0, [r5]
	bl func_ov00_020c3070
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020cd384
_020cd4e0: .word data_027e0f94
_020cd4e4: .word data_02050f54

	.global func_ov00_020cd4e8
	arm_func_start func_ov00_020cd4e8
func_ov00_020cd4e8: ; 0x020cd4e8
	ldr r2, [r0]
	ldrb r0, [r2, #0x110]
	cmp r0, #0
	movne r0, #1
	bxne lr
	ldr r1, [r2, #0x20c]
	mvn r0, #0
	cmp r1, r0
	beq _020cd524
	ldr r0, [r2, #0x210]
	cmp r0, #0
	ldrgt r0, [r2, #0x204]
	cmpgt r0, #0
	movgt r0, #1
	bxgt lr
_020cd524:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cd4e8

	.global func_ov00_020cd52c
	arm_func_start func_ov00_020cd52c
func_ov00_020cd52c: ; 0x020cd52c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	str r1, [r4]
	ldr r0, [r2]
	ldr ip, _020cd624 ; =data_027e0764
	str r0, [r4, #0x18]
	ldr r1, [r2, #4]
	ldr r0, _020cd628 ; =data_02050f54
	str r1, [r4, #0x1c]
	ldr r1, [r2, #8]
	mov lr, #0
	str r1, [r4, #0x20]
	str r3, [r4, #0x30]
	ldr r2, [ip]
	ldmib ip, {r1, r3}
	umull r6, r5, r3, r2
	mla r5, r3, r1, r5
	ldr r1, [ip, #0xc]
	ldr r3, [ip, #0x10]
	mla r5, r1, r2, r5
	ldr r1, [ip, #0x14]
	adds r2, r3, r6
	adc r1, r1, r5
	mov r3, r1, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	mov r3, r3, asr #0x4
	mov r5, r3, lsl #0x1
	add r3, r5, #1
	str r2, [ip]
	str r1, [ip, #4]
	mov r5, r5, lsl #0x1
	mov r2, r3, lsl #0x1
	ldrsh r3, [r0, r5]
	ldrsh r0, [r0, r2]
	str lr, [sp, #4]
	str r3, [sp]
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	mov r0, r0, lsl #0x1
	add r2, r4, #0x18
	add r3, r4, #0x24
	bl func_01ff9e64
	mov r0, #0x1e
	strh r0, [r4, #0x34]
	ldr r1, [r4]
	add r0, r4, #4
	bl func_ov00_020cd010
	ldr r1, [r4]
	add r0, r4, #8
	add r2, r4, #0x24
	bl func_ov00_020cd0a8
	ldr r0, [r4]
	bl func_ov00_020c29d8
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cd52c
_020cd624: .word data_027e0764
_020cd628: .word data_02050f54

	.global func_ov00_020cd62c
	arm_func_start func_ov00_020cd62c
func_ov00_020cd62c: ; 0x020cd62c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldrsh r0, [r4, #0x34]
	mov r5, r1
	mov r6, r2
	cmp r0, #0
	ble _020cd690
	sub r0, r0, #1
	strh r0, [r4, #0x34]
	ldr r0, [r4]
	add r1, r4, #0x24
	bl func_ov00_020c2938
	mov r5, r0
	mov r1, r5
	mov r2, r6
	add r0, r4, #4
	bl func_ov00_020cd060
	ldr r0, [r4]
	add sp, sp, #0x24
	ldrsh r0, [r0, #0x78]
	cmp r5, r0
	moveq r0, #0
	streqh r0, [r4, #0x34]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020cd690:
	mov r2, r5
	mov r3, r6
	add r0, r4, #8
	add r1, r4, #0x24
	bl func_ov00_020cd120
	ldr r0, [r4]
	mov r1, r5
	bl func_ov00_020c29ec
	cmp r0, #0
	ldr r0, [r4]
	beq _020cd7d4
	add r1, sp, #0x18
	add r0, r0, #0x148
	bl func_ov00_020ce18c
	ldr r2, [r4]
	ldr r0, [r4, #0x30]
	add r1, sp, #0x18
	add r2, r2, #0x48
	add r3, r4, #0x18
	bl func_01ff9e64
	ldr r0, [r4]
	bl func_ov00_020c29d8
	ldr r1, [r4]
	add r0, r4, #0x18
	add r1, r1, #0x48
	add r2, sp, #0xc
	bl func_01ff9bf8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	bl func_01ffa0f4
	ldr r1, _020cd8d8 ; =data_027e0764
	mov r0, r0, lsl #0x10
	ldr r6, [r1]
	ldmib r1, {r5, r8}
	umull sl, sb, r8, r6
	mla sb, r8, r5, sb
	ldr r7, [r1, #0xc]
	ldr ip, [r1, #0x10]
	mla sb, r7, r6, sb
	ldr fp, [r1, #0x14]
	adds r7, ip, sl
	ldr r5, _020cd8d8 ; =data_027e0764
	adc r6, fp, sb
	str r7, [r5]
	str r6, [r5, #4]
	ldr r5, _020cd8dc ; =0x00001c73
	mov r1, #0
	umull r5, r7, r6, r5
	mov r5, #0
	mla r7, r6, r5, r7
	mov r6, r5
	ldr r5, _020cd8dc ; =0x00001c73
	str r1, [sp, #0x10]
	mla r7, r6, r5, r7
	ldr r5, _020cd8e0 ; =0xfffff1c7
	ldr lr, _020cd8e4 ; =data_02050f54
	add r5, r7, r5
	add r0, r5, r0, asr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r6, r0, lsl #0x1
	mov r0, r6, lsl #0x1
	ldrsh r5, [lr, r0]
	add r0, r6, #1
	mov r0, r0, lsl #0x1
	ldrsh r0, [lr, r0]
	str r5, [sp, #0xc]
	add r1, sp, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x30]
	add r2, r4, #0x18
	add r3, r4, #0x24
	mov r0, r0, lsl #0x1
	bl func_01ff9e64
	mov r0, #0x1e
	add sp, sp, #0x24
	strh r0, [r4, #0x34]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020cd7d4:
	add r1, r4, #0x18
	bl func_ov00_020c288c
	ldr r1, [r4, #0x30]
	cmp r0, r1
	addle sp, sp, #0x24
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4]
	add r2, sp, #0
	add r0, r4, #0x18
	add r1, r1, #0x48
	bl func_01ff9bf8
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	ldr fp, _020cd8d8 ; =data_027e0764
	mov r0, r0, lsl #0x10
	ldr r6, [fp, #8]
	ldr lr, [fp]
	ldr ip, [fp, #4]
	umull r8, r7, r6, lr
	mla r7, r6, ip, r7
	ldr r5, [fp, #0xc]
	ldr sl, [fp, #0x10]
	mla r7, r5, lr, r7
	ldr sb, [fp, #0x14]
	adds r5, sl, r8
	adc r6, sb, r7
	stmia fp, {r5, r6}
	ldr r5, _020cd8dc ; =0x00001c73
	mov r1, #0
	umull r5, r7, r6, r5
	mov r5, #0
	mla r7, r6, r5, r7
	mov r6, r5
	ldr r5, _020cd8dc ; =0x00001c73
	str r1, [sp, #4]
	mla r7, r6, r5, r7
	ldr r5, _020cd8e0 ; =0xfffff1c7
	add r1, sp, #0
	add r5, r7, r5
	add r0, r5, r0, asr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r7, r0, lsl #0x1
	ldr r0, _020cd8e4 ; =data_02050f54
	mov r5, r7, lsl #0x1
	ldrsh r6, [r0, r5]
	add r0, r7, #1
	mov r5, r0, lsl #0x1
	ldr r0, _020cd8e4 ; =data_02050f54
	str r6, [sp]
	ldrsh r0, [r0, r5]
	add r2, r4, #0x18
	add r3, r4, #0x24
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	mov r0, r0, lsl #0x1
	bl func_01ff9e64
	mov r0, #0x1e
	strh r0, [r4, #0x34]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020cd62c
_020cd8d8: .word data_027e0764
_020cd8dc: .word 0x00001c73
_020cd8e0: .word 0xfffff1c7
_020cd8e4: .word data_02050f54

	.global func_ov00_020cd8e8
	arm_func_start func_ov00_020cd8e8
func_ov00_020cd8e8: ; 0x020cd8e8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	str r1, [r0]
	ldrh r4, [r1, #0x78]
	ldr r5, _020cd964 ; =data_02050f54
	ldr ip, [sp, #0x18]
	mov r4, r4, asr #0x4
	mov r6, r4, lsl #0x1
	mov r4, r6, lsl #0x1
	ldrsh r4, [r5, r4]
	add lr, r6, #1
	mov lr, lr, lsl #0x1
	smull r7, r6, r4, r3
	adds r7, r7, #0x800
	ldrsh lr, [r5, lr]
	str r2, [r1, #0x64]
	adc r4, r6, #0
	smull r2, r1, lr, r3
	adds r2, r2, #0x800
	mov r5, r7, lsr #0xc
	orr r5, r5, r4, lsl #20
	ldr r3, [r0]
	rsb r4, r5, #0
	str r4, [r3, #0x60]
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [r0]
	rsb r2, r2, #0
	str r2, [r1, #0x68]
	str ip, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020cd8e8
_020cd964: .word data_02050f54

	.global func_ov00_020cd968
	arm_func_start func_ov00_020cd968
func_ov00_020cd968: ; 0x020cd968
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r2, #0x64]
	sub r0, r1, r0
	str r0, [r2, #0x64]
	ldr r2, [r4]
	ldr r1, [r2, #0x70]
	ldr r0, [r2, #0x64]
	rsb r1, r1, #0
	cmp r0, r1
	strlt r1, [r2, #0x64]
	ldr r1, [r4]
	mov r0, #1
	ldrb r5, [r1, #0x9f]
	strb r0, [r1, #0x9f]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	ldr r0, [r4]
	strb r5, [r0, #0x9f]
	ldr r1, [r4]
	ldrb r0, [r1, #0x110]
	cmp r0, #0
	ldreqb r0, [r1, #0x112]
	cmpeq r0, #0
	ldreqb r0, [r1, #0x113]
	cmpeq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r1, #0x60]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	str r0, [r1, #0x60]
	ldr r1, [r4]
	ldr r0, [r1, #0x68]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	str r0, [r1, #0x68]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cd968

	.global func_ov00_020cda0c
	arm_func_start func_ov00_020cda0c
func_ov00_020cda0c: ; 0x020cda0c
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [sp, #0x2c]
	str r1, [r4]
	str r0, [r4, #4]
	ldr r1, [r4]
	add r0, sp, #0x20
	add r2, sp, #0
	add r1, r1, #0x48
	bl func_01ff9bf8
	ldrsh r5, [sp, #0x30]
	ldr r0, [sp]
	mov r1, r5
	bl func_02002c14
	ldr r2, [r4]
	mov r1, r5
	str r0, [r2, #0x60]
	ldr r0, [sp, #8]
	bl func_02002c14
	ldr r2, [r4]
	mov r1, r5
	str r0, [r2, #0x68]
	ldr r0, [sp, #4]
	bl func_02002c14
	ldr r1, [r4, #4]
	ldr r2, [r4]
	mul r3, r1, r5
	add r1, r3, r3, lsr #31
	add r0, r0, r1, asr #1
	str r0, [r2, #0x64]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl func_01ffa0f4
	ldr r1, [r4]
	strh r0, [r1, #0x78]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov00_020cda0c

	.global func_ov00_020cdab0
	arm_func_start func_ov00_020cdab0
func_ov00_020cdab0: ; 0x020cdab0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r2, #0x64]
	sub r0, r1, r0
	str r0, [r2, #0x64]
	ldr r2, [r4]
	ldr r1, [r2, #0x70]
	ldr r0, [r2, #0x64]
	rsb r1, r1, #0
	cmp r0, r1
	strlt r1, [r2, #0x64]
	ldr r2, [r4]
	add r0, r2, #0x48
	add r1, r2, #0x60
	add r2, r2, #0x48
	bl func_01ff9bc4
	ldr r2, [r4]
	ldr r0, [r2, #0x64]
	cmp r0, #0
	ldmgeia sp!, {r3, r4, r5, pc}
	ldrh r5, [r2, #0x9c]
	mov r0, #2
	mov r1, #0
	strh r0, [r2, #0x9c]
	ldr r0, [r4]
	bl func_01fffd04
	ldr r0, [r4]
	strh r5, [r0, #0x9c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cdab0

	.global func_ov00_020cdb2c
	arm_func_start func_ov00_020cdb2c
func_ov00_020cdb2c: ; 0x020cdb2c
	str r1, [r0]
	bx lr
	arm_func_end func_ov00_020cdb2c

	.global func_ov00_020cdb34
	arm_func_start func_ov00_020cdb34
func_ov00_020cdb34: ; 0x020cdb34
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldr r0, [r4]
	mov r5, r1
	bl func_ov00_020c2974
	ldr r3, [r4]
	mov r1, r0
	mov r2, r5
	add r0, r3, #0x78
	bl func_0202b154
	ldr r0, [r4]
	bl func_ov00_020c3070
	ldr r1, [r4]
	mov r0, #1
	ldrb r5, [r1, #0x9f]
	strb r0, [r1, #0x9f]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	ldr r0, [r4]
	strb r5, [r0, #0x9f]
	ldr r2, [r4]
	ldrb r0, [r2, #0x110]
	cmp r0, #0
	ldreqb r0, [r2, #0x112]
	cmpeq r0, #0
	ldreqb r0, [r2, #0x113]
	cmpeq r0, #0
	beq _020cdbbc
	mov r1, #0
	str r1, [r2, #0x60]
	ldr r0, [r4]
	str r1, [r0, #0x68]
_020cdbbc:
	ldr r0, [r4]
	ldrb r0, [r0, #0x111]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr ip, _020cdca4 ; =data_027e0764
	mov r3, #0xcd
	ldr r1, [ip]
	ldmib ip, {r0, r2}
	umull r6, r5, r2, r1
	mla r5, r2, r0, r5
	ldr r0, [ip, #0xc]
	ldr r2, [ip, #0x10]
	mla r5, r0, r1, r5
	ldr r0, [ip, #0x14]
	adds r1, r2, r6
	adc r0, r0, r5
	mov r2, r0, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #0x4
	mov r6, r2, lsl #0x1
	add r2, r6, #1
	str r1, [ip]
	ldr r5, _020cdca8 ; =data_02050f54
	mov r6, r6, lsl #0x1
	ldrsh r7, [r5, r6]
	mov r2, r2, lsl #0x1
	ldrsh r2, [r5, r2]
	umull sb, r8, r7, r3
	mov r6, #0
	umull r5, lr, r2, r3
	str r0, [ip, #4]
	mla r8, r7, r6, r8
	mov r0, r7, asr #0x1f
	mla r8, r0, r3, r8
	adds r1, sb, #0x800
	adc r7, r8, #0
	mov r8, r1, lsr #0xc
	adds r1, r5, #0x800
	mla lr, r2, r6, lr
	mov r0, r2, asr #0x1f
	mla lr, r0, r3, lr
	ldr r2, [r4]
	orr r8, r8, r7, lsl #20
	str r8, [r2, #0x60]
	adc r0, lr, #0
	mov r1, r1, lsr #0xc
	str r6, [r2, #0x64]
	orr r1, r1, r0, lsl #20
	str r1, [r2, #0x68]
	ldr r0, [r4]
	rsb r1, r3, #0x400
	str r1, [r0, #0x64]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020cdb34
_020cdca4: .word data_027e0764
_020cdca8: .word data_02050f54

	.global func_ov00_020cdcac
	arm_func_start func_ov00_020cdcac
func_ov00_020cdcac: ; 0x020cdcac
	str r1, [r0]
	strh r2, [r0, #4]
	ldrsh r2, [r0, #4]
	cmp r2, #0
	blt _020cdcd0
	cmp r2, #0x4000
	movlt r1, #0x2000
	strlth r1, [r0, #4]
	blt _020cdcec
_020cdcd0:
	mov r1, #0x4000
	rsb r1, r1, #0
	cmp r2, r1
	sublt r1, r1, #0x2000
	strlth r1, [r0, #4]
	addge r1, r1, #0x2000
	strgeh r1, [r0, #4]
_020cdcec:
	mov r1, #0
	strh r1, [r0, #6]
	bx lr
	arm_func_end func_ov00_020cdcac

	.global func_ov00_020cdcf8
	arm_func_start func_ov00_020cdcf8
func_ov00_020cdcf8: ; 0x020cdcf8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4, #4]
	ldr ip, _020cddf4 ; =data_02050f54
	ldr r0, [r4]
	mov r2, r2, asr #0x4
	mov r2, r2, lsl #0x1
	mov r3, r2, lsl #0x1
	ldrsh r3, [ip, r3]
	add r2, r2, #1
	mov r2, r2, lsl #0x1
	ldrsh r2, [ip, r2]
	smull r3, ip, r1, r3
	adds lr, r3, #0x800
	smull r3, r2, r1, r2
	adc r1, ip, #0
	mov ip, lr, lsr #0xc
	orr ip, ip, r1, lsl #20
	adds r3, r3, #0x800
	str ip, [r0, #0x60]
	mov ip, #0
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	str ip, [r0, #0x64]
	orr r2, r2, r1, lsl #20
	str r2, [r0, #0x68]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	ldrsh r0, [r4, #6]
	cmp r0, #0
	subgt r0, r0, #1
	strgth r0, [r4, #6]
	ldr r1, [r4]
	ldrb r0, [r1, #0x110]
	cmp r0, #0
	ldreqb r0, [r1, #0x112]
	cmpeq r0, #0
	ldreqb r0, [r1, #0x113]
	cmpeq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r4, #6]
	cmp r0, #0
	ldmgtia sp!, {r4, pc}
	ldr r0, [r1, #0xc4]
	ldr r1, [r1, #0xcc]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl func_0202bc10
	bl func_0202bc04
	ldrsh r2, [r4, #4]
	mov r1, #5
	sub r2, r2, #0x8000
	strh r2, [r4, #4]
	ldrsh r2, [r4, #4]
	sub r0, r0, r2
	mov r0, r0, lsl #0x10
	add r0, r2, r0, asr #15
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cdcf8
_020cddf4: .word data_02050f54

	.global func_ov00_020cddf8
	arm_func_start func_ov00_020cddf8
func_ov00_020cddf8: ; 0x020cddf8
	str r1, [r0]
	strh r2, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	bx lr
	arm_func_end func_ov00_020cddf8

	.global func_ov00_020cde0c
	arm_func_start func_ov00_020cde0c
func_ov00_020cde0c: ; 0x020cde0c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	mov r5, r0
	ldrh r3, [r5, #4]
	ldr r6, _020cdfc4 ; =data_02050f54
	ldr r0, [r5]
	mov r3, r3, asr #0x4
	mov r3, r3, lsl #0x1
	mov r4, r3, lsl #0x1
	ldrsh r4, [r6, r4]
	add r3, r3, #1
	mov r3, r3, lsl #0x1
	ldrsh r3, [r6, r3]
	smull r4, r6, r1, r4
	adds ip, r4, #0x800
	smull r4, r3, r1, r3
	adc r1, r6, #0
	mov r6, ip, lsr #0xc
	orr r6, r6, r1, lsl #20
	adds r4, r4, #0x800
	str r6, [r0, #0x60]
	mov r6, #0
	adc r1, r3, #0
	mov r3, r4, lsr #0xc
	str r6, [r0, #0x64]
	orr r3, r3, r1, lsl #20
	str r3, [r0, #0x68]
	ldr r0, [r5]
	mov r4, r2
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	ldr r0, [r5]
	ldrb r1, [r0, #0x110]
	cmp r1, #0
	ldreqb r1, [r0, #0x112]
	cmpeq r1, #0
	ldreqb r1, [r0, #0x113]
	cmpeq r1, #0
	beq _020cdec8
	ldrsh r1, [r5, #4]
	mov r0, #0
	add sp, sp, #0x4c
	sub r1, r1, #0x2000
	strh r1, [r5, #4]
	strh r0, [r5, #6]
	ldmia sp!, {r3, r4, r5, r6, pc}
_020cdec8:
	ldrsh r1, [r5, #6]
	cmp r1, #0x18
	addge sp, sp, #0x4c
	ldmgeia sp!, {r3, r4, r5, r6, pc}
	add r1, sp, #0x3c
	bl func_ov00_020c2a0c
	ldrsh r0, [r5, #4]
	mov lr, r6
	ldr r1, _020cdfc4 ; =data_02050f54
	add r0, r0, #0x2000
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r2, r0, lsl #0x1
	add r0, r2, #1
	mov r2, r2, lsl #0x1
	ldrsh r6, [r1, r2]
	mov r0, r0, lsl #0x1
	ldrsh ip, [r1, r0]
	add r1, sp, #0x24
	add r2, sp, #0x3c
	add r3, sp, #0x30
	mov r0, r4
	str r6, [sp, #0x24]
	str lr, [sp, #0x28]
	str ip, [sp, #0x2c]
	bl func_01ff9e64
	ldr r1, [sp, #0x30]
	ldr ip, [sp, #0x34]
	ldr r4, [sp, #0x38]
	add r0, sp, #0x3c
	str r1, [sp, #0x18]
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	str ip, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r4, [r5]
	mov r0, #6
	str r0, [sp]
	mov r2, r3
	ldrh r3, [r4, #0x9c]
	ldr r0, _020cdfc8 ; =data_027e0e60
	add r1, sp, #0x18
	str r3, [sp, #4]
	ldr r3, [r4, #0xa0]
	str r3, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x48]
	bl func_01ffe1cc
	cmp r0, #0
	addne sp, sp, #0x4c
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldrsh r0, [r5, #4]
	add r0, r0, #0x2000
	strh r0, [r5, #4]
	ldrsh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cde0c
_020cdfc4: .word data_02050f54
_020cdfc8: .word data_027e0e60

	.global func_ov00_020cdfcc
	arm_func_start func_ov00_020cdfcc
func_ov00_020cdfcc: ; 0x020cdfcc
	stmdb sp!, {r4, lr}
	ldr r3, _020ce02c ; =data_027e0764
	str r1, [r0]
	ldr r2, [r3]
	ldmib r3, {r1, ip}
	umull r4, lr, ip, r2
	mla lr, ip, r1, lr
	ldr r1, [r3, #0xc]
	ldr ip, [r3, #0x10]
	mla lr, r1, r2, lr
	ldr r1, [r3, #0x14]
	adds r2, ip, r4
	adc r4, r1, lr
	str r2, [r3]
	mov r1, #3
	mov r2, #0
	umull ip, lr, r4, r1
	mla lr, r4, r2, lr
	mla lr, r2, r1, lr
	str r4, [r3, #4]
	str lr, [r0, #4]
	mov r1, #0xf
	strh r1, [r0, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cdfcc
_020ce02c: .word data_027e0764

	.global func_ov00_020ce030
	arm_func_start func_ov00_020ce030
func_ov00_020ce030: ; 0x020ce030
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrsh r0, [r4, #8]
	sub r0, r0, #1
	strh r0, [r4, #8]
	ldrsh r0, [r4, #8]
	cmp r0, #0
	bgt _020ce0a4
	mov r0, #0xf
	ldr ip, _020ce184 ; =data_027e0764
	strh r0, [r4, #8]
	ldr r3, [ip]
	ldmib ip, {r0, r5}
	umull r6, lr, r5, r3
	mla lr, r5, r0, lr
	ldr r0, [ip, #0xc]
	ldr r5, [ip, #0x10]
	mla lr, r0, r3, lr
	ldr r0, [ip, #0x14]
	adds r3, r5, r6
	adc r6, r0, lr
	str r3, [ip]
	mov r0, #3
	mov r3, #0
	umull r5, lr, r6, r0
	mla lr, r6, r3, lr
	mla lr, r3, r0, lr
	str r6, [ip, #4]
	str lr, [r4, #4]
_020ce0a4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020ce0e8
	cmp r0, #1
	beq _020ce0c4
	cmp r0, #2
	beq _020ce0d8
	b _020ce0e8
_020ce0c4:
	ldr r3, [r4]
	ldrsh r0, [r3, #0x78]
	add r0, r0, r2
	strh r0, [r3, #0x78]
	b _020ce0e8
_020ce0d8:
	ldr r3, [r4]
	ldrsh r0, [r3, #0x78]
	sub r0, r0, r2
	strh r0, [r3, #0x78]
_020ce0e8:
	ldr r0, [r4]
	ldr lr, _020ce188 ; =data_02050f54
	ldrh r2, [r0, #0x78]
	mov ip, #0
	mov r2, r2, asr #0x4
	mov r2, r2, lsl #0x1
	mov r3, r2, lsl #0x1
	ldrsh r3, [lr, r3]
	add r2, r2, #1
	mov r2, r2, lsl #0x1
	ldrsh r2, [lr, r2]
	smull r3, lr, r1, r3
	adds r5, r3, #0x800
	smull r3, r2, r1, r2
	adc r1, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r1, lsl #20
	adds r3, r3, #0x800
	str r5, [r0, #0x60]
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	str ip, [r0, #0x64]
	orr r2, r2, r1, lsl #20
	str r2, [r0, #0x68]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x104]
	blx r1
	ldr r1, [r4]
	ldrb r0, [r1, #0x110]
	cmp r0, #0
	ldreqb r0, [r1, #0x112]
	cmpeq r0, #0
	ldreqb r0, [r1, #0x113]
	cmpeq r0, #0
	ldrnesh r0, [r1, #0x78]
	subne r0, r0, #0x8000
	strneh r0, [r1, #0x78]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020ce030
_020ce184: .word data_027e0764
_020ce188: .word data_02050f54

	.global func_ov00_020ce18c
	arm_func_start func_ov00_020ce18c
func_ov00_020ce18c: ; 0x020ce18c
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	ldreq r1, [r2, #8]
	cmpeq r1, #0
	bne _020ce230
	ldr r3, _020ce27c ; =data_027e0764
	ldr ip, _020ce280 ; =data_02050f54
	ldr r1, [r3]
	ldmib r3, {r0, r2}
	umull r5, lr, r2, r1
	mla lr, r2, r0, lr
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mla lr, r0, r1, lr
	ldr r0, [r3, #0x14]
	adds r1, r2, r5
	adc r0, r0, lr
	mov r2, r0, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #0x4
	mov r2, r2, lsl #0x1
	mov lr, r2, lsl #0x1
	str r1, [r3]
	add r2, r2, #1
	mov r1, r2, lsl #0x1
	str r0, [r3, #4]
	ldrsh r2, [ip, lr]
	ldrsh r0, [ip, r1]
	mov r1, #0
	str r2, [r4]
	str r1, [r4, #4]
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
_020ce230:
	ldr r1, [r2, #8]
	bl func_01ffa0f4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	ldr r2, _020ce280 ; =data_02050f54
	mov r1, r1, lsl #0x1
	ldrsh r1, [r2, r1]
	mov r0, r0, lsl #0x1
	ldrsh r0, [r2, r0]
	str r1, [r4]
	mov r1, #0
	str r1, [r4, #4]
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ce18c
_020ce27c: .word data_027e0764
_020ce280: .word data_02050f54

	.global func_ov00_020ce284
	arm_func_start func_ov00_020ce284
func_ov00_020ce284: ; 0x020ce284
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r2, #8]
	ldr r3, [r0, #8]
	ldr r0, [r0]
	ldr r2, [r2]
	sub r4, r4, r3
	sub r2, r2, r0
	smull r0, r3, r2, r2
	adds r5, r0, #0x800
	smull r2, ip, r4, r4
	mov r0, #0
	adc r4, r3, r0
	adds lr, r2, #0x800
	smull r3, r2, r1, r1
	adc r1, ip, r0
	mov r5, r5, lsr #0xc
	mov ip, lr, lsr #0xc
	adds r3, r3, #0x800
	orr ip, ip, r1, lsl #20
	adc r1, r2, r0
	mov r2, r3, lsr #0xc
	orr r5, r5, r4, lsl #20
	add r3, r5, ip
	orr r2, r2, r1, lsl #20
	cmp r3, r2
	movle r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020ce284

	.global func_ov00_020ce2f0
	arm_func_start func_ov00_020ce2f0
func_ov00_020ce2f0: ; 0x020ce2f0
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #8]
	ldr r3, [r1, #8]
	ldr r2, [r0]
	ldr r0, [r1]
	sub ip, ip, r3
	sub r1, r2, r0
	smull r0, r2, r1, r1
	adds r3, r0, #0x800
	smull r1, r0, ip, ip
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	bl func_01ff9958
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020ce2f0

	.global func_ov00_020ce340
	arm_func_start func_ov00_020ce340
func_ov00_020ce340: ; 0x020ce340
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldr r4, [sl, #8]
	ldr r0, [r2, #8]
	ldr r5, [r2]
	sub r8, r0, r4
	smull r2, r0, r8, r8
	ldr r6, [sl]
	adds r4, r2, #0x800
	sub r7, r5, r6
	smull r2, r6, r7, r7
	adc r0, r0, #0
	adds sb, r2, #0x800
	mov r2, r4, lsr #0xc
	smull r5, r4, r1, r1
	adc r6, r6, #0
	adds r5, r5, #0x800
	mov sb, sb, lsr #0xc
	orr sb, sb, r6, lsl #20
	orr r2, r2, r0, lsl #20
	add r0, sb, r2
	adc r4, r4, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	cmp r0, r5
	mov sb, r3
	mov r6, r1
	mov r5, r1, asr #0x1f
	mov r1, #0
	movle r0, r1
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl func_01ff9958
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl func_02002c14
	mov r7, r0
	mov r0, r8
	mov r1, r4
	bl func_02002c14
	umull r3, r2, r6, r7
	mov r1, r7, asr #0x1f
	mla r2, r6, r1, r2
	mla r2, r5, r7, r2
	adds r3, r3, #0x800
	mov r1, r0, asr #0x1f
	adc r2, r2, #0
	mov r4, r3, lsr #0xc
	orr r4, r4, r2, lsl #20
	umull r3, r2, r6, r0
	mla r2, r6, r1, r2
	ldr r7, [sl]
	adds r1, r3, #0x800
	mla r2, r5, r0, r2
	add r4, r7, r4
	str r4, [sb]
	ldr r4, [sl, #8]
	adc r0, r2, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r4, r1
	str r0, [sb, #8]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end func_ov00_020ce340

	.global func_ov00_020ce440
	arm_func_start func_ov00_020ce440
func_ov00_020ce440: ; 0x020ce440
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	mov r5, r1
	mov r7, r2
	add r2, sp, #0x10
	mov r0, r5
	mov r1, r6
	mov r4, r3
	bl func_01ff9bf8
	add r0, sp, #0x10
	add r1, sp, #0
	bl func_01ff9d4c
	add r0, sp, #0
	mov r1, r7
	bl func_01ff9c2c
	rsb r1, r0, #0
	str r1, [sp, #0xc]
	add r0, sp, #0
	mov r1, r6
	bl func_01ff9c2c
	mov r7, r0
	add r0, sp, #0
	mov r1, r5
	bl func_01ff9c2c
	ldr r2, [sp, #0xc]
	sub r1, r7, r0
	add r0, r0, r2
	bl Divide
	rsbs r0, r0, #0
	movmi r0, #0
	bmi _020ce4c8
	cmp r0, #0x1000
	movgt r0, #0x1000
_020ce4c8:
	ldr ip, [r5]
	ldr r1, [r6]
	sub r1, r1, ip
	smull r3, r2, r1, r0
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	str r1, [r4]
	ldr ip, [r5, #4]
	ldr r1, [r6, #4]
	sub r1, r1, ip
	smull r3, r2, r1, r0
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	str r1, [r4, #4]
	ldr r3, [r5, #8]
	ldr r1, [r6, #8]
	sub r1, r1, r3
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r4, #8]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020ce440

	.global func_ov00_020ce548
	arm_func_start func_ov00_020ce548
func_ov00_020ce548: ; 0x020ce548
	stmdb sp!, {r3, lr}
	ldr r0, _020ce58c ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r0]
	add r0, sp, #0
	bl func_ov00_02093a1c
	ldr r0, [sp]
	mov r1, r0
	mov r0, r0, lsr #0x16
	and r0, r0, #1
	cmp r0, #1
	movne r0, r1, lsr #0x1e
	andne r0, r0, #1
	cmpne r0, #1
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020ce548
_020ce58c: .word data_027e0f6c

	.global func_ov00_020ce590
	arm_func_start func_ov00_020ce590
func_ov00_020ce590: ; 0x020ce590
	stmdb sp!, {r3, lr}
	ldr r0, _020ce5d4 ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r0]
	add r0, sp, #0
	bl func_ov00_02093a1c
	ldr r0, [sp]
	mov r1, r0
	mov r0, r0, lsr #0x16
	and r0, r0, #1
	cmp r0, #1
	movne r0, r1, lsr #0x1e
	andne r0, r0, #1
	cmpne r0, #1
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020ce590
_020ce5d4: .word data_027e0f6c

	.global func_ov00_020ce5d8
	arm_func_start func_ov00_020ce5d8
func_ov00_020ce5d8: ; 0x020ce5d8
	stmdb sp!, {r3, lr}
	mov r0, r1
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	cmp r0, #0
	moveq r1, #0
	ldrne r1, [r0, #0xc]
	mov r0, r1, lsr #0x16
	and r0, r0, #1
	cmp r0, #1
	movne r0, r1, lsr #0x1e
	andne r0, r0, #1
	cmpne r0, #1
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020ce5d8

	.global func_ov00_020ce61c
	arm_func_start func_ov00_020ce61c
func_ov00_020ce61c: ; 0x020ce61c
	ldr r2, _020ce62c ; =data_ov00_020e890c
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020ce61c
_020ce62c: .word data_ov00_020e890c

	.global func_ov00_020ce630
	arm_func_start func_ov00_020ce630
func_ov00_020ce630: ; 0x020ce630
	ldr r2, _020ce640 ; =data_ov00_020e890c
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020ce630
_020ce640: .word data_ov00_020e890c

	.global func_ov00_020ce644
	arm_func_start func_ov00_020ce644
func_ov00_020ce644: ; 0x020ce644
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020ce644

	.global func_ov00_020ce64c
	arm_func_start func_ov00_020ce64c
func_ov00_020ce64c: ; 0x020ce64c
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020ce6ac ; =data_027e0f6c
	ldrh r2, [r1]
	ldr r1, [r3]
	mov r4, r0
	add r0, sp, #4
	bl func_ov00_02093a1c
	ldr r0, [sp, #4]
	mov r1, r0, lsr #0x5
	and r1, r1, #3
	cmp r1, #2
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x4c]
	blx r2
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ce64c
_020ce6ac: .word data_027e0f6c

	.global func_ov00_020ce6b0
	arm_func_start func_ov00_020ce6b0
func_ov00_020ce6b0: ; 0x020ce6b0
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020ce6b0

	.global func_ov00_020ce6b8
	arm_func_start func_ov00_020ce6b8
func_ov00_020ce6b8: ; 0x020ce6b8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ce6b8

	.global func_ov00_020ce6d4
	arm_func_start func_ov00_020ce6d4
func_ov00_020ce6d4: ; 0x020ce6d4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ce6d4

	.global func_ov00_020ce6e8
	arm_func_start func_ov00_020ce6e8
func_ov00_020ce6e8: ; 0x020ce6e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ce6e8

	.global func_ov00_020ce704
	thumb_func_start func_ov00_020ce704
func_ov00_020ce704: ; 0x020ce704
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #4
	mov r2, #0x10
	str r0, [r4]
	blx func_020078f4
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x14]
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #0x18]
	mov r2, #0
	str r2, [r4, #0x1c]
	lsr r0, r0, #1
	str r0, [r4, #0x20]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	str r2, [r4, #0x28]
	str r2, [r4, #0x2c]
	str r2, [r4, #0x30]
	str r2, [r4, #0x34]
	add r4, #0x38
	strb r2, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020ce704

	.global func_ov00_020ce740
	arm_func_start func_ov00_020ce740
func_ov00_020ce740: ; 0x020ce740
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	ldr r1, _020ce8c4 ; =data_027e0618
	mov r7, r0
	ldrh r5, [r1, #0xf2]
	ldr r0, [r7]
	subs r0, r0, r5
	str r0, [r7]
	movmi r0, #0
	strmi r0, [r7]
	ldr r0, _020ce8c4 ; =data_027e0618
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	bne _020ce818
	mov r6, #0
	ldr sl, _020ce8c8 ; =data_ov00_020eec9c
	mov sb, #1
	mov r8, #0x3c
	mov r4, r6
_020ce78c:
	add r1, r7, r6, lsl #2
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _020ce7cc
	sub r0, r0, r5
	str r0, [r1, #4]
	cmp r0, #0
	bgt _020ce7cc
	str r4, [r1, #4]
	ldr r0, [r7]
	cmp r0, #0
	bne _020ce7cc
	mov r0, sl
	mov r1, sb
	bl func_ov00_020d77e4
	str r8, [r7]
_020ce7cc:
	add r6, r6, #1
	cmp r6, #4
	blt _020ce78c
	ldr r0, _020ce8c8 ; =data_ov00_020eec9c
	mov r1, #1
	bl func_ov00_020d7f18
	cmp r0, #0
	beq _020ce804
	ldr r0, _020ce8c8 ; =data_ov00_020eec9c
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _020ce804
	ldr r0, _020ce8cc ; =data_ov00_020eec68
	bl func_ov00_020d71a0
_020ce804:
	ldr r1, [r7, #0x14]
	cmp r1, #0
	blt _020ce818
	ldr r0, _020ce8c8 ; =data_ov00_020eec9c
	bl func_ov00_020d7d18
_020ce818:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	ble _020ce888
	cmp r0, #3
	mov r4, #0
	bgt _020ce84c
	ldr r1, _020ce8d0 ; =0x00000468
	ldr r2, _020ce8d4 ; =data_027e0f94
	mov r0, r7
	sub r3, r4, #2
	str r4, [sp]
	bl func_ov00_020cec60
	b _020ce888
_020ce84c:
	cmp r0, #6
	bgt _020ce870
	ldr r1, _020ce8d8 ; =0x00000469
	ldr r2, _020ce8d4 ; =data_027e0f94
	mov r0, r7
	sub r3, r4, #2
	str r4, [sp]
	bl func_ov00_020cec60
	b _020ce888
_020ce870:
	ldr r1, _020ce8dc ; =0x0000046a
	ldr r2, _020ce8d4 ; =data_027e0f94
	mov r0, r7
	sub r3, r4, #2
	str r4, [sp]
	bl func_ov00_020cec60
_020ce888:
	mov r4, #0
	str r4, [r7, #0x28]
	ldrb r0, [r7, #0x38]
	cmp r0, #0
	beq _020ce8b4
	ldr r1, _020ce8e0 ; =0x00000391
	mov r0, r7
	add r2, r7, #0x2c
	sub r3, r1, #0x394
	str r4, [sp]
	bl func_ov00_020cec60
_020ce8b4:
	mov r0, #0
	strb r0, [r7, #0x38]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020ce740
_020ce8c4: .word data_027e0618
_020ce8c8: .word data_ov00_020eec9c
_020ce8cc: .word data_ov00_020eec68
_020ce8d0: .word 0x00000468
_020ce8d4: .word data_027e0f94
_020ce8d8: .word 0x00000469
_020ce8dc: .word 0x0000046a
_020ce8e0: .word 0x00000391

	.global func_ov00_020ce8e4
	arm_func_start func_ov00_020ce8e4
func_ov00_020ce8e4: ; 0x020ce8e4
	cmp r1, #0
	movle r1, #1
	mov ip, #0
_020ce8f0:
	add r3, r0, ip, lsl #2
	ldr r2, [r3, #4]
	cmp r2, #0
	streq r1, [r3, #4]
	bxeq lr
	add ip, ip, #1
	cmp ip, #4
	blt _020ce8f0
	bx lr
	arm_func_end func_ov00_020ce8e4

	.global func_ov00_020ce914
	arm_func_start func_ov00_020ce914
func_ov00_020ce914: ; 0x020ce914
	ldr r2, _020ce96c ; =data_027e0f64
	ldr r3, [r2]
	ldr ip, [r3, #4]
	ldr r3, [ip, #0x26c]
	str r3, [r1]
	ldr r3, [ip, #0x270]
	str r3, [r1, #4]
	ldr r3, [ip, #0x274]
	str r3, [r1, #8]
	ldrb r0, [r0, #0x24]
	cmp r0, #0
	bne _020ce964
	ldr r0, [r2]
	ldr r2, [r0, #4]
	ldr r0, [r2, #0x260]
	str r0, [r1]
	ldr r0, [r2, #0x264]
	str r0, [r1, #4]
	ldr r0, [r2, #0x268]
	str r0, [r1, #8]
_020ce964:
	mov r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020ce914
_020ce96c: .word data_027e0f64

	.global func_ov00_020ce970
	arm_func_start func_ov00_020ce970
func_ov00_020ce970: ; 0x020ce970
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r1
	add r1, sp, #0
	mov r4, r0
	bl func_ov00_020ce914
	ldr r1, _020cea34 ; =data_027e0f64
	ldr r3, [r5]
	ldr r1, [r1]
	ldr r2, [sp]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #4]
	sub r2, r3, r2
	add r0, r0, #0x200
	ldrsh r0, [r0, #0x26]
	cmp r0, #0
	beq _020ce9e8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x1
	add r1, r0, #1
	ldr r0, _020cea38 ; =data_02050f54
	mov r1, r1, lsl #0x1
	ldrsh r0, [r0, r1]
	smull r1, r0, r2, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r2, r1, lsr #0xc
	orr r2, r2, r0, lsl #20
_020ce9e8:
	ldr r1, [r4, #0x20]
	mov r0, #0
	cmp r1, #0
	beq _020cea00
	mov r0, r2
	bl Divide
_020cea00:
	mov r0, r0, lsl #0x6
	add r0, r0, #0x800
	mov r1, r0, asr #0xc
	cmp r1, #0x3f
	movgt r1, #0x3f
	bgt _020cea24
	mvn r0, #0x3f
	cmp r1, r0
	movlt r1, r0
_020cea24:
	mov r0, r1, lsl #0x18
	mov r0, r0, asr #0x18
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020ce970
_020cea34: .word data_027e0f64
_020cea38: .word data_02050f54

	.global func_ov00_020cea3c
	arm_func_start func_ov00_020cea3c
func_ov00_020cea3c: ; 0x020cea3c
	mov r1, r0, asr #0x4
	ldr r0, _020cea7c ; =data_02050f54
	mov r1, r1, lsl #0x2
	ldrsh r0, [r0, r1]
	mov r0, r0, lsl #0x5
	add r0, r0, #0x800
	mov r1, r0, asr #0xc
	cmp r1, #0x1f
	movgt r1, #0x1f
	bgt _020cea70
	mvn r0, #0x1f
	cmp r1, r0
	movlt r1, r0
_020cea70:
	mov r0, r1, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020cea3c
_020cea7c: .word data_02050f54

	.global func_ov00_020cea80
	arm_func_start func_ov00_020cea80
func_ov00_020cea80: ; 0x020cea80
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	add r1, sp, #0
	mov r6, r0
	mov r4, r2
	bl func_ov00_020ce914
	add r0, sp, #0
	mov r1, r5
	bl func_01ff9ec0
	add r0, sp, #0
	mov r1, r5
	bl func_01ff9ec0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl func_ov00_020cedbc
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end func_ov00_020cea80

	.global func_ov00_020ceacc
	arm_func_start func_ov00_020ceacc
func_ov00_020ceacc: ; 0x020ceacc
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r2
	mov r7, r1
	mov r8, r0
	mov r1, r6
	mov r5, r3
	bl func_ov00_020ce970
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, #0
	bl func_ov00_020cea80
	str r5, [sp]
	mov r3, r0
	mov r1, r7
	mov r2, r4
	ldr r0, _020ceb20 ; =data_ov00_020eec9c
	bl func_ov00_020d7b80
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020ceacc
_020ceb20: .word data_ov00_020eec9c

	.global func_ov00_020ceb24
	arm_func_start func_ov00_020ceb24
func_ov00_020ceb24: ; 0x020ceb24
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _020cebc4 ; =data_ov00_020eec9c
	mov r4, r1
	ldr r1, [r3, #0x20]
	cmp r1, #0
	bne _020ceb9c
	ldr r1, _020cebc8 ; =0x00000107
	cmp r4, r1
	blo _020ceb74
	add r1, r1, #3
	cmp r4, r1
	bhi _020ceb74
	mov r1, r2
	mov r0, r3
	mov r2, #1
	mov r3, #0
	bl func_ov00_020d8510
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_020ceb74:
	mov r1, r2
	bl func_ov00_020ce970
	mov r2, r0
	mov r3, #0
	ldr r0, _020cebc4 ; =data_ov00_020eec9c
	mov r1, r4
	str r3, [sp]
	bl func_ov00_020d7b80
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_020ceb9c:
	mov r1, r2
	bl func_ov00_020ce970
	mov r2, r0
	mov r3, #0
	ldr r0, _020cebc4 ; =data_ov00_020eec9c
	mov r1, r4
	str r3, [sp]
	bl func_ov00_020d7b80
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020ceb24
_020cebc4: .word data_ov00_020eec9c
_020cebc8: .word 0x00000107

	.global func_ov00_020cebcc
	arm_func_start func_ov00_020cebcc
func_ov00_020cebcc: ; 0x020cebcc
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r4, r1
	bl func_ov00_020cea3c
	mov r2, r0
	mov r3, #0
	ldr r0, _020cec04 ; =data_ov00_020eec9c
	mov r1, r4
	str r3, [sp]
	bl func_ov00_020d7b80
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cebcc
_020cec04: .word data_ov00_020eec9c

	.global func_ov00_020cec08
	arm_func_start func_ov00_020cec08
func_ov00_020cec08: ; 0x020cec08
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, r2
	mov r7, r1
	mov r8, r0
	mov r1, r6
	mov r5, r3
	bl func_ov00_020ce970
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, #0
	bl func_ov00_020cea80
	stmia sp, {r0, r5}
	ldr r0, _020cec5c ; =data_ov00_020eec9c
	mov r2, r7
	mov r3, r4
	mvn r1, #0
	bl func_ov00_020d7d3c
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020cec08
_020cec5c: .word data_ov00_020eec9c

	.global func_ov00_020cec60
	arm_func_start func_ov00_020cec60
func_ov00_020cec60: ; 0x020cec60
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r0, _020cecd0 ; =data_ov00_020eec9c
	mov r6, r2
	mov r7, r1
	mov r5, r3
	bl func_ov00_020d7f34
	mov r2, r0
	mov r0, r8
	mov r1, r6
	bl func_ov00_020cea80
	ldr r1, _020cecd4 ; =0x000002fd
	mov r4, r0
	cmp r7, r1
	mov r0, r8
	mov r1, r6
	moveq r4, #0
	bl func_ov00_020ce970
	mov r3, r0
	ldr ip, [sp, #0x20]
	ldr r0, _020cecd0 ; =data_ov00_020eec9c
	mov r2, r7
	bic r1, r5, #0x80000000
	stmia sp, {r4, ip}
	bl func_ov00_020d7d3c
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020cec60
_020cecd0: .word data_ov00_020eec9c
_020cecd4: .word 0x000002fd

	.global func_ov00_020cecd8
	arm_func_start func_ov00_020cecd8
func_ov00_020cecd8: ; 0x020cecd8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _020ced5c ; =data_027e0e60
	mov r6, r0
	ldr r0, [r4]
	mov r5, r1
	mov r4, r2
	mov r7, r3
	bl func_ov00_0208335c
	ldr r2, [sp, #0x20]
	mov r1, r4
	mla r3, r2, r0, r7
	mov r0, r6
	orr r8, r3, #0x80000000
	bl func_ov00_020ce970
	mov r7, r0
	ldr r0, _020ced60 ; =data_ov00_020eec9c
	mov r1, r5
	bl func_ov00_020d7f34
	mov r1, r4
	mov r2, r0
	mov r0, r6
	bl func_ov00_020cea80
	mov r1, r8
	mov r2, r5
	mov r3, r7
	str r0, [sp]
	ldr r4, [sp, #0x24]
	ldr r0, _020ced60 ; =data_ov00_020eec9c
	str r4, [sp, #4]
	bl func_ov00_020d7d3c
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020cecd8
_020ced5c: .word data_027e0e60
_020ced60: .word data_ov00_020eec9c

	.global func_ov00_020ced64
	arm_func_start func_ov00_020ced64
func_ov00_020ced64: ; 0x020ced64
	ldr ip, _020ced74 ; =func_ov00_020d8510
	ldr r0, _020ced78 ; =data_ov00_020eec9c
	bic r2, r2, #0x80000000
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020ced64
_020ced74: .word func_ov00_020d8510
_020ced78: .word data_ov00_020eec9c

	.global func_ov00_020ced7c
	arm_func_start func_ov00_020ced7c
func_ov00_020ced7c: ; 0x020ced7c
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _020cedb4 ; =data_027e0e60
	mov r5, r2
	ldr r0, [r0]
	mov r4, r3
	mov r6, r1
	bl func_ov00_0208335c
	mla r2, r4, r0, r5
	ldr r3, [sp, #0x10]
	ldr r0, _020cedb8 ; =data_ov00_020eec9c
	mov r1, r6
	orr r2, r2, #0x80000000
	bl func_ov00_020d8510
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020ced7c
_020cedb4: .word data_027e0e60
_020cedb8: .word data_ov00_020eec9c

	.global func_ov00_020cedbc
	arm_func_start func_ov00_020cedbc
func_ov00_020cedbc: ; 0x020cedbc
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x18]
	cmp r2, #0
	ldr r2, [r0, #0x1c]
	movne r3, r3, lsl #0x1
	cmp r2, r3
	mov r0, #0
	beq _020cede8
	sub r0, r1, r2
	sub r1, r3, r2
	bl Divide
_020cede8:
	rsb r0, r0, r0, lsl #8
	add r0, r0, #0x800
	mov r0, r0, asr #0xc
	cmp r0, #0xff
	movgt r0, #0xff
	bgt _020cee08
	cmp r0, #0
	movlt r0, #0
_020cee08:
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cedbc

	.global func_ov00_020cee10
	arm_func_start func_ov00_020cee10
func_ov00_020cee10: ; 0x020cee10
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	cmp ip, #0x20
	ldmgeia sp!, {r3, pc}
	mov r2, #0xc
	mul r3, ip, r2
	add ip, r0, #4
	ldr r2, [r1]
	add lr, ip, r3
	str r2, [ip, r3]
	ldr r2, [r1, #4]
	str r2, [lr, #4]
	ldr r1, [r1, #8]
	str r1, [lr, #8]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cee10

	.global func_ov00_020cee58
	arm_func_start func_ov00_020cee58
func_ov00_020cee58: ; 0x020cee58
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	mov r4, #0
	ble _020ceed8
	add sb, r8, #4
_020cee80:
	mov r0, r7
	mov r1, sb
	bl func_01ff9ec0
	cmp r0, r6
	bgt _020ceec4
	cmp r5, #0
	beq _020ceebc
	mov r0, #0xc
	mla r1, r4, r0, r8
	ldr r0, [r1, #4]
	str r0, [r5]
	ldr r0, [r1, #8]
	str r0, [r5, #4]
	ldr r0, [r1, #0xc]
	str r0, [r5, #8]
_020ceebc:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020ceec4:
	ldr r0, [r8]
	add r4, r4, #1
	cmp r4, r0
	add sb, sb, #0xc
	blt _020cee80
_020ceed8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end func_ov00_020cee58

	.global func_ov00_020ceee0
	arm_func_start func_ov00_020ceee0
func_ov00_020ceee0: ; 0x020ceee0
	ldrb r1, [r0]
	mov r2, #0
	eor r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #1]
	eor r1, r1, #1
	strb r1, [r0, #1]
	ldrb r1, [r0]
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #4]
	str r2, [r0]
	bx lr
	arm_func_end func_ov00_020ceee0

	.global func_ov00_020cef10
	arm_func_start func_ov00_020cef10
func_ov00_020cef10: ; 0x020cef10
	ldrb r2, [r0]
	ldr ip, _020cef24 ; =func_ov00_020cee10
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cef10
_020cef24: .word func_ov00_020cee10

	.global func_ov00_020cef28
	arm_func_start func_ov00_020cef28
func_ov00_020cef28: ; 0x020cef28
	stmdb sp!, {r3, lr}
	ldrb ip, [r0, #1]
	add r0, r0, ip, lsl #2
	ldr r0, [r0, #4]
	bl func_ov00_020cee58
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cef28

	.global func_ov00_020cef40
	arm_func_start func_ov00_020cef40
func_ov00_020cef40: ; 0x020cef40
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	bx lr
	arm_func_end func_ov00_020cef40

	.global func_ov00_020cef50
	arm_func_start func_ov00_020cef50
func_ov00_020cef50: ; 0x020cef50
	stmdb sp!, {r3, lr}
	ldr r0, _020cef94 ; =data_027e0618
	mov r3, #0
	strb r3, [r0, #0x101]
	cmp r1, #0
	beq _020cef84
	ldr r0, _020cef98 ; =data_ov00_020ee734
	blx func_ov00_020d6594
	ldr r0, _020cef94 ; =data_027e0618
	mov r1, #1
	mov r2, #0
	blx func_0202cec8
	ldmia sp!, {r3, pc}
_020cef84:
	ldr r0, _020cef98 ; =data_ov00_020ee734
	mov r1, r2
	blx func_ov00_020d656c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cef50
_020cef94: .word data_027e0618
_020cef98: .word data_ov00_020ee734

	.global func_ov00_020cef9c
	arm_func_start func_ov00_020cef9c
func_ov00_020cef9c: ; 0x020cef9c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf4bc
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #8]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cef9c

	.global func_ov00_020cefbc
	arm_func_start func_ov00_020cefbc
func_ov00_020cefbc: ; 0x020cefbc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf488
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x14]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cefbc

	.global func_ov00_020cefdc
	arm_func_start func_ov00_020cefdc
func_ov00_020cefdc: ; 0x020cefdc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf488
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0xc]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cefdc

	.global func_ov00_020ceffc
	arm_func_start func_ov00_020ceffc
func_ov00_020ceffc: ; 0x020ceffc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x28]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020ceffc

	.global func_ov00_020cf01c
	arm_func_start func_ov00_020cf01c
func_ov00_020cf01c: ; 0x020cf01c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x2c]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf01c

	.global func_ov00_020cf03c
	arm_func_start func_ov00_020cf03c
func_ov00_020cf03c: ; 0x020cf03c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf488
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x1c]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf03c

	.global func_ov00_020cf05c
	arm_func_start func_ov00_020cf05c
func_ov00_020cf05c: ; 0x020cf05c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf488
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x10]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf05c

	.global func_ov00_020cf07c
	arm_func_start func_ov00_020cf07c
func_ov00_020cf07c: ; 0x020cf07c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf4d8
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x2c]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf07c

	.global func_ov00_020cf09c
	arm_func_start func_ov00_020cf09c
func_ov00_020cf09c: ; 0x020cf09c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf518
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x4c]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf09c

	.global func_ov00_020cf0bc
	arm_func_start func_ov00_020cf0bc
func_ov00_020cf0bc: ; 0x020cf0bc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf518
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x50]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf0bc

	.global func_ov00_020cf0dc
	arm_func_start func_ov00_020cf0dc
func_ov00_020cf0dc: ; 0x020cf0dc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf518
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x48]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf0dc

	.global func_ov00_020cf0fc
	arm_func_start func_ov00_020cf0fc
func_ov00_020cf0fc: ; 0x020cf0fc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x34]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf0fc

	.global func_ov00_020cf11c
	arm_func_start func_ov00_020cf11c
func_ov00_020cf11c: ; 0x020cf11c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf534
	cmp r0, #0
	ldrne r0, [r4]
	ldrne r0, [r0, #0x3c]
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf11c

	.global func_ov00_020cf13c
	arm_func_start func_ov00_020cf13c
func_ov00_020cf13c: ; 0x020cf13c
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _020cf1ac ; =data_027e0d3c
	movs r5, r1
	mov r6, r0
	ldr r4, [r2]
	bne _020cf168
	ldr r2, [r4, #0x44]
	mov r0, r4
	add r1, r4, #4
	blx func_ov00_02078e00
	b _020cf184
_020cf168:
	ldr r0, _020cf1b0 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083588
	mov r2, r0
	mov r0, r4
	mov r1, r5
	blx func_ov00_02078e00
_020cf184:
	ldr r0, _020cf1b4 ; =data_027e0c54
	ldrb r0, [r0]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x48]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cf13c
_020cf1ac: .word data_027e0d3c
_020cf1b0: .word data_027e0e60
_020cf1b4: .word data_027e0c54

	.global func_ov00_020cf1b8
	arm_func_start func_ov00_020cf1b8
func_ov00_020cf1b8: ; 0x020cf1b8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	mov r1, #1
	ldr r2, [r0]
	ldr r2, [r2, #0x48]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cf1b8

	.global func_ov00_020cf1d4
	arm_func_start func_ov00_020cf1d4
func_ov00_020cf1d4: ; 0x020cf1d4
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	mov r2, r1
	ldr r4, [r0, #0x18]
	ldrsb r0, [r4]
	cmp r0, #1
	moveq r1, #1
	movne r1, #0
	mov r0, r4
	bl func_ov00_020cef50
	mov r0, r4
	mov r1, #0
	bl func_ov03_020f13b0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf1d4

	.global func_ov00_020cf20c
	arm_func_start func_ov00_020cf20c
func_ov00_020cf20c: ; 0x020cf20c
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x30]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cf20c

	.global func_ov00_020cf224
	arm_func_start func_ov00_020cf224
func_ov00_020cf224: ; 0x020cf224
	ldr ip, _020cf234 ; =func_ov00_020cf238
	mov r2, r1
	mov r1, #1
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf224
_020cf234: .word func_ov00_020cf238

	.global func_ov00_020cf238
	arm_func_start func_ov00_020cf238
func_ov00_020cf238: ; 0x020cf238
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl func_ov00_02079e04
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	mov r1, r5
	ldr r3, [r0]
	mov r2, r4
	ldr r3, [r3, #0x38]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020cf238

	.global func_ov00_020cf270
	arm_func_start func_ov00_020cf270
func_ov00_020cf270: ; 0x020cf270
	ldrh r0, [r0, #0x22]
	tst r0, r1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020cf270

	.global func_ov00_020cf284
	arm_func_start func_ov00_020cf284
func_ov00_020cf284: ; 0x020cf284
	cmp r2, #1
	ldrh r2, [r0, #0x22]
	orreq r1, r2, r1
	mvnne r1, r1
	andne r1, r2, r1
	strh r1, [r0, #0x22]
	bx lr
	arm_func_end func_ov00_020cf284

	.global func_ov00_020cf2a0
	arm_func_start func_ov00_020cf2a0
func_ov00_020cf2a0: ; 0x020cf2a0
	cmp r1, #1
	ldreq r1, _020cf2b4 ; =0x0000ffff
	movne r1, #0
	strh r1, [r0, #0x22]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020cf2a0
_020cf2b4: .word 0x0000ffff

	.global func_ov00_020cf2b8
	arm_func_start func_ov00_020cf2b8
func_ov00_020cf2b8: ; 0x020cf2b8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf488
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	bl func_ov15_0214d21c
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf2b8

	.global func_ov00_020cf2d8
	arm_func_start func_ov00_020cf2d8
func_ov00_020cf2d8: ; 0x020cf2d8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf488
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	bl func_ov15_0214d238
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf2d8

	.global func_ov00_020cf2f8
	arm_func_start func_ov00_020cf2f8
func_ov00_020cf2f8: ; 0x020cf2f8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl func_ov00_020cf488
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl func_ov15_0214d248
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020cf2f8

	.global func_ov00_020cf330
	arm_func_start func_ov00_020cf330
func_ov00_020cf330: ; 0x020cf330
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cf330

	.global func_ov00_020cf348
	arm_func_start func_ov00_020cf348
func_ov00_020cf348: ; 0x020cf348
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf330
	ldr r2, [r4, #0x14]
	mov r1, #0
_020cf35c:
	ldrsh r0, [r2, #4]
	add r1, r1, #1
	cmp r1, #0xc
	strh r0, [r2], #6
	blt _020cf35c
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf348

	.global func_ov00_020cf374
	arm_func_start func_ov00_020cf374
func_ov00_020cf374: ; 0x020cf374
	ldr ip, _020cf380 ; =func_ov09_0211b6f8
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf374
_020cf380: .word func_ov09_0211b6f8

	.global func_ov00_020cf384
	arm_func_start func_ov00_020cf384
func_ov00_020cf384: ; 0x020cf384
	ldr r0, [r0]
	ldr ip, _020cf394 ; =func_ov03_020f7010
	ldr r0, [r0, #0x14]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf384
_020cf394: .word func_ov03_020f7010

	.global func_ov00_020cf398
	arm_func_start func_ov00_020cf398
func_ov00_020cf398: ; 0x020cf398
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	bl func_ov14_02144750
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cf398

	.global func_ov00_020cf3b8
	arm_func_start func_ov00_020cf3b8
func_ov00_020cf3b8: ; 0x020cf3b8
	ldr ip, _020cf3c4 ; =func_ov09_0211b708
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf3b8
_020cf3c4: .word func_ov09_0211b708

	.global func_ov00_020cf3c8
	arm_func_start func_ov00_020cf3c8
func_ov00_020cf3c8: ; 0x020cf3c8
	ldr r0, [r0]
	ldr ip, _020cf3d8 ; =func_ov26_021767ec
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf3c8
_020cf3d8: .word func_ov26_021767ec

	.global func_ov00_020cf3dc
	arm_func_start func_ov00_020cf3dc
func_ov00_020cf3dc: ; 0x020cf3dc
	ldr r0, [r0]
	ldr ip, _020cf3ec ; =func_ov03_020f7e0c
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf3dc
_020cf3ec: .word func_ov03_020f7e0c

	.global func_ov00_020cf3f0
	arm_func_start func_ov00_020cf3f0
func_ov00_020cf3f0: ; 0x020cf3f0
	ldr r0, [r0]
	ldr ip, _020cf400 ; =func_ov03_020f7e18
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf3f0
_020cf400: .word func_ov03_020f7e18

	.global func_ov00_020cf404
	arm_func_start func_ov00_020cf404
func_ov00_020cf404: ; 0x020cf404
	ldr ip, _020cf410 ; =func_ov09_0211cc8c
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cf404
_020cf410: .word func_ov09_0211cc8c

	.global func_ov00_020cf414
	arm_func_start func_ov00_020cf414
func_ov00_020cf414: ; 0x020cf414
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x4c]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cf414

	.global func_ov00_020cf42c
	arm_func_start func_ov00_020cf42c
func_ov00_020cf42c: ; 0x020cf42c
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cf42c

	.global func_ov00_020cf444
	arm_func_start func_ov00_020cf444
func_ov00_020cf444: ; 0x020cf444
	stmdb sp!, {r3, lr}
	ldr r0, _020cf480 ; =data_027e0fb8
	ldr r0, [r0]
	ldrb r0, [r0, #0x79]
	cmp r0, #0
	beq _020cf478
	ldr r0, _020cf484 ; =gItemManager
	mov r1, #1
	ldr r0, [r0]
	bl _ZN11ItemManager18func_ov00_020ad790Ei
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_020cf478:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cf444
_020cf480: .word data_027e0fb8
_020cf484: .word gItemManager

	.global func_ov00_020cf488
	arm_func_start func_ov00_020cf488
func_ov00_020cf488: ; 0x020cf488
	ldrb r0, [r0, #0x26]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020cf4b4
_020cf498: ; jump table
	b _020cf4ac ; case 0
	b _020cf4ac ; case 1
	b _020cf4ac ; case 2
	b _020cf4ac ; case 3
	b _020cf4ac ; case 4
_020cf4ac:
	mov r0, #1
	bx lr
_020cf4b4:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cf488

	.global func_ov00_020cf4bc
	arm_func_start func_ov00_020cf4bc
func_ov00_020cf4bc: ; 0x020cf4bc
	ldrb r0, [r0, #0x26]
	cmp r0, #8
	bne _020cf4d0
	mov r0, #0
	bx lr
_020cf4d0:
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020cf4bc

	.global func_ov00_020cf4d8
	arm_func_start func_ov00_020cf4d8
func_ov00_020cf4d8: ; 0x020cf4d8
	ldrb r0, [r0, #0x26]
	cmp r0, #4
	bne _020cf4ec
	mov r0, #1
	bx lr
_020cf4ec:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cf4d8

	.global func_ov00_020cf4f4
	arm_func_start func_ov00_020cf4f4
func_ov00_020cf4f4: ; 0x020cf4f4
	ldrb r0, [r0, #0x26]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	bne _020cf510
	mov r0, #1
	bx lr
_020cf510:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cf4f4

	.global func_ov00_020cf518
	arm_func_start func_ov00_020cf518
func_ov00_020cf518: ; 0x020cf518
	ldrb r0, [r0, #0x26]
	cmp r0, #1
	bne _020cf52c
	mov r0, #1
	bx lr
_020cf52c:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cf518

	.global func_ov00_020cf534
	arm_func_start func_ov00_020cf534
func_ov00_020cf534: ; 0x020cf534
	ldrb r0, [r0, #0x26]
	cmp r0, #3
	bne _020cf548
	mov r0, #1
	bx lr
_020cf548:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020cf534

	.global func_ov00_020cf550
	arm_func_start func_ov00_020cf550
func_ov00_020cf550: ; 0x020cf550
	stmdb sp!, {r3, lr}
	ldr r0, _020cf668 ; =data_027e0618
	ldr r0, [r0]
	cmp r0, #2
	movne r0, #1
	ldmneia sp!, {r3, pc}
	ldr r0, _020cf66c ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x31
	cmpne r0, #0x32
	cmpne r0, #0x33
	bne _020cf590
	mov r0, #0
	ldmia sp!, {r3, pc}
_020cf590:
	ldr r1, _020cf670 ; =data_027e0c68
	ldrb r0, [r1, #4]
	cmp r0, #0
	ldrne r0, [r1, #0x28]
	cmpne r0, #0
	beq _020cf5d8
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x5c]
	cmp r0, #0
	bgt _020cf5d8
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _020cf5d8
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x5c]
	cmp r0, #0
	movle r0, #0
	ldmleia sp!, {r3, pc}
_020cf5d8:
	ldr r0, _020cf670 ; =data_027e0c68
	bl func_0203673c
	cmp r0, #0
	beq _020cf610
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	cmpne r0, #2
	bne _020cf600
	mov r0, #1
	b _020cf604
_020cf600:
	mov r0, #0
_020cf604:
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
_020cf610:
	ldr r0, _020cf670 ; =data_027e0c68
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _020cf648
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	cmpne r0, #2
	bne _020cf638
	mov r0, #1
	b _020cf63c
_020cf638:
	mov r0, #0
_020cf63c:
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
_020cf648:
	ldr r0, _020cf674 ; =data_027e1054
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x99]
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cf550
_020cf668: .word data_027e0618
_020cf66c: .word data_027e0d38
_020cf670: .word data_027e0c68
_020cf674: .word data_027e1054

	.global func_ov00_020cf678
	arm_func_start func_ov00_020cf678
func_ov00_020cf678: ; 0x020cf678
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf550
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020cf0fc
	movs r4, r0
	moveq r0, #0
	ldrne r0, [r4, #0x80]
	cmp r4, #0
	cmpne r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	beq _020cf6d4
	ldr r0, _020cf73c ; =data_027e0f74
	mov r1, #0x82
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
_020cf6d4:
	cmp r4, #0
	beq _020cf6f0
	mov r0, r4
	bl func_ov14_021521e4
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020cf6f0:
	bl func_ov00_020cf948
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _020cf740 ; =data_027e077c
	ldr r1, _020cf744 ; =data_02056be4
	ldr r0, [r0]
	ldrb r0, [r1, r0]
	tst r0, #1
	bne _020cf734
	ldr r0, _020cf748 ; =data_027e103c
	ldr r1, _020cf74c ; =0x0000018f
	ldr r0, [r0]
	bl func_ov00_020cf8fc
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
_020cf734:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cf678
_020cf73c: .word data_027e0f74
_020cf740: .word data_027e077c
_020cf744: .word data_02056be4
_020cf748: .word data_027e103c
_020cf74c: .word 0x0000018f

	.global func_ov00_020cf750
	arm_func_start func_ov00_020cf750
func_ov00_020cf750: ; 0x020cf750
	stmdb sp!, {r4, lr}
	ldr r1, _020cf7c0 ; =gItemManager
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x21
	bl _ZNK11ItemManager7HasItemEi
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl func_ov00_020cf550
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020cf0fc
	cmp r0, #0
	beq _020cf7ac
	mov r0, r4
	bl func_ov00_020cf0fc
	bl func_ov14_02152220
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020cf7ac:
	bl func_ov00_020cf948
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cf750
_020cf7c0: .word gItemManager

	.global func_ov00_020cf7c4
	arm_func_start func_ov00_020cf7c4
func_ov00_020cf7c4: ; 0x020cf7c4
	ldrb r0, [r0, #0x26]
	cmp r0, #6
	cmpne r0, #7
	cmpne r0, #8
	bne _020cf7e0
	mov r0, #0
	bx lr
_020cf7e0:
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020cf7c4

	.global func_ov00_020cf7e8
	arm_func_start func_ov00_020cf7e8
func_ov00_020cf7e8: ; 0x020cf7e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf7c4
	cmp r0, #0
	bne _020cf80c
	ldr r0, [r4, #0x14]
	mov r1, #0
	strb r1, [r0, #0x90]
	ldmia sp!, {r4, pc}
_020cf80c:
	mov r0, r4
	mov r1, #0x9f
	bl func_ov00_020cf864
	cmp r0, #0
	ble _020cf850
	ldr r0, _020cf860 ; =data_027e0618
	ldr r0, [r0]
	cmp r0, #2
	bne _020cf840
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x60]
	blx r1
_020cf840:
	ldr r0, [r4, #0x14]
	mov r1, #1
	strb r1, [r0, #0x90]
	ldmia sp!, {r4, pc}
_020cf850:
	ldr r0, [r4, #0x14]
	mov r1, #0
	strb r1, [r0, #0x90]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020cf7e8
_020cf860: .word data_027e0618

	.global func_ov00_020cf864
	arm_func_start func_ov00_020cf864
func_ov00_020cf864: ; 0x020cf864
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	mov sl, r0
	mov sb, r1
	mov r7, r6
	mov r8, r6
	mov fp, #0x1000
	mov r4, r6
	mov r5, #1
_020cf888:
	tst sb, r5, lsl r7
	beq _020cf8e4
	ldr r0, [sl, #0x14]
	add r1, r0, r8
	ldrsh r0, [r0, r8]
	ldrsh r2, [r1, #2]
	cmp r0, r2
	moveq r0, r4
	beq _020cf8d0
	ldrsh r1, [r1, #4]
	cmp r0, r1
	moveq r0, fp
	beq _020cf8d0
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl Divide
_020cf8d0:
	cmp r0, r6
	movle r0, r6
	mov r6, r0
	cmp r0, #0x1000
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020cf8e4:
	add r7, r7, #1
	cmp r7, #0xc
	add r8, r8, #6
	blt _020cf888
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov00_020cf864

	.global func_ov00_020cf8fc
	arm_func_start func_ov00_020cf8fc
func_ov00_020cf8fc: ; 0x020cf8fc
	stmdb sp!, {r3, lr}
	mov ip, #0
	mov lr, ip
	mov r3, #1
_020cf90c:
	tst r1, r3, lsl ip
	beq _020cf930
	ldr r2, [r0, #0x14]
	ldrsh r2, [r2, lr]
	add r2, r2, r2, lsr #31
	mov r2, r2, asr #0x1
	cmp r2, #0
	movgt r0, r3
	ldmgtia sp!, {r3, pc}
_020cf930:
	add ip, ip, #1
	cmp ip, #0xc
	add lr, lr, #6
	blt _020cf90c
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cf8fc

	.global func_ov00_020cf948
	arm_func_start func_ov00_020cf948
func_ov00_020cf948: ; 0x020cf948
	stmdb sp!, {r3, lr}
	ldr r0, _020cf9c8 ; =data_027e0618
	ldr r0, [r0]
	cmp r0, #2
	bne _020cf97c
	bl func_ov00_02079e04
	cmp r0, #0
	bne _020cf97c
	ldr r0, _020cf9cc ; =data_ov09_0211f5b4
	bl func_ov03_020f3ff8
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_020cf97c:
	ldr r0, _020cf9d0 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #2
	bne _020cf99c
	mov r0, #1
	ldmia sp!, {r3, pc}
_020cf99c:
	ldr r0, _020cf9d4 ; =data_027e0db0
	ldr r0, [r0, #4]
	cmp r0, #0
	movgt r0, #1
	ldmgtia sp!, {r3, pc}
	ldr r0, _020cf9d8 ; =data_027e103c
	mov r1, #0x9f
	ldr r0, [r0]
	bl func_ov00_020cf8fc
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cf948
_020cf9c8: .word data_027e0618
_020cf9cc: .word data_ov09_0211f5b4
_020cf9d0: .word data_027e0d38
_020cf9d4: .word data_027e0db0
_020cf9d8: .word data_027e103c

	.global func_ov00_020cf9dc
	arm_func_start func_ov00_020cf9dc
func_ov00_020cf9dc: ; 0x020cf9dc
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0x14]
	mov r5, r1
	mov r4, r2
	strb r5, [r3, #0x96]
	bl func_ov00_020cf3b8
	mov r0, r6
	bl func_ov00_020cf398
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #0x14]
	cmp r5, #0
	ldrnesh r0, [r1, #0x2e]
	strneh r0, [r1, #0x2a]
	ldreqsh r0, [r1, #0x2c]
	streqh r0, [r1, #0x2a]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020cf9dc

	.global func_ov00_020cfa24
	arm_func_start func_ov00_020cfa24
func_ov00_020cfa24: ; 0x020cfa24
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0x14]
	mov r5, r1
	mov r4, r2
	strb r5, [r3, #0x97]
	bl func_ov00_020cf3b8
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #0x14]
	cmp r5, #0
	ldrnesh r0, [r1, #0x34]
	strneh r0, [r1, #0x30]
	ldreqsh r0, [r1, #0x32]
	streqh r0, [r1, #0x30]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020cfa24

	.global func_ov00_020cfa64
	arm_func_start func_ov00_020cfa64
func_ov00_020cfa64: ; 0x020cfa64
	ldr r0, [r0, #0x14]
	ldrb r0, [r0, #0x97]
	bx lr
	arm_func_end func_ov00_020cfa64

	.global func_ov00_020cfa70
	arm_func_start func_ov00_020cfa70
func_ov00_020cfa70: ; 0x020cfa70
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0x14]
	mov r5, r1
	mov r4, r2
	strb r5, [r3, #0x98]
	bl func_ov00_020cf398
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #0x14]
	cmp r5, #0
	ldrnesh r0, [r1, #0x3a]
	strneh r0, [r1, #0x36]
	ldreqsh r0, [r1, #0x38]
	streqh r0, [r1, #0x36]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020cfa70

	.global func_ov00_020cfab0
	arm_func_start func_ov00_020cfab0
func_ov00_020cfab0: ; 0x020cfab0
	ldr r0, [r0, #0x14]
	ldrb r0, [r0, #0x98]
	bx lr
	arm_func_end func_ov00_020cfab0

	.global func_ov00_020cfabc
	arm_func_start func_ov00_020cfabc
func_ov00_020cfabc: ; 0x020cfabc
	ldr r3, [r0, #0x14]
	cmp r2, #0
	strb r1, [r3, #0x99]
	bxeq lr
	arm_func_end func_ov00_020cfabc

	.global func_ov00_020cfacc
	arm_func_start func_ov00_020cfacc
func_ov00_020cfacc: ; 0x020cfacc
	cmp r1, #0
	ldr r1, [r0, #0x14]
	ldrnesh r0, [r1, #0x40]
	strneh r0, [r1, #0x3c]
	ldreqsh r0, [r1, #0x3e]
	streqh r0, [r1, #0x3c]
	bx lr
	arm_func_end func_ov00_020cfacc

	.global func_ov00_020cfae8
	arm_func_start func_ov00_020cfae8
func_ov00_020cfae8: ; 0x020cfae8
	cmp r1, #0
	moveq ip, #1
	movne ip, #0
	ldr r3, [r0, #0x14]
	cmp r2, #0
	strb ip, [r3, #0x91]
	bxeq lr
	cmp r1, #0
	ldr r1, [r0, #0x14]
	ldrnesh r0, [r1, #0x46]
	strneh r0, [r1, #0x42]
	ldreqsh r0, [r1, #0x44]
	streqh r0, [r1, #0x42]
	bx lr
	arm_func_end func_ov00_020cfae8

	.global func_ov00_020cfb20
	arm_func_start func_ov00_020cfb20
func_ov00_020cfb20: ; 0x020cfb20
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl func_ov00_020cef9c
	mov r1, r4
	bl func_ov05_021043c0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cfb20

	.global func_ov00_020cfb38
	arm_func_start func_ov00_020cfb38
func_ov00_020cfb38: ; 0x020cfb38
	stmdb sp!, {r3, lr}
	bl func_ov00_020cef9c
	bl func_ov05_0210442c
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cfb38

	.global func_ov00_020cfb48
	arm_func_start func_ov00_020cfb48
func_ov00_020cfb48: ; 0x020cfb48
	ldr ip, _020cfb54 ; =func_ov00_020d386c
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cfb48
_020cfb54: .word func_ov00_020d386c

	.global func_ov00_020cfb58
	arm_func_start func_ov00_020cfb58
func_ov00_020cfb58: ; 0x020cfb58
	ldr ip, _020cfb64 ; =func_ov09_0211b6e8
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cfb58
_020cfb64: .word func_ov09_0211b6e8

	.global func_ov00_020cfb68
	arm_func_start func_ov00_020cfb68
func_ov00_020cfb68: ; 0x020cfb68
	stmdb sp!, {r3, lr}
	bl func_ov00_020cef9c
	mov r1, #0
	strb r1, [r0, #0x250]
	sub r1, r1, #1
	strb r1, [r0, #0x24f]
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cfb68

	.global func_ov00_020cfb84
	arm_func_start func_ov00_020cfb84
func_ov00_020cfb84: ; 0x020cfb84
	stmdb sp!, {r3, lr}
	bl func_ov00_020cef9c
	bl func_ov05_02104ca4
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cfb84

	.global func_ov00_020cfb94
	arm_func_start func_ov00_020cfb94
func_ov00_020cfb94: ; 0x020cfb94
	stmdb sp!, {r3, lr}
	bl func_ov00_020cf11c
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov26_0216ebc0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020cfb94

	.global func_ov00_020cfbb0
	arm_func_start func_ov00_020cfbb0
func_ov00_020cfbb0: ; 0x020cfbb0
	stmdb sp!, {r3, lr}
	bl func_ov00_020cf11c
	cmp r0, #0
	ldrne r0, [r0, #0xb4]
	ldmneia sp!, {r3, pc}
	ldr r0, _020cfbd4 ; =gItemManager
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cfbb0
_020cfbd4: .word gItemManager

	.global func_ov00_020cfbd8
	arm_func_start func_ov00_020cfbd8
func_ov00_020cfbd8: ; 0x020cfbd8
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl func_ov00_020cf11c
	cmp r0, #0
	strneb r4, [r0, #0xc0]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cfbd8

	.global func_ov00_020cfbf0
	arm_func_start func_ov00_020cfbf0
func_ov00_020cfbf0: ; 0x020cfbf0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl func_ov00_020cf11c
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl func_ov26_0216ecb8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020cfbf0

	.global func_ov00_020cfc20
	arm_func_start func_ov00_020cfc20
func_ov00_020cfc20: ; 0x020cfc20
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf488
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl func_ov03_020fa528
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cfc20

	.global func_ov00_020cfc44
	arm_func_start func_ov00_020cfc44
func_ov00_020cfc44: ; 0x020cfc44
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020cf488
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	mov r1, r4
	ldr r0, [r0, #0x20]
	bl func_ov03_020fa5d8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cfc44

	.global func_ov00_020cfc70
	arm_func_start func_ov00_020cfc70
func_ov00_020cfc70: ; 0x020cfc70
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020cf488
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	mov r1, r4
	ldr r0, [r0, #0x20]
	bl func_ov03_020fa644
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cfc70

	.global func_ov00_020cfc9c
	arm_func_start func_ov00_020cfc9c
func_ov00_020cfc9c: ; 0x020cfc9c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl func_ov00_020cf488
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020cfce4 ; =gOverlayManager
	ldr r1, _020cfce8 ; =0x00000003
	ldr r0, [r0, #4]
	cmp r1, r0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	mov r1, r5
	ldr r0, [r0, #0x20]
	mov r2, r4
	bl func_ov03_020fa660
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020cfc9c
_020cfce4: .word gOverlayManager
_020cfce8: .word 0x00000003

	.global func_ov00_020cfcec
	arm_func_start func_ov00_020cfcec
func_ov00_020cfcec: ; 0x020cfcec
	ldr ip, _020cfcf4 ; =func_ov00_020cf7e8
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020cfcec
_020cfcf4: .word func_ov00_020cf7e8

	.global func_ov00_020cfcf8
	arm_func_start func_ov00_020cfcf8
func_ov00_020cfcf8: ; 0x020cfcf8
	stmdb sp!, {r3, lr}
	ldr r0, _020cfdc0 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0x39
	bne _020cfd28
	ldr r0, _020cfdc4 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf0bc
	ldrb r0, [r0]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020cfd28:
	ldr r0, _020cfdc8 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #0x33
	bne _020cfd50
	mov r0, #0
	ldmia sp!, {r3, pc}
_020cfd50:
	ldr r0, _020cfdcc ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020cfdb8
	ldr r0, _020cfdd0 ; =data_027e0c68
	bl func_02036798
	cmp r0, #0
	bne _020cfdb8
	ldr r0, _020cfdd4 ; =data_027e0e28
	bl func_ov00_0207bc48
	cmp r0, #0
	bne _020cfdb8
	ldr r0, _020cfdd8 ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	cmp r0, #0
	ldreq r0, _020cfddc ; =data_027e0d04
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	bne _020cfdb8
	ldr r0, _020cfde0 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020849c0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020cfdb8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020cfcf8
_020cfdc0: .word data_027e077c
_020cfdc4: .word data_027e103c
_020cfdc8: .word data_027e0d38
_020cfdcc: .word data_027e0f74
_020cfdd0: .word data_027e0c68
_020cfdd4: .word data_027e0e28
_020cfdd8: .word data_ov09_0211f5b4
_020cfddc: .word data_027e0d04
_020cfde0: .word data_027e0e60

	.global func_ov00_020cfde4
	arm_func_start func_ov00_020cfde4
func_ov00_020cfde4: ; 0x020cfde4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	mov r1, r4
	ldr r0, [r0, #0x30]
	bl func_ov23_02176034
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cfde4

	.global func_ov00_020cfe10
	arm_func_start func_ov00_020cfe10
func_ov00_020cfe10: ; 0x020cfe10
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5]
	mov r0, #0
	ldr r1, [r1, #0x30]
	strb r4, [r1, #0xa2]
	strb r0, [r1, #0xa1]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cfe10

	.global func_ov00_020cfe40
	arm_func_start func_ov00_020cfe40
func_ov00_020cfe40: ; 0x020cfe40
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	mov r1, r4
	ldr r0, [r0, #0x30]
	strb r5, [r0, #0xa5]
	bl func_ov23_021763c0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020cfe40

	.global func_ov00_020cfe74
	arm_func_start func_ov00_020cfe74
func_ov00_020cfe74: ; 0x020cfe74
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl func_ov00_020cf4f4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	mov r1, r5
	ldr r0, [r0, #0x34]
	mov r2, r4
	bl func_ov14_0215207c
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020cfe74

	.global func_ov00_020cfea8
	arm_func_start func_ov00_020cfea8
func_ov00_020cfea8: ; 0x020cfea8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020cf4f4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl func_ov14_02151e04
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020cfea8

	.global func_ov00_020cfed0
	arm_func_start func_ov00_020cfed0
func_ov00_020cfed0: ; 0x020cfed0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr lr, [sp, #0x1c]
	mov r4, r2
	mov r2, r3
	ldr ip, [sp, #0x24]
	str lr, [sp]
	ldr r3, [sp, #0x18]
	mov r5, r0
	str ip, [sp, #4]
	bl func_ov00_020d0644
	ldr r0, [sp, #0x20]
	strb r4, [r5, #0x10]
	str r0, [r5, #0x14]
	mvn r0, #0
	strb r0, [r5, #0x12]
	strb r0, [r5, #0x13]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020cfed0

	.global func_ov00_020cff1c
	arm_func_start func_ov00_020cff1c
func_ov00_020cff1c: ; 0x020cff1c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldrb ip, [r7, #0xc]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0xff
	beq _020cff4c
	bl func_ov00_020d0790
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020cff4c:
	ldrsh r0, [r7, #8]
	ldrsb r1, [r7, #0x10]
	add r2, sp, #4
	add r3, sp, #0
	bl func_02034698
	mov r0, r7
	ldr ip, [r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr ip, [ip]
	mov r3, r4
	sub r1, r6, r1
	sub r2, r5, r2
	blx ip
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020cff1c

	.global func_ov00_020cff8c
	arm_func_start func_ov00_020cff8c
func_ov00_020cff8c: ; 0x020cff8c
	ldrb r1, [r0, #0xf]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrb r1, [r0, #0xd]
	tst r1, #2
	ldrne r1, _020cfffc ; =data_027e103c
	ldrne r2, [r1]
	cmpne r2, #0
	ldrneh r1, [r0, #0xa]
	strneh r1, [r2, #0x1c]
	ldrb r1, [r0, #0xd]
	tst r1, #0x46
	beq _020cffdc
	ldr r1, _020cfffc ; =data_027e103c
	ldr r1, [r1]
	cmp r1, #0
	ldrneh r0, [r0, #0xa]
	strneh r0, [r1, #0x1e]
	b _020cfff4
_020cffdc:
	tst r1, #8
	ldrne r1, _020cfffc ; =data_027e103c
	ldrne r1, [r1]
	cmpne r1, #0
	ldrneh r0, [r0, #0xa]
	strneh r0, [r1, #0x20]
_020cfff4:
	mov r0, #1
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020cff8c
_020cfffc: .word data_027e103c

	.global func_ov00_020d0000
	arm_func_start func_ov00_020d0000
func_ov00_020d0000: ; 0x020d0000
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb ip, [r5, #0xc]
	mov r4, r1
	mov lr, r2
	cmp ip, #0xff
	beq _020d002c
	ldr ip, [sp, #0x10]
	str ip, [sp]
	bl func_ov00_020d0968
	ldmia sp!, {r3, r4, r5, pc}
_020d002c:
	ldrsh r0, [r5, #8]
	ldrsb r1, [r5, #0x10]
	ldr ip, [sp, #0x10]
	sub r2, r4, r3
	sub r3, lr, ip
	bl func_02034b58
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d0000

	.global func_ov00_020d0048
	arm_func_start func_ov00_020d0048
func_ov00_020d0048: ; 0x020d0048
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldrb ip, [r7, #0xc]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0xff
	beq _020d0080
	ldr r4, [sp, #0x20]
	str r4, [sp]
	bl func_ov00_020d099c
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_020d0080:
	ldrsh r0, [r7, #8]
	ldrsb r1, [r7, #0x10]
	add r2, sp, #8
	add r3, sp, #4
	bl func_02034698
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	sub r2, r4, r2
	sub r3, r1, r0
	ldrsh r0, [r7, #8]
	ldrsb r1, [r7, #0x10]
	sub r2, r6, r2
	sub r3, r5, r3
	bl func_02034b58
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d0048

	.global func_ov00_020d00c4
	arm_func_start func_ov00_020d00c4
func_ov00_020d00c4: ; 0x020d00c4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	ldrsb r0, [r5, #0x10]
	mov r6, r3
	cmp r0, #0
	addlt sp, sp, #0x2c
	ldmltia sp!, {r3, r4, r5, r6, lr}
	addlt sp, sp, #0x10
	bxlt lr
	ldr r4, [r5, #0x14]
	cmp r4, #0
	beq _020d0124
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x48]
	mov r1, r5
	blx r4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
_020d0124:
	ldrsb r1, [r5, #0x10]
	ldrsb r0, [r5, #0x11]
	add r2, sp, #8
	mov r4, r1
	cmp r0, #0
	movgt r4, r0
	ldrsh r0, [r5, #8]
	add r3, sp, #4
	bl func_02034698
	ldrb r0, [r5, #0xd]
	tst r0, #6
	beq _020d01d8
	add r0, sp, #0xc
	bl func_01ffbe34
	cmp r6, #0
	beq _020d0174
	add r1, sp, #0xc
	mov r0, r6
	mov r2, #0x20
	bl func_02007984
_020d0174:
	ldrsb r3, [r5, #0x12]
	add r1, sp, #0x44
	add r2, sp, #0x48
	mov r0, r5
	strb r3, [sp, #0x15]
	bl func_ov00_020d0268
	ldrsb r1, [r5, #0x13]
	mvn r0, #0
	cmp r1, r0
	add r0, sp, #0xc
	str r0, [sp]
	movne r4, r1
	mov r1, r4
	ldrsh r0, [r5, #8]
	ldr r5, [sp, #8]
	ldr r2, [sp, #0x44]
	ldr r4, [sp, #4]
	ldr r3, [sp, #0x48]
	add r2, r5, r2
	add r3, r4, r3
	bl func_02034984
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_020d01d8:
	str r6, [sp]
	ldrsh r0, [r5, #8]
	ldr ip, [sp, #8]
	ldr r2, [sp, #0x44]
	ldr r5, [sp, #4]
	ldr r3, [sp, #0x48]
	mov r1, r4
	add r2, ip, r2
	add r3, r5, r3
	bl func_02034984
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov00_020d00c4

	.global func_ov00_020d0210
	arm_func_start func_ov00_020d0210
func_ov00_020d0210: ; 0x020d0210
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	ldrsh r0, [r7, #8]
	mov r5, r2
	mov r4, r3
	ldrsb r1, [r7, #0x10]
	add r2, sp, #8
	add r3, sp, #4
	bl func_02034698
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr ip, [sp, #0x20]
	sub r2, r5, r0
	sub r1, r6, r1
	mov r0, r7
	mov r3, r4
	str ip, [sp]
	bl func_ov00_020d00c4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d0210

	.global func_ov00_020d0268
	arm_func_start func_ov00_020d0268
func_ov00_020d0268: ; 0x020d0268
	ldrb r3, [r0, #0xd]
	tst r3, #6
	bxeq lr
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _020d029c
	cmp r0, #2
	beq _020d02ac
	cmp r0, #3
	ldreq r0, [r1]
	addeq r0, r0, #3
	streq r0, [r1]
	bx lr
_020d029c:
	ldr r0, [r2]
	add r0, r0, #2
	str r0, [r2]
	bx lr
_020d02ac:
	ldr r0, [r1]
	sub r0, r0, #3
	str r0, [r1]
	bx lr
	arm_func_end func_ov00_020d0268

	.global func_ov00_020d02bc
	arm_func_start func_ov00_020d02bc
func_ov00_020d02bc: ; 0x020d02bc
	stmdb sp!, {r3, lr}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020d0334
_020d02cc: ; jump table
	b _020d02dc ; case 0
	b _020d02f0 ; case 1
	b _020d0308 ; case 2
	b _020d0320 ; case 3
_020d02dc:
	mov r0, r1
	mov r1, r2
	mov r2, r3
	bl func_ov00_020d03c4
	ldmia sp!, {r3, pc}
_020d02f0:
	mov r0, r1
	mov r1, r2
	mov r2, r3
	mov r3, #0
	bl func_ov00_020d033c
	ldmia sp!, {r3, pc}
_020d0308:
	mov r0, r1
	mov r1, r2
	mov r2, r3
	mov r3, #1
	bl func_ov00_020d033c
	ldmia sp!, {r3, pc}
_020d0320:
	mov r0, r1
	mov r1, r2
	mov r2, r3
	bl func_ov00_020d03f8
	ldmia sp!, {r3, pc}
_020d0334:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d02bc

	.global func_ov00_020d033c
	arm_func_start func_ov00_020d033c
func_ov00_020d033c: ; 0x020d033c
	cmp r2, #0
	bxle lr
	cmp r2, #0x1000
	movge r0, r1
	bxge lr
	cmp r3, #1
	bne _020d038c
	smull ip, r3, r2, r2
	adds ip, ip, #0x800
	adc r2, r3, #0
	mov r3, ip, lsr #0xc
	sub r1, r1, r0
	orr r3, r3, r2, lsl #20
	smull r3, r2, r1, r3
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r0, r0, r2
	bx lr
_020d038c:
	sub ip, r2, #0x1000
	smull r3, r2, ip, ip
	adds r3, r3, #0x800
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	sub r0, r0, r1
	orr r3, r3, r2, lsl #20
	smull r3, r2, r0, r3
	adds r3, r3, #0x800
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r1, r2
	bx lr
	arm_func_end func_ov00_020d033c

	.global func_ov00_020d03c4
	arm_func_start func_ov00_020d03c4
func_ov00_020d03c4: ; 0x020d03c4
	cmp r2, #0
	bxle lr
	cmp r2, #0x1000
	bge _020d03f0
	sub r1, r1, r0
	smull r3, r2, r1, r2
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r0, r2
_020d03f0:
	mov r0, r1
	bx lr
	arm_func_end func_ov00_020d03c4

	.global func_ov00_020d03f8
	arm_func_start func_ov00_020d03f8
func_ov00_020d03f8: ; 0x020d03f8
	cmp r2, #0
	bxle lr
	cmp r2, #0x1000
	movge r0, r1
	bxge lr
	mov r2, r2, lsl #0xf
	add r2, r2, #0x800
	mov r2, r2, asr #0x10
	mov r2, r2, lsl #0x1
	add r3, r2, #1
	ldr r2, _020d045c ; =data_02050f54
	mov r3, r3, lsl #0x1
	ldrsh r2, [r2, r3]
	sub r1, r1, r0
	add r1, r1, r1, lsr #31
	mov ip, r1, asr #0x1
	rsb r2, r2, #0
	smull r3, r2, ip, r2
	adds r3, r3, #0x800
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r1, r3, r1, asr #1
	add r0, r0, r1
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d03f8
_020d045c: .word data_02050f54

	.global func_ov00_020d0460
	arm_func_start func_ov00_020d0460
func_ov00_020d0460: ; 0x020d0460
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #8
	strh r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020d0460

	.global func_ov00_020d0478
	arm_func_start func_ov00_020d0478
func_ov00_020d0478: ; 0x020d0478
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #8
	strh r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020d0478

	.global func_ov00_020d0490
	arm_func_start func_ov00_020d0490
func_ov00_020d0490: ; 0x020d0490
	mov r1, r1, lsl #0x1
	strh r1, [r0]
	mov r1, r2, lsl #0x1
	strh r1, [r0, #2]
	mov r1, r3, lsl #0x1
	strh r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020d0490

	.global func_ov00_020d04ac
	arm_func_start func_ov00_020d04ac
func_ov00_020d04ac: ; 0x020d04ac
	ldr r2, _020d0500 ; =data_027e0c54
	mov r1, r1, lsl #0x1
	ldrb r2, [r2]
	ldrsh r3, [r0]
	cmp r2, #0
	movne r2, #2
	moveq r2, #1
	mul r2, r1, r2
	mov r1, r2, lsl #0x10
	add r1, r3, r1, asr #16
	mov r1, r1, lsl #0x10
	ldrsh r2, [r0, #4]
	mov r3, r1, asr #0x10
	cmp r2, r1, asr #16
	ldrsh r1, [r0, #2]
	movlt r3, r2
	blt _020d04f8
	cmp r3, r1
	movlt r3, r1
_020d04f8:
	strh r3, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d04ac
_020d0500: .word data_027e0c54

	.global func_ov00_020d0504
	arm_func_start func_ov00_020d0504
func_ov00_020d0504: ; 0x020d0504
	ldrsh r2, [r0, #4]
	mov r1, r1, lsl #0x11
	mov r3, r1, asr #0x10
	cmp r2, r1, asr #16
	ldrsh r1, [r0, #2]
	movlt r3, r2
	blt _020d0528
	cmp r3, r1
	movlt r3, r1
_020d0528:
	strh r3, [r0]
	bx lr
	arm_func_end func_ov00_020d0504

	.global func_ov00_020d0530
	arm_func_start func_ov00_020d0530
func_ov00_020d0530: ; 0x020d0530
	mov r1, r1, lsl #0x1
	strh r1, [r0, #4]
	ldrsh r2, [r0, #4]
	ldrsh r1, [r0]
	cmp r1, r2
	strgth r2, [r0]
	bx lr
	arm_func_end func_ov00_020d0530

	.global func_ov00_020d054c
	arm_func_start func_ov00_020d054c
func_ov00_020d054c: ; 0x020d054c
	ldr r1, _020d058c ; =data_027e0c54
	ldrsh r2, [r0]
	ldrb r1, [r1]
	ldrsh r3, [r0, #4]
	cmp r1, #0
	ldr r1, _020d0590 ; =data_027e0618
	movne ip, #2
	ldrh r1, [r1, #0xf2]
	moveq ip, #1
	mul ip, r1, ip
	mov r1, ip, lsl #0x10
	add r1, r2, r1, asr #16
	cmp r1, r3
	strlth r1, [r0]
	strgeh r3, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d054c
_020d058c: .word data_027e0c54
_020d0590: .word data_027e0618

	.global func_ov00_020d0594
	arm_func_start func_ov00_020d0594
func_ov00_020d0594: ; 0x020d0594
	ldr r1, _020d05d4 ; =data_027e0c54
	ldrsh r2, [r0]
	ldrb r1, [r1]
	ldrsh r3, [r0, #2]
	cmp r1, #0
	ldr r1, _020d05d8 ; =data_027e0618
	movne ip, #2
	ldrh r1, [r1, #0xf2]
	moveq ip, #1
	mul ip, r1, ip
	mov r1, ip, lsl #0x10
	sub r1, r2, r1, asr #16
	cmp r1, r3
	strgth r1, [r0]
	strleh r3, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d0594
_020d05d4: .word data_027e0c54
_020d05d8: .word data_027e0618

	.global func_ov00_020d05dc
	arm_func_start func_ov00_020d05dc
func_ov00_020d05dc: ; 0x020d05dc
	ldr r1, _020d0608 ; =data_ov00_020e89b8
	mov r2, #0
	stmia r0, {r1, r2}
	sub r1, r2, #1
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xf]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d05dc
_020d0608: .word data_ov00_020e89b8

	.global func_ov00_020d060c
	arm_func_start func_ov00_020d060c
func_ov00_020d060c: ; 0x020d060c
	ldr r1, _020d0638 ; =data_ov00_020e89b8
	mov r2, #0
	stmia r0, {r1, r2}
	sub r1, r2, #1
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xf]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d060c
_020d0638: .word data_ov00_020e89b8

	.global func_ov00_020d063c
	arm_func_start func_ov00_020d063c
func_ov00_020d063c: ; 0x020d063c
	ldrb r0, [r0, #0xf]
	bx lr
	arm_func_end func_ov00_020d063c

	.global func_ov00_020d0644
	arm_func_start func_ov00_020d0644
func_ov00_020d0644: ; 0x020d0644
	strh r3, [r0, #0xa]
	mov ip, #1
	strb ip, [r0, #0xf]
	strh r1, [r0, #8]
	ldr r3, [sp]
	strb r2, [r0, #0xc]
	ldr r1, [sp, #4]
	strb r3, [r0, #0xe]
	str r1, [r0, #4]
	strb ip, [r0, #0xd]
	bx lr
	arm_func_end func_ov00_020d0644

	.global func_ov00_020d0670
	arm_func_start func_ov00_020d0670
func_ov00_020d0670: ; 0x020d0670
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldrb r0, [r8, #0xd]
	mov r7, r1
	mov r6, r2
	tst r0, #8
	movne r0, #1
	strneb r0, [r8, #0xd]
	ldrb r0, [r8, #0xd]
	mov r5, r3
	ldr r4, _020d078c ; =data_027e0d78
	tst r0, #1
	beq _020d06c8
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl func_ov00_020d08ac
	cmp r0, #0
	movne r0, #2
	strneb r0, [r8, #0xd]
	b _020d0754
_020d06c8:
	tst r0, #0x26
	beq _020d0754
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl func_ov00_020d0900
	cmp r0, #0
	beq _020d0710
	mov r0, #4
	strb r0, [r8, #0xd]
	ldrh r0, [r4, #0x34]
	tst r0, #4
	beq _020d0754
	ldrb r0, [r8, #0xd]
	orr r0, r0, #0x40
	strb r0, [r8, #0xd]
	b _020d0754
_020d0710:
	ldrb r0, [r8, #0xd]
	tst r0, #0x26
	ldrneb r0, [r4, #0xc]
	cmpne r0, #0
	movne r0, #0x20
	strneb r0, [r8, #0xd]
	bne _020d0754
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl func_ov00_020d0848
	cmp r0, #0
	movne r0, #8
	strneb r0, [r8, #0xd]
	moveq r0, #1
	streqb r0, [r8, #0xd]
_020d0754:
	ldr r3, [r8, #4]
	cmp r3, #0
	beq _020d0774
	ldrh r1, [r8, #0xa]
	ldrb r2, [r8, #0xd]
	mov r0, r5
	blx r3
	strb r0, [r8, #0xd]
_020d0774:
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldrb r0, [r8, #0xd]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020d0670
_020d078c: .word data_027e0d78

	.global func_ov00_020d0790
	arm_func_start func_ov00_020d0790
func_ov00_020d0790: ; 0x020d0790
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r6, r1
	ldrb r1, [r7, #0xc]
	mov r5, r2
	mov r4, r3
	cmp r1, #0xff
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldrsh r0, [r7, #8]
	add r2, sp, #0xc
	add r3, sp, #8
	bl func_020347b0
	mov r0, r7
	ldr ip, [r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr ip, [ip]
	mov r3, r4
	sub r1, r6, r1
	sub r2, r5, r2
	blx ip
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d0790

	.global func_ov00_020d0804
	arm_func_start func_ov00_020d0804
func_ov00_020d0804: ; 0x020d0804
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	ldr ip, [r0]
	ldr ip, [ip, #8]
	blx ip
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, [sp, #0x14]
	mov r0, #1
	strb r1, [r4, #0xd]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov00_020d0804

	.global func_ov00_020d0848
	arm_func_start func_ov00_020d0848
func_ov00_020d0848: ; 0x020d0848
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r1, [r4, #0x34]
	mov r5, r0
	mov lr, r2
	tst r1, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	str r3, [sp]
	ldr ip, [r0]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	ldr ip, [ip, #8]
	mov r3, lr
	blx ip
	cmp r0, #0
	beq _020d08a4
	ldrb r0, [r5, #0xd]
	tst r0, #6
	ldrneb r0, [r5, #0xf]
	cmpne r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020d08a4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d0848

	.global func_ov00_020d08ac
	arm_func_start func_ov00_020d08ac
func_ov00_020d08ac: ; 0x020d08ac
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r1, [r4, #0x34]
	mov r5, r0
	mov lr, r2
	tst r1, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	str r3, [sp]
	ldr ip, [r0]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr ip, [ip, #8]
	mov r3, lr
	blx ip
	cmp r0, #0
	ldrneb r0, [r5, #0xf]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d08ac

	.global func_ov00_020d0900
	arm_func_start func_ov00_020d0900
func_ov00_020d0900: ; 0x020d0900
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #0xc]
	mov r5, r0
	mov lr, r2
	cmp r1, #0
	beq _020d0960
	str r3, [sp]
	ldr ip, [r0]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr ip, [ip, #8]
	mov r3, lr
	blx ip
	cmp r0, #0
	beq _020d0958
	ldrb r0, [r5, #0xd]
	tst r0, #0x26
	ldrneb r0, [r5, #0xf]
	cmpne r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_020d0958:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020d0960:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d0900

	.global func_ov00_020d0968
	arm_func_start func_ov00_020d0968
func_ov00_020d0968: ; 0x020d0968
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldrb r1, [r0, #0xc]
	mov lr, r2
	cmp r1, #0xff
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r0, #8]
	ldr ip, [sp, #8]
	sub r2, r4, r3
	sub r3, lr, ip
	bl func_02034b90
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d0968

	.global func_ov00_020d099c
	arm_func_start func_ov00_020d099c
func_ov00_020d099c: ; 0x020d099c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r6, r1
	ldrb r1, [r7, #0xc]
	mov r5, r2
	mov r4, r3
	cmp r1, #0xff
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldrsh r0, [r7, #8]
	add r2, sp, #0xc
	add r3, sp, #8
	bl func_020347b0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #8]
	sub r2, r4, r2
	sub r3, r1, r0
	ldrsh r0, [r7, #8]
	ldrb r1, [r7, #0xc]
	sub r2, r6, r2
	sub r3, r5, r3
	bl func_02034b90
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d099c

	.global func_ov00_020d0a14
	arm_func_start func_ov00_020d0a14
func_ov00_020d0a14: ; 0x020d0a14
	ldrh r3, [r0, #0xa]
	cmp r3, r2
	cmpne r2, #1
	streqb r1, [r0, #0xf]
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end func_ov00_020d0a14

	.global func_ov00_020d0a30
	arm_func_start func_ov00_020d0a30
func_ov00_020d0a30: ; 0x020d0a30
	str r1, [r0]
	ldr r1, [sp]
	stmib r0, {r2, r3}
	str r1, [r0, #0xc]
	mov r1, #0x1f
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end func_ov00_020d0a30

	.global func_ov00_020d0a54
	arm_func_start func_ov00_020d0a54
func_ov00_020d0a54: ; 0x020d0a54
	ldr r3, _020d0a7c ; =0x040004c0
	orr r1, r1, #0x8000
	str r1, [r3]
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x10]
	mov r0, r1, lsl #0x18
	orr r0, r0, #0x80
	orr r0, r0, r2, lsl #16
	str r0, [r3, #-0x1c]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d0a54
_020d0a7c: .word 0x040004c0

	.global func_ov00_020d0a80
	arm_func_start func_ov00_020d0a80
func_ov00_020d0a80: ; 0x020d0a80
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r1
	ldr r1, _020d0b68 ; =0x00007fff
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl func_ov00_020d0a54
	ldr r0, _020d0b6c ; =data_027e0d44
	ldmia r7, {r1, r2}
	ldr r0, [r0]
	ldrb r3, [sp, #0x2c]
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #8]
	ldr r1, [r7, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bic r0, r0, #0xe0000000
	orr r0, r0, r2, lsl #26
	ldr r2, [r7, #0xc]
	orr r0, r0, r1, lsl #20
	orr r1, r0, r2, lsl #23
	ldr r0, _020d0b70 ; =0x040004a8
	orr r1, r1, #0x20000000
	str r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	cmp r0, #2
	ldr r0, _020d0b6c ; =data_027e0d44
	moveq r1, #1
	ldr r0, [r0]
	movne r1, #0
	add r0, r0, r2, lsl #3
	ldr r2, [r0, #0xc]
	rsb r1, r1, #4
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0xd
	mov r1, r2, lsr r1
	ldr r0, _020d0b74 ; =0x040004ac
	ldr r2, _020d0b78 ; =data_ov00_020df27c
	str r1, [r0]
	ldr r1, [sp, #0x28]
	ldrb r0, [sp, #0x30]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp]
	ldr r1, [r7, #8]
	ldr r0, [r7, #0xc]
	mov r1, r1, lsl #0x1
	mov r0, r0, lsl #0x1
	ldrh r1, [r2, r1]
	ldrh r2, [r2, r0]
	add r0, sp, #4
	bl func_ov05_0210e344
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020d0a80
_020d0b68: .word 0x00007fff
_020d0b6c: .word data_027e0d44
_020d0b70: .word 0x040004a8
_020d0b74: .word 0x040004ac
_020d0b78: .word data_ov00_020df27c

	.global func_ov00_020d0b7c
	arm_func_start func_ov00_020d0b7c
func_ov00_020d0b7c: ; 0x020d0b7c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	ldrsh r4, [sp, #0x7c]
	mov r5, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	cmp r4, #0
	ldr r4, [sp, #0x78]
	bne _020d0bd0
	add r1, r8, r4
	str r1, [sp]
	mov r5, #0
	str r5, [sp, #4]
	sub r1, sb, r7
	sub r2, r8, r4
	add r3, sb, r7
	str r5, [sp, #8]
	bl func_ov00_020d0a80
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d0bd0:
	ldr r1, _020d1034 ; =0x00007fff
	bl func_ov00_020d0a54
	ldr r0, _020d1038 ; =data_027e0d44
	ldmia r5, {r1, r2}
	ldr r0, [r0]
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #8]
	ldr r1, [r5, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bic r0, r0, #0xe0000000
	orr r0, r0, r2, lsl #26
	ldr r2, [r5, #0xc]
	orr r0, r0, r1, lsl #20
	orr r1, r0, r2, lsl #23
	ldr r0, _020d103c ; =0x040004a8
	orr r1, r1, #0x20000000
	str r1, [r0]
	ldr r0, [r5, #4]
	ldrb r1, [sp, #0x80]
	cmp r0, #2
	ldr r0, _020d1038 ; =data_027e0d44
	moveq r2, #1
	movne r2, #0
	ldr r3, [r0]
	ldr r0, [r5]
	rsb r2, r2, #4
	add r0, r3, r0, lsl #3
	ldr r3, [r0, #0xc]
	ldr r0, _020d1040 ; =0x040004ac
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0xd
	mov r2, r3, lsr r2
	str r2, [r0]
	cmp r1, #0
	moveq r0, #0
	streq r0, [sp, #0x18]
	beq _020d0c80
	ldr r1, [r5, #8]
	ldr r0, _020d1044 ; =data_ov00_020df27c
	mov r1, r1, lsl #0x1
	ldrh r0, [r0, r1]
	mov r0, r0, lsl #0xc
	str r0, [sp, #0x18]
_020d0c80:
	ldrb r0, [sp, #0x80]
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #0x14]
	bne _020d0cac
	ldr r1, [r5, #8]
	ldr r0, _020d1044 ; =data_ov00_020df27c
	mov r1, r1, lsl #0x1
	ldrh r0, [r0, r1]
	mov r0, r0, lsl #0xc
	str r0, [sp, #0x14]
_020d0cac:
	ldrb r0, [sp, #0x84]
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x10]
	beq _020d0cd8
	ldr r1, [r5, #0xc]
	ldr r0, _020d1044 ; =data_ov00_020df27c
	mov r1, r1, lsl #0x1
	ldrh r0, [r0, r1]
	mov r0, r0, lsl #0xc
	str r0, [sp, #0x10]
_020d0cd8:
	ldrb r0, [sp, #0x84]
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #0xc]
	bne _020d0d04
	ldr r1, [r5, #0xc]
	ldr r0, _020d1044 ; =data_ov00_020df27c
	mov r1, r1, lsl #0x1
	ldrh r0, [r0, r1]
	mov r0, r0, lsl #0xc
	str r0, [sp, #0xc]
_020d0d04:
	ldrh r2, [sp, #0x7c]
	ldr r3, _020d1048 ; =data_02050f54
	add r0, r4, r4, lsr #31
	mov r2, r2, asr #0x4
	mov r5, r2, lsl #0x1
	add r2, r5, #1
	mov r5, r5, lsl #0x1
	mov r2, r2, lsl #0x1
	ldrsh r6, [r3, r5]
	ldrsh r5, [r3, r2]
	mov r2, r0, asr #0x1
	add r1, r7, r7, lsr #31
	mov r0, r1, asr #0x1
	mov fp, r2, lsl #0xc
	mov sl, r0, lsl #0xc
	smull r1, r0, fp, r6
	adds r2, r1, #0x800
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	str r0, [sp, #0x24]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x20]
	mov r0, r5, asr #0x1f
	ldr r1, _020d104c ; =0x04000500
	mov r2, #1
	str r2, [r1]
	str r0, [sp, #0x28]
	smull r1, r0, sl, r5
	adds r2, r1, #0x800
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r1, r0, r1, lsl #20
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x2c]
	sub r0, r1, r0
	add r0, r0, #0x800
	add r0, sb, r0, asr #12
	bl func_ov05_0210e288
	smull r2, r1, sl, r6
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov sl, r2, lsr #0xc
	orr sl, sl, r1, lsl #20
	smull r2, r1, fp, r5
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov fp, r2, lsr #0xc
	orr fp, fp, r1, lsl #20
	str r0, [sp, #0x30]
	add r0, fp, sl
	add r0, r0, #0x800
	add r0, r8, r0, asr #12
	bl func_ov05_0210e2a4
	ldr r1, [sp, #0xc]
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x14]
	mov r0, r0, lsr #0x10
	mov r1, r1, lsl #0x8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r0, r1, lsr #16
	rsb r1, r4, #0
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #0x1
	mov r1, r1, lsl #0xc
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x34]
	orr r3, r2, r1, lsl #16
	ldr r2, _020d1050 ; =0x04000488
	mov r1, #0
	str r3, [r2]
	str r0, [r2, #4]
	ldr r0, [sp, #0x38]
	str r1, [r2, #4]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	smull r2, r1, r0, r6
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r4, r2, lsr #0xc
	orr r4, r4, r0, lsl #20
	ldr r0, [sp, #0x2c]
	sub r0, r0, r4
	add r0, r0, #0x800
	add r0, sb, r0, asr #12
	bl func_ov05_0210e288
	ldr r2, [sp, #0x38]
	str r0, [sp, #0x40]
	umull r1, r0, r2, r5
	mov r3, r2
	ldr r2, [sp, #0x28]
	mla r0, r3, r2, r0
	ldr r2, [sp, #0x3c]
	mla r0, r2, r5, r0
	adds r2, r1, #0x800
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	str r0, [sp, #0x44]
	add r0, r0, sl
	add r0, r0, #0x800
	add r0, r8, r0, asr #12
	bl func_ov05_0210e2a4
	ldr r1, [sp, #0x10]
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldr r2, [sp, #0x1c]
	mov r0, r0, lsr #0x10
	str r1, [sp, #0x48]
	orr r2, r2, r1, lsl #16
	ldr r1, [sp, #0x40]
	mov r0, r0, lsl #0x10
	mov r3, r1, lsl #0x10
	rsb r1, r7, #0
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #0x1
	mov sl, r1, lsl #0xc
	ldr r1, _020d1050 ; =0x04000488
	orr r0, r0, r3, lsr #16
	str r2, [r1]
	str r0, [r1, #0xc]
	umull r2, r1, sl, r5
	ldr r0, [sp, #0x28]
	mov r7, sl, asr #0x1f
	mla r1, sl, r0, r1
	mla r1, r7, r5, r1
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r5, r2, lsr #0xc
	orr r5, r5, r0, lsl #20
	sub r0, r5, r4
	add r0, r0, #0x800
	add r0, sb, r0, asr #12
	bl func_ov05_0210e288
	str r0, [sp, #0x4c]
	umull r2, r1, sl, r6
	ldr r0, [sp, #0x20]
	adds r2, r2, #0x800
	mla r1, sl, r0, r1
	mla r1, r7, r6, r1
	adc r0, r1, #0
	mov r4, r2, lsr #0xc
	orr r4, r4, r0, lsl #20
	ldr r0, [sp, #0x44]
	add r0, r0, r4
	add r0, r0, #0x800
	add r0, r8, r0, asr #12
	bl func_ov05_0210e2a4
	ldr r1, [sp, #0x24]
	ldr r6, _020d1050 ; =0x04000488
	sub r2, r5, r1
	ldr r1, [sp, #0x18]
	add r3, r2, #0x800
	mov r2, r0, lsl #0x10
	mov r1, r1, lsl #0x8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	ldr r1, [sp, #0x48]
	mov r2, r2, lsr #0x10
	orr r7, r5, r1, lsl #16
	ldr r1, [sp, #0x4c]
	mov r2, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	add r0, sb, r3, asr #12
	str r7, [r6]
	orr r1, r2, r1, lsr #16
	str r1, [r6, #0xc]
	bl func_ov05_0210e288
	add r1, fp, r4
	add r1, r1, #0x800
	mov r4, r0
	add r0, r8, r1, asr #12
	bl func_ov05_0210e2a4
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, [sp, #0x34]
	mov r2, r6
	orr r3, r5, r0, lsl #16
	mov r0, r4, lsl #0x10
	mov r1, r1, lsl #0x10
	str r3, [r2]
	orr r0, r1, r0, lsr #16
	str r0, [r2, #0xc]
	mov r0, #0
	str r0, [r2, #0x7c]
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020d0b7c
_020d1034: .word 0x00007fff
_020d1038: .word data_027e0d44
_020d103c: .word 0x040004a8
_020d1040: .word 0x040004ac
_020d1044: .word data_ov00_020df27c
_020d1048: .word data_02050f54
_020d104c: .word 0x04000500
_020d1050: .word 0x04000488

	.global func_ov00_020d1054
	thumb_func_start func_ov00_020d1054
func_ov00_020d1054: ; 0x020d1054
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020d1054

	.global func_ov00_020d1058
	arm_func_start func_ov00_020d1058
func_ov00_020d1058: ; 0x020d1058
	bx lr
	arm_func_end func_ov00_020d1058

	.global func_ov00_020d105c
	arm_func_start func_ov00_020d105c
func_ov00_020d105c: ; 0x020d105c
	bx lr
	arm_func_end func_ov00_020d105c

	.global func_ov00_020d1060
	arm_func_start func_ov00_020d1060
func_ov00_020d1060: ; 0x020d1060
	bx lr
	arm_func_end func_ov00_020d1060

	.global func_ov00_020d1064
	arm_func_start func_ov00_020d1064
func_ov00_020d1064: ; 0x020d1064
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020d1064

	.global func_ov00_020d106c
	arm_func_start func_ov00_020d106c
func_ov00_020d106c: ; 0x020d106c
	bx lr
	arm_func_end func_ov00_020d106c

	.global func_ov00_020d1070
	arm_func_start func_ov00_020d1070
func_ov00_020d1070: ; 0x020d1070
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020d1070

	.global func_ov00_020d1078
	arm_func_start func_ov00_020d1078
func_ov00_020d1078: ; 0x020d1078
	mov r0, #1
	bx lr
	arm_func_end func_ov00_020d1078

	.global func_ov00_020d1080
	arm_func_start func_ov00_020d1080
func_ov00_020d1080: ; 0x020d1080
	bx lr
	arm_func_end func_ov00_020d1080

	.global func_ov00_020d1084
	arm_func_start func_ov00_020d1084
func_ov00_020d1084: ; 0x020d1084
	bx lr
	arm_func_end func_ov00_020d1084

	.global func_ov00_020d1088
	arm_func_start func_ov00_020d1088
func_ov00_020d1088: ; 0x020d1088
	bx lr
	arm_func_end func_ov00_020d1088

	.global func_ov00_020d108c
	arm_func_start func_ov00_020d108c
func_ov00_020d108c: ; 0x020d108c
	bx lr
	arm_func_end func_ov00_020d108c

	.global func_ov00_020d1090
	thumb_func_start func_ov00_020d1090
func_ov00_020d1090: ; 0x020d1090
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020d1090

	.global func_ov00_020d1094
	thumb_func_start func_ov00_020d1094
func_ov00_020d1094: ; 0x020d1094
	bx lr
	.align 2, 0
	thumb_func_end func_ov00_020d1094

	.global func_ov00_020d1098
	arm_func_start func_ov00_020d1098
func_ov00_020d1098: ; 0x020d1098
	bx lr
	arm_func_end func_ov00_020d1098

	.global func_ov00_020d109c
	arm_func_start func_ov00_020d109c
func_ov00_020d109c: ; 0x020d109c
	bx lr
	arm_func_end func_ov00_020d109c

	.global func_ov00_020d10a0
	arm_func_start func_ov00_020d10a0
func_ov00_020d10a0: ; 0x020d10a0
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020d10a0

	.global func_ov00_020d10a8
	arm_func_start func_ov00_020d10a8
func_ov00_020d10a8: ; 0x020d10a8
	stmdb sp!, {r4, lr}
	mov r1, #1
	mov r2, #0
	mov r4, r0
	blx func_02038aa0
	ldr r0, _020d10fc ; =data_ov00_020e8a54
	mov r1, #6
	str r0, [r4]
	str r1, [r4, #0x164]
	ldr r0, _020d1100 ; =data_ov00_020e8a30
	mov r1, r4
	ldr r2, [r0]
	add r0, r4, #0x17c
	str r2, [r4, #0x178]
	blx func_0203efd8
	add r2, r4, #0x17c
	str r2, [r4, #0x124]
	mov r1, #3
	mov r0, r4
	strh r1, [r2, #0x20]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d10a8
_020d10fc: .word data_ov00_020e8a54
_020d1100: .word data_ov00_020e8a30

	.global func_ov00_020d1104
	arm_func_start func_ov00_020d1104
func_ov00_020d1104: ; 0x020d1104
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_02038b1c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d1104

	.global func_ov00_020d1118
	arm_func_start func_ov00_020d1118
func_ov00_020d1118: ; 0x020d1118
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_02038b1c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d1118

	.global func_ov00_020d1134
	arm_func_start func_ov00_020d1134
func_ov00_020d1134: ; 0x020d1134
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r4, r3
	add r3, sp, #0x10
	mov r5, r0
	mov r6, r1
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r4, #0xc]
	add r0, sp, #0x40
	str r1, [sp, #0x1c]
	ldrsh r1, [r4, #0x10]
	ldr r2, [r0]
	ldr ip, [sp, #0x48]
	strh r1, [sp, #0x20]
	ldrsh r0, [r4, #0x12]
	mov r1, r6
	mov lr, #1
	strh r0, [sp, #0x22]
	ldrsb r6, [r4, #0x14]
	mov r0, r5
	strb r6, [sp, #0x24]
	ldrb r6, [r4, #0x15]
	strb r6, [sp, #0x25]
	ldrb r6, [r4, #0x16]
	strb r6, [sp, #0x26]
	strb lr, [sp, #0x25]
	str ip, [sp]
	bl func_02038f44
	ldr r0, _020d12b4 ; =data_027e0f64
	ldr r2, [r4]
	ldr r0, [r0]
	mov ip, #0
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r2, [sp, #4]
	ldr r3, [r4, #4]
	add r2, r5, #0x168
	str r3, [sp, #8]
	ldr r4, [r4, #8]
	add r3, r5, #0x16c
	str r4, [sp, #0xc]
	str ip, [sp]
	bl func_01ffe468
	ldr r0, _020d12b8 ; =data_ov00_020e8a30
	mov r1, #4
	ldr r0, [r0]
	str r0, [r5, #0x178]
	ldr r0, [r5, #0x124]
	bl func_0203f378
	mov r0, #1
	strb r0, [r5, #0x152]
	mov r0, r5
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, [r5, #0x12c]
	mov r1, #1
	cmp r0, #0
	ldrneh r0, [r0]
	cmpne r0, #0
	movne r1, #0
	cmp r1, #0
	beq _020d1264
	mov r1, #4
	mov r0, r5
	str r1, [sp]
	ldr r4, [r0]
	mov r1, #0xa
	ldr r4, [r4, #8]
	ldr r3, _020d12bc ; =data_ov00_020e8a34
	mov r2, r1
	blx r4
	b _020d1290
_020d1264:
	mov r0, r5
	add r1, r5, #0x128
	bl func_02033780
	mov r3, #0
	mov r1, r5
	add r0, r5, #0x128
	mov r2, #1
	str r3, [r5, #0x13c]
	bl func_02038950
	mov r0, #0
	str r0, [r5, #0x12c]
_020d1290:
	mov r2, #1
	ldr r0, _020d12c0 ; =data_027e0cbc
	sub r3, r2, #2
	mov r1, #0x3a
	bl func_0203d77c
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d1134
_020d12b4: .word data_027e0f64
_020d12b8: .word data_ov00_020e8a30
_020d12bc: .word data_ov00_020e8a34
_020d12c0: .word data_027e0cbc

	.global func_ov00_020d12c4
	arm_func_start func_ov00_020d12c4
func_ov00_020d12c4: ; 0x020d12c4
	ldr ip, _020d12d4 ; =func_02039440
	ldr r1, _020d12d8 ; =0x00000129
	mov r2, #0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d12c4
_020d12d4: .word func_02039440
_020d12d8: .word 0x00000129

	.global func_ov00_020d12dc
	arm_func_start func_ov00_020d12dc
func_ov00_020d12dc: ; 0x020d12dc
	ldr ip, _020d12e4 ; =func_020392b4
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d12dc
_020d12e4: .word func_020392b4

	.global func_ov00_020d12e8
	arm_func_start func_ov00_020d12e8
func_ov00_020d12e8: ; 0x020d12e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020d1320 ; =data_027e0cbc
	mov r1, #0x3a
	bl func_0203d7e0
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r3, [r0]
	mov r1, #0
	ldr r3, [r3, #0x40]
	mov r2, r1
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d12e8
_020d1320: .word data_027e0cbc

	.global func_ov00_020d1324
	arm_func_start func_ov00_020d1324
func_ov00_020d1324: ; 0x020d1324
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr r3, _020d1468 ; =data_027e0618
	mov r6, r0
	ldrb r3, [r3, #0x101]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	addne sp, sp, #0x2c
	ldmneia sp!, {r3, r4, r5, r6, pc}
	add r1, r6, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	addle sp, sp, #0x2c
	ldmleia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6, #0x124]
	ldrsb r1, [r1, #0x29]
	cmp r1, #4
	bne _020d13b4
	add r0, sp, #0xc
	bl func_01ffbe34
	ldr r1, [r6, #0x178]
	mov r0, #1
	str r1, [sp, #0x24]
	ldr r2, [r6, #0x178]
	add r1, sp, #0xc
	str r2, [sp, #0x28]
	strb r0, [sp, #0x17]
	strb r0, [sp, #0x20]
	str r1, [sp]
	ldr r2, [r6, #0x170]
	ldr r3, [r6, #0x174]
	mov r1, #0x28
	bl func_02034984
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, pc}
_020d13b4:
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #4]
	ldr r3, [r0]
	add r1, sp, #8
	ldr r3, [r3, #0x6c]
	add r2, sp, #4
	blx r3
	mov r1, #0
	str r1, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020d146c ; =0x00000129
	add r2, r5, r2
	add r3, r4, r3
	bl func_0203493c
	mov r0, r6
	bl func_0203951c
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r1, r6, #0x100
	ldr r2, [r6, #0x14]
	ldr r0, [r6, #0x18]
	mov r3, r2, lsl #0x3
	mov r2, r0, lsl #0x3
	ldrsh ip, [r1, #0x58]
	add r0, r3, r3, lsr #31
	ldrsh r3, [r1, #0x5a]
	add r1, r2, r2, lsr #31
	sub r0, ip, r0, asr #1
	sub r1, r3, r1, asr #1
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	ldr ip, [sp, #8]
	add r5, r5, r0, asr #16
	ldr r3, [sp, #4]
	add r2, r4, r1, asr #16
	mov r0, r6
	add r1, ip, r5
	add r2, r3, r2
	mov r3, #0
	bl func_0203e1b0
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d1324
_020d1468: .word data_027e0618
_020d146c: .word 0x00000129

	.global func_ov00_020d1470
	arm_func_start func_ov00_020d1470
func_ov00_020d1470: ; 0x020d1470
	stmdb sp!, {r4, lr}
	ldr r1, _020d1498 ; =data_027e0c54
	mov r4, r0
	ldrb r1, [r1]
	cmp r1, #0
	beq _020d148c
	bl func_02038b40
_020d148c:
	mov r0, r4
	bl func_02038d20
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d1470
_020d1498: .word data_027e0c54

	.global func_ov00_020d149c
	arm_func_start func_ov00_020d149c
func_ov00_020d149c: ; 0x020d149c
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020d14c8 ; =data_027e0c68
	bl func_02036808
	cmp r0, #0
	mov r0, r4
	beq _020d14c0
	bl func_02038b40
	ldmia sp!, {r4, pc}
_020d14c0:
	bl func_02038ed0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d149c
_020d14c8: .word data_027e0c68

	.global func_ov00_020d14cc
	arm_func_start func_ov00_020d14cc
func_ov00_020d14cc: ; 0x020d14cc
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020d1514
_020d14e0: ; jump table
	b _020d1514 ; case 0
	b _020d14f4 ; case 1
	b _020d1500 ; case 2
	b _020d150c ; case 3
	b _020d1514 ; case 4
_020d14f4:
	mov r0, #4
	str r0, [r4, #0x34]
	b _020d1514
_020d1500:
	mov r0, #4
	str r0, [r4, #0x34]
	b _020d1514
_020d150c:
	mvn r0, #0
	str r0, [r4, #0x34]
_020d1514:
	mov r0, r4
	bl func_020337d8
	ldr r1, [r4, #0x18]
	rsb r0, r0, r1, lsl #3
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d14cc

	.global func_ov00_020d1530
	arm_func_start func_ov00_020d1530
func_ov00_020d1530: ; 0x020d1530
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r4, #0xa
_020d153c:
	mov r1, r4
	bl func_01ff9b4c
	cmp r0, #0
	addne r5, r5, #1
	bne _020d153c
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d1530

	.global func_ov00_020d1558
	arm_func_start func_ov00_020d1558
func_ov00_020d1558: ; 0x020d1558
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, #1
	mov r7, #0xa
	mov r5, r6
	mov r4, r6
_020d1570:
	mov r2, r7
	mov r3, r6
	bl func_020029fc
	cmp r1, r5
	cmpeq r0, r4
	addne r8, r8, #1
	bne _020d1570
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end func_ov00_020d1558

	.global func_ov00_020d1594
	arm_func_start func_ov00_020d1594
func_ov00_020d1594: ; 0x020d1594
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	str r1, [r4]
	ldr r2, [r0]
	mov r1, #0x10
	ldr r2, [r2, #8]
	blx r2
	str r0, [r4, #4]
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d1594

	.global func_ov00_020d15c0
	arm_func_start func_ov00_020d15c0
func_ov00_020d15c0: ; 0x020d15c0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d15c0

	.global func_ov00_020d15e0
	arm_func_start func_ov00_020d15e0
func_ov00_020d15e0: ; 0x020d15e0
	ldr ip, [r0, #4]
	mov r3, #0
	ldrh r2, [ip, #0xc]
	cmp r2, #0
	ble _020d1614
_020d15f4:
	add r0, ip, r3, lsl #2
	ldr r0, [r0, #0x10]
	cmp r1, r0
	moveq r0, #1
	bxeq lr
	add r3, r3, #1
	cmp r3, r2
	blt _020d15f4
_020d1614:
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020d15e0

	.global func_ov00_020d161c
	arm_func_start func_ov00_020d161c
func_ov00_020d161c: ; 0x020d161c
	ldr r2, [r0, #4]
	mov ip, #0
	ldrh r3, [r2, #0xc]
	cmp r3, #0
	bxle lr
_020d1630:
	ldr r2, [r0, #4]
	add r2, r2, ip, lsl #2
	ldr r2, [r2, #0x10]
	str r2, [r1, ip, lsl #2]
	add ip, ip, #1
	cmp ip, r3
	blt _020d1630
	bx lr
	arm_func_end func_ov00_020d161c

	.global func_ov00_020d1650
	arm_func_start func_ov00_020d1650
func_ov00_020d1650: ; 0x020d1650
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r0
	bl func_0204b068
	mov r3, #0
	mov r1, r3
	mov r4, r3
	cmp r0, #0
	ble _020d16e8
	mov r2, #1
	mov sb, r3
	mov r8, #0xa
_020d167c:
	sub r6, r0, r4
	sub fp, r6, #1
	mov ip, #0
	mov lr, r2
	mov sl, ip
	cmp fp, #0
	ble _020d16b8
_020d1698:
	umull r6, r7, lr, r8
	mla r7, lr, sb, r7
	mov lr, r6
	mla r7, ip, r8, r7
	mov ip, r7
	add sl, sl, #1
	cmp sl, fp
	blt _020d1698
_020d16b8:
	mov r6, r4, lsl #0x1
	ldrh r6, [r5, r6]
	add r4, r4, #1
	sub r7, r6, #0x30
	mov r6, r7, asr #0x1f
	umull fp, sl, lr, r7
	mla sl, lr, r6, sl
	mla sl, ip, r7, sl
	adds r3, r3, fp
	adc r1, r1, sl
	cmp r4, r0
	blt _020d167c
_020d16e8:
	mov r0, r3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov00_020d1650

	.global func_ov00_020d16f0
	arm_func_start func_ov00_020d16f0
func_ov00_020d16f0: ; 0x020d16f0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, r2
	mov sb, r1
	cmp r8, #0
	mov sl, r0
	cmpeq sb, #0
	mov r0, #0
	bne _020d1720
	mov r1, #0x30
	strh r1, [sl]
	strh r0, [sl, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d1720:
	mov r0, sb
	mov r1, r8
	bl func_ov00_020d1558
	mov r6, r0
	mov r0, r6, lsl #0x1
	mov r7, #0
	strh r7, [sl, r0]
	cmp r6, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r5, #0xa
	mov fp, r7
	mov r4, #0x30
_020d1750:
	mov r0, sb
	mov r1, r8
	mov r2, r5
	mov r3, fp
	bl func_02002bb8
	adds r1, r0, r4
	sub r0, r6, r7
	add r0, sl, r0, lsl #1
	strh r1, [r0, #-2]
	mov r0, sb
	mov r1, r8
	mov r2, #0xa
	mov r3, #0
	bl func_02002bac
	add r7, r7, #1
	mov sb, r0
	mov r8, r1
	cmp r7, r6
	blt _020d1750
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov00_020d16f0

	.global func_ov00_020d17a0
	arm_func_start func_ov00_020d17a0
func_ov00_020d17a0: ; 0x020d17a0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r4, r0
	add r0, sp, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl func_ov00_020d16f0
	mov r0, r7
	mov r1, r6
	bl func_ov00_020d1558
	sub r2, r5, r0
	cmp r2, #0
	mov r3, #0
	ble _020d17f4
	mov r1, #0x30
_020d17e0:
	mov r0, r3, lsl #0x1
	add r3, r3, #1
	strh r1, [r4, r0]
	cmp r3, r2
	blt _020d17e0
_020d17f4:
	add r1, sp, #0
	mov r0, r4
	mov r2, r2, lsl #0x1
	mov r3, #0
	strh r3, [r4, r2]
	bl func_0204b0a4
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d17a0

	.global func_ov00_020d1814
	arm_func_start func_ov00_020d1814
func_ov00_020d1814: ; 0x020d1814
	stmdb sp!, {r3, lr}
	mov r3, r0
	ldr r2, [r3, #4]
	ldr r0, [r1, #4]
	cmp r2, r0
	bne _020d1868
	ldrb r0, [r1, #0x11a]
	cmp r0, #0
	beq _020d1868
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	mov r0, r1
	beq _020d185c
	ldr r2, [r0]
	ldrh r1, [r3, #8]
	ldr r2, [r2, #0x98]
	blx r2
	b _020d1868
_020d185c:
	ldr r1, [r0]
	ldr r1, [r1, #0x9c]
	blx r1
_020d1868:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d1814

	.global func_ov00_020d1870
	arm_func_start func_ov00_020d1870
func_ov00_020d1870: ; 0x020d1870
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r2, _020d18ac ; =data_027e0fe4
	str r0, [sp, #4]
	ldr ip, _020d18b0 ; =data_ov00_020e8b14
	ldr r0, [r2]
	strh r1, [sp, #8]
	mov r3, #1
	add r1, sp, #0
	mov r2, #0
	str ip, [sp]
	strb r3, [sp, #0xa]
	bl func_ov00_020c37ec
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
	arm_func_end func_ov00_020d1870
_020d18ac: .word data_027e0fe4
_020d18b0: .word data_ov00_020e8b14

	.global func_ov00_020d18b4
	arm_func_start func_ov00_020d18b4
func_ov00_020d18b4: ; 0x020d18b4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _020d18ec ; =data_027e0fe4
	mov r2, #0
	str r0, [sp, #4]
	ldr r3, _020d18f0 ; =data_ov00_020e8b14
	ldr r0, [r1]
	add r1, sp, #0
	str r3, [sp]
	strh r2, [sp, #8]
	strb r2, [sp, #0xa]
	bl func_ov00_020c37ec
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
	arm_func_end func_ov00_020d18b4
_020d18ec: .word data_027e0fe4
_020d18f0: .word data_ov00_020e8b14

	.global func_ov00_020d18f4
	arm_func_start func_ov00_020d18f4
func_ov00_020d18f4: ; 0x020d18f4
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	bl func_02037750
	ldr r0, _020d197c ; =data_ov00_020e8b20
	add r2, r4, #0x20
	str r0, [r4]
	add r0, r4, #0x40
	mvn r1, #0
_020d1918:
	str r1, [r2]
	str r1, [r2, #4]
	add r2, r2, #8
	cmp r2, r0
	blo _020d1918
	mov r1, #0
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	add r0, r4, #0x4c
	str r1, [r4, #0x48]
	bl func_ov00_020d35f0
	add r1, r4, #0x50
	mov r0, #0
	mov r2, #4
	bl func_020078f4
	mov r0, #1
	strb r0, [r4, #0x54]
	mov r0, #0
	strb r0, [r4, #0x55]
	add r1, r4, #0x50
	mov r2, #4
	str r0, [r4, #0x58]
	bl func_020078f4
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d18f4
_020d197c: .word data_ov00_020e8b20

	.global func_ov00_020d1980
	arm_func_start func_ov00_020d1980
func_ov00_020d1980: ; 0x020d1980
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _020d19c8 ; =data_ov00_020e8b20
	ldr r0, _020d19cc ; =data_ov00_020e8ae8
	str r1, [r4]
	ldr r1, [r0, #0x20]
	cmp r1, r4
	moveq r1, #0
	streq r1, [r0, #0x20]
	ldr r0, _020d19d0 ; =data_027e0c68
	ldr r1, [r0, #0x24]
	cmp r1, r4
	moveq r1, #0
	streq r1, [r0, #0x24]
	mov r0, r4
	bl func_0203780c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d1980
_020d19c8: .word data_ov00_020e8b20
_020d19cc: .word data_ov00_020e8ae8
_020d19d0: .word data_027e0c68

	.global func_ov00_020d19d4
	arm_func_start func_ov00_020d19d4
func_ov00_020d19d4: ; 0x020d19d4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _020d1a24 ; =data_ov00_020e8b20
	ldr r0, _020d1a28 ; =data_ov00_020e8ae8
	str r1, [r4]
	ldr r1, [r0, #0x20]
	cmp r1, r4
	moveq r1, #0
	streq r1, [r0, #0x20]
	ldr r0, _020d1a2c ; =data_027e0c68
	ldr r1, [r0, #0x24]
	cmp r1, r4
	moveq r1, #0
	streq r1, [r0, #0x24]
	mov r0, r4
	bl func_0203780c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d19d4
_020d1a24: .word data_ov00_020e8b20
_020d1a28: .word data_ov00_020e8ae8
_020d1a2c: .word data_027e0c68

	.global func_ov00_020d1a30
	arm_func_start func_ov00_020d1a30
func_ov00_020d1a30: ; 0x020d1a30
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_02037844
	add r0, r4, #0x4c
	bl func_ov00_020d3620
	mov r0, #0
	strb r0, [r4, #0x55]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d1a30

	.global func_ov00_020d1a50
	arm_func_start func_ov00_020d1a50
func_ov00_020d1a50: ; 0x020d1a50
	stmdb sp!, {r4, lr}
	ldr r1, _020d1aec ; =data_027e0fe4
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0x20
	bl func_ov00_020c3674
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0x10000
	ldr r1, [r4, #0x18]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _020d1ad4
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x5c]
	cmp r0, #0
	ble _020d1ad4
	mov r1, r4
	add r0, r4, #0x4c
	bl func_ov00_020d3638
	ldr r1, [r4, #0x40]
	ldrb r0, [r1, #0x151]
	cmp r0, #0
	beq _020d1ad4
	mov r0, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmia sp!, {r4, pc}
_020d1ad4:
	mov r1, r4
	add r0, r4, #0x4c
	bl func_ov00_020d3698
	mov r0, r4
	bl func_02037918
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d1a50
_020d1aec: .word data_027e0fe4

	.global func_ov00_020d1af0
	arm_func_start func_ov00_020d1af0
func_ov00_020d1af0: ; 0x020d1af0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	ldr r1, _020d1d8c ; =data_027e0fe4
	ldrb r2, [r0, #0x55]
	add r3, r0, #0x20
	ldr r0, [r1]
	add r1, r3, r2, lsl #3
	bl func_ov00_020c3674
	ldr r2, [r0]
	add r1, sp, #0x38
	ldr r2, [r2, #0x34]
	mov r5, r0
	blx r2
	ldr r4, [sp, #0x54]
	ldr r1, _020d1d90 ; =0x00040001
	ldrb r2, [r4, #3]
	ldrh r0, [r4, #4]
	orr ip, r0, r2, lsl #16
	cmp ip, r1
	bhi _020d1b94
	bhs _020d1cdc
	ldr r0, _020d1d94 ; =0x000300ff
	cmp ip, r0
	bhi _020d1b7c
	bhs _020d1c48
	sub r0, ip, #0x30000
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020d1d7c
_020d1b68: ; jump table
	b _020d1bdc ; case 0
	b _020d1bdc ; case 1
	b _020d1bdc ; case 2
	b _020d1bdc ; case 3
	b _020d1bdc ; case 4
_020d1b7c:
	cmp ip, #0x40000
	beq _020d1cb8
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1b94:
	add r0, r1, #2
	cmp ip, r0
	bhi _020d1bc0
	bhs _020d1d34
	add r0, r1, #1
	cmp ip, r0
	beq _020d1d08
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1bc0:
	add r0, r1, #3
	cmp ip, r0
	beq _020d1d60
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1bdc:
	ldr lr, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	ldrsh r5, [r5, #0x78]
	add r0, sp, #0x2c
	add r3, sp, #0x1c
	str lr, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r1, [sp, #0x34]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	strh r5, [sp, #0x28]
	ldrh r0, [r4, #6]
	ldr r1, _020d1d98 ; =0x020af2d8
	add r2, sp, #0x1c
	cmp r0, #0
	ldr r0, _020d1d9c ; =data_027e0f64
	movne r3, #1
	ldr r0, [r0]
	ldrb r1, [r1, ip]
	ldr r0, [r0, #4]
	moveq r3, #0
	bl func_ov00_02087338
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1c48:
	ldr lr, [sp, #0x38]
	ldrsh ip, [r5, #0x78]
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	add r0, sp, #0x10
	add r5, sp, #0
	str lr, [sp, #0x10]
	ldr r3, _020d1d9c ; =data_027e0f64
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr r0, [r3]
	strh ip, [sp, #0xc]
	ldr r5, [r0, #4]
	bl func_ov00_02087ef0
	ldrh r2, [r4, #6]
	mov r1, r0
	mov r0, r5
	cmp r2, #0
	movne r3, #1
	moveq r3, #0
	add r2, sp, #0
	bl func_ov00_02087338
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1cb8:
	mov r0, r5
	ldr r2, [r0]
	ldrsh r1, [r4, #6]
	ldr r2, [r2, #0x88]
	blx r2
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1cdc:
	ldr r0, _020d1da0 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	add r0, r0, #0x200
	mov r1, #0
	strh r1, [r0, #0x8a]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1d08:
	ldr r0, _020d1da0 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	add r0, r0, #0x200
	mov r1, #1
	strh r1, [r0, #0x8a]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1d34:
	ldr r0, _020d1da0 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	add r0, r0, #0x200
	mov r1, #2
	strh r1, [r0, #0x8a]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020d1d60:
	ldr r0, _020d1da0 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	add r0, r0, #0x200
	mov r1, #3
	strh r1, [r0, #0x8a]
_020d1d7c:
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d1af0
_020d1d8c: .word data_027e0fe4
_020d1d90: .word 0x00040001
_020d1d94: .word 0x000300ff
.ifdef EUR
_020d1d98: .word 0x020af2d8
.endif
.ifdef USA
_020d1d98: .word 0x020af278
.endif
_020d1d9c: .word data_027e0f64
_020d1da0: .word gItemManager

	.global func_ov00_020d1da4
	arm_func_start func_ov00_020d1da4
func_ov00_020d1da4: ; 0x020d1da4
	stmdb sp!, {r4, lr}
	ldr r1, _020d1dd0 ; =data_027e0fe4
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0x20
	bl func_ov00_020c3674
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl func_ov00_020d29d4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d1da4
_020d1dd0: .word data_027e0fe4

	.global func_ov00_020d1dd4
	arm_func_start func_ov00_020d1dd4
func_ov00_020d1dd4: ; 0x020d1dd4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x40
	mov sb, r0
	ldr r0, [sb, #0x4c]
	mov r8, r1
	tst r0, #1
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [sb, #0x54]
	mov r6, #0
	cmp r0, #0
	beq _020d1e24
	ldr r0, _020d204c ; =data_027e0f64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x160]
	cmp r0, #0xc
	cmpne r0, #6
	movne r6, #1
_020d1e24:
	cmp r6, #0
	beq _020d1e4c
	ldr r0, _020d204c ; =data_027e0f64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl func_ov00_02089b00
	cmp r0, #0
	addne sp, sp, #0x40
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020d1e4c:
	ldrb r1, [sb, #0x55]
	ldr r0, _020d2050 ; =data_027e0fe4
	add r2, sb, #0x20
	add r7, r2, r1, lsl #3
	ldr r0, [r0]
	mov r1, r7
	bl func_ov00_020c3674
	ldr r1, _020d2050 ; =data_027e0fe4
	mov r4, r0
	ldr r0, [r1]
	add r1, sb, #0x20
	bl func_ov00_020c3674
	ldr r2, [r0]
	add r1, sp, #0x34
	ldr r2, [r2, #0x34]
	mov r5, r0
	blx r2
	ldrb r0, [r5, #0x11c]
	cmp r0, #0
	beq _020d1fd8
	ldr r0, _020d2054 ; =data_027e0c68
	ldr r1, [r0, #0x20]
	cmp r1, sb
	moveq r0, #1
	beq _020d1edc
	mov r1, sb
	bl func_02036d30
	cmp r0, #0
	moveq r0, #0
	beq _020d1edc
	ldr r1, [sb, #0x4c]
	ldr r0, _020d2058 ; =data_ov00_020e8ae8
	bic r1, r1, #2
	str r1, [sb, #0x4c]
	str sb, [r0, #0x20]
	mov r0, #1
_020d1edc:
	cmp r0, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	beq _020d1f54
	ldr lr, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldrsh ip, [r4, #0x78]
	add r0, sp, #0x10
	add r6, sp, #0
	str lr, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldmia r0, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r3, _020d204c ; =data_027e0f64
	mov r0, r4
	strh ip, [sp, #0xc]
	ldr r1, [r0]
	ldr r2, [r3]
	ldr r1, [r1, #0x38]
	ldr r6, [r2, #4]
	blx r1
	mov r1, r0
	mov r0, r6
	add r2, sp, #0
	mov r3, #1
	bl func_ov00_020876bc
_020d1f54:
	ldr r0, [sb, #0x40]
	cmp r0, #0
	beq _020d1f74
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	ble _020d1f74
	bl func_02038b40
_020d1f74:
	add r0, sp, #0x1c
	add r1, sp, #0x34
	bl func_020376c0
	mov r3, #1
	add r2, sp, #0x1c
	mov r0, sb
	mov r1, r8
	str r3, [sp, #0x28]
	bl func_020385d0
	ldr r1, _020d205c ; =data_027e0fc8
	str r0, [sb, #0x40]
	ldr r0, [r1]
	cmp r0, #0
	ldrne r1, [r4, #4]
	ldrne r0, _020d2060 ; =0x434d5347
	cmpne r1, r0
	subne r0, r0, #0xfd000000
	cmpne r1, r0
	ldrne r0, _020d2064 ; =0x4d534741
	cmpne r1, r0
	beq _020d1ff8
	bl func_020385b8
	mov r1, r7
	bl _ZN17LinkStateInteract18func_ov00_020abc18EP8ActorRef
	b _020d1ff8
_020d1fd8:
	ldrb r4, [r8, #1]
	ldrh r1, [r8, #2]
	ldr r0, _020d2054 ; =data_027e0c68
	add r2, sp, #0x34
	mov r3, sb
	orr r1, r1, r4, lsl #16
	bl func_02036da8
	str r0, [sb, #0x40]
_020d1ff8:
	ldr r0, _020d2054 ; =data_027e0c68
	ldrb r3, [r8, #1]
	ldrh r2, [r8, #2]
	ldr r1, [r0, #0x14]
	mov r0, #0x1c
	orr r3, r2, r3, lsl #16
	ldr r2, [r1]
	mov r1, r3, lsr #0x10
	mla r0, r1, r0, r2
	mov r1, r3, lsl #0x10
	mov r1, r1, lsr #0x10
	bl func_02037258
	mov r1, r0
	mov r0, r5
	ldr r3, [r0]
	ldr r2, [sb, #0x40]
	ldr r3, [r3, #0x68]
	blx r3
	mov r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov00_020d1dd4
_020d204c: .word data_027e0f64
_020d2050: .word data_027e0fe4
_020d2054: .word data_027e0c68
_020d2058: .word data_ov00_020e8ae8
_020d205c: .word data_027e0fc8
_020d2060: .word 0x434d5347
_020d2064: .word 0x4d534741

	.global func_ov00_020d2068
	arm_func_start func_ov00_020d2068
func_ov00_020d2068: ; 0x020d2068
	stmdb sp!, {r3, lr}
	ldrh r3, [r1, #2]
	cmp r3, #0
	beq _020d208c
	ldr r2, [r0, #0x4c]
	cmp r3, #6
	tst r2, #1
	mvneq r0, #0
	ldmeqia sp!, {r3, pc}
_020d208c:
	cmp r3, #0
	beq _020d20a0
	cmp r3, #6
	beq _020d20b4
	b _020d20e0
_020d20a0:
	ldrh r2, [r1, #4]
	mov r1, r0
	add r0, r0, #0x4c
	bl func_ov00_020d36d8
	ldmia sp!, {r3, pc}
_020d20b4:
	ldrh r2, [r1, #4]
	mov r3, #1
	mov r1, r2, lsr #0x5
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x50]
	and r1, r2, #0x1f
	tst r0, r3, lsl r1
	movne r3, #0
	mov r0, r3, lsl #0x18
	mov r0, r0, asr #0x18
	ldmia sp!, {r3, pc}
_020d20e0:
	bl func_02037b88
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d2068

	.global func_ov00_020d20e8
	arm_func_start func_ov00_020d20e8
func_ov00_020d20e8: ; 0x020d20e8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [r7, #0x4c]
	mov r6, r1
	tst r0, #1
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	tst r0, #2
	ldreq r0, _020d27bc ; =data_027e0c68
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	bne _020d2180
	ldr r0, _020d27c0 ; =data_027e0fe4
	add r1, r7, #0x20
	ldr r0, [r0]
	bl func_ov00_020c3674
	ldr r0, _020d27bc ; =data_027e0c68
	ldr r1, [r0, #0x20]
	cmp r1, r7
	moveq r0, #1
	beq _020d2170
	mov r1, r7
	bl func_02036d30
	cmp r0, #0
	moveq r0, #0
	beq _020d2170
	ldr r1, [r7, #0x4c]
	ldr r0, _020d27c4 ; =data_ov00_020e8ae8
	bic r1, r1, #2
	str r1, [r7, #0x4c]
	str r7, [r0, #0x20]
	mov r0, #1
_020d2170:
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020d2180:
	ldrb r2, [r6, #1]
	cmp r2, #0xf
	bgt _020d21bc
	bge _020d22d0
	cmp r2, #3
	bgt _020d21b0
	cmp r2, #2
	blt _020d27a8
	beq _020d224c
	cmp r2, #3
	beq _020d2278
	b _020d27a8
_020d21b0:
	cmp r2, #9
	beq _020d2330
	b _020d27a8
_020d21bc:
	cmp r2, #0x32
	bgt _020d21d4
	bge _020d2308
	cmp r2, #0x10
	beq _020d22ec
	b _020d27a8
_020d21d4:
	sub r0, r2, #0x33
	cmp r0, #0x19
	addls pc, pc, r0, lsl #2
	b _020d27a8
_020d21e4: ; jump table
	b _020d22a8 ; case 0
	b _020d23bc ; case 1
	b _020d2420 ; case 2
	b _020d2478 ; case 3
	b _020d24a8 ; case 4
	b _020d24a8 ; case 5
	b _020d2538 ; case 6
	b _020d2538 ; case 7
	b _020d2538 ; case 8
	b _020d261c ; case 9
	b _020d26ac ; case 10
	b _020d236c ; case 11
	b _020d2400 ; case 12
	b _020d2538 ; case 13
	b _020d2538 ; case 14
	b _020d2538 ; case 15
	b _020d26ec ; case 16
	b _020d2710 ; case 17
	b _020d2730 ; case 18
	b _020d27a8 ; case 19
	b _020d27a8 ; case 20
	b _020d2694 ; case 21
	b _020d25f8 ; case 22
	b _020d27a8 ; case 23
	b _020d27a8 ; case 24
	b _020d274c ; case 25
_020d224c:
	ldr r0, [r6, #4]
	add r4, r7, #0x50
	mov r3, r0, lsr #0x5
	ldr r2, [r4, r3, lsl #2]
	and r0, r0, #0x1f
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [r4, r3, lsl #2]
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2278:
	ldr r0, [r6, #4]
	add r4, r7, #0x50
	mov r3, r0, lsr #0x5
	and r0, r0, #0x1f
	mov r1, #1
	mvn r1, r1, lsl r0
	ldr r2, [r4, r3, lsl #2]
	add sp, sp, #8
	and r1, r2, r1
	mov r0, #2
	str r1, [r4, r3, lsl #2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d22a8:
	mov r0, r7
	ldr r2, [r0]
	ldr r1, [r6, #4]
	ldr r2, [r2, #0x34]
	blx r2
	cmp r0, #0
	movne r0, #2
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d22d0:
	ldrh r2, [r6, #4]
	ldrh r1, [r6, #6]
	add sp, sp, #8
	mov r0, #2
	orr r1, r1, r2, lsl #16
	str r1, [r7, #0x58]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d22ec:
	ldr r0, _020d27c8 ; =data_027e0f74
	ldr r1, [r6, #4]
	ldr r0, [r0]
	bl func_ov00_02097968
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2308:
	mov r0, r7
	ldr r2, [r0]
	ldr r1, [r6, #4]
	ldr r2, [r2, #0x38]
	blx r2
	cmp r0, #0
	movne r0, #2
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2330:
	ldr r0, _020d27c0 ; =data_027e0fe4
	ldrb r1, [r7, #0x55]
	add r2, r7, #0x20
	ldr r0, [r0]
	add r1, r2, r1, lsl #3
	bl func_ov00_020c3674
	ldr r2, [r0]
	ldr r1, [r6, #4]
	ldr r2, [r2, #0x6c]
	blx r2
	cmp r0, #0
	movne r0, #2
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d236c:
	ldr r0, _020d27c0 ; =data_027e0fe4
	ldrh r2, [r6, #4]
	add r1, r7, #0x20
	ldr r0, [r0]
	add r1, r1, r2, lsl #3
	ldrh r4, [r6, #6]
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020d23b0
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x70]
	blx r2
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_020d23b0:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d23bc:
	ldr r0, _020d27c0 ; =data_027e0fe4
	ldrh r1, [r6, #4]
	add r2, r7, #0x20
	ldrh r3, [r6, #6]
	ldr r0, [r0]
	add r1, r2, r1, lsl #3
	add r4, r2, r3, lsl #3
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020d23f4
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x7c]
	blx r2
_020d23f4:
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2400:
	ldr r4, [r6, #4]
	bl func_020385b8
	add r1, r7, #0x20
	add r1, r1, r4, lsl #3
	bl _ZN17LinkStateInteract18func_ov00_020abbdcEP8ActorRef
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2420:
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #7]
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	cmp r1, #4
	ldrhs r0, _020d27cc ; =data_ov00_020df28c
	ldrhssh r3, [r0]
	bhs _020d2450
	ldr r0, _020d27d0 ; =data_ov00_020df28c
	mov r1, r1, lsl #0x1
	ldrsh r3, [r0, r1]
_020d2450:
	ldrh r1, [r6, #4]
	ldr r0, _020d27d4 ; =data_027e0fc8
	ldr r0, [r0]
	and r1, r1, #0xff
	bl func_ov00_020bc320
	cmp r0, #0
	movne r0, #2
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2478:
	ldrh r0, [r6, #6]
	ldrh r1, [r6, #4]
	tst r0, #0xff
	ldr r0, _020d27d4 ; =data_027e0fc8
	movne r2, #1
	ldr r0, [r0]
	moveq r2, #0
	and r1, r1, #0xff
	bl func_ov00_020bc398
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d24a8:
	ldrh r1, [r6, #4]
	ldrb r3, [r6, #7]
	ldrb r0, [r6, #6]
	add r2, r7, #0x20
	and r4, r1, #0xff
	ldr r1, [r2, r3, lsl #3]
	cmp r0, #0
	ldr r0, _020d27c0 ; =data_027e0fe4
	str r1, [sp]
	add r2, r2, r3, lsl #3
	ldr r2, [r2, #4]
	movne r5, #1
	ldr r0, [r0]
	add r1, sp, #0
	str r2, [sp, #4]
	moveq r5, #0
	bl func_ov00_020c3674
	ldrb r1, [r6, #1]
	ldr r3, [r0]
	cmp r1, #0x37
	mov r1, r4
	bne _020d2520
	ldr r3, [r3, #0x90]
	mov r2, r5
	blx r3
	cmp r0, #0
	movne r0, #2
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2520:
	ldr r3, [r3, #0x94]
	mov r2, r5
	blx r3
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2538:
	ldrh r1, [r6, #4]
	ldrh r0, [r6, #6]
	and r4, r1, #0xff
	cmp r0, #0
	movne r5, #1
	sub r1, r2, #0x39
	moveq r5, #0
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _020d25ec
_020d2560: ; jump table
	b _020d2588 ; case 0
	b _020d2588 ; case 1
	b _020d2588 ; case 2
	b _020d25ec ; case 3
	b _020d25ec ; case 4
	b _020d25ec ; case 5
	b _020d25ec ; case 6
	b _020d25bc ; case 7
	b _020d25bc ; case 8
	b _020d25bc ; case 9
_020d2588:
	ldr r0, _020d27d8 ; =gItemManager
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3, #0x90]
	mov r2, r5
	blx r3
	cmp r0, #0
	movne r0, #2
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d25bc:
	ldr r0, _020d27d8 ; =gItemManager
	sub r1, r2, #0x40
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3, #0x94]
	mov r2, r5
	blx r3
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d25ec:
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d25f8:
	ldr r0, _020d27d8 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	mov r1, #1
	strb r1, [r0, #0x28e]
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d261c:
	ldr r0, _020d27dc ; =data_027e0f64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl func_ov00_02089a2c
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x1d]
	cmp r0, #0xff
	bne _020d2680
	ldr r0, _020d27dc ; =data_027e0f64
	ldrh r1, [r6, #4]
	ldr r0, [r0]
	ldrh r2, [r6, #6]
	ldr r0, [r0, #4]
	and r1, r1, #0xff
	bl func_ov00_02089068
	mov r0, #1
	strb r0, [r7, #0x54]
	ldrh r1, [r6, #4]
	add sp, sp, #8
	mov r0, #0
	strb r1, [r7, #0x1d]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2680:
	mov r0, #0xff
	strb r0, [r7, #0x1d]
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2694:
	ldr r1, [r7, #0x4c]
	add sp, sp, #8
	orr r1, r1, #8
	mov r0, #2
	str r1, [r7, #0x4c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d26ac:
	ldr r0, _020d27d8 ; =gItemManager
	mov r1, #0
	ldr r0, [r0]
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _020d26d4
	cmp r1, #1
	beq _020d26dc
	b _020d26e0
_020d26d4:
	bl func_ov00_020ba53c
	b _020d26e0
_020d26dc:
	bl func_ov00_020ba4e4
_020d26e0:
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d26ec:
	ldr r0, _020d27d4 ; =data_027e0fc8
	ldr r1, [r6, #4]
	ldr r0, [r0]
	bl func_ov00_020bc2d4
	cmp r0, #0
	movne r0, #2
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2710:
	ldrh r2, [r6, #4]
	ldr r0, _020d27e0 ; =data_ov00_020df294
	ldrh r1, [r6, #6]
	ldr r0, [r0, r2, lsl #2]
	bl func_ov00_020d1870
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2730:
	ldr r1, [r6, #4]
	ldr r0, _020d27e0 ; =data_ov00_020df294
	ldr r0, [r0, r1, lsl #2]
	bl func_ov00_020d18b4
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d274c:
	ldr r0, _020d27d8 ; =gItemManager
	mov r1, #0x3c
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl func_01ff9b4c
	ldr r1, _020d27e4 ; =data_027e103c
	mov r4, r0
	ldr r0, [r1]
	bl func_ov00_020cfbb0
	add r0, r0, #0x3b
	mov r1, #0x3c
	bl func_01ff9b4c
	sub r0, r4, r0
	ldr r2, _020d27e8 ; =data_027e0fbc
	ldr r1, _020d27ec ; =0x00007fff
	mov r0, r0, lsl #0x10
	and r1, r1, r0, lsr #16
	ldr r0, [r2]
	orr r1, r1, #0x8000
	strh r1, [r0, #0xa]
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d27a8:
	mov r0, r7
	mov r1, r6
	bl func_02037f58
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020d20e8
_020d27bc: .word data_027e0c68
_020d27c0: .word data_027e0fe4
_020d27c4: .word data_ov00_020e8ae8
_020d27c8: .word data_027e0f74
_020d27cc: .word data_ov00_020df28c
_020d27d0: .word data_ov00_020df28c
_020d27d4: .word data_027e0fc8
_020d27d8: .word gItemManager
_020d27dc: .word data_027e0f64
_020d27e0: .word data_ov00_020df294
_020d27e4: .word data_027e103c
_020d27e8: .word data_027e0fbc
_020d27ec: .word 0x00007fff

	.global func_ov00_020d27f0
	arm_func_start func_ov00_020d27f0
func_ov00_020d27f0: ; 0x020d27f0
	stmdb sp!, {r4, lr}
	ldr r1, _020d281c ; =data_027e0fe4
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0x20
	bl func_ov00_020c3674
	mov r1, r0
	mov r0, r4
	mov r2, #0
	bl func_ov00_020d29d4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d27f0
_020d281c: .word data_027e0fe4

	.global func_ov00_020d2820
	arm_func_start func_ov00_020d2820
func_ov00_020d2820: ; 0x020d2820
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _020d28b0 ; =data_027e0fe4
	mov r4, r0
	ldr r0, [r2]
	mov r5, r1
	add r1, r4, #0x20
	bl func_ov00_020c3674
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x78]
	blx r2
	cmp r0, #0
	beq _020d28a8
	ldr r6, _020d28b0 ; =data_027e0fe4
	add r8, r4, #0x28
	mov r7, #1
	mvn r5, #0
_020d2864:
	ldr r0, [r4, #0x20]
	cmp r0, r5
	beq _020d2890
	ldr r0, [r6]
	mov r1, r8
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020d2890
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
	blx r1
_020d2890:
	add r7, r7, #1
	cmp r7, #4
	add r8, r8, #8
	blt _020d2864
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020d28a8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2820
_020d28b0: .word data_027e0fe4

	.global func_ov00_020d28b4
	arm_func_start func_ov00_020d28b4
func_ov00_020d28b4: ; 0x020d28b4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x28
	mov r8, r0
	strb r1, [r8, #0x55]
	ldr r0, _020d29cc ; =data_027e0fe4
	add r2, r8, #0x20
	and r1, r1, #0xff
	add r6, r2, r1, lsl #3
	ldr r0, [r0]
	mov r1, r6
	bl func_ov00_020c3674
	ldr r2, [r0]
	add r1, sp, #0x1c
	ldr r2, [r2, #0x34]
	mov r4, r0
	blx r2
	ldr sl, _020d29cc ; =data_027e0fe4
	add r7, r8, #0x20
	mov r5, #0
	mvn sb, #0
_020d2904:
	ldr r0, [r6]
	cmp r0, sb
	beq _020d2934
	ldr r0, [sl]
	mov r1, r7
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020d2934
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #0x74]
	blx r2
_020d2934:
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #8
	blt _020d2904
	bl func_020385b8
	mov r1, r6
	bl _ZN17LinkStateInteract18func_ov00_020abba0EP8ActorRef
	ldrb r0, [r8, #0x54]
	cmp r0, #0
	beq _020d29c0
	ldr r0, _020d29d0 ; =data_027e0f64
	ldr r6, [r0]
	ldr r0, [r6, #4]
	ldr r0, [r0, #0x160]
	cmp r0, #0xc
	bne _020d29c0
	ldr r5, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldrsh r4, [r4, #0x78]
	add r0, sp, #0x10
	add r3, sp, #0
	str r5, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	strh r4, [sp, #0xc]
	ldr r4, [r6, #4]
	bl func_ov00_02087ef0
	mov r1, r0
	add r2, sp, #0
	mov r0, r4
	mov r3, #1
	bl func_ov00_02087338
_020d29c0:
	mov r0, #1
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov00_020d28b4
_020d29cc: .word data_027e0fe4
_020d29d0: .word data_027e0f64

	.global func_ov00_020d29d4
	arm_func_start func_ov00_020d29d4
func_ov00_020d29d4: ; 0x020d29d4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xb0
	mov r7, r0
	ldr r0, [r7, #0x40]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	beq _020d2a0c
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x5c]
	cmp r0, #0
	addgt sp, sp, #0xb0
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
_020d2a0c:
	ldr r0, _020d2b68 ; =data_027e0f64
	ldrb r4, [r6, #0x11c]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x160]
	cmp r0, #5
	bne _020d2a8c
	ldrb r0, [r7, #0x54]
	cmp r0, #0
	beq _020d2a8c
	add r0, sp, #0
	bl func_ov00_0209a4f4
	ldr r0, _020d2b6c ; =data_027e0f74
	add r1, sp, #0
	ldr r0, [r0]
	bl func_ov00_02097bdc
	cmp r0, #0
	bne _020d2a68
	add r0, sp, #0
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2a68:
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, sp, #0
	blt _020d2a88
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d2a88:
	bl func_ov00_0209a508
_020d2a8c:
	cmp r4, #0
	beq _020d2ad8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl func_ov00_020d2b78
	cmp r0, #0
	addeq sp, sp, #0xb0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7, #0x54]
	cmp r0, #0
	beq _020d2ad8
	mov r0, r7
	bl func_ov00_020d2c18
	cmp r5, #0
	addeq sp, sp, #0xb0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020d2ad8:
	cmp r4, #0
	cmpeq r5, #0
	bne _020d2b14
	ldrb r0, [r7, #0x54]
	cmp r0, #0
	beq _020d2b14
	ldr r0, _020d2b68 ; =data_027e0f64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x160]
	cmp r0, #0xc
	cmpne r0, #6
	addeq sp, sp, #0xb0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020d2b14:
	ldr r0, _020d2b70 ; =data_027e0c68
	mov r1, r7
	bl func_02036d4c
	ldr r0, _020d2b70 ; =data_027e0c68
	ldr r0, [r0, #0x20]
	cmp r0, #0
	ldreq r0, _020d2b74 ; =data_ov00_020e8ae8
	moveq r1, #0
	streq r1, [r0, #0x20]
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq _020d2b5c
	mov r1, #0
	str r1, [r0, #0x38]
	strh r1, [r0, #0x3c]
	ldr r0, [r7, #0x40]
	str r1, [r0, #4]
	str r1, [r7, #0x40]
_020d2b5c:
	mov r0, #1
	add sp, sp, #0xb0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020d29d4
_020d2b68: .word data_027e0f64
_020d2b6c: .word data_027e0f74
_020d2b70: .word data_027e0c68
_020d2b74: .word data_ov00_020e8ae8

	.global func_ov00_020d2b78
	arm_func_start func_ov00_020d2b78
func_ov00_020d2b78: ; 0x020d2b78
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r4, r1
	cmp r2, #0
	bne _020d2ba8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x8c]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_020d2ba8:
	mov r0, r4
	mov r1, #0
	bl func_ov00_020c1908
	ldr r7, _020d2c14 ; =data_027e0fe4
	add r5, r6, #0x28
	mov r4, #1
	mvn r8, #0
_020d2bc4:
	ldr r0, [r5]
	cmp r0, r8
	beq _020d2bfc
	ldr r0, [r7]
	mov r1, r5
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020d2bfc
	ldr r1, [r0]
	ldr r1, [r1, #0x84]
	blx r1
	add r0, r6, r4, lsl #3
	str r8, [r0, #0x20]
	str r8, [r0, #0x24]
_020d2bfc:
	add r4, r4, #1
	cmp r4, #4
	add r5, r5, #8
	blt _020d2bc4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2b78
_020d2c14: .word data_027e0fe4

	.global func_ov00_020d2c18
	arm_func_start func_ov00_020d2c18
func_ov00_020d2c18: ; 0x020d2c18
	stmdb sp!, {r3, lr}
	ldr r1, _020d2c54 ; =data_027e0f64
	ldr r1, [r1]
	ldr r2, [r1, #4]
	ldr r1, [r2, #0x160]
	cmp r1, #0xc
	cmpne r1, #6
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #0x4c]
	tst r0, #8
	moveq r1, #1
	movne r1, #0
	mov r0, r2
	bl func_ov00_02087ab0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2c18
_020d2c54: .word data_027e0f64

	.global func_ov00_020d2c58
	arm_func_start func_ov00_020d2c58
func_ov00_020d2c58: ; 0x020d2c58
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, [r1, #0x44]
	mov r4, r0
	cmp ip, #0
	beq _020d2c9c
	add r3, sp, #0x18
	ldr r2, [r1, #0x48]
	ldr r1, [r3]
	blx ip
	ldr r0, [r4]
	str r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_020d2c9c:
	add r2, sp, #0x18
	ldr r2, [r2]
	bl func_020386b8
	ldr r0, [r4]
	str r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov00_020d2c58

	.global func_ov00_020d2cc0
	arm_func_start func_ov00_020d2cc0
func_ov00_020d2cc0: ; 0x020d2cc0
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	bl func_02037750
	ldr r0, _020d2cf8 ; =data_ov00_020e8b64
	mov r1, #0
	str r0, [r4]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x21]
	str r1, [r4, #0x24]
	strb r1, [r4, #0x28]
	mov r0, r4
	strb r1, [r4, #0x29]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2cc0
_020d2cf8: .word data_ov00_020e8b64

	.global func_ov00_020d2cfc
	arm_func_start func_ov00_020d2cfc
func_ov00_020d2cfc: ; 0x020d2cfc
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	bl func_02037750
	ldr r0, _020d2d34 ; =data_ov00_020e8b64
	mov r1, #0
	str r0, [r4]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x21]
	str r1, [r4, #0x24]
	strb r1, [r4, #0x28]
	mov r0, r4
	strb r1, [r4, #0x29]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2cfc
_020d2d34: .word data_ov00_020e8b64

	.global func_ov00_020d2d38
	arm_func_start func_ov00_020d2d38
func_ov00_020d2d38: ; 0x020d2d38
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020d2da8 ; =data_027e0e60
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	add r1, r5, #0x20
	bl func_ov00_020840c4
	ldr r1, [r0]
	ldr r1, [r1, #0x78]
	blx r1
	mov r1, r0
	cmp r1, #0x5c
	beq _020d2d84
	ldr r0, _020d2dac ; =data_027e0f64
	mov r2, #1
	ldr r0, [r0]
	mov r3, #0
	ldr r0, [r0, #4]
	bl func_ov00_0208766c
_020d2d84:
	ldr r0, _020d2db0 ; =data_027e0c68
	mov r1, r5
	bl func_02036d30
	mov r2, #0
	mov r0, r5
	mov r1, r4
	strb r2, [r5, #0x28]
	bl func_02037844
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2d38
_020d2da8: .word data_027e0e60
_020d2dac: .word data_027e0f64
_020d2db0: .word data_027e0c68

	.global func_ov00_020d2db4
	arm_func_start func_ov00_020d2db4
func_ov00_020d2db4: ; 0x020d2db4
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x24]
	cmp r2, #0
	beq _020d2de0
	add r1, r2, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	ble _020d2de0
	ldrb r1, [r2, #0x151]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
_020d2de0:
	bl func_02037918
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d2db4

	.global func_ov00_020d2de8
	arm_func_start func_ov00_020d2de8
func_ov00_020d2de8: ; 0x020d2de8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r2, _020d2f00 ; =data_027e0e60
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	add r1, r6, #0x20
	bl func_ov00_020840c4
	mov r4, r0
	add r0, sp, #0
	bl func_02037628
	ldrb r0, [r6, #0x29]
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #0xc]
	bne _020d2e8c
	cmp r4, #0
	beq _020d2e8c
	ldr r1, [r4, #0x18]
	mov r0, r4
	str r1, [sp]
	ldr r1, [r4, #0x1c]
	str r1, [sp, #4]
	ldr r1, [r4, #0x20]
	str r1, [sp, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	cmp r0, #0x1f
	beq _020d2e78
	cmp r0, #0x23
	beq _020d2e84
	cmp r0, #0x33
	moveq r0, #5
	streq r0, [sp, #0xc]
	b _020d2e8c
_020d2e78:
	mov r0, #2
	str r0, [sp, #0xc]
	b _020d2e8c
_020d2e84:
	mov r0, #3
	str r0, [sp, #0xc]
_020d2e8c:
	ldrb ip, [r5, #1]
	ldrh r1, [r5, #2]
	ldr r0, _020d2f04 ; =data_027e0c68
	add r2, sp, #0
	mov r3, r6
	orr r1, r1, ip, lsl #16
	bl func_02036f68
	str r0, [r6, #0x24]
	ldr r0, _020d2f04 ; =data_027e0c68
	ldrb r3, [r5, #1]
	ldrh r1, [r5, #2]
	ldr r2, [r0, #0x14]
	mov r0, #0x1c
	orr r5, r1, r3, lsl #16
	ldr r3, [r2]
	mov r2, r5, lsr #0x10
	mov r1, r5, lsl #0x10
	mla r0, r2, r0, r3
	mov r1, r1, lsr #0x10
	bl func_02037258
	mov r1, r0
	mov r0, r4
	ldr r3, [r0]
	ldr r2, [r6, #0x24]
	ldr r3, [r3, #0x50]
	blx r3
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2de8
_020d2f00: .word data_027e0e60
_020d2f04: .word data_027e0c68

	.global func_ov00_020d2f08
	arm_func_start func_ov00_020d2f08
func_ov00_020d2f08: ; 0x020d2f08
	stmdb sp!, {r4, lr}
	sub sp, sp, #0xb0
	ldr r1, _020d2fe8 ; =data_027e0f64
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x160]
	cmp r0, #5
	bne _020d2f84
	add r0, sp, #0
	bl func_ov00_0209a4f4
	ldr r0, _020d2fec ; =data_027e0f74
	add r1, sp, #0
	ldr r0, [r0]
	bl func_ov00_02097bdc
	cmp r0, #0
	bne _020d2f60
	add r0, sp, #0
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r4, pc}
_020d2f60:
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, sp, #0
	blt _020d2f80
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r4, pc}
_020d2f80:
	bl func_ov00_0209a508
_020d2f84:
	ldrb r0, [r4, #0x28]
	cmp r0, #0
	bne _020d2fc4
	ldr r0, _020d2fe8 ; =data_027e0f64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r1, [r0, #0x160]
	cmp r1, #0xc
	bne _020d2fb0
	mov r1, #1
	bl func_ov00_02087ab0
_020d2fb0:
	mov r0, #1
	strb r0, [r4, #0x28]
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r4, pc}
_020d2fc4:
	ldr r0, _020d2fe8 ; =data_027e0f64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x160]
	cmp r0, #0xc
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xb0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d2f08
_020d2fe8: .word data_027e0f64
_020d2fec: .word data_027e0f74

	.global func_ov00_020d2ff0
	arm_func_start func_ov00_020d2ff0
func_ov00_020d2ff0: ; 0x020d2ff0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d2ff0

	.global func_ov00_020d3004
	arm_func_start func_ov00_020d3004
func_ov00_020d3004: ; 0x020d3004
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3004

	.global func_ov00_020d3020
	arm_func_start func_ov00_020d3020
func_ov00_020d3020: ; 0x020d3020
	stmdb sp!, {r4, lr}
	ldr r1, _020d3060 ; =data_027e0fe0
	mov r0, #0x188
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	movs r4, r0
	beq _020d3058
	bl func_ov00_020d3910
	ldr r1, _020d3064 ; =data_ov00_020e8ba0
	add r0, r4, #0x160
	str r1, [r4]
	bl func_ov00_020d307c
_020d3058:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3020
_020d3060: .word data_027e0fe0
_020d3064: .word data_ov00_020e8ba0

	.global func_ov00_020d3068
	arm_func_start func_ov00_020d3068
func_ov00_020d3068: ; 0x020d3068
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3068

	.global func_ov00_020d307c
	arm_func_start func_ov00_020d307c
func_ov00_020d307c: ; 0x020d307c
	stmdb sp!, {r4, lr}
	mov r1, #0x1000000
	mov r2, #0
	mov r4, r0
	bl func_02037750
	ldr r0, _020d30ac ; =data_ov00_020e8c78
	mvn r1, #0
	str r0, [r4]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x24]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d307c
_020d30ac: .word data_ov00_020e8c78

	.global func_ov00_020d30b0
	arm_func_start func_ov00_020d30b0
func_ov00_020d30b0: ; 0x020d30b0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r4, r0
	add r0, sp, #0
	mov r5, r1
	bl func_02037628
	ldr r0, _020d3128 ; =data_027e0fe4
	add r1, r4, #0x20
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	beq _020d30f8
	ldr r1, [r0, #0x48]
	str r1, [sp]
	ldr r1, [r0, #0x4c]
	str r1, [sp, #4]
	ldr r0, [r0, #0x50]
	str r0, [sp, #8]
_020d30f8:
	ldrb ip, [r5, #1]
	ldrh r1, [r5, #2]
	ldr r0, _020d312c ; =data_027e0c68
	add r2, sp, #0
	mov r3, r4
	orr r1, r1, ip, lsl #16
	bl func_02036da8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d30b0
_020d3128: .word data_027e0fe4
_020d312c: .word data_027e0c68

	.global func_ov00_020d3130
	arm_func_start func_ov00_020d3130
func_ov00_020d3130: ; 0x020d3130
	ldr r0, _020d3150 ; =data_027e0c68
	ldr r0, [r0, #0x38]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x5c]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d3130
_020d3150: .word data_027e0c68

	.global func_ov00_020d3154
	arm_func_start func_ov00_020d3154
func_ov00_020d3154: ; 0x020d3154
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x30]
	ldr r0, _020d318c ; =data_027e0c68
	add r1, r4, #0x160
	bl func_02036ce4
	ldrh r0, [r4, #0x22]
	cmp r0, #1
	bne _020d3184
	ldr r0, _020d318c ; =data_027e0c68
	add r1, r4, #0x160
	bl func_02036d30
_020d3184:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3154
_020d318c: .word data_027e0c68

	.global func_ov00_020d3190
	arm_func_start func_ov00_020d3190
func_ov00_020d3190: ; 0x020d3190
	stmdb sp!, {r4, lr}
	ldr r1, _020d3214 ; =data_027e0c68
	mov r4, r0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x160
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r0, #0x10000
	ldr r1, [r4, #0x178]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	ldmneia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xbc]
	blx r1
	cmp r0, #0
	moveq r0, #2
	streq r0, [r4, #0x130]
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020c3180
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3190
_020d3214: .word data_027e0c68

	.global func_ov00_020d3218
	arm_func_start func_ov00_020d3218
func_ov00_020d3218: ; 0x020d3218
	stmdb sp!, {r3, lr}
	bl func_ov00_020d3c80
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _020d324c ; =data_027e0c68
	ldr r0, [r0, #0x38]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x5c]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3218
_020d324c: .word data_027e0c68

	.global func_ov00_020d3250
	arm_func_start func_ov00_020d3250
func_ov00_020d3250: ; 0x020d3250
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d3ca8
	ldrh r0, [r4, #0x22]
	cmp r0, #1
	bne _020d3274
	ldr r0, _020d327c ; =data_027e0c68
	add r1, r4, #0x160
	bl func_02036d4c
_020d3274:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3250
_020d327c: .word data_027e0c68

	.global func_ov00_020d3280
	arm_func_start func_ov00_020d3280
func_ov00_020d3280: ; 0x020d3280
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x160
	bl func_0203780c
	mov r0, r4
	bl func_ov00_020d3974
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3280

	.global func_ov00_020d32a8
	arm_func_start func_ov00_020d32a8
func_ov00_020d32a8: ; 0x020d32a8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x160
	bl func_0203780c
	mov r0, r4
	bl func_ov00_020d3974
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d32a8

	.global func_ov00_020d32c8
	arm_func_start func_ov00_020d32c8
func_ov00_020d32c8: ; 0x020d32c8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d32c8

	.global func_ov00_020d32e4
	arm_func_start func_ov00_020d32e4
func_ov00_020d32e4: ; 0x020d32e4
	stmdb sp!, {r3, lr}
	ldr r1, _020d3310 ; =data_027e0fe0
	mov r0, #0x1c0
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020d3314
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d32e4
_020d3310: .word data_027e0fe0

	.global func_ov00_020d3314
	arm_func_start func_ov00_020d3314
func_ov00_020d3314: ; 0x020d3314
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d3910
	ldr r2, _020d3344 ; =data_ov00_020e8cb4
	add r0, r4, #0x160
	mov r1, #0x1000000
	str r2, [r4]
	bl func_ov00_020d18f4
	mvn r1, #0
	mov r0, r4
	str r1, [r4, #0x1bc]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3314
_020d3344: .word data_ov00_020e8cb4

	.global func_ov00_020d3348
	arm_func_start func_ov00_020d3348
func_ov00_020d3348: ; 0x020d3348
	ldr r1, [r0, #8]
	ldr ip, _020d3360 ; =func_ov00_020d3988
	str r1, [r0, #0x180]
	ldr r1, [r0, #0xc]
	str r1, [r0, #0x184]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d3348
_020d3360: .word func_ov00_020d3988

	.global func_ov00_020d3364
	arm_func_start func_ov00_020d3364
func_ov00_020d3364: ; 0x020d3364
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xb0
	ldr r1, _020d34c4 ; =data_027e0fc8
	mov r4, r0
	ldr r0, [r1]
	ldrh r5, [r4, #0x22]
	cmp r0, #0
	beq _020d3398
	bl func_ov00_020bd318
	cmp r0, #0
	addeq sp, sp, #0xb0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020d3398:
	cmp r5, #2
	bne _020d33d0
	ldr r0, _020d34c8 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	bne _020d33d0
	ldr r0, _020d34cc ; =data_027e10a4
	ldr r0, [r0]
	bl func_ov15_0213a524
	cmp r0, #0
	addeq sp, sp, #0xb0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020d33d0:
	mov r2, #0
	mov r0, r4
	mov r1, #1
	strb r2, [r4, #0x1b4]
	bl func_ov00_020c1908
	ldr r0, _020d34d0 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097bbc
	cmp r0, #0
	bne _020d3414
	ldr r0, _020d34d4 ; =data_027e0c68
	add r1, r4, #0x160
	bl func_020368f4
	cmp r0, #0
	addeq sp, sp, #0xb0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020d3414:
	ldr r2, [r4, #0x30]
	ldr r0, _020d34d4 ; =data_027e0c68
	add r1, r4, #0x160
	bl func_02036ce4
	cmp r5, #1
	bne _020d3480
	add r0, sp, #0
	bl func_ov00_0209a4f4
	ldr r0, [r4, #0x30]
	cmp r0, #0
	moveq r0, #0x3c
	streq r0, [sp, #4]
	mvnne r0, #0
	strne r0, [sp, #4]
	ldr r1, [r4, #0x48]
	ldr r0, _020d34d0 ; =data_027e0f74
	str r1, [sp, #0x20]
	ldr r1, [r4, #0x4c]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	ldr r2, [r4, #0x50]
	add r1, sp, #0
	str r2, [sp, #0x28]
	bl func_ov00_02097810
	str r0, [r4, #0x1bc]
	add r0, sp, #0
	bl func_ov00_0209a508
_020d3480:
	ldr r0, _020d34c8 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	bne _020d34b8
	ldr r0, _020d34d4 ; =data_027e0c68
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _020d34b8
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	ble _020d34b8
	bl func_02038b40
_020d34b8:
	mov r0, #1
	add sp, sp, #0xb0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3364
_020d34c4: .word data_027e0fc8
_020d34c8: .word data_027e0d38
_020d34cc: .word data_027e10a4
_020d34d0: .word data_027e0f74
_020d34d4: .word data_027e0c68

	.global func_ov00_020d34d8
	arm_func_start func_ov00_020d34d8
func_ov00_020d34d8: ; 0x020d34d8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d3ca8
	ldrh r0, [r4, #0x22]
	cmp r0, #1
	bne _020d350c
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _020d350c
	ldr r0, _020d3514 ; =data_027e0f74
	ldr r1, [r4, #0x1bc]
	ldr r0, [r0]
	bl func_ov00_02097bcc
_020d350c:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d34d8
_020d3514: .word data_027e0f74

	.global func_ov00_020d3518
	arm_func_start func_ov00_020d3518
func_ov00_020d3518: ; 0x020d3518
	stmdb sp!, {r4, lr}
	ldr r1, _020d359c ; =data_027e0c68
	mov r4, r0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x160
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r0, #0x10000
	ldr r1, [r4, #0x178]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	ldmneia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xbc]
	blx r1
	cmp r0, #0
	moveq r0, #2
	streq r0, [r4, #0x130]
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl func_ov00_020c3180
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3518
_020d359c: .word data_027e0c68

	.global func_ov00_020d35a0
	arm_func_start func_ov00_020d35a0
func_ov00_020d35a0: ; 0x020d35a0
	add r0, r0, #0x160
	bx lr
	arm_func_end func_ov00_020d35a0

	.global func_ov00_020d35a8
	arm_func_start func_ov00_020d35a8
func_ov00_020d35a8: ; 0x020d35a8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x160
	bl func_ov00_020d1980
	mov r0, r4
	bl func_ov00_020d3974
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d35a8

	.global func_ov00_020d35d0
	arm_func_start func_ov00_020d35d0
func_ov00_020d35d0: ; 0x020d35d0
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x160
	bl func_ov00_020d1980
	mov r0, r4
	bl func_ov00_020d3974
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d35d0

	.global func_ov00_020d35f0
	arm_func_start func_ov00_020d35f0
func_ov00_020d35f0: ; 0x020d35f0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	mov r2, #4
	bl func_020078f4
	mov r1, r4
	mov r0, #0
	mov r2, #4
	bl func_020078f4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d35f0

	.global func_ov00_020d3620
	arm_func_start func_ov00_020d3620
func_ov00_020d3620: ; 0x020d3620
	ldr ip, _020d3634 ; =func_020078f4
	mov r1, r0
	mov r0, #0
	mov r2, #4
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d3620
_020d3634: .word func_020078f4

	.global func_ov00_020d3638
	arm_func_start func_ov00_020d3638
func_ov00_020d3638: ; 0x020d3638
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, [r0]
	tst r0, #4
	addeq sp, sp, #0xc
	ldmeqia sp!, {pc}
	ldr r0, _020d3690 ; =data_027e0fe4
	ldrb r2, [r1, #0x55]
	add r1, r1, #0x20
	ldr r0, [r0]
	add r1, r1, r2, lsl #3
	bl func_ov00_020c3674
	ldr r2, [r0]
	add r1, sp, #0
	ldr r2, [r2, #0x34]
	blx r2
	ldr r0, _020d3694 ; =data_027e0fc8
	add r1, sp, #0
	ldr r0, [r0]
	bl func_ov00_020bb68c
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
	arm_func_end func_ov00_020d3638
_020d3690: .word data_027e0fe4
_020d3694: .word data_027e0fc8

	.global func_ov00_020d3698
	arm_func_start func_ov00_020d3698
func_ov00_020d3698: ; 0x020d3698
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	tst r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, _020d36d4 ; =data_027e0fe4
	add r1, r1, #0x20
	ldr r0, [r0]
	bl func_ov00_020c3674
	ldrb r0, [r0, #0x11c]
	cmp r0, #0
	ldrne r0, [r4]
	orrne r0, r0, #1
	strne r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3698
_020d36d4: .word data_027e0fe4

	.global func_ov00_020d36d8
	arm_func_start func_ov00_020d36d8
func_ov00_020d36d8: ; 0x020d36d8
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _020d37c8 ; =data_027e0fe4
	mov r5, r0
	mov r6, r1
	ldr r0, [r3]
	add r1, r6, #0x20
	mov r4, r2
	bl func_ov00_020c3674
	ldr r1, [r5]
	tst r1, #2
	beq _020d372c
	ldr r1, [r6, #0x40]
	cmp r1, #0
	beq _020d3720
	add r1, r1, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	bgt _020d372c
_020d3720:
	ldr r1, [r5]
	bic r1, r1, #2
	str r1, [r5]
_020d372c:
	ldr r1, [r5]
	orr r1, r1, #1
	str r1, [r5]
	ldrb r1, [r0, #0x11c]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _020d37cc ; =data_027e0f94
	add r0, r0, #0x48
	bl func_01ff9ec0
	ldr r1, [r5]
	tst r1, #4
	movne r2, #1
	moveq r2, #0
	cmp r2, #0
	bne _020d3790
	ldr r1, _020d37d0 ; =data_ov00_020df2e0
	ldr r1, [r1, r4, lsl #2]
	cmp r0, r1
	bge _020d3790
	ldr r1, [r5]
	mov r0, #1
	orr r1, r1, #6
	str r1, [r5]
	ldmia sp!, {r4, r5, r6, pc}
_020d3790:
	cmp r2, #0
	beq _020d37c0
	ldr r1, _020d37d4 ; =data_ov00_020df2ec
	ldr r1, [r1, r4, lsl #2]
	cmp r0, r1
	ble _020d37c0
	ldr r1, [r5]
	mov r0, #2
	bic r1, r1, #4
	orr r1, r1, #2
	str r1, [r5]
	ldmia sp!, {r4, r5, r6, pc}
_020d37c0:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d36d8
_020d37c8: .word data_027e0fe4
_020d37cc: .word data_027e0f94
_020d37d0: .word data_ov00_020df2e0
_020d37d4: .word data_ov00_020df2ec

	.global func_ov00_020d37d8
	arm_func_start func_ov00_020d37d8
func_ov00_020d37d8: ; 0x020d37d8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020d105c
	ldr r0, _020d380c ; =data_027e0d3c
	mov r1, r4
	ldr r0, [r0]
	bl func_ov05_0210d728
	cmp r4, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
	bl func_ov05_021041fc
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d37d8
_020d380c: .word data_027e0d3c

	.global func_ov00_020d3810
	arm_func_start func_ov00_020d3810
func_ov00_020d3810: ; 0x020d3810
	stmdb sp!, {r3, lr}
	bl func_ov00_020d1084
	ldr r0, _020d3828 ; =data_027e0d3c
	ldr r0, [r0]
	bl func_ov05_0210d748
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3810
_020d3828: .word data_027e0d3c

	.global func_ov00_020d382c
	arm_func_start func_ov00_020d382c
func_ov00_020d382c: ; 0x020d382c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020d1088
	ldr r0, [r5, #8]
	mov r1, r4
	bl func_ov05_0210432c
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d382c

	.global func_ov00_020d384c
	arm_func_start func_ov00_020d384c
func_ov00_020d384c: ; 0x020d384c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020d1098
	ldr r0, [r5, #8]
	mov r1, r4
	bl func_ov05_0210437c
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d384c

	.global func_ov00_020d386c
	arm_func_start func_ov00_020d386c
func_ov00_020d386c: ; 0x020d386c
	ldr r0, [r0, #8]
	strb r1, [r0, #0x24c]
	strb r2, [r0, #0x24d]
	bx lr
	arm_func_end func_ov00_020d386c

	.global func_ov00_020d387c
	arm_func_start func_ov00_020d387c
func_ov00_020d387c: ; 0x020d387c
	ldr r1, [r1, #4]
	ldr r0, _020d38e4 ; =0x4d534741
	cmp r1, r0
	bhi _020d38b4
	bhs _020d38d4
	ldr r0, _020d38e8 ; =0x434d5347
	cmp r1, r0
	bhi _020d38a4
	beq _020d38d4
	b _020d38dc
_020d38a4:
	sub r0, r0, #0xfd000000
	cmp r1, r0
	beq _020d38d4
	b _020d38dc
_020d38b4:
	ldr r0, _020d38ec ; =0x4e434d41
	cmp r1, r0
	bhi _020d38c8
	beq _020d38d4
	b _020d38dc
_020d38c8:
	ldr r0, _020d38f0 ; =0x4e4d5347
	cmp r1, r0
	bne _020d38dc
_020d38d4:
	mov r0, #1
	bx lr
_020d38dc:
	mov r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d387c
_020d38e4: .word 0x4d534741
_020d38e8: .word 0x434d5347
_020d38ec: .word 0x4e434d41
_020d38f0: .word 0x4e4d5347

	.global func_ov00_020d38f4
	arm_func_start func_ov00_020d38f4
func_ov00_020d38f4: ; 0x020d38f4
	mov r1, #1
	strb r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020d38f4

	.global func_ov00_020d3900
	arm_func_start func_ov00_020d3900
func_ov00_020d3900: ; 0x020d3900
	mov r1, #0
	strb r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020d3900

	.global func_ov00_020d390c
	arm_func_start func_ov00_020d390c
func_ov00_020d390c: ; 0x020d390c
	bx lr
	arm_func_end func_ov00_020d390c

	.global func_ov00_020d3910
	arm_func_start func_ov00_020d3910
func_ov00_020d3910: ; 0x020d3910
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r1, _020d393c ; =data_ov00_020e8dfc
	ldr r0, _020d3940 ; =data_ov00_020e8ed4
	str r1, [r4]
	str r0, [r4, #0x158]
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0x15c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3910
_020d393c: .word data_ov00_020e8dfc
_020d3940: .word data_ov00_020e8ed4

	.global func_ov00_020d3944
	arm_func_start func_ov00_020d3944
func_ov00_020d3944: ; 0x020d3944
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3944

	.global func_ov00_020d3958
	arm_func_start func_ov00_020d3958
func_ov00_020d3958: ; 0x020d3958
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3958

	.global func_ov00_020d3974
	arm_func_start func_ov00_020d3974
func_ov00_020d3974: ; 0x020d3974
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3974

	.global func_ov00_020d3988
	arm_func_start func_ov00_020d3988
func_ov00_020d3988: ; 0x020d3988
	mov ip, #0
	ldr r1, _020d3a00 ; =data_027e0d0c
	str ip, [r0, #0x6c]
	ldr r2, [r1]
	sub r3, ip, #1
	str r2, [r0, #0x7c]
	ldr r2, [r1, #4]
	str r2, [r0, #0x80]
	ldr r2, [r1, #8]
	str r2, [r0, #0x84]
	str r3, [r0, #0x88]
	ldr r2, [r0, #0x7c]
	str r2, [r0, #0x8c]
	ldr r2, [r0, #0x80]
	str r2, [r0, #0x90]
	ldr r2, [r0, #0x84]
	str r2, [r0, #0x94]
	ldr r2, [r0, #0x88]
	str r2, [r0, #0x98]
	ldr r2, [r1]
	str r2, [r0, #0xa8]
	ldr r2, [r1, #4]
	str r2, [r0, #0xac]
	ldr r1, [r1, #8]
	str r1, [r0, #0xb0]
	str r3, [r0, #0xb4]
	strb ip, [r0, #0x11a]
	str ip, [r0, #0x130]
	mov r0, #1
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d3988
_020d3a00: .word data_027e0d0c

	.global func_ov00_020d3a04
	arm_func_start func_ov00_020d3a04
func_ov00_020d3a04: ; 0x020d3a04
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _020d3b04 ; =data_027e0e60
	ldrh r1, [r4, #0x20]
	ldr r0, [r0]
	mov r2, #0
	ldrh r5, [r4, #0x24]
	bl func_ov00_020836dc
	cmp r0, #0
	beq _020d3afc
	ldrb r0, [r4, #0x2a]
	cmp r0, #0
	beq _020d3a4c
	mov r0, r4
	mov r1, #0
	bl func_ov00_020c1bfc
	cmp r0, #0
	beq _020d3afc
_020d3a4c:
	cmp r5, #0
	beq _020d3a6c
	ldr r0, _020d3b08 ; =data_027e0f74
	mov r1, r5
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	beq _020d3afc
_020d3a6c:
	ldr r0, _020d3b0c ; =data_027e0f90
	ldr r0, [r0]
	ldrsh r0, [r0, #0xa]
	cmp r0, #0
	ble _020d3afc
	ldr r0, _020d3b10 ; =data_027e077c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _020d3afc
	cmp r1, #1
	cmpne r1, #0x3d
	bne _020d3afc
	ldr r0, _020d3b14 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	bne _020d3ae4
	ldr r0, _020d3b14 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	bne _020d3afc
	ldr r0, _020d3b18 ; =data_027e10a4
	ldr r1, [r0]
	ldr r0, [r1, #0x2c]
	cmp r0, #5
	ldreq r0, [r1, #0x324]
	cmpeq r0, #5
	beq _020d3afc
_020d3ae4:
	mov r0, r4
	mov r1, #1
	bl func_ov00_020c1bfc
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_020d3afc:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3a04
_020d3b04: .word data_027e0e60
_020d3b08: .word data_027e0f74
_020d3b0c: .word data_027e0f90
_020d3b10: .word data_027e077c
_020d3b14: .word data_027e0d38
_020d3b18: .word data_027e10a4

	.global func_ov00_020d3b1c
	arm_func_start func_ov00_020d3b1c
func_ov00_020d3b1c: ; 0x020d3b1c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c313c
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc0]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3b1c

	.global func_ov00_020d3b44
	arm_func_start func_ov00_020d3b44
func_ov00_020d3b44: ; 0x020d3b44
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c313c
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc0]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3b44

	.global func_ov00_020d3b6c
	arm_func_start func_ov00_020d3b6c
func_ov00_020d3b6c: ; 0x020d3b6c
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x130]
	cmp r1, #0
	beq _020d3b94
	cmp r1, #1
	beq _020d3c40
	cmp r1, #2
	beq _020d3c50
	ldmia sp!, {r4, pc}
_020d3b94:
	ldr r0, _020d3c6c ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	bne _020d3bc4
	ldr r0, _020d3c70 ; =data_027e10a4
	ldr r1, [r0]
	ldr r0, [r1, #0x2c]
	cmp r0, #5
	ldreq r0, [r1, #0x324]
	cmpeq r0, #6
	ldmeqia sp!, {r4, pc}
_020d3bc4:
	ldr r0, _020d3c74 ; =data_027e0f74
	ldrh r1, [r4, #0x26]
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	bne _020d3bfc
	ldrb r0, [r4, #0x29]
	cmp r0, #0
	beq _020d3c08
	mov r0, r4
	mov r1, #1
	bl func_ov00_020c1bfc
	cmp r0, #0
	beq _020d3c08
_020d3bfc:
	mov r0, r4
	bl func_ov00_020c3180
	ldmia sp!, {r4, pc}
_020d3c08:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc8]
	blx r1
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x130]
	ldmia sp!, {r4, pc}
_020d3c40:
	ldr r1, [r0]
	ldr r1, [r1, #0xc4]
	blx r1
	ldmia sp!, {r4, pc}
_020d3c50:
	ldr r1, [r0]
	ldr r1, [r1, #0xc8]
	blx r1
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x130]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3b6c
_020d3c6c: .word data_027e0d38
_020d3c70: .word data_027e10a4
_020d3c74: .word data_027e0f74

	.global func_ov00_020d3c78
	arm_func_start func_ov00_020d3c78
func_ov00_020d3c78: ; 0x020d3c78
	mov r0, #0
	bx lr
	arm_func_end func_ov00_020d3c78

	.global func_ov00_020d3c80
	arm_func_start func_ov00_020d3c80
func_ov00_020d3c80: ; 0x020d3c80
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x15c]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl func_ov00_020d3ce4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d3c80

	.global func_ov00_020d3ca8
	arm_func_start func_ov00_020d3ca8
func_ov00_020d3ca8: ; 0x020d3ca8
	stmdb sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	bl func_ov00_020c1c20
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d3ca8

	.global func_ov00_020d3cc0
	arm_func_start func_ov00_020d3cc0
func_ov00_020d3cc0: ; 0x020d3cc0
	stmdb sp!, {r4, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0xb4]
	blx r1
	cmp r0, #1
	moveq r1, #1
	streq r1, [r4, #0x130]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3cc0

	.global func_ov00_020d3ce4
	arm_func_start func_ov00_020d3ce4
func_ov00_020d3ce4: ; 0x020d3ce4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x110
	ldr r1, [r0]
	ldr r1, [r1, #0xcc]
	blx r1
	cmp r0, #0
	ldrne r4, [r0, #0x58]
	cmpne r4, #0
	beq _020d3e10
	ldr r0, _020d3e1c ; =data_ov00_020e8df0
	add r2, sp, #0x10
	str r0, [sp]
	mvn r1, #0
	add r0, sp, #0x110
_020d3d1c:
	str r1, [r2]
	str r1, [r2, #4]
	add r2, r2, #8
	cmp r2, r0
	blo _020d3d1c
	ldr r0, _020d3e20 ; =data_027e0fe4
	add ip, sp, #0x10
	ldr r0, [r0]
	mov r5, #0x20
	mov r3, #0
	add r1, sp, #0
	add r2, sp, #4
	str ip, [sp, #4]
	str r5, [sp, #8]
	str r3, [sp, #0xc]
	bl func_ov00_020c37ec
	mov r6, r0
	cmp r6, #0
	mov r7, #0
	ble _020d3e10
	ldr r5, _020d3e20 ; =data_027e0fe4
	mov r8, r7
_020d3d74:
	ldr r1, [sp, #4]
	ldr r0, [r5]
	add r1, r1, r8
	bl func_ov00_020c3674
	ldr r1, [r0, #0x30]
	cmp r4, r1
	bne _020d3e00
	ldr r2, [r0, #4]
	ldr r1, _020d3e24 ; =0x4d534741
	cmp r2, r1
	bhi _020d3dc8
	bhs _020d3de8
	ldr r1, _020d3e28 ; =0x434d5347
	cmp r2, r1
	bhi _020d3db8
	beq _020d3de8
	b _020d3e10
_020d3db8:
	sub r1, r1, #0xfd000000
	cmp r2, r1
	beq _020d3de8
	b _020d3e10
_020d3dc8:
	ldr r1, _020d3e2c ; =0x4e434d41
	cmp r2, r1
	bhi _020d3ddc
	beq _020d3de8
	b _020d3e10
_020d3ddc:
	ldr r1, _020d3e30 ; =0x4e4d5347
	cmp r2, r1
	bne _020d3e10
_020d3de8:
	bl func_ov00_020d3cc0
	cmp r0, #0
	bne _020d3e10
	add sp, sp, #0x110
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020d3e00:
	add r7, r7, #1
	cmp r7, r6
	add r8, r8, #8
	blt _020d3d74
_020d3e10:
	mov r0, #1
	add sp, sp, #0x110
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3ce4
_020d3e1c: .word data_ov00_020e8df0
_020d3e20: .word data_027e0fe4
_020d3e24: .word 0x4d534741
_020d3e28: .word 0x434d5347
_020d3e2c: .word 0x4e434d41
_020d3e30: .word 0x4e4d5347

	.global func_ov00_020d3e34
	arm_func_start func_ov00_020d3e34
func_ov00_020d3e34: ; 0x020d3e34
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3e34

	.global func_ov00_020d3e48
	arm_func_start func_ov00_020d3e48
func_ov00_020d3e48: ; 0x020d3e48
	bx lr
	arm_func_end func_ov00_020d3e48

	.global func_ov00_020d3e4c
	arm_func_start func_ov00_020d3e4c
func_ov00_020d3e4c: ; 0x020d3e4c
	bx lr
	arm_func_end func_ov00_020d3e4c

	.global func_ov00_020d3e50
	arm_func_start func_ov00_020d3e50
func_ov00_020d3e50: ; 0x020d3e50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3e50

	.global func_ov00_020d3e64
	arm_func_start func_ov00_020d3e64
func_ov00_020d3e64: ; 0x020d3e64
	str r1, [r0]
	strb r2, [r0, #4]
	mov r1, #0
	strb r1, [r0, #5]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end func_ov00_020d3e64

	.global func_ov00_020d3e80
	arm_func_start func_ov00_020d3e80
func_ov00_020d3e80: ; 0x020d3e80
	ldrb r1, [r0, #5]
	ldr r0, [r0]
	ldrb r0, [r0, r1, lsl #1]
	bx lr
	arm_func_end func_ov00_020d3e80

	.global func_ov00_020d3e90
	arm_func_start func_ov00_020d3e90
func_ov00_020d3e90: ; 0x020d3e90
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, [r0, #0xc]
	ldr ip, [r0, #8]
	sub r4, r2, r3
	mul r3, r4, r4
	sub r5, r1, ip
	ldrb lr, [r0, #5]
	ldr r4, [r0]
	mla ip, r5, r5, r3
	add r3, r4, lr, lsl #1
	ldrb r3, [r3, #1]
	smulbb r3, r3, r3
	cmp ip, r3
	ldmltia sp!, {r3, r4, r5, pc}
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	ldrb r1, [r0, #5]
	add r2, r1, #1
	strb r2, [r0, #5]
	ldrb r1, [r0, #4]
	and r2, r2, #0xff
	cmp r2, r1
	movhs r1, #0
	strhsb r1, [r0, #5]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d3e90

	.global func_ov00_020d3ef4
	arm_func_start func_ov00_020d3ef4
func_ov00_020d3ef4: ; 0x020d3ef4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020d3f68 ; =data_027e0c68
	mov r4, r1
	bl func_020366c4
	ldr r1, [r5, #0x3c]
	add r0, r0, #0x500
	cmp r1, #1
	ldrh r0, [r0, #0x76]
	beq _020d3f58
	cmp r1, #2
	bne _020d3f58
	cmp r0, #0
	beq _020d3f34
	cmp r0, #1
	b _020d3f58
_020d3f34:
	ldr r0, _020d3f6c ; =gItemManager
	ldr r1, [r5, #0x40]
	ldr r0, [r0]
	bl _ZN11ItemManager15SetEquippedItemEi
	ldr r0, _020d3f70 ; =data_027e103c
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl func_ov00_020cf9dc
_020d3f58:
	mov r0, r5
	mov r1, r4
	bl func_0203878c
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3ef4
_020d3f68: .word data_027e0c68
_020d3f6c: .word gItemManager
_020d3f70: .word data_027e103c

	.global func_ov00_020d3f74
	arm_func_start func_ov00_020d3f74
func_ov00_020d3f74: ; 0x020d3f74
	mov r2, #0
	str r2, [r0, #0x3c]
	ldr r1, _020d3f90 ; =0x0100ffff
	str r2, [r0, #0x40]
	ldr ip, _020d3f94 ; =func_020387a4
	str r1, [r0, #0x18]
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d3f74
_020d3f90: .word 0x0100ffff
_020d3f94: .word func_020387a4

	.global func_ov00_020d3f98
	arm_func_start func_ov00_020d3f98
func_ov00_020d3f98: ; 0x020d3f98
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3f98

	.global func_ov00_020d3fb4
	arm_func_start func_ov00_020d3fb4
func_ov00_020d3fb4: ; 0x020d3fb4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d3fb4

	.global func_ov00_020d3fc8
	arm_func_start func_ov00_020d3fc8
func_ov00_020d3fc8: ; 0x020d3fc8
	stmdb sp!, {r3, lr}
	ldr r1, _020d3ff4 ; =data_027e0fe0
	mov r0, #0x164
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020d3ff8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3fc8
_020d3ff4: .word data_027e0fe0

	.global func_ov00_020d3ff8
	arm_func_start func_ov00_020d3ff8
func_ov00_020d3ff8: ; 0x020d3ff8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d3910
	ldr r0, _020d401c ; =data_ov00_020e8fc0
	mvn r1, #0
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x160]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d3ff8
_020d401c: .word data_ov00_020e8fc0

	.global func_ov00_020d4020
	arm_func_start func_ov00_020d4020
func_ov00_020d4020: ; 0x020d4020
	stmdb sp!, {r3, lr}
	ldrsh r0, [r0, #0x78]
	bl func_0202bbbc
	cmp r0, #0
	beq _020d4040
	cmp r0, #3
	beq _020d4048
	b _020d4050
_020d4040:
	mov r0, #1
	ldmia sp!, {r3, pc}
_020d4048:
	mov r0, #2
	ldmia sp!, {r3, pc}
_020d4050:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d4020

	.global func_ov00_020d4058
	arm_func_start func_ov00_020d4058
func_ov00_020d4058: ; 0x020d4058
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020d40d4 ; =gItemManager
	mov r4, r0
	ldr r5, [r1]
	bl func_ov00_020d4020
	mov r1, r0
	mov r0, r5
	bl _ZNK11ItemManager8GetFairyEi
	mov r1, #0x10000
	ldr r0, [r0, #0x23c]
	rsb r1, r1, #0
	and r0, r0, r1
	cmp r0, #0x1000000
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xbc]
	blx r1
	cmp r0, #0
	moveq r0, #2
	streq r0, [r4, #0x130]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl func_ov00_020c3180
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4058
_020d40d4: .word gItemManager

	.global func_ov00_020d40d8
	arm_func_start func_ov00_020d40d8
func_ov00_020d40d8: ; 0x020d40d8
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _020d4130 ; =gItemManager
	mov r4, r0
	ldr r5, [r2]
	mov r6, r1
	bl func_ov00_020d4020
	mov r1, r0
	mov r0, r5
	bl _ZNK11ItemManager8GetFairyEi
	ldr r1, [r4, #0x130]
	cmp r1, #0
	bne _020d4120
	mov r1, #0x10000
	ldr r0, [r0, #0x23c]
	rsb r1, r1, #0
	and r0, r0, r1
	cmp r0, #0x1000000
	ldmeqia sp!, {r4, r5, r6, pc}
_020d4120:
	mov r0, r4
	mov r1, r6
	bl func_ov00_020d3b44
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d40d8
_020d4130: .word gItemManager

	.global func_ov00_020d4134
	arm_func_start func_ov00_020d4134
func_ov00_020d4134: ; 0x020d4134
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xb0
	mov r5, r0
	ldrh r0, [r5, #0x22]
	ldr r4, [r5, #0x30]
	mov r6, #1
	cmp r0, #2
	bne _020d41f4
	add r0, sp, #0
	bl func_ov00_0209a4f4
	add r0, r5, #0x158
	str r0, [sp, #0xac]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	moveq r0, #0x3c
	streq r0, [sp, #4]
	mvnne r0, #0
	strne r0, [sp, #4]
	ldr r1, [r5, #0x48]
	ldr r0, _020d4238 ; =data_027e0f74
	str r1, [sp, #0x20]
	ldr r1, [r5, #0x4c]
	ldr r0, [r0]
	str r1, [sp, #0x24]
	ldr r2, [r5, #0x50]
	add r1, sp, #0
	str r2, [sp, #0x28]
	bl func_ov00_02097810
	str r0, [r5, #0x160]
	ldr r1, _020d423c ; =gItemManager
	mov r0, r5
	ldr r6, [r1]
	bl func_ov00_020d4020
	mov r1, r0
	mov r0, r6
	bl _ZNK11ItemManager8GetFairyEi
	mov r1, r4
	ldr r4, [r0]
	add r3, r5, #0x48
	ldr r4, [r4, #0xbc]
	mov r2, #0
	blx r4
	mov r4, r0
	add r0, sp, #0
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_020d41f4:
	ldr r1, _020d423c ; =gItemManager
	cmp r0, #3
	mov r0, r5
	ldr r5, [r1]
	moveq r6, #0
	bl func_ov00_020d4020
	mov r1, r0
	mov r0, r5
	bl _ZNK11ItemManager8GetFairyEi
	ldr r5, [r0]
	mov r1, r4
	ldr r5, [r5, #0xbc]
	mov r2, r6
	mov r3, #0
	blx r5
	add sp, sp, #0xb0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4134
_020d4238: .word data_027e0f74
_020d423c: .word gItemManager

	.global func_ov00_020d4240
	arm_func_start func_ov00_020d4240
func_ov00_020d4240: ; 0x020d4240
	stmdb sp!, {r4, lr}
	ldr r1, _020d4280 ; =data_027e0fc8
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020d4274
	ldrh r0, [r4, #0x22]
	cmp r0, #2
	bne _020d4274
	ldr r0, _020d4284 ; =data_027e0f74
	ldr r1, [r4, #0x160]
	ldr r0, [r0]
	bl func_ov00_02097bcc
_020d4274:
	mov r0, r4
	bl func_ov00_020d3c80
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4240
_020d4280: .word data_027e0fc8
_020d4284: .word data_027e0f74

	.global func_ov00_020d4288
	arm_func_start func_ov00_020d4288
func_ov00_020d4288: ; 0x020d4288
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d3ca8
	ldr r0, _020d42e0 ; =data_027e0fc8
	ldr r0, [r0]
	cmp r0, #0
	beq _020d42d8
	ldrh r1, [r4, #0x22]
	cmp r1, #1
	beq _020d42bc
	cmp r1, #4
	beq _020d42d0
	b _020d42d8
_020d42bc:
	add r1, r4, #0x48
	mov r2, #0x800
	bl func_ov00_020bcf50
	mov r0, #0
	ldmia sp!, {r4, pc}
_020d42d0:
	mov r0, #0
	ldmia sp!, {r4, pc}
_020d42d8:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4288
_020d42e0: .word data_027e0fc8

	.global func_ov00_020d42e4
	arm_func_start func_ov00_020d42e4
func_ov00_020d42e4: ; 0x020d42e4
	stmdb sp!, {r4, lr}
	ldr r1, _020d4308 ; =gItemManager
	ldr r4, [r1]
	bl func_ov00_020d4020
	mov r1, r0
	mov r0, r4
	bl _ZNK11ItemManager8GetFairyEi
	add r0, r0, #0x224
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d42e4
_020d4308: .word gItemManager

	.global func_ov00_020d430c
	arm_func_start func_ov00_020d430c
func_ov00_020d430c: ; 0x020d430c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d3974
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d430c

	.global func_ov00_020d4328
	arm_func_start func_ov00_020d4328
func_ov00_020d4328: ; 0x020d4328
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d3974
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d4328

	.global func_ov00_020d433c
	arm_func_start func_ov00_020d433c
func_ov00_020d433c: ; 0x020d433c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020beba8
	ldr r1, _020d4358 ; =data_ov00_020e90d8
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d433c
_020d4358: .word data_ov00_020e90d8

	.global func_ov00_020d435c
	arm_func_start func_ov00_020d435c
func_ov00_020d435c: ; 0x020d435c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d435c

	.global func_ov00_020d4370
	arm_func_start func_ov00_020d4370
func_ov00_020d4370: ; 0x020d4370
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_02081f4c
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d4370

	.global func_ov00_020d438c
	arm_func_start func_ov00_020d438c
func_ov00_020d438c: ; 0x020d438c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020d4410 ; =data_027e0f6c
	ldrh r2, [r5]
	mov r4, r0
	ldr r1, [r1]
	add r0, sp, #0
	bl func_ov00_02093a1c
	ldr r0, [sp]
	mov r1, r0
	mov r0, r0, lsr #0x5
	and r0, r0, #3
	cmp r0, #2
	bne _020d4400
	and r0, r1, #0x1f
	cmp r0, #0xa
	beq _020d43dc
	cmp r0, #0xf
	beq _020d43e8
	b _020d43f8
_020d43dc:
	mov r0, #1
	str r0, [r4, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
_020d43e8:
	mov r0, #2
	str r0, [r4, #0xc]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020d43f8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020d4400:
	mov r0, r4
	mov r1, r5
	bl func_ov00_020bec5c
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d438c
_020d4410: .word data_027e0f6c

	.global func_ov00_020d4414
	arm_func_start func_ov00_020d4414
func_ov00_020d4414: ; 0x020d4414
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r1, _020d4444 ; =data_ov00_020e90fc
	add r0, r4, #0x100
	str r1, [r4]
	mov r1, #0
	strh r1, [r0, #0x80]
	strb r1, [r4, #0x183]
	mov r0, r4
	strb r1, [r4, #0x184]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4414
_020d4444: .word data_ov00_020e90fc

	.global func_ov00_020d4448
	arm_func_start func_ov00_020d4448
func_ov00_020d4448: ; 0x020d4448
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d4448

	.global func_ov00_020d445c
	arm_func_start func_ov00_020d445c
func_ov00_020d445c: ; 0x020d445c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d445c

	.global func_ov00_020d4478
	arm_func_start func_ov00_020d4478
func_ov00_020d4478: ; 0x020d4478
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d4478

	.global func_ov00_020d448c
	arm_func_start func_ov00_020d448c
func_ov00_020d448c: ; 0x020d448c
	mov r0, #0x1000
	bx lr
	arm_func_end func_ov00_020d448c

	.global func_ov00_020d4494
	arm_func_start func_ov00_020d4494
func_ov00_020d4494: ; 0x020d4494
	mov r1, #4
	str r1, [r0, #0x12c]
	ldr r1, [r0, #0x48]
	str r1, [r0, #0x158]
	ldr r1, [r0, #0x4c]
	str r1, [r0, #0x15c]
	ldr r1, [r0, #0x50]
	str r1, [r0, #0x160]
	ldr r1, [r0, #0x140]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x182]
	beq _020d4524
	mov r1, #1
	strb r1, [r0, #0x182]
	ldr r2, [r0, #0x48]
	mov r1, #0
	str r2, [r0, #0x164]
	ldr r2, [r0, #0x4c]
	str r2, [r0, #0x168]
	ldr r2, [r0, #0x50]
	str r2, [r0, #0x16c]
	str r1, [r0, #0x170]
	ldr r1, [r0, #0x144]
	cmp r1, #0
	ldreq r1, _020d4540 ; =0x00001333
	moveq r2, #0x100
	movne r2, #0xaa
	str r2, [r0, #0x174]
	ldrne r1, _020d4544 ; =0x00003333
	mov r2, #0
	str r1, [r0, #0x178]
	str r2, [r0, #0x60]
	mov r1, #0x52
	str r1, [r0, #0x64]
	str r2, [r0, #0x68]
_020d4524:
	ldrh r2, [r0, #0x9c]
	ldr r1, _020d4548 ; =data_ov00_020ee67c
	bic r2, r2, #0x30
	strh r2, [r0, #0x9c]
	str r1, [r0, #0xa0]
	mov r0, #1
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d4494
_020d4540: .word 0x00001333
_020d4544: .word 0x00003333
_020d4548: .word data_ov00_020ee67c

	.global func_ov00_020d454c
	arm_func_start func_ov00_020d454c
func_ov00_020d454c: ; 0x020d454c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r0, #1
	strb r0, [r6, #0x182]
	mov r3, #0
	add r0, r6, #0x158
	mov r5, r1
	mov r1, r0
	mov r4, r2
	str r3, [r6, #0x12c]
	bl func_ov00_020c522c
	add r0, r6, #0x158
	mov r1, r0
	bl func_ov00_020b1a4c
	ldr r1, [r6, #0x158]
	ldr r0, _020d4604 ; =data_027e0e60
	str r1, [sp]
	ldr r1, [r6, #0x15c]
	ldr r0, [r0]
	str r1, [sp, #4]
	ldr r2, [r6, #0x160]
	add r1, sp, #0
	str r2, [sp, #8]
	mov r2, #1
	bl func_ov00_02083ee0
	str r0, [r6, #0x15c]
	ldr r1, [r6, #0x48]
	mov r0, r5, lsl #0xc
	str r1, [r6, #0x164]
	ldr r2, [r6, #0x4c]
	mov r1, #0
	str r2, [r6, #0x168]
	ldr r2, [r6, #0x50]
	str r2, [r6, #0x16c]
	str r1, [r6, #0x170]
	bl func_01ff991c
	str r0, [r6, #0x174]
	str r4, [r6, #0x178]
	mov r1, #0
	str r1, [r6, #0x60]
	mov r0, #0x52
	str r0, [r6, #0x64]
	str r1, [r6, #0x68]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d454c
_020d4604: .word data_027e0e60

	.global func_ov00_020d4608
	arm_func_start func_ov00_020d4608
func_ov00_020d4608: ; 0x020d4608
	stmdb sp!, {r3, lr}
	cmp r0, #0x2a
	bne _020d461c
	mov r0, #1
	ldmia sp!, {r3, pc}
_020d461c:
	bl func_ov00_020b1940
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d4608

	.global func_ov00_020d4624
	arm_func_start func_ov00_020d4624
func_ov00_020d4624: ; 0x020d4624
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	movs r5, r1
	mov sl, r0
	beq _020d4648
	add r1, sp, #0x64
	add r0, sl, #0x48
	bl func_ov00_020c522c
	b _020d4660
_020d4648:
	ldr r0, [sl, #0x48]
	str r0, [sp, #0x64]
	ldr r0, [sl, #0x4c]
	str r0, [sp, #0x68]
	ldr r0, [sl, #0x50]
	str r0, [sp, #0x6c]
_020d4660:
	ldr r1, [sp, #0x68]
	ldr r0, _020d484c ; =data_027e0e60
	add r3, r1, #0x40
	ldr r6, [sp, #0x64]
	ldr r4, [sp, #0x6c]
	ldr r1, [r0]
	add r0, sp, #0x10
	add r2, sp, #0x58
	str r6, [sp, #0x58]
	str r4, [sp, #0x60]
	str r3, [sp, #0x5c]
	bl func_ov00_02083a1c
	ldr r0, _020d484c ; =data_027e0e60
	ldr r6, [sp, #0x58]
	ldr r4, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [r0]
	add r1, sp, #0x2c
	mov r2, #0
	str r6, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r3, [sp, #0x34]
	bl func_ov00_02083ee0
	ldr r2, [sp, #0x58]
	ldr r4, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	str r2, [sp, #0x20]
	ldr r1, _020d484c ; =data_027e0e60
	mov r8, r0
	ldr r0, [r1]
	add r1, sp, #0x20
	mov r2, #0
	str r4, [sp, #0x24]
	str r3, [sp, #0x28]
	bl func_ov00_02083f44
	mov r4, r0
	ldrb r0, [sp, #0x10]
	ldrb r1, [sp, #0x11]
	ldr r2, _020d4850 ; =func_ov00_020d4608
	bl func_ov00_020b199c
	cmp r0, #0
	beq _020d4740
	ldr r0, [sp, #0x68]
	add r0, r0, #0xcd
	cmp r4, r0
	bgt _020d4740
	ldr r1, [sp, #0x64]
	mov r0, #1
	str r1, [sl, #0x158]
	ldr r1, [sp, #0x68]
	str r1, [sl, #0x15c]
	ldr r1, [sp, #0x6c]
	add sp, sp, #0x70
	str r1, [sl, #0x160]
	str r4, [sl, #0x15c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d4740:
	cmp r5, #0
	beq _020d4764
	ldr r2, [sp, #0x64]
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	str r2, [sp, #0x58]
	str r1, [sp, #0x5c]
	str r0, [sp, #0x60]
	b _020d4770
_020d4764:
	add r1, sp, #0x58
	add r0, sl, #0x48
	bl func_ov00_020c522c
_020d4770:
	ldr r5, _020d4854 ; =data_ov00_020df2f8
	add r4, sp, #0x38
	ldmia r5!, {r0, r1, r2, r3}
	str r4, [sp, #8]
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	mov r6, #0
_020d4790:
	ldr r0, [sp, #8]
	ldrb fp, [sp, #0x10]
	add r1, r0, r6, lsl #3
	ldr r5, [r0, r6, lsl #3]
	ldr r0, [sp, #0x58]
	ldr r4, [r1, #4]
	add r7, r0, r5, lsl #12
	ldr r1, [sp, #0x60]
	str r7, [sp, #0x14]
	add r0, r1, r4, lsl #12
	str r0, [sp]
	ldr r2, [sp]
	ldr r0, _020d484c ; =data_027e0e60
	str r2, [sp, #0x1c]
	ldrb r2, [sp, #0x11]
	ldr r0, [r0]
	add r1, sp, #0x14
	str r2, [sp, #0xc]
	mov r2, #0
	str r8, [sp, #0x18]
	bl func_ov00_02083f44
	ldr r1, [sp, #0xc]
	subs sb, r0, r8
	str r0, [sp, #4]
	ldr r2, _020d4858 ; =func_ov00_020b1940
	add r0, fp, r5
	add r1, r1, r4
	rsbmi sb, sb, #0
	bl func_ov00_020b199c
	cmp r0, #0
	beq _020d4834
	cmp sb, #0x10
	bge _020d4834
	ldr r0, [sp]
	str r7, [sl, #0x158]
	str r0, [sl, #0x160]
	ldr r0, [sp, #4]
	add sp, sp, #0x70
	str r0, [sl, #0x15c]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d4834:
	add r6, r6, #1
	cmp r6, #4
	blt _020d4790
	mov r0, #0
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4624
_020d484c: .word data_027e0e60
_020d4850: .word func_ov00_020d4608
_020d4854: .word data_ov00_020df2f8
_020d4858: .word func_ov00_020b1940

	.global func_ov00_020d485c
	arm_func_start func_ov00_020d485c
func_ov00_020d485c: ; 0x020d485c
	ldrb r1, [r0, #0x114]
	mov r2, #0
	cmp r1, #0
	beq _020d4878
	ldr r0, [r0, #0x10c]
	cmp r0, #0x19
	moveq r2, #1
_020d4878:
	mov r0, r2
	bx lr
	arm_func_end func_ov00_020d485c

	.global func_ov00_020d4880
	arm_func_start func_ov00_020d4880
func_ov00_020d4880: ; 0x020d4880
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r2, [r5, #0x174]
	ldr r1, _020d4960 ; =0x00000fd7
	add r0, r5, #0x170
	bl Approach_thunk
	ldr r1, [r5, #0x170]
	mov r4, r0
	sub r0, r1, #0x800
	mov r1, r0, lsl #0x1
	mul r0, r1, r1
	mov r1, r0, asr #0xc
	ldr r0, [r5, #0x178]
	rsb r1, r1, #0x1000
	mul r3, r1, r0
	add r2, sp, #0
	add r0, r5, #0x158
	add r1, r5, #0x164
	add r6, r3, #0x800
	bl func_01ff9bf8
	ldr r0, [r5, #0x170]
	add r1, sp, #0
	add r2, r5, #0x164
	add r3, r5, #0x48
	bl func_01ff9e64
	ldr r0, [r5, #0x4c]
	cmp r4, #0
	add r0, r0, r6, asr #12
	addeq sp, sp, #0xc
	str r0, [r5, #0x4c]
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r3, #0
	strb r3, [r5, #0x182]
	ldr r0, [r5, #0x17c]
	mov r1, #0x52
	str r0, [r5, #0x90]
	ldr r2, [r5, #0x158]
	mov r0, #4
	str r2, [r5, #0x48]
	ldr r2, [r5, #0x15c]
	str r2, [r5, #0x4c]
	ldr r2, [r5, #0x160]
	str r2, [r5, #0x50]
	ldr r2, [r5, #0x48]
	str r2, [r5, #0x54]
	ldr r2, [r5, #0x4c]
	str r2, [r5, #0x58]
	ldr r2, [r5, #0x50]
	str r2, [r5, #0x5c]
	str r3, [r5, #0x60]
	str r1, [r5, #0x64]
	str r3, [r5, #0x68]
	str r0, [r5, #0x12c]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4880
_020d4960: .word 0x00000fd7

	.global func_ov00_020d4964
	arm_func_start func_ov00_020d4964
func_ov00_020d4964: ; 0x020d4964
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl func_ov00_020c313c
	cmp r0, #0
	beq _020d4a8c
	ldrb r0, [r5, #0x182]
	cmp r0, #0
	beq _020d4998
	mov r0, r5
	bl func_ov00_020d4880
	b _020d4a84
_020d4998:
	ldrb r0, [r5, #0x183]
	cmp r0, #0
	ldrb r0, [r5, #0x11b]
	beq _020d4a44
	cmp r0, #0
	beq _020d4a84
	ldr r0, _020d4aa4 ; =data_027e0fac
	ldr r1, _020d4aa8 ; =data_027e0f94
	ldrsh r2, [r0]
	mov r0, r5
	strh r2, [r5, #0x78]
	ldr r2, [r1, #4]
	ldr r1, [r5, #0x4c]
	ldr r3, [r5, #0x98]
	sub r1, r2, r1
	add r1, r3, r1
	add r1, r1, #0x29
	str r1, [r5, #0x90]
	bl func_ov00_020c195c
	ldr r1, _020d4aac ; =data_027e0fc8
	ldr r0, _020d4ab0 ; =data_027e0fd4
	ldr r6, [r1]
	ldr r1, [r0]
	add r0, sp, #0
	bl func_ov00_020d4ab8
	mov r0, r6
	bl func_ov00_020bba28
	cmp r0, #0
	beq _020d4a84
	ldr r0, [sp]
	mov r0, r0, lsr #0x10
	tst r0, #0x3f
	bne _020d4a84
	mov r0, r6
	bl func_ov00_020bc500
	cmp r0, #0
	bne _020d4a84
	mov r0, r5
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0xbc]
	blx r2
	b _020d4a84
_020d4a44:
	cmp r0, #0
	bne _020d4a84
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	ldr r1, [r5, #0x64]
	cmp r1, #0
	bgt _020d4a84
	ldr r0, _020d4ab4 ; =0x0000019a
	rsb r2, r1, #0
	cmp r2, r0
	movle r2, r0
	ldr r1, [r5, #0x17c]
	add r0, r5, #0x90
	bl Approach_thunk
_020d4a84:
	ldrb r0, [r5, #0x11b]
	strb r0, [r5, #0x183]
_020d4a8c:
	mov r1, r4
	add r0, r5, #0xa4
	add r2, r5, #0x48
	bl func_ov00_0207a1c8
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4964
_020d4aa4: .word data_027e0fac
_020d4aa8: .word data_027e0f94
_020d4aac: .word data_027e0fc8
_020d4ab0: .word data_027e0fd4
_020d4ab4: .word 0x0000019a

	.global func_ov00_020d4ab8
	arm_func_start func_ov00_020d4ab8
func_ov00_020d4ab8: ; 0x020d4ab8
	ldr r1, [r1, #0x14]
	str r1, [r0]
	bx lr
	arm_func_end func_ov00_020d4ab8

	.global func_ov00_020d4ac4
	arm_func_start func_ov00_020d4ac4
func_ov00_020d4ac4: ; 0x020d4ac4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0x11b]
	mov r4, r1
	cmp r2, #0
	beq _020d4af0
	bl func_ov00_020c195c
	ldr r0, _020d4b4c ; =data_027e0fac
	ldrsh r0, [r0]
	strh r0, [r5, #0x78]
	b _020d4b38
_020d4af0:
	ldrb r1, [r5, #0x184]
	cmp r1, #0
	beq _020d4b38
	ldr r1, [r0]
	ldr r1, [r1, #0xb8]
	blx r1
	ldr r1, [r5, #0x64]
	cmp r1, #0
	bgt _020d4b30
	ldr r0, _020d4b50 ; =0x0000019a
	rsb r2, r1, #0
	cmp r2, r0
	movle r2, r0
	ldr r1, [r5, #0x17c]
	add r0, r5, #0x90
	bl Approach_thunk
_020d4b30:
	ldrb r0, [r5, #0x11b]
	strb r0, [r5, #0x183]
_020d4b38:
	mov r1, r4
	add r0, r5, #0xa4
	add r2, r5, #0x48
	bl func_ov00_0207a1c8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4ac4
_020d4b4c: .word data_027e0fac
_020d4b50: .word 0x0000019a

	.global func_ov00_020d4b54
	arm_func_start func_ov00_020d4b54
func_ov00_020d4b54: ; 0x020d4b54
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x64
	ldr r1, _020d4ddc ; =data_ov00_020ee670
	mov r7, #0
	mov sl, r0
	str r7, [r1, #0x14]
	ldr r4, [sl, #0x98]
	ldr r1, [sl, #0x48]
	sub r8, r4, #0xc0
	str r1, [sp, #0x58]
	ldr r2, [sl, #0x4c]
	add r0, sp, #0x58
	str r2, [sp, #0x5c]
	ldr r3, [sl, #0x50]
	add r1, sp, #0x4c
	str r3, [sp, #0x60]
	ldr r3, [sl, #0x54]
	add r2, sp, #0x40
	str r3, [sp, #0x4c]
	ldr r4, [sl, #0x58]
	mov r3, #1
	str r3, [sp]
	str r4, [sp, #0x50]
	ldr r3, [sl, #0x5c]
	str r3, [sp, #0x54]
	bl func_01ff9bf8
	add r0, sp, #0x40
	bl func_01ff9cec
	add r1, sp, #0x4c
	mov sb, r0
	add fp, sp, #4
	ldmia r1, {r0, r1, r2}
	stmia fp, {r0, r1, r2}
	add r6, sp, #0x34
	ldmia fp, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add r5, sp, #0x28
	ldmia fp, {r0, r1, r2}
	add r4, sp, #0x40
	stmia r5, {r0, r1, r2}
	add r3, sp, #0x1c
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r3
	bl func_01fffb4c
	cmp r0, #0
	beq _020d4d00
	cmp sb, #0
	beq _020d4d08
	ldr r4, _020d4ddc ; =data_ov00_020ee670
	mov fp, r5
	add r6, sp, #0x1c
	mov r5, r7
_020d4c28:
	cmp sb, r8
	ble _020d4c4c
	mov r0, r8
	mov r1, r6
	mov r2, fp
	mov r3, fp
	bl func_01ff9e64
	sub sb, sb, r8
	b _020d4c64
_020d4c4c:
	mov r0, sb
	mov r1, r6
	mov r2, fp
	mov r3, fp
	bl func_01ff9e64
	mov sb, #0
_020d4c64:
	ldr r1, [sp, #0x28]
	mov r0, sl
	str r1, [sl, #0x48]
	ldr r2, [sp, #0x2c]
	mov r1, r5
	str r2, [sl, #0x4c]
	ldr r2, [sp, #0x30]
	str r2, [sl, #0x50]
	ldr r2, [sp, #0x34]
	str r2, [sl, #0x54]
	ldr r2, [sp, #0x38]
	str r2, [sl, #0x58]
	ldr r2, [sp, #0x3c]
	str r2, [sl, #0x5c]
	str r5, [r4, #0x18]
	bl func_01fffd04
	ldr r1, [r4, #0x18]
	mov r7, r0
	sub r0, r1, #1
	cmp r0, #1
	bhi _020d4cd4
	mov r0, sl
	mov r1, #0x1e
	mov r2, #0x5000
	bl func_ov00_020d454c
	add sp, sp, #0x64
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d4cd4:
	cmp r7, #0
	bne _020d4d08
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x34]
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
	cmp sb, #0
	bne _020d4c28
	b _020d4d08
_020d4d00:
	add r0, sl, #0xb8
	bl func_ov00_02081ef4
_020d4d08:
	mov r0, #0x3000
	ldr r1, [sl, #0x4c]
	rsb r0, r0, #0
	cmp r1, r0
	blt _020d4da8
	ldr r1, [sl, #0x48]
	ldr r0, _020d4de0 ; =data_027e0e60
	str r1, [sp, #0x10]
	ldr r1, [sl, #0x4c]
	ldr r0, [r0]
	str r1, [sp, #0x14]
	ldr r3, [sl, #0x50]
	add r1, sp, #0x10
	mov r2, #0
	str r3, [sp, #0x18]
	bl func_ov00_02083ee0
	mov r4, r0
	cmp r7, #0
	beq _020d4d68
	ldr r2, _020d4de4 ; =0x00000333
	add r0, sl, #0x60
	add r1, sl, #0xc4
	bl func_ov00_020b18d8
	b _020d4db8
_020d4d68:
	ldr r0, _020d4de0 ; =data_027e0e60
	ldr r5, [sl, #0x4c]
	ldr r0, [r0]
	bl func_ov00_02084114
	cmp r0, r5
	addlt r0, r4, #0x33
	addlt r0, r0, #0x1300
	cmplt r5, r0
	movge r0, #0
	strge r0, [sp]
	bge _020d4db8
	mov r0, sl
	mov r1, #0x1e
	mov r2, #0x5000
	bl func_ov00_020d454c
	b _020d4db8
_020d4da8:
	mov r0, sl
	mov r1, #0x1e
	mov r2, #0x5000
	bl func_ov00_020d454c
_020d4db8:
	ldr r1, [sl, #0x48]
	ldr r0, [sp]
	str r1, [sl, #0x54]
	ldr r1, [sl, #0x4c]
	str r1, [sl, #0x58]
	ldr r1, [sl, #0x50]
	str r1, [sl, #0x5c]
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4b54
_020d4ddc: .word data_ov00_020ee670
_020d4de0: .word data_027e0e60
_020d4de4: .word 0x00000333

	.global func_ov00_020d4de8
	arm_func_start func_ov00_020d4de8
func_ov00_020d4de8: ; 0x020d4de8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldrb r0, [r4, #0x11b]
	cmp r0, #0
	addne sp, sp, #0x38
	ldmneia sp!, {r4, pc}
	ldrh r0, [r1]
	tst r0, #4
	bne _020d4e1c
	tst r0, #8
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, pc}
_020d4e1c:
	add r1, sp, #0x14
	str r1, [sp]
	mov r2, #0
	add r0, sp, #0x10
	stmib sp, {r0, r2}
	ldr r0, _020d4e88 ; =data_027e0d3c
	str r2, [sp, #0xc]
	ldr r0, [r0]
	mov r3, r2
	add r1, r4, #0x48
	bl func_ov00_02079470
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, pc}
	add r0, sp, #0x18
	bl func_01ffbe34
	mov r1, #1
	add r0, sp, #0x18
	str r1, [sp, #0x1c]
	str r0, [sp]
	ldrh r3, [r4, #0x7a]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r0, _020d4e8c ; =data_02063e4c
	bl func_020313c8
	add sp, sp, #0x38
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4de8
_020d4e88: .word data_027e0d3c
_020d4e8c: .word data_02063e4c

	.global func_ov00_020d4e90
	arm_func_start func_ov00_020d4e90
func_ov00_020d4e90: ; 0x020d4e90
	add r0, r0, #0x158
	bx lr
	arm_func_end func_ov00_020d4e90

	.global func_ov00_020d4e98
	arm_func_start func_ov00_020d4e98
func_ov00_020d4e98: ; 0x020d4e98
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c18a8
	cmp r0, #0
	beq _020d4ed8
	ldrb r0, [r4, #0x182]
	cmp r0, #0
	beq _020d4ed0
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0x182]
	mov r1, #4
	str r1, [r4, #0x12c]
	bl func_ov00_020c195c
_020d4ed0:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020d4ed8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d4e98

	.global func_ov00_020d4ee0
	arm_func_start func_ov00_020d4ee0
func_ov00_020d4ee0: ; 0x020d4ee0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl func_01ff9cec
	cmp r0, #0x29
	ble _020d4f3c
	ldr r0, _020d4f7c ; =data_027e0f94
	ldr r2, [r5, #0x4c]
	ldr r1, [r0]
	str r1, [r5, #0x48]
	ldr r1, [r0, #4]
	str r1, [r5, #0x4c]
	ldr r0, [r0, #8]
	str r0, [r5, #0x50]
	str r2, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x4c]
	str r0, [r5, #0x58]
	ldr r0, [r5, #0x50]
	str r0, [r5, #0x5c]
	b _020d4f60
_020d4f3c:
	ldr r0, _020d4f7c ; =data_027e0f94
	ldr r1, [r0]
	str r1, [r5, #0x54]
	ldr r1, [r0, #4]
	str r1, [r5, #0x58]
	ldr r0, [r0, #8]
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x4c]
	str r0, [r5, #0x58]
_020d4f60:
	mov r0, r5
	mov r1, r4
	bl func_ov00_020c18c4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4ee0
_020d4f7c: .word data_027e0f94

	.global func_ov00_020d4f80
	arm_func_start func_ov00_020d4f80
func_ov00_020d4f80: ; 0x020d4f80
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r5, r0
	ldrb r0, [r5, #0x11b]
	cmp r0, #0
	addne sp, sp, #0x38
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, sp, #0x24
	bl func_ov00_020c1500
	mov r0, r5
	ldr r1, [r0]
	ldr r4, [r5, #4]
	ldr r1, [r1, #0x50]
	blx r1
	mov r1, #1
	str r1, [sp]
	mov r1, #0
	mov r2, r0
	str r1, [sp, #4]
	add r0, sp, #8
	mov r1, r4
	add r3, r5, #0x20
	bl func_ov00_020a41e4
	ldr r0, _020d4ff4 ; =data_027e0f70
	add r1, sp, #8
	ldr r0, [r0]
	bl func_ov00_020965c0
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4f80
_020d4ff4: .word data_027e0f70

	.global func_ov00_020d4ff8
	arm_func_start func_ov00_020d4ff8
func_ov00_020d4ff8: ; 0x020d4ff8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	ldr r1, _020d5074 ; =data_027e0d38
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x28]
	ldrb r0, [r0, #0x34]
	cmp r0, #0
	moveq r6, #1
	add r0, sp, #0x24
	movne r6, #0
	bl func_ov00_020c1500
	mov r0, r4
	ldr r1, [r0]
	ldr r5, [r4, #4]
	ldr r1, [r1, #0x50]
	blx r1
	mov r2, r0
	mov r0, #1
	str r0, [sp]
	add r0, sp, #8
	mov r1, r5
	add r3, r4, #0x20
	str r6, [sp, #4]
	bl func_ov00_020a41e4
	ldr r0, _020d5078 ; =data_027e0f70
	add r1, sp, #8
	ldr r0, [r0]
	bl func_ov00_020965c0
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d4ff8
_020d5074: .word data_027e0d38
_020d5078: .word data_027e0f70

	.global func_ov00_020d507c
	arm_func_start func_ov00_020d507c
func_ov00_020d507c: ; 0x020d507c
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x88]
	bl func_ov00_020c281c
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _020d50f0 ; =data_027e0f94
	ldr r1, [r4, #0x4c]
	ldr r0, [r0, #4]
	sub ip, r1, r0
	cmp ip, #0
	ldr r0, _020d50f4 ; =0x000004cd
	movle ip, #0
	umull r3, r2, ip, r0
	mov r1, #0
	mla r2, ip, r1, r2
	mov r1, ip, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r0, r2, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, #0x800
	cmp r1, #0x800
	movge r1, r0
	ldr r0, [r4, #0x88]
	add r0, r0, r1
	str r0, [r4, #0x88]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d507c
_020d50f0: .word data_027e0f94
_020d50f4: .word 0x000004cd

	.global func_ov00_020d50f8
	arm_func_start func_ov00_020d50f8
func_ov00_020d50f8: ; 0x020d50f8
	bx lr
	arm_func_end func_ov00_020d50f8

	.global func_ov00_020d50fc
	arm_func_start func_ov00_020d50fc
func_ov00_020d50fc: ; 0x020d50fc
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr lr, [sp, #0x10]
	mov r4, r0
	str lr, [r4, #0x24]
	ldrb ip, [sp, #0x14]
	str lr, [r4, #0x28]
	ldrb lr, [sp, #0x18]
	strb ip, [r4, #0x2d]
	mov ip, #0
	strb ip, [r4, #0x2e]
	ldrb ip, [sp, #0x1c]
	str lr, [sp]
	str ip, [sp, #4]
	bl func_ov00_020d5204
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d50fc

	.global func_ov00_020d5144
	arm_func_start func_ov00_020d5144
func_ov00_020d5144: ; 0x020d5144
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	sub r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0
	ldmgtia sp!, {r4, pc}
	ldrb r0, [r4, #0x2d]
	ldrb r2, [r4, #0x2c]
	cmp r0, #1
	ldr r0, [r4, #0x20]
	bne _020d519c
	mov r1, r4
	add r0, r0, #2
	mov r2, r2, lsl #0x1
	bl func_020078d8
	ldr r1, [r4, #0x20]
	ldrb r0, [r4, #0x2c]
	ldrh r1, [r1]
	mov r0, r0, lsl #0x1
	strh r1, [r4, r0]
	b _020d51bc
_020d519c:
	add r1, r4, #2
	mov r2, r2, lsl #0x1
	bl func_020078d8
	ldrb r0, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	mov r0, r0, lsl #0x1
	ldrh r0, [r1, r0]
	strh r0, [r4]
_020d51bc:
	ldr r1, [r4, #0x24]
	mov r0, #1
	str r1, [r4, #0x28]
	strb r0, [r4, #0x2e]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d5144

	.global func_ov00_020d51d0
	arm_func_start func_ov00_020d51d0
func_ov00_020d51d0: ; 0x020d51d0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x2e]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrb r2, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	add r2, r2, #1
	mov r2, r2, lsl #0x1
	bl func_020078d8
	mov r0, #0
	strb r0, [r4, #0x2e]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d51d0

	.global func_ov00_020d5204
	arm_func_start func_ov00_020d5204
func_ov00_020d5204: ; 0x020d5204
	ldrb ip, [sp]
	cmp ip, #1
	bne _020d5244
	ldrb ip, [sp, #4]
	mov r1, r1, lsl #0x5
	cmp ip, #0
	bne _020d5230
	add r1, r1, #0x5000000
	add r1, r1, r2, lsl #1
	str r1, [r0, #0x20]
	b _020d5278
_020d5230:
	add r1, r1, #0x200
	add r1, r1, #0x5000000
	add r1, r1, r2, lsl #1
	str r1, [r0, #0x20]
	b _020d5278
_020d5244:
	ldrb ip, [sp, #4]
	mov r1, r1, lsl #0x5
	cmp ip, #0
	bne _020d5268
	add r1, r1, #0x400
	add r1, r1, #0x5000000
	add r1, r1, r2, lsl #1
	str r1, [r0, #0x20]
	b _020d5278
_020d5268:
	add r1, r1, #0x600
	add r1, r1, #0x5000000
	add r1, r1, r2, lsl #1
	str r1, [r0, #0x20]
_020d5278:
	sub r1, r3, r2
	strb r1, [r0, #0x2c]
	bx lr
	arm_func_end func_ov00_020d5204
    
.ifdef USA
; This was moved down in EUR
.include "ov00/ov00_020d59f0.inc"
.endif

	.global func_ov00_020d5284
	arm_func_start func_ov00_020d5284
func_ov00_020d5284: ; 0x020d5284
	stmdb sp!, {r3, lr}
	ldr r1, _020d52b0 ; =data_027e0fe0
	ldr r0, _020d52b4 ; =0x00000488
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl func_ov00_020d556c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d5284
_020d52b0: .word data_027e0fe0
_020d52b4: .word 0x00000488

	.global func_ov00_020d52b8
	arm_func_start func_ov00_020d52b8
func_ov00_020d52b8: ; 0x020d52b8
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	blx func_ov00_020a956c
	ldr r0, _020d52e0 ; =data_ov00_020e92c8
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	strb r1, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d52b8
_020d52e0: .word data_ov00_020e92c8

	.global func_ov00_020d52e4
	arm_func_start func_ov00_020d52e4
func_ov00_020d52e4: ; 0x020d52e4
	ldr ip, _020d52f4 ; =func_ov00_020a9998
	mov r1, #4
	mov r2, #2
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d52e4
_020d52f4: .word func_ov00_020a9998

	.global func_ov00_020d52f8
	arm_func_start func_ov00_020d52f8
func_ov00_020d52f8: ; 0x020d52f8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, [r1, #0xb0]
	ldr r1, [r4, #0xc]
	bic r1, r1, #0x3f000000
	str r1, [r4, #0xc]
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020d5450 ; =data_027e0f88
	mov r1, #0
	ldr r0, [r0]
	bl func_ov00_020a19fc
	ldrh r1, [r0, #2]
	ldrh r2, [r0]
	ldrh r0, [r0, #4]
	strh r1, [sp, #2]
	ldrsh r3, [sp, #2]
	strh r0, [sp, #4]
	strh r2, [sp]
	cmp r3, #0
	rsblt r0, r3, #0
	movlt r0, r0, lsl #0x10
	movlt r3, r0, asr #0x10
	ldr r0, _020d5454 ; =data_027e0f78
	mov ip, #0
	ldr r0, [r0]
	ldrh r5, [r0, #0x1e]
	ldrh r2, [r0, #0x1c]
	and r1, r5, #0x3e0
	and r0, r5, #0x7c00
	mov r5, r5, lsl #0x1b
	mov r1, r1, asr #0x5
	mov r0, r0, asr #0xa
	mov r1, r1, lsl #0xc
	mov r5, r5, lsr #0xf
	mov lr, r0, lsl #0xc
	smull r5, r0, r3, r5
	adds r5, r5, #0x800
	smull r1, r6, r3, r1
	adc r0, r0, #0
	adds r7, r1, #0x800
	mov r1, r5, lsr #0xc
	smull r5, lr, r3, lr
	adc r3, r6, #0
	mov r6, r7, lsr #0xc
	adds r5, r5, #0x800
	orr r6, r6, r3, lsl #20
	adc r3, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r3, lsl #20
	orr r1, r1, r0, lsl #20
	and r3, r2, #0x1f
	adds lr, r3, r1, asr #12
	and r7, r2, #0x3e0
	mov r3, r6, asr #0xc
	and r1, r2, #0x7c00
	mov r0, r5, asr #0xc
	add r2, r3, r7, asr #5
	add r3, r0, r1, asr #10
	movmi lr, ip
	bmi _020d53fc
	cmp lr, #0x1f
	movgt lr, #0x1f
_020d53fc:
	cmp r2, #0
	movlt r2, #0
	blt _020d5410
	cmp r2, #0x1f
	movgt r2, #0x1f
_020d5410:
	cmp r3, #0
	movlt r3, #0
	blt _020d5424
	cmp r3, #0x1f
	movgt r3, #0x1f
_020d5424:
	orr r1, lr, r2, lsl #5
	mov r0, #0x8000
	ldr r2, [r4, #4]
	rsb r0, r0, #0
	orr r1, r1, r3, lsl #10
	and r2, r2, r0
	mov r0, r1, lsl #0x10
	orr r0, r2, r0, lsr #16
	str r0, [r4, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020d52f8
_020d5450: .word data_027e0f88
_020d5454: .word data_027e0f78

	.global func_ov00_020d5458
	arm_func_start func_ov00_020d5458
func_ov00_020d5458: ; 0x020d5458
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	cmp r1, #0
	beq _020d5480
	cmp r1, #1
	beq _020d549c
	cmp r1, #2
	beq _020d54b0
	b _020d54c0
_020d5480:
	ldr r3, _020d554c ; =data_ov00_020df31c
	mov r1, #6
	mov r2, #9
	bl func_ov00_020c5ce4
	mov r0, #1
	strb r0, [r6, #0x7c]
	b _020d54c0
_020d549c:
	ldr r3, _020d554c ; =data_ov00_020df31c
	mov r1, #7
	mov r2, #9
	bl func_ov00_020c5ce4
	b _020d54c0
_020d54b0:
	ldr r3, _020d554c ; =data_ov00_020df31c
	mov r1, #8
	mov r2, #9
	bl func_ov00_020c5ce4
_020d54c0:
	ldr r1, [r6, #4]
	add r0, r6, #0x20
	str r1, [r6, #0xc8]
	bl func_ov00_020d52e4
	ldr r0, _020d5550 ; =data_ov00_020e91bc
	ldr r5, _020d5554 ; =data_ov00_020e91d4
	blx func_02016fe8
	mov r4, r0
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x10
	bl func_020470ec
	mov r0, r4
	add r1, sp, #0
	bl func_0201e544
	mov r2, #0
	mov r1, r0
	add r0, r6, #0xc0
	mov r3, r2
	bl func_ov00_020c0cc8
	mov r0, #0x1000
	str r0, [r6, #0xd0]
	add r0, r6, #0x20
	ldr r2, [r0]
	add r1, r6, #0xc0
	ldr r2, [r2, #0x24]
	blx r2
	mov r0, r6
	mov r1, #0
	bl func_ov00_020c5d74
	ldr r0, [r6, #0x10]
	mov r1, #0x1000
	str r1, [r0, #0x10]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d5458
_020d554c: .word data_ov00_020df31c
_020d5550: .word data_ov00_020e91bc
_020d5554: .word data_ov00_020e91d4

	.global func_ov00_020d5558
	arm_func_start func_ov00_020d5558
func_ov00_020d5558: ; 0x020d5558
	ldr ip, _020d5564 ; =func_ov00_020c0e04
	add r0, r0, #0xc0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d5558
_020d5564: .word func_ov00_020c0e04

	.global func_ov00_020d5568
	arm_func_start func_ov00_020d5568
func_ov00_020d5568: ; 0x020d5568
	bx lr
	arm_func_end func_ov00_020d5568

	.global func_ov00_020d556c
	arm_func_start func_ov00_020d556c
func_ov00_020d556c: ; 0x020d556c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr ip, _020d569c ; =data_ov00_020e91e8
	mov r1, r4
	add r0, r4, #0x158
	add r2, r4, #0x178
	add r3, r4, #0x1d8
	str ip, [r4]
	bl func_ov00_020c5c2c
	ldr r1, _020d56a0 ; =data_ov00_020e92a4
	add r0, r4, #0x178
	str r1, [r4, #0x158]
	bl func_ov00_020d52b8
	add r0, r4, #0x1d8
	add r1, r4, #0x1fc
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020d56a4 ; =data_ov00_020e86a8
	add r0, r4, #0x218
	str r1, [r4, #0x1d8]
	add r1, r4, #0x23c
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020d56a4 ; =data_ov00_020e86a8
	mov r0, #0
	str r1, [r4, #0x218]
	strb r0, [r4, #0x258]
	add r0, r4, #0x25c
	mov r1, r4
	add r2, r4, #0x27c
	add r3, r4, #0x2dc
	bl func_ov00_020c5c2c
	ldr r1, _020d56a0 ; =data_ov00_020e92a4
	add r0, r4, #0x27c
	str r1, [r4, #0x25c]
	bl func_ov00_020d52b8
	add r0, r4, #0x2dc
	add r1, r4, #0x300
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020d56a4 ; =data_ov00_020e86a8
	add r0, r4, #0x31c
	str r1, [r4, #0x2dc]
	add r1, r4, #0x340
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _020d56a4 ; =data_ov00_020e86a8
	mov r0, #0
	str r1, [r4, #0x31c]
	strb r0, [r4, #0x35c]
	add r0, r4, #0x360
	mov r1, r4
	add r2, r4, #0x380
	add r3, r4, #0x3e0
	bl func_ov00_020c5c2c
	ldr r1, _020d56a0 ; =data_ov00_020e92a4
	add r0, r4, #0x380
	str r1, [r4, #0x360]
	bl func_ov00_020d52b8
	add r0, r4, #0x3e0
	add r1, r0, #0x24
	mov r2, #0
	blx func_ov00_020c0c08
	add r0, r4, #0x420
	ldr r3, _020d56a4 ; =data_ov00_020e86a8
	add r1, r0, #0x24
	mov r2, #0
	str r3, [r4, #0x3e0]
	blx func_ov00_020c0c08
	ldr r0, _020d56a4 ; =data_ov00_020e86a8
	mov r1, #0
	str r0, [r4, #0x420]
	mov r0, r4
	strb r1, [r4, #0x460]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d556c
_020d569c: .word data_ov00_020e91e8
_020d56a0: .word data_ov00_020e92a4
_020d56a4: .word data_ov00_020e86a8

	.global func_ov00_020d56a8
	arm_func_start func_ov00_020d56a8
func_ov00_020d56a8: ; 0x020d56a8
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d56a8

	.global func_ov00_020d56bc
	arm_func_start func_ov00_020d56bc
func_ov00_020d56bc: ; 0x020d56bc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, _020d5738 ; =0x0000019a
	str r4, [r5, #0xa8]
	str r0, [r5, #0xac]
	str r4, [r5, #0xb0]
	add r0, r0, #0x1000
	str r0, [r5, #0xb4]
	add r0, r5, #0x158
	str r0, [r5, #0x464]
	add r0, r5, #0x25c
	str r0, [r5, #0x468]
	add r0, r5, #0x360
	str r0, [r5, #0x46c]
_020d56f8:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x464]
	ldr r1, [r5, #0x140]
	bl func_ov00_020d5458
	add r4, r4, #1
	cmp r4, #3
	blt _020d56f8
	mov r0, #0x1000
	str r0, [r5, #0x470]
	str r0, [r5, #0x474]
	str r0, [r5, #0x478]
	mov r0, #0
	str r0, [r5, #0x480]
	strb r0, [r5, #0x484]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d56bc
_020d5738: .word 0x0000019a

	.global func_ov00_020d573c
	arm_func_start func_ov00_020d573c
func_ov00_020d573c: ; 0x020d573c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	str r1, [sp]
	bl func_ov00_020c313c
	cmp r0, #0
	beq _020d5888
	mov r0, sl
	bl func_ov00_020c2bf4
	ldrb r0, [sl, #0x485]
	cmp r0, #0
	beq _020d57b0
	ldr r1, [sl, #0x48]
	ldr r0, _020d58a8 ; =data_027e0e60
	str r1, [sp, #4]
	ldr r1, [sl, #0x4c]
	ldr r5, [r0]
	str r1, [sp, #8]
	ldr r3, [sl, #0x50]
	add r1, sp, #4
	mov r0, r5
	mov r2, #0
	str r3, [sp, #0xc]
	bl func_ov00_02083f44
	mov r4, r0
	mov r0, r5
	bl func_ov00_02084120
	add r0, r4, r0
	str r0, [sl, #0x4c]
_020d57b0:
	ldr r0, [sl, #0x480]
	mov r6, #0
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [sl, #0x480]
	bne _020d57d4
	ldrb r0, [sl, #0x484]
	cmp r0, #0
	moveq r6, #1
_020d57d4:
	mov r7, #0
	mov sb, r7
	mov r5, r7
	mov r4, #0x1000
	mov fp, #1
_020d57e8:
	add r0, sl, sb, lsl #2
	ldr r8, [r0, #0x464]
	ldrb r0, [r8, #0x100]
	cmp r0, #0
	bne _020d583c
	cmp r6, #0
	add r7, r7, #1
	beq _020d5864
	ldr r0, [sl, #0x47c]
	mov r1, r5
	str r0, [sl, #0x480]
	ldr r0, [r8, #0x10]
	mov r6, r5
	bl func_ov00_020c0e24
	ldr r1, [r8, #0x10]
	add r0, r8, #0xc0
	str r4, [r1, #0x10]
	mov r1, #0
	strb fp, [r8, #0x100]
	bl func_ov00_020c0e24
	b _020d5864
_020d583c:
	cmp r0, #1
	bne _020d5864
	mov r0, r8
	bl func_ov00_020c5e20
	ldr r0, [r8, #0x10]
	add r0, r0, #0xc
	bl func_0202e58c
	cmp r0, #0
	movne r0, #0
	strneb r0, [r8, #0x100]
_020d5864:
	add sb, sb, #1
	cmp sb, #3
	blt _020d57e8
	ldrb r0, [sl, #0x484]
	cmp r0, #1
	cmpeq r7, #3
	bne _020d5888
	mov r0, sl
	bl func_ov00_020c3180
_020d5888:
	ldr r1, [sp]
	add r0, sl, #0xa4
	add r2, sl, #0x48
	bl func_ov00_0207a1c8
	mov r0, #1
	strb r0, [sl, #0x484]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020d573c
_020d58a8: .word data_027e0e60

	.global func_ov00_020d58ac
	arm_func_start func_ov00_020d58ac
func_ov00_020d58ac: ; 0x020d58ac
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d58ac

	.global func_ov00_020d58c0
	arm_func_start func_ov00_020d58c0
func_ov00_020d58c0: ; 0x020d58c0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldrneb r0, [r5, #0xa5]
	ldreqb r0, [r5, #0xa4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
_020d58e0:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x464]
	ldrb r1, [r0, #0x100]
	cmp r1, #1
	bne _020d58fc
	add r1, r5, #0x470
	bl func_ov00_020c5fc0
_020d58fc:
	add r4, r4, #1
	cmp r4, #3
	blt _020d58e0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d58c0

	.global func_ov00_020d590c
	arm_func_start func_ov00_020d590c
func_ov00_020d590c: ; 0x020d590c
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x420
	blx func_ov00_020a9a8c
	add r0, r4, #0x3e0
	blx func_ov00_020a9a8c
	add r0, r4, #0x380
	blx func_ov00_020a95ec
	add r0, r4, #0x31c
	blx func_ov00_020a9a8c
	add r0, r4, #0x2dc
	blx func_ov00_020a9a8c
	add r0, r4, #0x27c
	blx func_ov00_020a95ec
	add r0, r4, #0x218
	blx func_ov00_020a9a8c
	add r0, r4, #0x1d8
	blx func_ov00_020a9a8c
	add r0, r4, #0x178
	blx func_ov00_020a95ec
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d590c

	.global func_ov00_020d5974
	arm_func_start func_ov00_020d5974
func_ov00_020d5974: ; 0x020d5974
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x420
	blx func_ov00_020a9a8c
	add r0, r4, #0x3e0
	blx func_ov00_020a9a8c
	add r0, r4, #0x380
	blx func_ov00_020a95ec
	add r0, r4, #0x31c
	blx func_ov00_020a9a8c
	add r0, r4, #0x2dc
	blx func_ov00_020a9a8c
	add r0, r4, #0x27c
	blx func_ov00_020a95ec
	add r0, r4, #0x218
	blx func_ov00_020a9a8c
	add r0, r4, #0x1d8
	blx func_ov00_020a9a8c
	add r0, r4, #0x178
	blx func_ov00_020a95ec
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d5974

	.global func_ov00_020d59d4
	arm_func_start func_ov00_020d59d4
func_ov00_020d59d4: ; 0x020d59d4
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov00_020a95ec
	mov r0, r4
	bl _ZN9SysObjectdlEPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d59d4

.ifdef EUR
; This used to be higher up in USA
.include "ov00/ov00_020d59f0.inc"
.endif

	.global func_ov00_020d6148
	arm_func_start func_ov00_020d6148
func_ov00_020d6148: ; 0x020d6148
	mov r3, #0
	mvn r2, #0
_020d6150:
	add r1, r0, r3, lsl #3
	str r2, [r1, #0x18]
	add r3, r3, #1
	str r2, [r1, #0x1c]
	cmp r3, #3
	blt _020d6150
	mov r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end func_ov00_020d6148

	.global func_ov00_020d6178
	arm_func_start func_ov00_020d6178
func_ov00_020d6178: ; 0x020d6178
	ldr r2, [r0, #0x30]
	add r0, r0, #0x18
	add r1, r2, r1
	cmp r1, #3
	subge r1, r1, #3
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end func_ov00_020d6178

	.global func_ov00_020d6194
	arm_func_start func_ov00_020d6194
func_ov00_020d6194: ; 0x020d6194
	ldrb r2, [r0, #4]
	cmp r2, #0
	ldrneb r1, [r0, #0x38]
	cmpne r1, #0
	subne r1, r2, #1
	strneb r1, [r0, #4]
	bx lr
	arm_func_end func_ov00_020d6194

	.global func_ov00_020d61b0
	arm_func_start func_ov00_020d61b0
func_ov00_020d61b0: ; 0x020d61b0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	ldrb r5, [sl, #0x38]
	mov sb, r1
	mov r4, r2
	cmp r5, #0
	mov fp, r3
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [sl, #4]
	cmp r1, #0
	beq _020d632c
	cmp r1, #1
	addeq r0, r1, #1
	streqb r0, [sl, #4]
	ldr r1, [sl, #0x10]
	mov r0, sl
	add r3, r1, #1
	mov r1, sb
	mov r2, r4
	str r3, [sl, #0x10]
	bl func_ov00_020d6394
	ldr r0, [sl, #0x10]
	cmp r0, #5
	ble _020d62ec
	mov r6, #0
	mov r8, r6
	mov r7, #1
	mov r4, r6
_020d6228:
	mov r0, sl
	mov r1, r8
	bl func_ov00_020d6178
	mov r5, r0
	mov r0, sl
	add r1, r8, #1
	bl func_ov00_020d6178
	mov r1, r0
	mov r0, r5
	bl func_ov00_020d63fc
	cmp r0, #0
	add r8, r8, #1
	movlt r7, r4
	addge r6, r6, r0
	cmp r8, #2
	blt _020d6228
	cmp r7, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #8]
	add r0, r1, #0x200
	cmp r6, r0
	movge r1, #0x7f
	bge _020d62b0
	cmp r6, r1
	movlt r1, #0
	blt _020d62b0
	ldr r3, [sl, #0xc]
	sub r0, r6, r1
	rsb r1, r3, #0x7f
	mul r2, r1, r0
	mov r0, r2, asr #0x8
	add r0, r2, r0, lsr #23
	add r1, r3, r0, asr #9
_020d62b0:
	mov r0, sb, asr #0x2
	add r0, r0, r0, lsl #1
	str r1, [sp]
	mov r4, #0
	str r4, [sp, #4]
	sub r0, r0, #0x60
	str r0, [sp, #8]
	ldr r0, _020d6390 ; =data_ov00_020eec9c
	mov r2, fp
	mov r1, #3
	mov r3, #5
	str r4, [sp, #0xc]
	bl func_ov00_020d80a4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d62ec:
	mov r0, sb, asr #0x2
	mov r1, #0x40
	add r0, r0, r0, lsl #1
	str r1, [sp]
	mov r4, #0
	str r4, [sp, #4]
	sub r0, r0, #0x60
	str r0, [sp, #8]
	ldr r0, _020d6390 ; =data_ov00_020eec9c
	mov r2, fp
	mov r1, #3
	mov r3, #5
	str r4, [sp, #0xc]
	bl func_ov00_020d80a4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d632c:
	bl func_ov00_020d6148
	mov r0, sl
	mov r1, sb
	mov r2, r4
	bl func_ov00_020d6394
	mov r0, #0x40
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _020d6390 ; =data_ov00_020eec9c
	mov r2, fp
	mov r1, #3
	mov r3, #1
	str r4, [sp, #0xc]
	bl func_ov00_020d80a4
	mov r1, #2
	str r1, [sl, #8]
	mov r0, #4
	str r0, [sl, #0xc]
	strb r1, [sl, #4]
	mov r0, r4
	str r0, [sl, #0x10]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020d61b0
_020d6390: .word data_ov00_020eec9c

	.global func_ov00_020d6394
	arm_func_start func_ov00_020d6394
func_ov00_020d6394: ; 0x020d6394
	ldr r3, [r0, #0x30]
	add ip, r0, #0x18
	str r1, [ip, r3, lsl #3]
	add r1, ip, r3, lsl #3
	str r2, [r1, #4]
	ldr r1, [r0, #0x30]
	add r1, r1, #1
	str r1, [r0, #0x30]
	cmp r1, #3
	moveq r1, #0
	streq r1, [r0, #0x30]
	ldr r2, [r0, #0x30]
	ldr r1, [r0, #0x34]
	cmp r2, r1
	addeq r1, r1, #1
	streq r1, [r0, #0x34]
	cmpeq r1, #3
	moveq r1, #0
	streq r1, [r0, #0x34]
	bx lr
	arm_func_end func_ov00_020d6394

	.global func_ov00_020d63e4
	arm_func_start func_ov00_020d63e4
func_ov00_020d63e4: ; 0x020d63e4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0201f5e4
	mov r0, #0
	strb r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d63e4

	.global func_ov00_020d63fc
	arm_func_start func_ov00_020d63fc
func_ov00_020d63fc: ; 0x020d63fc
	ldr r2, [r0]
	ldr r3, [r1]
	cmp r2, #0
	ldrge r0, [r0, #4]
	ldr r1, [r1, #4]
	cmpge r0, #0
	cmpge r3, #0
	cmpge r1, #0
	mvnlt r0, #0
	bxlt lr
	sub r1, r1, r0
	mul r0, r1, r1
	sub r1, r3, r2
	mla r0, r1, r1, r0
	bx lr
	arm_func_end func_ov00_020d63fc

	.global func_ov00_020d6438
	thumb_func_start func_ov00_020d6438
func_ov00_020d6438: ; 0x020d6438
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x1c
	add r2, r4, #0
	mul r2, r1
	ldr r1, _020d6484 ; =data_020561f4
	add r5, r0, #0
	ldrb r2, [r1, r2]
	add r1, r5, #0
	add r1, #0x94
	strb r2, [r1]
	cmp r4, #7
	bhi _020d647e
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020d645e: ; jump table
	.short _020d647e - _020d645e - 2 ; case 0
	.short _020d647e - _020d645e - 2 ; case 1
	.short _020d647e - _020d645e - 2 ; case 2
	.short _020d647a - _020d645e - 2 ; case 3
	.short _020d6474 - _020d645e - 2 ; case 4
	.short _020d646e - _020d645e - 2 ; case 5
	.short _020d646e - _020d645e - 2 ; case 6
	.short _020d646e - _020d645e - 2 ; case 7
_020d646e:
	blx func_ov01_020f8658
	b _020d647e
_020d6474:
	bl func_ov00_020d6620
	b _020d647e
_020d647a:
	blx func_ov10_0211e584
_020d647e:
	add r5, #0x9c
	str r4, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d6438
_020d6484: .word data_020561f4

	.global func_ov00_020d6488
	thumb_func_start func_ov00_020d6488
func_ov00_020d6488: ; 0x020d6488
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020d64a8 ; =data_ov00_020eec64
	mov r1, #0
	mov r2, #1
	blx func_ov00_020d6c5c
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #3
	bne _020d64a6
	add r0, r4, #0
	blx func_ov10_0211e5a8
_020d64a6:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d6488
_020d64a8: .word data_ov00_020eec64

	.global func_ov00_020d64ac
	arm_func_start func_ov00_020d64ac
func_ov00_020d64ac: ; 0x020d64ac
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0200dd94
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrb r0, [r4, #0x97]
	cmp r0, #0
	bne _020d6518
	ldr r0, _020d6520 ; =data_027e0ffc
	bl func_ov00_020ce740
	ldr r0, _020d6524 ; =data_ov00_020eec68
	bl func_ov00_020d6e40
	ldr r0, _020d6528 ; =data_ov00_020eec9c
	bl func_ov00_020d75dc
	ldr r0, _020d652c ; =data_ov00_020ee6f8
	bl func_ov00_020d6194
	ldr r0, _020d6530 ; =data_ov00_020ee820
	bl func_ov00_020d6998
	ldr r0, _020d6534 ; =data_ov00_020eec60
	bl func_ov00_020d6aa4
	ldr r0, _020d6538 ; =data_ov00_020eed2c
	bl func_ov00_020d869c
	ldr r0, _020d653c ; =data_ov00_020ee800
	ldr r0, [r0]
	cmp r0, #0
	beq _020d6518
	bl func_ov00_020d6844
_020d6518:
	bl func_0201f40c
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d64ac
_020d6520: .word data_027e0ffc
_020d6524: .word data_ov00_020eec68
_020d6528: .word data_ov00_020eec9c
_020d652c: .word data_ov00_020ee6f8
_020d6530: .word data_ov00_020ee820
_020d6534: .word data_ov00_020eec60
_020d6538: .word data_ov00_020eed2c
_020d653c: .word data_ov00_020ee800

	.global func_ov00_020d6540
	thumb_func_start func_ov00_020d6540
func_ov00_020d6540: ; 0x020d6540
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020d6564 ; =data_ov00_020eec68
	blx func_ov00_020d72b8
	ldr r0, _020d6568 ; =data_ov00_020eec9c
	mov r1, #7
	blx func_ov00_020d77e4
	ldr r0, _020d6568 ; =data_ov00_020eec9c
	mov r1, #5
	blx func_ov00_020d7fc8
	mov r0, #1
	add r4, #0x95
	strb r0, [r4]
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020d6540
_020d6564: .word data_ov00_020eec68
_020d6568: .word data_ov00_020eec9c

	.global func_ov00_020d656c
	thumb_func_start func_ov00_020d656c
func_ov00_020d656c: ; 0x020d656c
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020d658c ; =data_ov00_020eec68
	add r4, r1, #0
	blx func_ov00_020d7328
	mov r0, #0
	add r5, #0x95
	strb r0, [r5]
	cmp r4, #0
	beq _020d658a
	ldr r0, _020d6590 ; =data_ov00_020eec9c
	mov r1, #8
	blx func_ov00_020d77e4
_020d658a:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d656c
_020d658c: .word data_ov00_020eec68
_020d6590: .word data_ov00_020eec9c

	.global func_ov00_020d6594
	thumb_func_start func_ov00_020d6594
func_ov00_020d6594: ; 0x020d6594
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020d65b0 ; =data_ov00_020eec68
	blx func_ov00_020d7394
	mov r0, #0
	add r4, #0x95
	strb r0, [r4]
	ldr r0, _020d65b4 ; =data_ov00_020eec9c
	mov r1, #9
	blx func_ov00_020d77e4
	pop {r4, pc}
	nop
	thumb_func_end func_ov00_020d6594
_020d65b0: .word data_ov00_020eec68
_020d65b4: .word data_ov00_020eec9c

	.global func_ov00_020d65b8
	thumb_func_start func_ov00_020d65b8
func_ov00_020d65b8: ; 0x020d65b8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	bne _020d65ea
	ldr r0, _020d65ec ; =data_ov00_020ee820
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _020d65d2
	ldr r0, [r0, #0x20]
	cmp r0, #0
	ble _020d65da
_020d65d2:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x99
	strb r1, [r0]
_020d65da:
	ldr r1, _020d65ec ; =data_ov00_020ee820
	mov r0, #0
	strb r0, [r1, #2]
	blx func_0201f43c
	mov r0, #1
	add r4, #0x96
	strb r0, [r4]
_020d65ea:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d65b8
_020d65ec: .word data_ov00_020ee820

	.global func_ov00_020d65f0
	thumb_func_start func_ov00_020d65f0
func_ov00_020d65f0: ; 0x020d65f0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	beq _020d661a
	add r0, r4, #0
	add r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	beq _020d660e
	ldr r0, _020d661c ; =data_ov00_020ee820
	mov r1, #0
	blx func_ov00_020d6a8c
_020d660e:
	mov r0, #0x7f
	blx func_0201f43c
	mov r0, #0
	add r4, #0x96
	strb r0, [r4]
_020d661a:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d65f0
_020d661c: .word data_ov00_020ee820

	.global func_ov00_020d6620
	thumb_func_start func_ov00_020d6620
func_ov00_020d6620: ; 0x020d6620
	push {r3, lr}
	ldr r0, _020d6658 ; =data_ov00_020eec68
	mov r1, #0
	blx func_ov00_020d7274
	ldr r0, _020d665c ; =data_ov00_020eec9c
	mov r1, #0
	blx func_ov00_020d7f9c
	ldr r0, _020d6660 ; =data_ov00_020ee6f8
	mov r1, #0
	blx func_ov00_020d63e4
	blx func_0201f468
	ldr r0, _020d6664 ; =data_ov00_020eec64
	mov r1, #0
	mov r2, #1
	blx func_ov00_020d6c5c
	ldr r0, _020d6668 ; =data_ov00_020ee820
	blx func_ov00_020d6a28
	mov r0, #0
	blx func_02009558
	pop {r3, pc}
	nop
	thumb_func_end func_ov00_020d6620
_020d6658: .word data_ov00_020eec68
_020d665c: .word data_ov00_020eec9c
_020d6660: .word data_ov00_020ee6f8
_020d6664: .word data_ov00_020eec64
_020d6668: .word data_ov00_020ee820

	.global func_ov00_020d666c
	thumb_func_start func_ov00_020d666c
func_ov00_020d666c: ; 0x020d666c
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020d6694 ; =data_ov00_020eec68
	add r5, r1, #0
	blx func_ov00_020d7274
	ldr r0, _020d6698 ; =data_ov00_020eec9c
	add r1, r5, #0
	blx func_ov00_020d7f9c
	ldr r0, _020d669c ; =data_ov00_020ee820
	blx func_ov00_020d6a28
	ldr r0, _020d66a0 ; =data_ov00_020eec64
	blx func_ov00_020d6c24
	mov r0, #1
	add r4, #0x97
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d666c
_020d6694: .word data_ov00_020eec68
_020d6698: .word data_ov00_020eec9c
_020d669c: .word data_ov00_020ee820
_020d66a0: .word data_ov00_020eec64

	.global func_ov00_020d66a4
	thumb_func_start func_ov00_020d66a4
func_ov00_020d66a4: ; 0x020d66a4
	push {r4, lr}
	add r2, r0, #0
	add r2, #0x90
	add r0, r1, #0
	ldr r1, [r2]
	mov r4, #0
	blx func_020209a4
	cmp r0, #0
	beq _020d66ba
	mov r4, #1
_020d66ba:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d66a4

	.global func_ov00_020d66c0
	thumb_func_start func_ov00_020d66c0
func_ov00_020d66c0: ; 0x020d66c0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, r1, #0
	blx func_0201f2cc
	cmp r0, #5
	blt _020d66de
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #4
	blx func_0201f1f8
_020d66de:
	cmp r4, #0xa8
	blt _020d6706
	cmp r4, #0xb2
	bgt _020d6706
	add r0, r5, #0
	mov r1, #0x3f
	bl func_ov00_020d66a4
	cmp r0, #0
	beq _020d6728
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	blx func_0201f1ac
	add r5, #0x90
	ldr r0, [r5]
	blx func_0201f1ac
	pop {r3, r4, r5, pc}
_020d6706:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	blx func_020209bc
	cmp r0, #0
	beq _020d6728
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	blx func_0201f1ac
	add r5, #0x90
	ldr r0, [r5]
	blx func_0201f1ac
_020d6728:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov00_020d66c0

	.global func_ov00_020d672c
	thumb_func_start func_ov00_020d672c
func_ov00_020d672c: ; 0x020d672c
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, r1, #0
	blx func_0201f2cc
	cmp r0, #6
	blt _020d674a
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #5
	blx func_0201f1f8
_020d674a:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	blx func_020209bc
	add r5, #0x90
	ldr r0, [r5]
	blx func_0201f1ac
	pop {r3, r4, r5, pc}
	thumb_func_end func_ov00_020d672c

	.global func_ov00_020d6760
	thumb_func_start func_ov00_020d6760
func_ov00_020d6760: ; 0x020d6760
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, r1, #0
	blx func_0201f2cc
	cmp r0, #7
	bne _020d677e
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #6
	blx func_0201f1f8
_020d677e:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	blx func_020209bc
	cmp r0, #0
	beq _020d6796
	add r5, #0x90
	ldr r0, [r5]
	blx func_0201f1ac
_020d6796:
	pop {r3, r4, r5, pc}
	thumb_func_end func_ov00_020d6760

	.global func_ov00_020d6798
	arm_func_start func_ov00_020d6798
func_ov00_020d6798: ; 0x020d6798
	mov r2, #0
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	str r2, [r0, #0xc]
	mov r1, r2
_020d67ac:
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #8
	blt _020d67ac
	bx lr
	arm_func_end func_ov00_020d6798

	.global func_ov00_020d67c0
	arm_func_start func_ov00_020d67c0
func_ov00_020d67c0: ; 0x020d67c0
	bx lr
	arm_func_end func_ov00_020d67c0

	.global func_ov00_020d67c4
	arm_func_start func_ov00_020d67c4
func_ov00_020d67c4: ; 0x020d67c4
	stmdb sp!, {r3, lr}
	ldr r0, _020d6804 ; =data_ov00_020ee800
	ldr r0, [r0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _020d6808 ; =data_027e0ce0
	mov r0, #0x10
	ldr r1, [r1, #4]
	mov r2, #4
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	beq _020d67f8
	bl func_ov00_020d6798
_020d67f8:
	ldr r1, _020d6804 ; =data_ov00_020ee800
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d67c4
_020d6804: .word data_ov00_020ee800
_020d6808: .word data_027e0ce0

	.global func_ov00_020d680c
	arm_func_start func_ov00_020d680c
func_ov00_020d680c: ; 0x020d680c
	stmdb sp!, {r4, lr}
	ldr r0, _020d6840 ; =data_ov00_020ee800
	ldr r4, [r0]
	cmp r4, #0
	beq _020d6830
	mov r0, r4
	bl func_ov00_020d67c0
	mov r0, r4
	bl _ZN9SysObjectdlEPv
_020d6830:
	ldr r0, _020d6840 ; =data_ov00_020ee800
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d680c
_020d6840: .word data_ov00_020ee800

	.global func_ov00_020d6844
	arm_func_start func_ov00_020d6844
func_ov00_020d6844: ; 0x020d6844
	ldr r1, [r0, #0xc]
	cmp r1, #1
	moveq r1, #2
	streq r1, [r0, #0xc]
	bxeq lr
	cmp r1, #2
	moveq r1, #0
	streq r1, [r0, #0xc]
	bx lr
	arm_func_end func_ov00_020d6844

	.global func_ov00_020d6868
	arm_func_start func_ov00_020d6868
func_ov00_020d6868: ; 0x020d6868
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020d68a4
	mov r0, #0
_020d6884:
	strb r1, [r4, r0]
	add r0, r0, #1
	cmp r0, #8
	blt _020d6884
	mov r0, #0
	strb r0, [r4, #9]
	strb r1, [r4, #8]
	b _020d68e8
_020d68a4:
	ldrb r0, [r4, #9]
	strb r1, [r4, r0]
	ldrb r0, [r4, #9]
	add r2, r0, #1
	and r0, r2, #0xff
	cmp r0, #8
	strb r2, [r4, #9]
	movhs r0, #0
	strhsb r0, [r4, #9]
	ldrb r0, [r4, #8]
	add r1, r0, r1, lsr #3
	strb r1, [r4, #8]
	ldrb r0, [r4, #9]
	and r1, r1, #0xff
	ldrb r0, [r4, r0]
	sub r0, r1, r0, lsr #3
	strb r0, [r4, #8]
_020d68e8:
	ldr r0, _020d698c ; =data_ov00_020eec68
	ldr r5, _020d6990 ; =data_ov00_020eec9c
	bl func_ov00_020d7424
	cmp r0, #0xd0
	beq _020d693c
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0x40
	movmi r0, #0
	bmi _020d6914
	cmp r0, #0x40
	movgt r0, #0x40
_020d6914:
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r2, _020d6994 ; =0x0000048b
	mov r0, r5
	mov r1, #4
	mov r3, #1
	str ip, [sp, #0xc]
	bl func_ov00_020d80a4
_020d693c:
	ldrb r0, [r4, #8]
	subs r0, r0, #0x20
	movmi r0, #0
	bmi _020d6954
	cmp r0, #0x5f
	movgt r0, #0x5f
_020d6954:
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	mov r1, #4
	str ip, [sp, #8]
	mov r0, r5
	rsb r2, r1, #0x490
	mov r3, #1
	str ip, [sp, #0xc]
	bl func_ov00_020d80a4
	mov r0, #1
	str r0, [r4, #0xc]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6868
_020d698c: .word data_ov00_020eec68
_020d6990: .word data_ov00_020eec9c
_020d6994: .word 0x0000048b

	.global func_ov00_020d6998
	arm_func_start func_ov00_020d6998
func_ov00_020d6998: ; 0x020d6998
	ldr r2, [r0, #0x20]
	cmp r2, #0
	bxle lr
	ldr r1, _020d69d0 ; =data_ov00_020ee734
	ldrb r1, [r1, #0x94]
	sub r1, r2, r1
	str r1, [r0, #0x20]
	cmp r1, #0
	bxgt lr
	mov r1, #1
	strb r1, [r0, #2]
	sub r1, r1, #2
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d6998
_020d69d0: .word data_ov00_020ee734

	.global func_ov00_020d69d4
	arm_func_start func_ov00_020d69d4
func_ov00_020d69d4: ; 0x020d69d4
	ldr ip, _020d69e0 ; =func_0200b4f4
	mov r0, r1
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d69d4
_020d69e0: .word func_0200b4f4

	.global func_ov00_020d69e4
	arm_func_start func_ov00_020d69e4
func_ov00_020d69e4: ; 0x020d69e4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrb r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #4
	bl func_0200ab90
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #0xb4
	str r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d69e4

	.global func_ov00_020d6a28
	arm_func_start func_ov00_020d6a28
func_ov00_020d6a28: ; 0x020d6a28
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldrneb r0, [r4]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	bl func_0200ac24
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d6a28

	.global func_ov00_020d6a58
	arm_func_start func_ov00_020d6a58
func_ov00_020d6a58: ; 0x020d6a58
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #1]
	mov r2, #0
	cmp r1, #0
	ldrneb r1, [r0]
	cmpne r1, #0
	ldrneb r0, [r0, #2]
	cmpne r0, #0
	beq _020d6a84
	bl func_0200ac5c
	mov r2, r0
_020d6a84:
	mov r0, r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d6a58

	.global func_ov00_020d6a8c
	arm_func_start func_ov00_020d6a8c
func_ov00_020d6a8c: ; 0x020d6a8c
	mov r2, #0
	cmp r1, #0
	movle r1, #0xb4
	strb r2, [r0, #2]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end func_ov00_020d6a8c

	.global func_ov00_020d6aa4
	arm_func_start func_ov00_020d6aa4
func_ov00_020d6aa4: ; 0x020d6aa4
	stmdb sp!, {r4, lr}
	ldr r1, _020d6af4 ; =data_ov00_020ee820
	mov r4, r0
	ldrb r0, [r1, #2]
	cmp r0, #0
	ldrneb r0, [r4]
	cmpne r0, #0
	ldrnesh r0, [r4, #2]
	cmpne r0, #0
	beq _020d6ae8
	bl func_02015708
	cmp r0, #0
	bne _020d6adc
	bl func_020156f4
_020d6adc:
	bl func_02015740
	strb r0, [r4, #1]
	ldmia sp!, {r4, pc}
_020d6ae8:
	mov r0, #0
	strb r0, [r4, #1]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6aa4
_020d6af4: .word data_ov00_020ee820

	.global func_ov00_020d6af8
	arm_func_start func_ov00_020d6af8
func_ov00_020d6af8: ; 0x020d6af8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	ldrb r0, [r4]
	cmp r0, #0
	ldrne r0, _020d6b44 ; =data_ov00_020ee820
	ldrneb r0, [r0, #2]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	bl func_02015708
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #2]
	cmp r0, #0
	ldmleia sp!, {r4, pc}
	bl func_020156f4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6af8
_020d6b44: .word data_ov00_020ee820

	.global func_ov00_020d6b48
	arm_func_start func_ov00_020d6b48
func_ov00_020d6b48: ; 0x020d6b48
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsh r0, [r4, #2]
	sub r0, r0, #1
	strh r0, [r4, #2]
	ldrb r0, [r4]
	cmp r0, #0
	ldrne r0, _020d6b94 ; =data_ov00_020ee820
	ldrneb r0, [r0, #2]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	bl func_02015708
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r4, #2]
	cmp r0, #0
	ldmgtia sp!, {r4, pc}
	bl func_02015718
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6b48
_020d6b94: .word data_ov00_020ee820

	.global func_ov00_020d6b98
	arm_func_start func_ov00_020d6b98
func_ov00_020d6b98: ; 0x020d6b98
	stmdb sp!, {r3, lr}
	ldrb r1, [r0]
	cmp r1, #0
	beq _020d6bd8
	ldrsh r0, [r0, #2]
	cmp r0, #0
	ble _020d6bd8
	ldr r0, _020d6be0 ; =data_ov00_020ee820
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _020d6bd8
	bl func_02015708
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
_020d6bd8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6b98
_020d6be0: .word data_ov00_020ee820

	.global func_ov00_020d6be4
	arm_func_start func_ov00_020d6be4
func_ov00_020d6be4: ; 0x020d6be4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl func_ov00_020d6b98
	cmp r0, #0
	ldrneb r4, [r5, #1]
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d6be4

	.global func_ov00_020d6c04
	arm_func_start func_ov00_020d6c04
func_ov00_020d6c04: ; 0x020d6c04
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r0, #3
	str r1, [r4]
	bl func_0201e78c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d6c04

	.global func_ov00_020d6c24
	arm_func_start func_ov00_020d6c24
func_ov00_020d6c24: ; 0x020d6c24
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #1
	cmpne r0, #3
	bne _020d6c44
	bl func_0202a5c0
	b _020d6c50
_020d6c44:
	cmp r0, #2
	bne _020d6c50
	bl func_0201e760
_020d6c50:
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d6c24

	.global func_ov00_020d6c5c
	arm_func_start func_ov00_020d6c5c
func_ov00_020d6c5c: ; 0x020d6c5c
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4]
	mov r5, r1
	cmp r0, r5
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	beq _020d6cb4
	cmp r0, #1
	cmpne r0, #3
	bne _020d6c98
	cmp r2, #0
	beq _020d6cb4
	bl func_ov00_020d8660
	b _020d6cb4
_020d6c98:
	cmp r0, #2
	bne _020d6cb4
	cmp r2, #0
	beq _020d6cb4
	ldr r0, _020d6d28 ; =data_027e109c
	ldr r0, [r0]
	bl func_ov14_021532a4
_020d6cb4:
	cmp r5, #0
	moveq r0, #0
	streq r0, [r4]
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #1
	bne _020d6ce0
	mov r0, #1
	bl func_ov00_020d8610
	mov r0, #1
	str r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_020d6ce0:
	cmp r5, #2
	bne _020d6d0c
	ldr r0, _020d6d28 ; =data_027e109c
	ldr r1, _020d6d2c ; =0x00000c4e
	ldr r0, [r0]
	mov r2, #4
	mov r3, #0x1c0
	bl func_ov14_02153144
	mov r0, #2
	str r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_020d6d0c:
	cmp r5, #3
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #2
	bl func_ov00_020d8610
	mov r0, #3
	str r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6c5c
_020d6d28: .word data_027e109c
_020d6d2c: .word 0x00000c4e

	.global func_ov00_020d6d30
	arm_func_start func_ov00_020d6d30
func_ov00_020d6d30: ; 0x020d6d30
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #0x11]
	mov r7, r1
	mov r6, r2
	cmp r0, #0
	mov r5, r3
	cmpne r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl func_02020534
	mov r4, r0
	ldr r0, [r4]
	bl func_0202093c
	cmp r0, #0
	bne _020d6db4
	ldrb r0, [r4, #9]
	cmp r0, #2
	bne _020d6d88
	ldr r0, _020d6e10 ; =data_ov00_020ee734
	mov r1, r6
	blx func_ov00_020d672c
	b _020d6db4
_020d6d88:
	cmp r0, #0
	bne _020d6da0
	ldr r0, _020d6e10 ; =data_ov00_020ee734
	mov r1, r6
	blx func_ov00_020d66c0
	b _020d6db4
_020d6da0:
	cmp r0, #1
	bne _020d6db4
	ldr r0, _020d6e10 ; =data_ov00_020ee734
	mov r1, r6
	blx func_ov00_020d6760
_020d6db4:
	mov r0, r7
	mov r1, r6
	bl func_0202148c
	cmp r5, #0
	ble _020d6dfc
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl func_0201f7d0
	ldr r1, _020d6e10 ; =data_ov00_020ee734
	mov r0, r5
	ldrb r1, [r1, #0x94]
	bl func_02002c14
	mov r2, r0
	ldr r1, [sp, #0x18]
	mov r0, r7
	bl func_0201f7d0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020d6dfc:
	ldr r1, [sp, #0x18]
	mov r0, r7
	mov r2, #0
	bl func_0201f7d0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6d30
_020d6e10: .word data_ov00_020ee734

	.global func_ov00_020d6e14
	arm_func_start func_ov00_020d6e14
func_ov00_020d6e14: ; 0x020d6e14
	stmdb sp!, {r4, lr}
	ldr r0, _020d6e3c ; =data_ov00_020ee734
	mov r4, r1
	ldrb r1, [r0, #0x94]
	mov r0, r2
	bl func_02002c14
	mov r1, r0
	mov r0, r4
	bl func_0201f5e4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6e14
_020d6e3c: .word data_ov00_020ee734

	.global func_ov00_020d6e40
	arm_func_start func_ov00_020d6e40
func_ov00_020d6e40: ; 0x020d6e40
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl func_ov00_020d7404
	cmp r0, #0
	ldreqb r0, [r4, #0x16]
	cmpeq r0, #0
	beq _020d6e68
	mov r0, r4
	bl func_ov00_020d71a0
	b _020d6edc
_020d6e68:
	ldr r0, _020d7094 ; =data_027e0c68
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _020d6edc
	mov r0, r4
	bl func_ov00_020d7424
	cmp r0, #0x69
	beq _020d6edc
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _020d6edc
	mov r0, r4
	bl func_ov00_020d7424
	cmp r0, #0xb3
	blt _020d6eb4
	mov r0, r4
	bl func_ov00_020d7424
	cmp r0, #0xbc
	ble _020d6edc
_020d6eb4:
	mov r0, r4
	bl func_ov00_020d7424
	cmp r0, #0xce
	beq _020d6edc
	mov r0, r4
	bl func_ov00_020d7424
	cmp r0, #0xd5
	beq _020d6edc
	mov r0, r4
	bl func_ov00_020d71a0
_020d6edc:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020d701c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020d7070
_020d6ef4: ; jump table
	b _020d7070 ; case 0
	b _020d6f08 ; case 1
	b _020d6f84 ; case 2
	b _020d6f9c ; case 3
	b _020d6fa8 ; case 4
_020d6f08:
	mov r0, r4
	mov r5, #0x32
	bl func_ov00_020d7404
	cmp r0, #0
	movne r5, #0
	bne _020d6f2c
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	movne r5, #0x14
_020d6f2c:
	mov r0, r4
	mov r1, r5
	mov r2, #5
	bl func_0201f7d0
	mov r1, r5
	add r0, r4, #4
	mov r2, #5
	bl func_0201f7d0
	mov r1, r5
	add r0, r4, #0xc
	mov r2, #5
	bl func_020219e8
	ldr r0, _020d7098 ; =data_ov00_020eec9c
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020d6f78
	mov r1, r5
	mov r2, #5
	bl func_0201f7d0
_020d6f78:
	mov r0, #2
	str r0, [r4, #0x18]
	b _020d7070
_020d6f84:
	ldr r0, _020d709c ; =data_ov00_020eec68
	mov r2, #4
	mov r1, #5
	str r2, [r4, #0x18]
	str r1, [r0, #0x30]
	b _020d7070
_020d6f9c:
	mov r0, #2
	str r0, [r4, #0x18]
	b _020d7070
_020d6fa8:
	ldr r0, _020d709c ; =data_ov00_020eec68
	ldr r1, [r0, #0x30]
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0x30]
	bgt _020d7070
	mov r0, r4
	mov r1, #0x7f
	mov r2, #0x1e
	bl func_0201f7d0
	add r0, r4, #4
	mov r1, #0x7f
	mov r2, #0x1e
	bl func_0201f7d0
	add r0, r4, #0xc
	mov r1, #0x7f
	mov r2, #0x1e
	bl func_020219e8
	ldr r0, _020d7098 ; =data_ov00_020eec9c
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020d700c
	mov r1, #0x7f
	mov r2, #0xf
	bl func_0201f7d0
_020d700c:
	mov r0, #0
	str r0, [r4, #0x18]
	strb r0, [r4, #0x15]
	b _020d7070
_020d701c:
	mov r0, r4
	bl func_0201f91c
	cmp r0, #0xa7
	bne _020d7070
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1e
	blt _020d7070
	ldr r1, [r4, #0x28]
	ldr r0, _020d70a0 ; =data_027e0ffc
	mov r2, #0
	bl func_ov00_020cedbc
	mov r0, r0, asr #0x1
	rsb r5, r0, #0x7f
	cmp r5, #0x28
	movlt r5, #0x28
	mov r0, r4
	mov r1, r5
	bl func_0201f7a8
	mov r1, r5
	add r0, r4, #4
	bl func_0201f7a8
_020d7070:
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrne r0, [r4, #0x1c]
	addne r0, r0, #1
	strne r0, [r4, #0x1c]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d6e40
_020d7094: .word data_027e0c68
_020d7098: .word data_ov00_020eec9c
_020d709c: .word data_ov00_020eec68
_020d70a0: .word data_027e0ffc

	.global func_ov00_020d70a4
	arm_func_start func_ov00_020d70a4
func_ov00_020d70a4: ; 0x020d70a4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldrb ip, [r7, #0x11]
	mov r6, r1
	mov r5, r2
	cmp ip, #0
	cmpne r6, #0x65
	mov r4, r3
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r8, r7
	bl func_0201f91c
	cmp r6, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	bne _020d7114
	mov r0, r7
	bl func_ov00_020d7180
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, #0xf
	bl func_ov00_020d716c
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020d7114:
	mov r0, r6
	bl func_02020534
	ldrb r0, [r0, #9]
	cmp r0, #1
	addeq r8, r7, #8
	beq _020d714c
	cmp r0, #2
	addeq r8, r7, #4
	beq _020d714c
	mov r0, r7
	mov r1, #0
	bl func_ov00_020d716c
	mov r0, #0
	str r0, [r7, #0x1c]
_020d714c:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	bl func_ov00_020d6d30
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end func_ov00_020d70a4

	.global func_ov00_020d716c
	arm_func_start func_ov00_020d716c
func_ov00_020d716c: ; 0x020d716c
	ldr ip, _020d717c ; =func_ov00_020d6e14
	mov r2, r1
	mov r1, r0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d716c
_020d717c: .word func_ov00_020d6e14

	.global func_ov00_020d7180
	arm_func_start func_ov00_020d7180
func_ov00_020d7180: ; 0x020d7180
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020d7180

	.global func_ov00_020d71a0
	arm_func_start func_ov00_020d71a0
func_ov00_020d71a0: ; 0x020d71a0
	stmdb sp!, {r4, lr}
	ldr r1, _020d7260 ; =data_ov00_020ee734
	mov r4, r0
	ldr r1, [r1, #0x9c]
	cmp r1, #3
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020d722c
_020d71c8: ; jump table
	b _020d71dc ; case 0
	b _020d722c ; case 1
	b _020d71e8 ; case 2
	b _020d722c ; case 3
	b _020d71dc ; case 4
_020d71dc:
	mov r0, #1
	str r0, [r4, #0x18]
	b _020d722c
_020d71e8:
	bl func_ov00_020d7404
	cmp r0, #0
	ldrneb r0, [r4, #0x15]
	orrne r0, r0, #1
	strneb r0, [r4, #0x15]
	ldr r0, _020d7264 ; =data_027e0c68
	ldrb r0, [r0, #4]
	cmp r0, #0
	ldrneb r0, [r4, #0x15]
	orrne r0, r0, #2
	strneb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	moveq r0, #3
	streq r0, [r4, #0x18]
	movne r0, #1
	strne r0, [r4, #0x18]
_020d722c:
	mov r0, r4
	bl func_ov00_020d7404
	cmp r0, #0
	ldrneb r0, [r4, #0x15]
	orrne r0, r0, #1
	strneb r0, [r4, #0x15]
	ldr r0, _020d7264 ; =data_027e0c68
	ldrb r0, [r0, #4]
	cmp r0, #0
	ldrneb r0, [r4, #0x15]
	orrne r0, r0, #2
	strneb r0, [r4, #0x15]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d71a0
_020d7260: .word data_ov00_020ee734
_020d7264: .word data_027e0c68

	.global func_ov00_020d7268
	arm_func_start func_ov00_020d7268
func_ov00_020d7268: ; 0x020d7268
	ldr ip, _020d7270 ; =func_0201f7d0
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d7268
_020d7270: .word func_0201f7d0

	.global func_ov00_020d7274
	arm_func_start func_ov00_020d7274
func_ov00_020d7274: ; 0x020d7274
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r7
	mov r4, #0
_020d7288:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl func_ov00_020d6e14
	add r4, r4, #1
	cmp r4, #3
	add r5, r5, #4
	blt _020d7288
	mov r0, r7
	mov r1, r6
	bl func_ov00_020d7470
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d7274

	.global func_ov00_020d72b8
	arm_func_start func_ov00_020d72b8
func_ov00_020d72b8: ; 0x020d72b8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	bne _020d731c
	mov r6, r7
	mov r5, #0
	mov r4, #1
_020d72d8:
	mov r0, r6
	mov r1, r4
	bl func_0201f6f4
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #4
	blt _020d72d8
	mov r0, r7
	bl func_ov00_020d748c
	cmp r0, #0
	beq _020d731c
	mov r0, r7
	bl func_ov00_020d74ac
	str r0, [r7, #0x24]
	add r0, r7, #0xc
	mov r1, #5
	bl func_02021988
_020d731c:
	mov r0, #1
	strb r0, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d72b8

	.global func_ov00_020d7328
	arm_func_start func_ov00_020d7328
func_ov00_020d7328: ; 0x020d7328
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	beq _020d7388
	mov r5, #0
	mov r6, r7
	mov r4, r5
_020d7348:
	mov r0, r6
	mov r1, r4
	bl func_0201f6f4
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #4
	blt _020d7348
	ldr r1, [r7, #0x20]
	cmp r1, #0
	blt _020d7388
	ldr r3, [r7, #0x24]
	mov r0, r7
	mov r2, #0
	bl func_ov00_020d7430
	mov r0, #0
	str r0, [r7, #0x24]
_020d7388:
	mov r0, #0
	strb r0, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d7328

	.global func_ov00_020d7394
	arm_func_start func_ov00_020d7394
func_ov00_020d7394: ; 0x020d7394
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x14]
	cmp r1, #0
	beq _020d73b0
	mov r1, #0
	bl func_ov00_020d7274
_020d73b0:
	mov r0, #0
	strb r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d7394

	.global func_ov00_020d73bc
	arm_func_start func_ov00_020d73bc
func_ov00_020d73bc: ; 0x020d73bc
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl func_020204d8
	mov ip, #0x7f
	mov r0, r5
	mov r2, r4
	add r1, r5, #8
	mov r3, #0
	str ip, [sp]
	bl func_ov00_020d6d30
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d73bc

	.global func_ov00_020d73f0
	arm_func_start func_ov00_020d73f0
func_ov00_020d73f0: ; 0x020d73f0
	ldr ip, _020d7400 ; =func_ov00_020d6e14
	mov r2, r1
	add r1, r0, #8
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d73f0
_020d7400: .word func_ov00_020d6e14

	.global func_ov00_020d7404
	arm_func_start func_ov00_020d7404
func_ov00_020d7404: ; 0x020d7404
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020d7404

	.global func_ov00_020d7424
	arm_func_start func_ov00_020d7424
func_ov00_020d7424: ; 0x020d7424
	ldr ip, _020d742c ; =func_0201f91c
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d7424
_020d742c: .word func_0201f91c

	.global func_ov00_020d7430
	arm_func_start func_ov00_020d7430
func_ov00_020d7430: ; 0x020d7430
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x12]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r2, r3
	add r0, r6, #0xc
	bl func_02021960
	ldr r1, [r6, #0x2c]
	mov r2, r4
	add r0, r6, #0xc
	bl func_020219e8
	str r5, [r6, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020d7430

	.global func_ov00_020d7470
	arm_func_start func_ov00_020d7470
func_ov00_020d7470: ; 0x020d7470
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl func_02021988
	mvn r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d7470

	.global func_ov00_020d748c
	arm_func_start func_ov00_020d748c
func_ov00_020d748c: ; 0x020d748c
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end func_ov00_020d748c

	.global func_ov00_020d74ac
	arm_func_start func_ov00_020d74ac
func_ov00_020d74ac: ; 0x020d74ac
	ldr ip, _020d74b8 ; =func_02021a40
	add r0, r0, #0xc
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d74ac
_020d74b8: .word func_02021a40

	.global func_ov00_020d74bc
	arm_func_start func_ov00_020d74bc
func_ov00_020d74bc: ; 0x020d74bc
	mov r2, #0x1000
	rsb r2, r2, #0
	ldr r3, _020d7518 ; =0x00004e20
	sub r2, r2, r1
	cmp r2, r3
	movlt r1, #0x7f
	blt _020d750c
	ldr r1, _020d751c ; =0x0000cf08
	cmp r2, r1
	movgt r1, #0x3f
	bgt _020d750c
	rsb r1, r3, #0
	add r1, r2, r1
	mov r1, r1, asr #0x9
	rsb r1, r1, #0x7f
	cmp r1, #0x3f
	movlt r1, #0x3f
	blt _020d750c
	cmp r1, #0x7f
	movgt r1, #0x7f
_020d750c:
	ldr ip, _020d7520 ; =func_ov00_020d7268
	mov r2, #0xa
	bx ip
	.align 2, 0
	arm_func_end func_ov00_020d74bc
_020d7518: .word 0x00004e20
_020d751c: .word 0x0000cf08
_020d7520: .word func_ov00_020d7268

	.global func_ov00_020d7524
	arm_func_start func_ov00_020d7524
func_ov00_020d7524: ; 0x020d7524
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	bl func_020214d4
	cmp r0, #0
	ldr r1, _020d7584 ; =data_ov00_020eec9c
	movne r4, #1
	ldr r0, _020d7588 ; =0x0000048d
	moveq r4, #0
	ldr r1, [r1, #0x20]
	cmp r5, r0
	cmpeq r1, #0
	beq _020d7564
	cmp r5, #0x2f
	cmpeq r1, #1
	bne _020d757c
_020d7564:
	cmp r1, #0
	bne _020d757c
	mov r0, r6
	mov r1, #0x7f
	mov r2, #0x78
	bl func_0201f7d0
_020d757c:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7524
_020d7584: .word data_ov00_020eec9c
_020d7588: .word 0x0000048d

	.global func_ov00_020d758c
	arm_func_start func_ov00_020d758c
func_ov00_020d758c: ; 0x020d758c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl func_ov00_020d81e8
	cmp r0, #0
	movne r1, #1
	strneb r1, [r0, #6]
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x20]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl func_ov00_020d823c
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov00_020d758c

	.global func_ov00_020d75c8
	arm_func_start func_ov00_020d75c8
func_ov00_020d75c8: ; 0x020d75c8
	mov r0, #0
	cmp r1, #0xfa
	movls r0, r1, lsr #0x1
	rsbls r0, r0, #0x7f
	bx lr
	arm_func_end func_ov00_020d75c8

	.global func_ov00_020d75dc
	arm_func_start func_ov00_020d75dc
func_ov00_020d75dc: ; 0x020d75dc
	stmdb sp!, {r4, r5, r6, lr}
	mov r1, #0x56
	mov r4, r0
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d7680
	mov r0, r4
	mov r1, #0x55
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d7680
	mov r0, r4
	mov r1, #0x54
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d7680
	mov r0, r4
	mov r1, #0x62
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d7680
	mov r0, r4
	mov r1, #0x57
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d7680
	mov r0, r4
	mov r1, #2
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d7680
	ldr r1, _020d77d4 ; =0x0000048f
	mov r0, r4
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d7680
	mov r0, r4
	mov r1, #0x490
	bl func_ov00_020d7f18
	cmp r0, #0
	beq _020d7694
_020d7680:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _020d7694
	ldr r0, _020d77d8 ; =data_ov00_020eec68
	bl func_ov00_020d71a0
_020d7694:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _020d76dc
	ldr r1, [r4, #0x18]
	mov r0, r4
	bl func_ov00_020d7f18
	cmp r0, #0
	bne _020d76dc
	ldr r0, _020d77dc ; =data_ov00_020ee734
	ldr r5, [r0, #0x90]
	mov r0, r5
	bl func_0201f2cc
	mov r1, r0
	mov r0, r5
	sub r1, r1, #1
	bl func_0201f1f8
	mov r0, #0
	strb r0, [r4, #0xb]
_020d76dc:
	ldr r0, _020d77e0 ; =data_027e0e5c
	ldrh r0, [r0]
	cmp r0, #0
	bne _020d76f4
	mov r0, r4
	bl func_ov00_020d816c
_020d76f4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	beq _020d7780
	cmp r0, #0
	bne _020d772c
	mov r0, r4
	mov r1, #0xf
	bl func_ov00_020d7ffc
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #0xf
	str r0, [r4, #0x14]
	b _020d7774
_020d772c:
	cmp r0, #1
	bne _020d7774
	ldr r0, [r4, #0x14]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x14]
	bgt _020d7774
	mov r6, #7
	mov r5, #0
_020d7750:
	cmp r6, #0x10
	cmpne r6, #0x11
	beq _020d7768
	mov r0, r6
	mov r1, r5
	bl func_0201f500
_020d7768:
	add r6, r6, #1
	cmp r6, #0x1f
	ble _020d7750
_020d7774:
	mov r0, #0
	strb r0, [r4, #0xc]
	b _020d77b8
_020d7780:
	cmp r0, #1
	bne _020d77b8
	mov r0, #0
	str r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	mov r6, #5
	mov r5, #0x7f
_020d77a0:
	mov r0, r6
	mov r1, r5
	bl func_0201f500
	add r6, r6, #1
	cmp r6, #0x1f
	ble _020d77a0
_020d77b8:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	subge r0, r0, #1
	strge r0, [r4, #0x24]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d75dc
_020d77d4: .word 0x0000048f
_020d77d8: .word data_ov00_020eec68
_020d77dc: .word data_ov00_020ee734
_020d77e0: .word data_027e0e5c

	.global func_ov00_020d77e4
	arm_func_start func_ov00_020d77e4
func_ov00_020d77e4: ; 0x020d77e4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020d787c ; =0x00000102
	mov r4, r1
	mov r5, r0
	cmp r4, r2
	bne _020d7810
	mov r1, r2
	bl func_ov00_020d7f18
	cmp r0, #0
	beq _020d7860
	ldmia sp!, {r3, r4, r5, pc}
_020d7810:
	cmp r4, #0x4e
	bne _020d7820
	bl func_ov00_020d84a8
	ldmia sp!, {r3, r4, r5, pc}
_020d7820:
	cmp r4, #0x1c
	bne _020d7860
	mov r1, #0x1c
	bl func_ov00_020d7f18
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #4
	bl func_ov00_020d7f18
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #5
	bl func_ov00_020d7f18
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_020d7860:
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl func_ov00_020d7524
	mov r0, r5
	bl func_0201f710
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d77e4
_020d787c: .word 0x00000102

	.global func_ov00_020d7880
	arm_func_start func_ov00_020d7880
func_ov00_020d7880: ; 0x020d7880
	stmdb sp!, {r4, lr}
	mov r2, r1
	mov r4, r0
	mov r1, #1
	bl func_ov00_020d7524
	mov r0, r4
	bl func_0201f710
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d7880

	.global func_ov00_020d78a0
	arm_func_start func_ov00_020d78a0
func_ov00_020d78a0: ; 0x020d78a0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, _020d7a78 ; =data_027e0764
	mov sb, r1
	ldr r7, [r5]
	mov r8, r2
	mov sl, r0
	ldmib r5, {r2, r6, fp}
	umull r1, r0, r6, r7
	mla r0, r6, r2, r0
	mla r0, fp, r7, r0
	cmp sb, #0x13
	moveq sb, #0
	ldr r2, [r5, #0x10]
	mov r4, sb, lsl #0x2
	add r4, r4, #0x29
	ldr r7, [r5, #0x14]
	adds r1, r2, r1
	str r1, [r5]
	adc r2, r7, r0
	str r2, [r5, #4]
	ldr r0, [sl, #0x1c]
	mov r6, #0
	mov r1, r6, lsl #0x2
	and r0, r0, #1
	cmp r0, #1
	add r4, r4, #0x100
	orr r1, r1, r2, lsr #30
	bne _020d7948
	cmp r1, #3
	ldreqb r0, [sl, #8]
	cmpeq r0, #0
	ldreqb r0, [sl, #9]
	cmpeq r0, #0
	bne _020d7938
	mov r0, #1
	strb r0, [sl, #8]
	add r4, r4, #3
	b _020d7974
_020d7938:
	mov r0, #0
	strb r0, [sl, #8]
	add r4, r4, #1
	b _020d7974
_020d7948:
	cmp r1, #3
	ldreqb r0, [sl, #8]
	cmpeq r0, #0
	ldreqb r0, [sl, #9]
	cmpeq r0, #0
	movne r0, #0
	strneb r0, [sl, #9]
	bne _020d7974
	mov r0, #1
	strb r0, [sl, #9]
	add r4, r4, #2
_020d7974:
	ldr r0, [sl, #0x1c]
	cmp r3, #0
	add r0, r0, #1
	str r0, [sl, #0x1c]
	bge _020d79a4
	mov r1, r4, lsl #0x10
	ldr r0, _020d7a7c ; =data_027e0ffc
	mov r2, r8
	mov r1, r1, lsr #0x10
	mov r3, #0
	bl func_ov00_020ceacc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020d79a4:
	cmp r3, #0xf
	movgt r3, #0xf
	bgt _020d79b8
	cmp r3, #1
	movlt r3, #1
_020d79b8:
	mov r0, #6
	mul r0, r3, r0
	add r6, r0, #0x25
	cmp r6, #0x80
	movgt r6, #0x80
	bgt _020d79d8
	cmp r6, #0
	movlt r6, #0
_020d79d8:
	rsb r7, r3, #0xf
	mov r3, r7, lsl #0x4
	ldr r0, _020d7a7c ; =data_027e0ffc
	mov r1, r8
	mov r2, #0
	rsb r5, r3, #0
	bl func_ov00_020cea80
	mov r1, r0
	mov r0, sl
	bl func_ov00_020d75c8
	mov fp, r0
	ldr r0, _020d7a7c ; =data_027e0ffc
	mov r1, r8
	bl func_ov00_020ce970
	mul r2, fp, r6
	mov r1, r2, asr #0x6
	add r1, r2, r1, lsr #25
	mov r8, r1, asr #0x7
	mov r6, r0
	cmp sb, #0x11
	moveq r0, r7, lsl #0x2
	rsbeq r5, r0, #0
	ldr r1, [sl, #0x20]
	mov r0, sl
	mov r2, r4
	bl func_ov00_020d7524
	ldr r1, _020d7a80 ; =0x0000ffff
	mov r0, sl
	mov r2, r5
	bl func_0201f86c
	mov r0, sl
	mov r1, r8
	bl func_0201f7a8
	ldr r1, _020d7a80 ; =0x0000ffff
	mov r0, sl
	mov r2, r6
	bl func_0201f88c
	mov r0, sl
	bl func_0201f710
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov00_020d78a0
_020d7a78: .word data_027e0764
_020d7a7c: .word data_027e0ffc
_020d7a80: .word 0x0000ffff

	.global func_ov00_020d7a84
	arm_func_start func_ov00_020d7a84
func_ov00_020d7a84: ; 0x020d7a84
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020d7acc ; =0x000002a3
	mov r4, r2
	cmp r5, r1
	ldreq r0, [r0, #0x20]
	cmpeq r0, #0
	bne _020d7ab0
	bl func_0201f748
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
_020d7ab0:
	mov r1, r5, lsl #0x10
	ldr r0, _020d7ad0 ; =data_027e0ffc
	mov r2, r4
	mov r1, r1, lsr #0x10
	mov r3, #0
	bl func_ov00_020ceacc
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7a84
_020d7acc: .word 0x000002a3
_020d7ad0: .word data_027e0ffc

	.global func_ov00_020d7ad4
	arm_func_start func_ov00_020d7ad4
func_ov00_020d7ad4: ; 0x020d7ad4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _020d7b1c ; =0x000002a3
	mov r5, r0
	cmp r4, r1
	ldreq r0, [r5, #0x20]
	cmpeq r0, #0
	bne _020d7b00
	bl func_0201f748
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
_020d7b00:
	ldr r1, [r5, #0x20]
	mov r0, r5
	mov r2, r4
	bl func_ov00_020d7524
	mov r0, r5
	bl func_0201f710
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7ad4
_020d7b1c: .word 0x000002a3

	.global func_ov00_020d7b20
	arm_func_start func_ov00_020d7b20
func_ov00_020d7b20: ; 0x020d7b20
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020d7b58 ; =0x00000121
	mov r4, r2
	bl func_ov00_020d7f18
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5, lsl #0x10
	ldr r0, _020d7b5c ; =data_027e0ffc
	mov r2, r4
	mov r1, r1, lsr #0x10
	mov r3, #0
	bl func_ov00_020ceacc
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7b20
_020d7b58: .word 0x00000121
_020d7b5c: .word data_027e0ffc

	.global func_ov00_020d7b60
	arm_func_start func_ov00_020d7b60
func_ov00_020d7b60: ; 0x020d7b60
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, r1
	ldr r1, [r4, #0x20]
	bl func_ov00_020d7524
	mov r0, r4
	bl func_0201f710
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d7b60

	.global func_ov00_020d7b80
	arm_func_start func_ov00_020d7b80
func_ov00_020d7b80: ; 0x020d7b80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r1, r3
	mov r5, r2
	bl func_ov00_020d75c8
	mov r4, r0
	ldr r0, [r7, #0x20]
	cmp r0, #0
	bne _020d7c1c
	ldr r1, _020d7c5c ; =0x000003c6
	cmp r6, r1
	blt _020d7bcc
	add r1, r1, #0x10
	cmp r6, r1
	bgt _020d7bcc
	cmp r4, #0x64
	movlt r4, #0x64
	b _020d7be8
_020d7bcc:
	ldr r1, _020d7c60 ; =0x00000246
	cmp r6, r1
	bne _020d7be8
	mov r1, r6
	bl func_0201f748
	cmp r0, #0
	movgt r6, #0
_020d7be8:
	cmp r4, #0
	bgt _020d7c1c
	cmp r6, #0x2c0
	ldrne r1, _020d7c64 ; =0x000002d2
	cmpne r6, r1
	addne r0, r1, #1
	cmpne r6, r0
	beq _020d7c18
	rsb r0, r1, #0xa7
	add r0, r6, r0
	cmp r0, #1
	bhi _020d7c1c
_020d7c18:
	mov r4, #0x14
_020d7c1c:
	cmp r4, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #0x20]
	mov r0, r7
	mov r2, r6
	bl func_ov00_020d7524
	ldr r1, _020d7c68 ; =0x0000ffff
	mov r0, r7
	mov r2, r5
	bl func_0201f88c
	mov r0, r7
	mov r1, r4
	bl func_0201f7a8
	mov r0, r7
	bl func_0201f710
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7b80
_020d7c5c: .word 0x000003c6
_020d7c60: .word 0x00000246
_020d7c64: .word 0x000002d2
_020d7c68: .word 0x0000ffff

	.global func_ov00_020d7c6c
	arm_func_start func_ov00_020d7c6c
func_ov00_020d7c6c: ; 0x020d7c6c
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, r1
	ldr r1, [r4, #0x20]
	bl func_ov00_020d7524
	mov r0, r4
	bl func_0201f710
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d7c6c

	.global func_ov00_020d7c8c
	arm_func_start func_ov00_020d7c8c
func_ov00_020d7c8c: ; 0x020d7c8c
	stmdb sp!, {r3, lr}
	mov r2, r1
	cmp r2, #0x2a
	ldreq r1, [r0, #0x20]
	cmpeq r1, #0
	mov r1, #1
	bne _020d7ccc
	mov r2, #0x29
	bl func_ov00_020d758c
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #8
	mov r1, #0
	mov r2, #1
	bl func_0201f944
	ldmia sp!, {r3, pc}
_020d7ccc:
	bl func_ov00_020d758c
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d7c8c

	.global func_ov00_020d7cd4
	arm_func_start func_ov00_020d7cd4
func_ov00_020d7cd4: ; 0x020d7cd4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x20]
	mov r4, r1
	cmp r2, #0
	cmpeq r4, #0xda
	bne _020d7d00
	ldr r1, _020d7d14 ; =0x00000122
	bl func_ov00_020d7f18
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_020d7d00:
	mov r0, r5
	mov r2, r4
	mov r1, #2
	bl func_ov00_020d758c
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7cd4
_020d7d14: .word 0x00000122

	.global func_ov00_020d7d18
	arm_func_start func_ov00_020d7d18
func_ov00_020d7d18: ; 0x020d7d18
	stmdb sp!, {r4, lr}
	mov r2, r1
	mov r1, #3
	mov r4, r0
	bl func_ov00_020d758c
	cmp r0, #0
	addne r0, r0, #8
	strne r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d7d18

	.global func_ov00_020d7d3c
	arm_func_start func_ov00_020d7d3c
func_ov00_020d7d3c: ; 0x020d7d3c
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r1
	ldrb r1, [sp, #0x28]
	mov r8, r0
	mov r6, r2
	mov r5, r3
	bl func_ov00_020d75c8
	ldr r1, [r8, #0x20]
	mov r4, r0
	cmp r1, #0
	bne _020d7da4
	cmp r4, #0x14
	bge _020d7d84
	ldr r0, _020d7ee4 ; =0x000002c1
	cmp r6, r0
	moveq r4, #0x14
	beq _020d7da4
_020d7d84:
	ldr r0, _020d7ee8 ; =0x000003c6
	cmp r6, r0
	blt _020d7da4
	add r0, r0, #0x10
	cmp r6, r0
	bgt _020d7da4
	cmp r4, #0x64
	movlt r4, #0x64
_020d7da4:
	cmp r4, #0
	addle sp, sp, #0x10
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl func_ov00_020d81e8
	cmp r0, #0
	beq _020d7e08
	ldrb r0, [r0, #6]
	cmp r0, #1
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [sp]
	mov r0, #0
	stmib sp, {r0, r5}
	ldr r4, [sp, #0x2c]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #5
	str r4, [sp, #0xc]
	bl func_ov00_020d80a4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020d7e08:
	mov r0, r8
	mov r1, r6
	bl func_ov00_020d7eec
	cmp r0, #1
	ble _020d7eb4
	mov r3, #0
	mov r0, r3
	mov ip, r3
	add lr, r8, #0x28
_020d7e2c:
	ldrh r1, [lr, #4]
	cmp r6, r1
	bne _020d7e64
	cmp r0, #0
	moveq r0, lr
	ldreqb r3, [lr, #7]
	beq _020d7e64
	ldrb r2, [lr, #7]
	ldrb r1, [r0, #7]
	cmp r2, r1
	movlo r0, lr
	blo _020d7e64
	cmp r3, r2
	movlo r3, r2
_020d7e64:
	add ip, ip, #1
	cmp ip, #8
	add lr, lr, #0xc
	blt _020d7e2c
	cmp r3, r4
	addge sp, sp, #0x10
	ldmgeia sp!, {r4, r5, r6, r7, r8, pc}
	bl func_ov00_020d82f4
	str r4, [sp]
	mov r0, #0
	stmib sp, {r0, r5}
	ldr r4, [sp, #0x2c]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #5
	str r4, [sp, #0xc]
	bl func_ov00_020d80a4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020d7eb4:
	str r4, [sp]
	mov r0, #0
	stmib sp, {r0, r5}
	ldr r4, [sp, #0x2c]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #5
	str r4, [sp, #0xc]
	bl func_ov00_020d80a4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7d3c
_020d7ee4: .word 0x000002c1
_020d7ee8: .word 0x000003c6

	.global func_ov00_020d7eec
	arm_func_start func_ov00_020d7eec
func_ov00_020d7eec: ; 0x020d7eec
	mov r3, #0
	mov ip, r3
_020d7ef4:
	ldrh r2, [r0, #0x2c]
	add ip, ip, #1
	add r0, r0, #0xc
	cmp r1, r2
	addeq r3, r3, #1
	cmp ip, #8
	blt _020d7ef4
	mov r0, r3
	bx lr
	arm_func_end func_ov00_020d7eec

	.global func_ov00_020d7f18
	arm_func_start func_ov00_020d7f18
func_ov00_020d7f18: ; 0x020d7f18
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x20]
	bl func_0201f748
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov00_020d7f18

	.global func_ov00_020d7f34
	arm_func_start func_ov00_020d7f34
func_ov00_020d7f34: ; 0x020d7f34
	stmdb sp!, {r4, lr}
	ldr r0, [r0, #0x20]
	mov r4, #0
	bl func_020204f0
	cmp r0, #0
	beq _020d7f60
	ldrb r0, [r0, #5]
	add r0, r0, #0xea
	and r0, r0, #0xff
	cmp r0, #1
	movls r4, #1
_020d7f60:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d7f34

	.global func_ov00_020d7f68
	arm_func_start func_ov00_020d7f68
func_ov00_020d7f68: ; 0x020d7f68
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _020d7f98 ; =data_ov00_020ee734
	mov r4, r1
	ldrb r1, [r3, #0x94]
	mov r5, r0
	mov r0, r2
	bl func_02002c14
	mov r2, r0
	ldr r0, [r5, #0x20]
	mov r1, r4
	bl func_0201f650
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7f68
_020d7f98: .word data_ov00_020ee734

	.global func_ov00_020d7f9c
	arm_func_start func_ov00_020d7f9c
func_ov00_020d7f9c: ; 0x020d7f9c
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _020d7fc4 ; =data_ov00_020ee734
	mov r5, r0
	mov r0, r1
	ldrb r1, [r2, #0x94]
	bl func_02002c14
	mov r4, r0
	bl func_0201f6b4
	str r4, [r5, #0x24]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d7f9c
_020d7fc4: .word data_ov00_020ee734

	.global func_ov00_020d7fc8
	arm_func_start func_ov00_020d7fc8
func_ov00_020d7fc8: ; 0x020d7fc8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, #4
_020d7fd4:
	cmp r4, #0x10
	cmpne r4, #0x11
	beq _020d7fec
	mov r0, r4
	mov r1, r5
	bl func_0201f5f4
_020d7fec:
	add r4, r4, #1
	cmp r4, #0x1f
	ble _020d7fd4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d7fc8

	.global func_ov00_020d7ffc
	arm_func_start func_ov00_020d7ffc
func_ov00_020d7ffc: ; 0x020d7ffc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, #5
_020d8008:
	mov r0, r4
	mov r1, r5
	bl func_0201f5f4
	add r4, r4, #1
	cmp r4, #0x1f
	ble _020d8008
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d7ffc

	.global func_ov00_020d8024
	arm_func_start func_ov00_020d8024
func_ov00_020d8024: ; 0x020d8024
	mov r1, #1
	strb r1, [r0, #0xc]
	bx lr
	arm_func_end func_ov00_020d8024

	.global func_ov00_020d8030
	arm_func_start func_ov00_020d8030
func_ov00_020d8030: ; 0x020d8030
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	mov r5, r2
	ldr r1, [r6, #0x20]
	mov r2, r4
	mov r4, r3
	bl func_ov00_020d7524
	tst r5, #1
	beq _020d8064
	mov r0, r6
	mov r1, r4
	bl func_0201f7a8
_020d8064:
	tst r5, #2
	beq _020d807c
	ldr r2, [sp, #0x10]
	ldr r1, _020d80a0 ; =0x0000ffff
	mov r0, r6
	bl func_0201f86c
_020d807c:
	tst r5, #4
	beq _020d8094
	ldr r2, [sp, #0x14]
	ldr r1, _020d80a0 ; =0x0000ffff
	mov r0, r6
	bl func_0201f88c
_020d8094:
	mov r0, r6
	bl func_0201f710
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d8030
_020d80a0: .word 0x0000ffff

	.global func_ov00_020d80a4
	arm_func_start func_ov00_020d80a4
func_ov00_020d80a4: ; 0x020d80a4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	mov r5, r3
	bl func_ov00_020d758c
	ldr r1, _020d8164 ; =0x0000038b
	mov r4, r0
	cmp r6, r1
	ldreq r0, [r7, #0x20]
	cmpeq r0, #0
	bne _020d8108
	ldr r3, [sp, #0x24]
	cmp r3, #0x7f
	movgt r3, #0x7f
	bgt _020d80e8
	cmp r3, #0
	movlt r3, #0
_020d80e8:
	ldr r0, [sp, #0x18]
	orr r1, r5, #2
	mul r2, r0, r3
	mov r2, r2, asr #0x7
	add r0, r3, r3, lsl #1
	str r2, [sp, #0x18]
	str r0, [sp, #0x1c]
	and r5, r1, #0xff
_020d8108:
	cmp r4, #0
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	tst r5, #1
	beq _020d812c
	ldr r1, [sp, #0x18]
	mov r0, r4
	and r1, r1, #0xff
	bl func_ov00_020d8328
_020d812c:
	tst r5, #2
	beq _020d8144
	ldr r2, [sp, #0x1c]
	ldr r1, _020d8168 ; =0x0000ffff
	add r0, r4, #8
	bl func_0201f86c
_020d8144:
	tst r5, #4
	beq _020d815c
	ldr r2, [sp, #0x20]
	ldr r1, _020d8168 ; =0x0000ffff
	add r0, r4, #8
	bl func_0201f88c
_020d815c:
	add r0, r4, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov00_020d80a4
_020d8164: .word 0x0000038b
_020d8168: .word 0x0000ffff

	.global func_ov00_020d816c
	arm_func_start func_ov00_020d816c
func_ov00_020d816c: ; 0x020d816c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, #0
	mov r6, r0
	add r4, r6, #0x28
	mov r8, r5
	mov sb, #1
	mov r7, r5
_020d8188:
	ldr r0, [r4]
	cmp r0, #0
	beq _020d81d4
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _020d81b8
	ldr r0, [r4, #8]
	cmp r0, #0
	movne r0, sb
	moveq r0, r8
	cmp r0, #0
	bne _020d81d0
_020d81b8:
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bge _020d81d0
	mov r0, r4
	bl func_ov00_020d82f4
	b _020d81d4
_020d81d0:
	strb r7, [r4, #6]
_020d81d4:
	add r5, r5, #1
	cmp r5, #8
	add r4, r4, #0xc
	blt _020d8188
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end func_ov00_020d816c

	.global func_ov00_020d81e8
	arm_func_start func_ov00_020d81e8
func_ov00_020d81e8: ; 0x020d81e8
	stmdb sp!, {r4, lr}
	cmp r1, #0
	mov ip, #0
	beq _020d8234
	mov lr, ip
	mov r4, r0
_020d8200:
	ldr r3, [r4, #0x28]
	cmp r1, r3
	ldreqh r3, [r4, #0x2c]
	cmpeq r2, r3
	bne _020d8224
	add r1, r0, #0x28
	mov r0, #0xc
	mla ip, lr, r0, r1
	b _020d8234
_020d8224:
	add lr, lr, #1
	cmp lr, #8
	add r4, r4, #0xc
	blt _020d8200
_020d8234:
	mov r0, ip
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d81e8

	.global func_ov00_020d823c
	arm_func_start func_ov00_020d823c
func_ov00_020d823c: ; 0x020d823c
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, r0
	mov r5, #0
_020d8248:
	ldr r4, [ip, #0x28]
	cmp r4, #0
	bne _020d8278
	mov ip, #0xc
	mul r4, r5, ip
	add r5, r0, #0x28
	add r0, r5, r4
	bl func_ov00_020d8290
	cmp r0, #0
	beq _020d8288
	add r0, r5, r4
	ldmia sp!, {r3, r4, r5, pc}
_020d8278:
	add r5, r5, #1
	cmp r5, #8
	add ip, ip, #0xc
	blt _020d8248
_020d8288:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d823c

	.global func_ov00_020d8290
	arm_func_start func_ov00_020d8290
func_ov00_020d8290: ; 0x020d8290
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	mov r4, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	mov r6, r1
	mov r5, r3
	cmp r0, #0
	bne _020d82ec
	mov r1, r2
	mov r2, r5
	add r0, r7, #8
	bl func_ov00_020d7524
	cmp r0, #0
	beq _020d82ec
	str r6, [r7]
	strh r5, [r7, #4]
	mov r4, #1
	strb r4, [r7, #6]
	mov r0, #0x7f
	strb r0, [r7, #7]
_020d82ec:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov00_020d8290

	.global func_ov00_020d82f4
	arm_func_start func_ov00_020d82f4
func_ov00_020d82f4: ; 0x020d82f4
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	mov r1, #0
	bl func_0201f5e4
	add r0, r4, #8
	bl func_0201f710
	mov r0, #0
	str r0, [r4]
	strh r0, [r4, #4]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d82f4

	.global func_ov00_020d8328
	arm_func_start func_ov00_020d8328
func_ov00_020d8328: ; 0x020d8328
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl func_0201f7a8
	strb r4, [r5, #7]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov00_020d8328

	.global func_ov00_020d8344
	arm_func_start func_ov00_020d8344
func_ov00_020d8344: ; 0x020d8344
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #7
	mov r1, #1
	bl func_0201f518
	mov r0, #0x1c
	mov r1, #1
	bl func_0201f518
	mov r0, #0x1d
	mov r1, #1
	bl func_0201f518
	mov r0, #1
	strb r0, [r4, #0xa]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d8344

	.global func_ov00_020d8388
	arm_func_start func_ov00_020d8388
func_ov00_020d8388: ; 0x020d8388
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #7
	mov r1, #0
	bl func_0201f518
	mov r0, #0x1c
	mov r1, #0
	bl func_0201f518
	mov r0, #0x1d
	mov r1, #0
	bl func_0201f518
	mov r0, #7
	mov r1, #5
	bl func_0201f5f4
	mov r0, #0x1c
	mov r1, #5
	bl func_0201f5f4
	mov r0, #0x1d
	mov r1, #5
	bl func_0201f5f4
	mov r0, #0
	strb r0, [r4, #0xa]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov00_020d8388

	.global func_ov00_020d83f0
	arm_func_start func_ov00_020d83f0
func_ov00_020d83f0: ; 0x020d83f0
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	cmp r1, #2
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, pc}
	mov r1, r1, lsl #0x4
	add r3, r1, #0x14
	cmp r3, #0x7f
	movgt r3, #0x7f
	cmp r2, #0x32
	str r3, [sp]
	mov ip, #0
	movgt r2, #0x32
	mvn r1, #0x31
	cmp r2, r1
	movlt r2, r1
	str ip, [sp, #4]
	str r2, [sp, #8]
	ldr r2, _020d8454 ; =0x000003d7
	mov r1, #4
	mov r3, #5
	str ip, [sp, #0xc]
	bl func_ov00_020d80a4
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d83f0
_020d8454: .word 0x000003d7

	.global func_ov00_020d8458
	arm_func_start func_ov00_020d8458
func_ov00_020d8458: ; 0x020d8458
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	cmp r1, #0x28
	addhi sp, sp, #8
	ldmhiia sp!, {r3, pc}
	rsb r2, r1, #0
	cmp r1, #0xa
	ldrhi r1, _020d84a0 ; =0x00000419
	mov r2, r2, lsl #0x6
	str r2, [sp]
	mov ip, #0
	ldrls r1, _020d84a4 ; =0x0000041a
	mov r2, #2
	mov r3, #0x7f
	str ip, [sp, #4]
	bl func_ov00_020d8030
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov00_020d8458
_020d84a0: .word 0x00000419
_020d84a4: .word 0x0000041a

	.global func_ov00_020d84a8
	arm_func_start func_ov00_020d84a8
func_ov00_020d84a8: ; 0x020d84a8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0xb]
	mov r5, r1
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x20]
	bl func_020204f0
	ldr r1, _020d850c ; =data_ov00_020ee734
	ldrh r0, [r0]
	ldr r4, [r1, #0x90]
	mov r1, r4
	bl func_020209e8
	mov r0, r4
	bl func_0201f1ac
	ldr r1, [r6, #0x20]
	mov r0, r6
	mov r2, r5
	bl func_ov00_020d7524
	mov r0, r6
	bl func_0201f710
	mov r0, #1
	strb r0, [r6, #0xb]
	str r5, [r6, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d84a8
_020d850c: .word data_ov00_020ee734

	.global func_ov00_020d8510
	arm_func_start func_ov00_020d8510
func_ov00_020d8510: ; 0x020d8510
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r0, #0x1c
	mov r5, r1
	mov r4, r3
	bl func_0201f730
	cmp r0, #0
	addgt sp, sp, #8
	ldmgtia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020d8574 ; =data_027e0ffc
	mov r1, r5
	bl func_ov00_020ce970
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _020d8578 ; =0x00000106
	mov r0, r6
	mov r2, #4
	bl func_ov00_020d8030
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov00_020d8510
_020d8574: .word data_027e0ffc
_020d8578: .word 0x00000106

	.global func_ov00_020d857c
	arm_func_start func_ov00_020d857c
func_ov00_020d857c: ; 0x020d857c
	str r1, [r0, #0x20]
	bx lr
	arm_func_end func_ov00_020d857c

	.global func_ov00_020d8584
	arm_func_start func_ov00_020d8584
func_ov00_020d8584: ; 0x020d8584
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r2, r1
	mov r4, r0
	mov r3, #0
	mov r1, #0x800
	str r3, [r4, #0x800]
	bl func_0202a56c
	ldr r0, _020d85e0 ; =data_027e0ce0
	add r1, sp, #0
	ldr r0, [r0, #4]
	blx func_0202d0cc
	cmp r0, #0
	beq _020d85d4
	ldr r0, _020d85e0 ; =data_027e0ce0
	ldr r1, [sp]
	ldr r0, [r0, #4]
	mov r2, #4
	blx func_0201739c
	str r0, [r4, #0x800]
_020d85d4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d8584
_020d85e0: .word data_027e0ce0

	.global func_ov00_020d85e4
	arm_func_start func_ov00_020d85e4
func_ov00_020d85e4: ; 0x020d85e4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x800]
	cmp r1, #0
	beq _020d8604
	ldr r0, _020d860c ; =data_027e0ce0
	ldr r0, [r0, #4]
	blx func_020174a4
_020d8604:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d85e4
_020d860c: .word data_027e0ce0

	.global func_ov00_020d8610
	arm_func_start func_ov00_020d8610
func_ov00_020d8610: ; 0x020d8610
	stmdb sp!, {r4, lr}
	ldr r1, _020d8658 ; =data_ov00_020eed28
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, _020d865c ; =data_027e0ce0
	mov r0, #0x820
	ldr r1, [r1, #4]
	mov r2, #0x20
	bl _ZN9SysObjectnwEmPjj
	cmp r0, #0
	beq _020d864c
	mov r1, r4
	bl func_ov00_020d8584
_020d864c:
	ldr r1, _020d8658 ; =data_ov00_020eed28
	str r0, [r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d8610
_020d8658: .word data_ov00_020eed28
_020d865c: .word data_027e0ce0

	.global func_ov00_020d8660
	arm_func_start func_ov00_020d8660
func_ov00_020d8660: ; 0x020d8660
	stmdb sp!, {r4, lr}
	bl func_0202a5c0
	ldr r0, _020d8698 ; =data_ov00_020eed28
	ldr r4, [r0]
	cmp r4, #0
	beq _020d8688
	mov r0, r4
	bl func_ov00_020d85e4
	mov r0, r4
	bl _ZN9SysObjectdlEPv
_020d8688:
	ldr r0, _020d8698 ; =data_ov00_020eed28
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov00_020d8660
_020d8698: .word data_ov00_020eed28

	.global func_ov00_020d869c
	arm_func_start func_ov00_020d869c
func_ov00_020d869c: ; 0x020d869c
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrsh r0, [r4]
	cmp r0, #0
	ble _020d8704
	ldr r0, _020d8710 ; =data_ov00_020ee820
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _020d8704
	ldr r5, _020d8714 ; =data_ov00_020ee860
	bl func_ov00_020d6a58
	mov r3, #0
	add r1, r5, #0x400
	mov ip, r3
	sub r1, r1, #1
_020d86d8:
	ldrb r2, [r0], #-1
	cmp r0, r5
	add ip, ip, #1
	sub r2, r2, #0x80
	mla r3, r2, r2, r3
	movlo r0, r1
	cmp ip, #0x80
	blt _020d86d8
	mov r0, r3, lsr #0x7
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
_020d8704:
	mov r0, #0
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov00_020d869c
_020d8710: .word data_ov00_020ee820
_020d8714: .word data_ov00_020ee860

	.global func_ov00_020d8718
	arm_func_start func_ov00_020d8718
func_ov00_020d8718: ; 0x020d8718
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	bx lr
	arm_func_end func_ov00_020d8718

	.global func_ov00_020d8728
	arm_func_start func_ov00_020d8728
func_ov00_020d8728: ; 0x020d8728
	ldrsh r1, [r0]
	cmp r1, #0
	subgt r1, r1, #1
	strgth r1, [r0]
	bx lr
	arm_func_end func_ov00_020d8728

	.global func_ov00_020d873c
	arm_func_start func_ov00_020d873c
func_ov00_020d873c: ; 0x020d873c
	ldrh r3, [r0, #2]
	ldr r2, _020d876c ; =data_ov00_020df330
	mov r0, #0
_020d8748:
	mov r1, r0, lsl #0x1
	ldrh r1, [r2, r1]
	cmp r3, r1
	bxlo lr
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #4
	blo _020d8748
	bx lr
	.align 2, 0
	arm_func_end func_ov00_020d873c
_020d876c: .word data_ov00_020df330

    .rodata
	.global data_ov00_020dc6d4
data_ov00_020dc6d4: ; 0x020dc6d4
	.byte 0x10, 0x0e
	.global data_ov00_020dc6d6
data_ov00_020dc6d6: ; 0x020dc6d6
	.byte 0x00, 0x00
	.global data_ov00_020dc6d8
data_ov00_020dc6d8: ; 0x020dc6d8
	.byte 0x00, 0x00
	.global data_ov00_020dc6da
data_ov00_020dc6da: ; 0x020dc6da
	.byte 0x01, 0x00
	.global data_ov00_020dc6dc
data_ov00_020dc6dc: ; 0x020dc6dc
	.byte 0xa4, 0x28
	.global data_ov00_020dc6de
data_ov00_020dc6de: ; 0x020dc6de
	.byte 0x00, 0x00
	.global data_ov00_020dc6e0
data_ov00_020dc6e0: ; 0x020dc6e0
	.byte 0x0f, 0x00
	.global data_ov00_020dc6e2
data_ov00_020dc6e2: ; 0x020dc6e2
	.byte 0x00, 0x00
	.global data_ov00_020dc6e4
data_ov00_020dc6e4: ; 0x020dc6e4
	.byte 0xb8, 0x02
	.global data_ov00_020dc6e6
data_ov00_020dc6e6: ; 0x020dc6e6
	.byte 0x00, 0x00
	.global data_ov00_020dc6e8
data_ov00_020dc6e8: ; 0x020dc6e8
	.byte 0x15, 0x00
	.global data_ov00_020dc6ea
data_ov00_020dc6ea: ; 0x020dc6ea
	.byte 0x00, 0x00
	.global data_ov00_020dc6ec
data_ov00_020dc6ec: ; 0x020dc6ec
	.byte 0x0b
	.global data_ov00_020dc6ed
data_ov00_020dc6ed: ; 0x020dc6ed
	.byte 0x0f
	.global data_ov00_020dc6ee
data_ov00_020dc6ee: ; 0x020dc6ee
	.byte 0x0a
	.global data_ov00_020dc6ef
data_ov00_020dc6ef: ; 0x020dc6ef
	.byte 0x0e
	.global data_ov00_020dc6f0
data_ov00_020dc6f0: ; 0x020dc6f0
	.byte 0x0d
	.global data_ov00_020dc6f1
data_ov00_020dc6f1: ; 0x020dc6f1
	.byte 0x11
	.global data_ov00_020dc6f2
data_ov00_020dc6f2: ; 0x020dc6f2
	.byte 0x0c
	.global data_ov00_020dc6f3
data_ov00_020dc6f3: ; 0x020dc6f3
	.byte 0x10
	.global data_ov00_020dc6f4
data_ov00_020dc6f4: ; 0x020dc6f4
	.byte 0x00
	.global data_ov00_020dc6f5
data_ov00_020dc6f5: ; 0x020dc6f5
	.byte 0x00
	.global data_ov00_020dc6f6
data_ov00_020dc6f6: ; 0x020dc6f6
	.byte 0x05
	.global data_ov00_020dc6f7
data_ov00_020dc6f7: ; 0x020dc6f7
	.byte 0x00
	.global data_ov00_020dc6f8
data_ov00_020dc6f8: ; 0x020dc6f8
	.byte 0x00
	.global data_ov00_020dc6f9
data_ov00_020dc6f9: ; 0x020dc6f9
	.byte 0x00
	.global data_ov00_020dc6fa
data_ov00_020dc6fa: ; 0x020dc6fa
	.byte 0x01
	.global data_ov00_020dc6fb
data_ov00_020dc6fb: ; 0x020dc6fb
	.byte 0x00
	.global data_ov00_020dc6fc
data_ov00_020dc6fc: ; 0x020dc6fc
	.byte 0x1a
	.global data_ov00_020dc6fd
data_ov00_020dc6fd: ; 0x020dc6fd
	.byte 0x00
	.global data_ov00_020dc6fe
data_ov00_020dc6fe: ; 0x020dc6fe
	.byte 0x00
	.global data_ov00_020dc6ff
data_ov00_020dc6ff: ; 0x020dc6ff
	.byte 0x00
	.global data_ov00_020dc700
data_ov00_020dc700: ; 0x020dc700
	.byte 0x02
	.global data_ov00_020dc701
data_ov00_020dc701: ; 0x020dc701
	.byte 0x00
	.global data_ov00_020dc702
data_ov00_020dc702: ; 0x020dc702
	.byte 0x00
	.global data_ov00_020dc703
data_ov00_020dc703: ; 0x020dc703
	.byte 0x00
	.global data_ov00_020dc704
data_ov00_020dc704: ; 0x020dc704
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc708
data_ov00_020dc708: ; 0x020dc708
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc70c
data_ov00_020dc70c: ; 0x020dc70c
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc710
data_ov00_020dc710: ; 0x020dc710
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc714
data_ov00_020dc714: ; 0x020dc714
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc718
data_ov00_020dc718: ; 0x020dc718
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc71c
data_ov00_020dc71c: ; 0x020dc71c
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc720
data_ov00_020dc720: ; 0x020dc720
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc724
data_ov00_020dc724: ; 0x020dc724
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc728
data_ov00_020dc728: ; 0x020dc728
	.byte 0x02, 0x00, 0x00, 0x00
	.global data_ov00_020dc72c
data_ov00_020dc72c: ; 0x020dc72c
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc730
data_ov00_020dc730: ; 0x020dc730
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc734
data_ov00_020dc734: ; 0x020dc734
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc738
data_ov00_020dc738: ; 0x020dc738
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc73c
data_ov00_020dc73c: ; 0x020dc73c
	.byte 0x02, 0x00, 0x00, 0x00
	.global data_ov00_020dc740
data_ov00_020dc740: ; 0x020dc740
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc744
data_ov00_020dc744: ; 0x020dc744
	.byte 0xfe, 0xff, 0xff, 0xff
	.global data_ov00_020dc748
data_ov00_020dc748: ; 0x020dc748
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc74c
data_ov00_020dc74c: ; 0x020dc74c
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc750
data_ov00_020dc750: ; 0x020dc750
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc754
data_ov00_020dc754: ; 0x020dc754
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc758
data_ov00_020dc758: ; 0x020dc758
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc75c
data_ov00_020dc75c: ; 0x020dc75c
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc760
data_ov00_020dc760: ; 0x020dc760
	.byte 0xfe, 0xff, 0xff, 0xff
	.global data_ov00_020dc764
data_ov00_020dc764: ; 0x020dc764
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc768
data_ov00_020dc768: ; 0x020dc768
	.byte 0x03, 0x00, 0x00, 0x00
	.global data_ov00_020dc76c
data_ov00_020dc76c: ; 0x020dc76c
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc770
data_ov00_020dc770: ; 0x020dc770
	.byte 0x02, 0x00, 0x00, 0x00
	.global data_ov00_020dc774
data_ov00_020dc774: ; 0x020dc774
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc778
data_ov00_020dc778: ; 0x020dc778
	.byte 0x02, 0x00, 0x00, 0x00
	.global data_ov00_020dc77c
data_ov00_020dc77c: ; 0x020dc77c
	.byte 0x02, 0x00, 0x00, 0x00
	.global data_ov00_020dc780
data_ov00_020dc780: ; 0x020dc780
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc784
data_ov00_020dc784: ; 0x020dc784
	.byte 0xfe, 0xff, 0xff, 0xff
	.global data_ov00_020dc788
data_ov00_020dc788: ; 0x020dc788
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc78c
data_ov00_020dc78c: ; 0x020dc78c
	.byte 0x03, 0x00, 0x00, 0x00
	.global data_ov00_020dc790
data_ov00_020dc790: ; 0x020dc790
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc794
data_ov00_020dc794: ; 0x020dc794
	.byte 0xfd, 0xff, 0xff, 0xff
	.global data_ov00_020dc798
data_ov00_020dc798: ; 0x020dc798
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc79c
data_ov00_020dc79c: ; 0x020dc79c
	.byte 0x02, 0x00, 0x00, 0x00
	.global data_ov00_020dc7a0
data_ov00_020dc7a0: ; 0x020dc7a0
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc7a4
data_ov00_020dc7a4: ; 0x020dc7a4
	.byte 0xfe, 0xff, 0xff, 0xff
	.global data_ov00_020dc7a8
data_ov00_020dc7a8: ; 0x020dc7a8
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc7ac
data_ov00_020dc7ac: ; 0x020dc7ac
	.byte 0x01, 0x00, 0x00, 0x00
	.global data_ov00_020dc7b0
data_ov00_020dc7b0: ; 0x020dc7b0
	.byte 0xfe, 0xff, 0xff, 0xff
	.global data_ov00_020dc7b4
data_ov00_020dc7b4: ; 0x020dc7b4
	.byte 0xff, 0xff, 0xff, 0xff
	.global data_ov00_020dc7b8
data_ov00_020dc7b8: ; 0x020dc7b8
	.byte 0xfe, 0xff, 0xff, 0xff
	.global data_ov00_020dc7bc
data_ov00_020dc7bc: ; 0x020dc7bc
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc7c0
data_ov00_020dc7c0: ; 0x020dc7c0
	.byte 0xfd, 0xff, 0xff, 0xff
	.global data_ov00_020dc7c4
data_ov00_020dc7c4: ; 0x020dc7c4
	.byte 0x18, 0x00, 0x00, 0x00
	.global data_ov00_020dc7c8
data_ov00_020dc7c8: ; 0x020dc7c8
	.byte 0x0c, 0x00
	.global data_ov00_020dc7ca
data_ov00_020dc7ca: ; 0x020dc7ca
	.byte 0x0c, 0x00
	.global data_ov00_020dc7cc
data_ov00_020dc7cc: ; 0x020dc7cc
	.byte 0x10, 0x00
	.global data_ov00_020dc7ce
data_ov00_020dc7ce: ; 0x020dc7ce
	.byte 0x00, 0x00
	.global data_ov00_020dc7d0
data_ov00_020dc7d0: ; 0x020dc7d0
	.ascii "Ihamwait"
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc7dc
data_ov00_020dc7dc: ; 0x020dc7dc
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc7e0
data_ov00_020dc7e0: ; 0x020dc7e0
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc7e4
data_ov00_020dc7e4: ; 0x020dc7e4
	.ascii "Ihamat_st"
	.byte 0x00, 0x00, 0x00
	.global data_ov00_020dc7f0
data_ov00_020dc7f0: ; 0x020dc7f0
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc7f4
data_ov00_020dc7f4: ; 0x020dc7f4
	.byte 0x00, 0x00, 0x00, 0x00
	.global data_ov00_020dc7f8
data_ov00_020dc7f8: ; 0x020dc7f8
	.byte 0x4c, 0x21
	.global data_ov00_020dc7fa
data_ov00_020dc7fa: ; 0x020dc7fa
	.byte 0x7b, 0x7f
	.global data_ov00_020dc7fc
data_ov00_020dc7fc: ; 0x020dc7fc
	.byte 0x7b, 0x7f
	.global data_ov00_020dc7fe
data_ov00_020dc7fe: ; 0x020dc7fe
	.byte 0x00, 0x00
	.global data_ov00_020dc800
data_ov00_020dc800: ; 0x020dc800
	.byte 0xff, 0x7f
	.global data_ov00_020dc802
data_ov00_020dc802: ; 0x020dc802
	.byte 0x1f, 0x0c
	.global data_ov00_020dc804