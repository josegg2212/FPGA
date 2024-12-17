
main.elf:     formato del fichero elf32-littleriscv


Desensamblado de la sección .text:

00000000 <_start>:
   0:	00000037          	lui	zero,0x0

00000004 <__crt0_pointer_init>:
   4:	80002117          	auipc	sp,0x80002
   8:	ff810113          	addi	sp,sp,-8 # 80001ffc <__ctr0_io_space_begin+0x800021fc>
   c:	80000197          	auipc	gp,0x80000
  10:	7f418193          	addi	gp,gp,2036 # 80000800 <__ctr0_io_space_begin+0x80000a00>

00000014 <__crt0_cpu_csr_init>:
  14:	00000517          	auipc	a0,0x0
  18:	12050513          	addi	a0,a0,288 # 134 <__crt0_dummy_trap_handler>
  1c:	30551073          	csrw	mtvec,a0
  20:	34151073          	csrw	mepc,a0
  24:	30001073          	csrw	mstatus,zero
  28:	30401073          	csrw	mie,zero
  2c:	30601073          	csrw	mcounteren,zero
  30:	ffa00593          	li	a1,-6
  34:	32059073          	csrw	mcountinhibit,a1
  38:	b0001073          	csrw	mcycle,zero
  3c:	b8001073          	csrw	mcycleh,zero
  40:	b0201073          	csrw	minstret,zero
  44:	b8201073          	csrw	minstreth,zero

00000048 <__crt0_reg_file_clear>:
  48:	00000093          	li	ra,0
  4c:	00000213          	li	tp,0
  50:	00000293          	li	t0,0
  54:	00000313          	li	t1,0
  58:	00000393          	li	t2,0
  5c:	00000713          	li	a4,0
  60:	00000793          	li	a5,0
  64:	00000813          	li	a6,0
  68:	00000893          	li	a7,0
  6c:	00000913          	li	s2,0
  70:	00000993          	li	s3,0
  74:	00000a13          	li	s4,0
  78:	00000a93          	li	s5,0
  7c:	00000b13          	li	s6,0
  80:	00000b93          	li	s7,0
  84:	00000c13          	li	s8,0
  88:	00000c93          	li	s9,0
  8c:	00000d13          	li	s10,0
  90:	00000d93          	li	s11,0
  94:	00000e13          	li	t3,0
  98:	00000e93          	li	t4,0
  9c:	00000f13          	li	t5,0
  a0:	00000f93          	li	t6,0

000000a4 <__crt0_reset_io>:
  a4:	00000417          	auipc	s0,0x0
  a8:	d5c40413          	addi	s0,s0,-676 # fffffe00 <__ctr0_io_space_begin+0x0>
  ac:	00000497          	auipc	s1,0x0
  b0:	f5448493          	addi	s1,s1,-172 # 0 <_start>

000000b4 <__crt0_reset_io_loop>:
  b4:	00042023          	sw	zero,0(s0)
  b8:	00440413          	addi	s0,s0,4
  bc:	fe941ce3          	bne	s0,s1,b4 <__crt0_reset_io_loop>

000000c0 <__crt0_clear_bss>:
  c0:	80000597          	auipc	a1,0x80000
  c4:	f4058593          	addi	a1,a1,-192 # 80000000 <__ctr0_io_space_begin+0x80000200>
  c8:	87418613          	addi	a2,gp,-1932 # 80000074 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	13858593          	addi	a1,a1,312 # 1214 <__crt0_copy_data_src_begin>
  e4:	80000617          	auipc	a2,0x80000
  e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
  ec:	80000697          	auipc	a3,0x80000
  f0:	f1468693          	addi	a3,a3,-236 # 80000000 <__ctr0_io_space_begin+0x80000200>

000000f4 <__crt0_copy_data_loop>:
  f4:	00d65c63          	bge	a2,a3,10c <__crt0_copy_data_loop_end>
  f8:	00058703          	lb	a4,0(a1)
  fc:	00e60023          	sb	a4,0(a2)
 100:	00158593          	addi	a1,a1,1
 104:	00160613          	addi	a2,a2,1
 108:	fedff06f          	j	f4 <__crt0_copy_data_loop>

0000010c <__crt0_copy_data_loop_end>:
 10c:	00000513          	li	a0,0
 110:	00000593          	li	a1,0
 114:	06c000ef          	jal	ra,180 <main>

00000118 <__crt0_main_aftermath>:
 118:	34051073          	csrw	mscratch,a0
 11c:	00000093          	li	ra,0
 120:	00008463          	beqz	ra,128 <__crt0_main_aftermath_end>
 124:	000080e7          	jalr	ra

00000128 <__crt0_main_aftermath_end>:
 128:	30047073          	csrci	mstatus,8

0000012c <__crt0_main_aftermath_end_loop>:
 12c:	10500073          	wfi
 130:	ffdff06f          	j	12c <__crt0_main_aftermath_end_loop>

00000134 <__crt0_dummy_trap_handler>:
 134:	ff810113          	addi	sp,sp,-8
 138:	00812023          	sw	s0,0(sp)
 13c:	00912223          	sw	s1,4(sp)
 140:	34202473          	csrr	s0,mcause
 144:	02044663          	bltz	s0,170 <__crt0_dummy_trap_handler_irq>
 148:	34102473          	csrr	s0,mepc

0000014c <__crt0_dummy_trap_handler_exc_c_check>:
 14c:	00041483          	lh	s1,0(s0)
 150:	0034f493          	andi	s1,s1,3
 154:	00240413          	addi	s0,s0,2
 158:	34141073          	csrw	mepc,s0
 15c:	00300413          	li	s0,3
 160:	00941863          	bne	s0,s1,170 <__crt0_dummy_trap_handler_irq>

00000164 <__crt0_dummy_trap_handler_exc_uncrompressed>:
 164:	34102473          	csrr	s0,mepc
 168:	00240413          	addi	s0,s0,2
 16c:	34141073          	csrw	mepc,s0

00000170 <__crt0_dummy_trap_handler_irq>:
 170:	00012403          	lw	s0,0(sp)
 174:	00412483          	lw	s1,4(sp)
 178:	00810113          	addi	sp,sp,8
 17c:	30200073          	mret

00000180 <main>:
 180:	fe010113          	addi	sp,sp,-32
 184:	00112e23          	sw	ra,28(sp)
 188:	00812c23          	sw	s0,24(sp)
 18c:	00912a23          	sw	s1,20(sp)
 190:	01212823          	sw	s2,16(sp)
 194:	01312623          	sw	s3,12(sp)
 198:	1d8000ef          	jal	ra,370 <neorv32_pwm_available>
 19c:	0c050663          	beqz	a0,268 <main+0xe8>
 1a0:	704000ef          	jal	ra,8a4 <neorv32_rte_setup>
 1a4:	0ed000ef          	jal	ra,a90 <neorv32_uart0_available>
 1a8:	02050663          	beqz	a0,1d4 <main+0x54>
 1ac:	00005537          	lui	a0,0x5
 1b0:	00000613          	li	a2,0
 1b4:	00000593          	li	a1,0
 1b8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x38ec>
 1bc:	0e5000ef          	jal	ra,aa0 <neorv32_uart0_setup>
 1c0:	00000513          	li	a0,0
 1c4:	728000ef          	jal	ra,8ec <neorv32_rte_check_isa>
 1c8:	00001537          	lui	a0,0x1
 1cc:	eb050513          	addi	a0,a0,-336 # eb0 <__etext>
 1d0:	195000ef          	jal	ra,b64 <neorv32_uart0_print>
 1d4:	00000593          	li	a1,0
 1d8:	00000513          	li	a0,0
 1dc:	1c0000ef          	jal	ra,39c <neorv32_pwm_set>
 1e0:	00000593          	li	a1,0
 1e4:	00100513          	li	a0,1
 1e8:	1b4000ef          	jal	ra,39c <neorv32_pwm_set>
 1ec:	00000593          	li	a1,0
 1f0:	00200513          	li	a0,2
 1f4:	1a8000ef          	jal	ra,39c <neorv32_pwm_set>
 1f8:	00000593          	li	a1,0
 1fc:	00300513          	li	a0,3
 200:	19c000ef          	jal	ra,39c <neorv32_pwm_set>
 204:	00300513          	li	a0,3
 208:	178000ef          	jal	ra,380 <neorv32_pwm_setup>
 20c:	00000493          	li	s1,0
 210:	00100913          	li	s2,1
 214:	00000413          	li	s0,0
 218:	08000993          	li	s3,128
 21c:	00090a63          	beqz	s2,230 <main+0xb0>
 220:	05340063          	beq	s0,s3,260 <main+0xe0>
 224:	00140413          	addi	s0,s0,1
 228:	0ff47413          	zext.b	s0,s0
 22c:	0140006f          	j	240 <main+0xc0>
 230:	02041463          	bnez	s0,258 <main+0xd8>
 234:	00148493          	addi	s1,s1,1
 238:	0034f493          	andi	s1,s1,3
 23c:	00100913          	li	s2,1
 240:	00048513          	mv	a0,s1
 244:	00040593          	mv	a1,s0
 248:	154000ef          	jal	ra,39c <neorv32_pwm_set>
 24c:	00a00513          	li	a0,10
 250:	064000ef          	jal	ra,2b4 <neorv32_cpu_delay_ms>
 254:	fc9ff06f          	j	21c <main+0x9c>
 258:	fff40413          	addi	s0,s0,-1
 25c:	fcdff06f          	j	228 <main+0xa8>
 260:	00000913          	li	s2,0
 264:	fddff06f          	j	240 <main+0xc0>
 268:	01c12083          	lw	ra,28(sp)
 26c:	01812403          	lw	s0,24(sp)
 270:	01412483          	lw	s1,20(sp)
 274:	01012903          	lw	s2,16(sp)
 278:	00c12983          	lw	s3,12(sp)
 27c:	00100513          	li	a0,1
 280:	02010113          	addi	sp,sp,32
 284:	00008067          	ret

00000288 <neorv32_cpu_get_systime>:
 288:	ff010113          	addi	sp,sp,-16
 28c:	c81026f3          	rdtimeh	a3
 290:	c0102773          	rdtime	a4
 294:	c81027f3          	rdtimeh	a5
 298:	fed79ae3          	bne	a5,a3,28c <neorv32_cpu_get_systime+0x4>
 29c:	00e12023          	sw	a4,0(sp)
 2a0:	00f12223          	sw	a5,4(sp)
 2a4:	00012503          	lw	a0,0(sp)
 2a8:	00412583          	lw	a1,4(sp)
 2ac:	01010113          	addi	sp,sp,16
 2b0:	00008067          	ret

000002b4 <neorv32_cpu_delay_ms>:
 2b4:	fd010113          	addi	sp,sp,-48
 2b8:	00a12623          	sw	a0,12(sp)
 2bc:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 2c0:	3e800593          	li	a1,1000
 2c4:	02112623          	sw	ra,44(sp)
 2c8:	02812423          	sw	s0,40(sp)
 2cc:	02912223          	sw	s1,36(sp)
 2d0:	03212023          	sw	s2,32(sp)
 2d4:	01312e23          	sw	s3,28(sp)
 2d8:	32d000ef          	jal	ra,e04 <__hidden___udivsi3>
 2dc:	00c12603          	lw	a2,12(sp)
 2e0:	00000693          	li	a3,0
 2e4:	00000593          	li	a1,0
 2e8:	289000ef          	jal	ra,d70 <__muldi3>
 2ec:	00050413          	mv	s0,a0
 2f0:	00058993          	mv	s3,a1
 2f4:	f95ff0ef          	jal	ra,288 <neorv32_cpu_get_systime>
 2f8:	00058913          	mv	s2,a1
 2fc:	00050493          	mv	s1,a0
 300:	f89ff0ef          	jal	ra,288 <neorv32_cpu_get_systime>
 304:	00b96663          	bltu	s2,a1,310 <neorv32_cpu_delay_ms+0x5c>
 308:	05259263          	bne	a1,s2,34c <neorv32_cpu_delay_ms+0x98>
 30c:	04a4f063          	bgeu	s1,a0,34c <neorv32_cpu_delay_ms+0x98>
 310:	008484b3          	add	s1,s1,s0
 314:	0084b433          	sltu	s0,s1,s0
 318:	01390933          	add	s2,s2,s3
 31c:	01240433          	add	s0,s0,s2
 320:	f69ff0ef          	jal	ra,288 <neorv32_cpu_get_systime>
 324:	fe85eee3          	bltu	a1,s0,320 <neorv32_cpu_delay_ms+0x6c>
 328:	00b41463          	bne	s0,a1,330 <neorv32_cpu_delay_ms+0x7c>
 32c:	fe956ae3          	bltu	a0,s1,320 <neorv32_cpu_delay_ms+0x6c>
 330:	02c12083          	lw	ra,44(sp)
 334:	02812403          	lw	s0,40(sp)
 338:	02412483          	lw	s1,36(sp)
 33c:	02012903          	lw	s2,32(sp)
 340:	01c12983          	lw	s3,28(sp)
 344:	03010113          	addi	sp,sp,48
 348:	00008067          	ret
 34c:	01c99993          	slli	s3,s3,0x1c
 350:	00445413          	srli	s0,s0,0x4
 354:	0089e433          	or	s0,s3,s0

00000358 <__neorv32_cpu_delay_ms_start>:
 358:	00040a63          	beqz	s0,36c <__neorv32_cpu_delay_ms_end>
 35c:	00040863          	beqz	s0,36c <__neorv32_cpu_delay_ms_end>
 360:	fff40413          	addi	s0,s0,-1
 364:	00000013          	nop
 368:	ff1ff06f          	j	358 <__neorv32_cpu_delay_ms_start>

0000036c <__neorv32_cpu_delay_ms_end>:
 36c:	fc5ff06f          	j	330 <neorv32_cpu_delay_ms+0x7c>

00000370 <neorv32_pwm_available>:
 370:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 374:	01555513          	srli	a0,a0,0x15
 378:	00157513          	andi	a0,a0,1
 37c:	00008067          	ret

00000380 <neorv32_pwm_setup>:
 380:	00757513          	andi	a0,a0,7
 384:	e8000793          	li	a5,-384
 388:	00151513          	slli	a0,a0,0x1
 38c:	0007a023          	sw	zero,0(a5)
 390:	00156513          	ori	a0,a0,1
 394:	00a7a023          	sw	a0,0(a5)
 398:	00008067          	ret

0000039c <neorv32_pwm_set>:
 39c:	03b00793          	li	a5,59
 3a0:	02a7e863          	bltu	a5,a0,3d0 <neorv32_pwm_set+0x34>
 3a4:	00357713          	andi	a4,a0,3
 3a8:	0fc57513          	andi	a0,a0,252
 3ac:	e8452683          	lw	a3,-380(a0)
 3b0:	00371713          	slli	a4,a4,0x3
 3b4:	0ff00793          	li	a5,255
 3b8:	00e797b3          	sll	a5,a5,a4
 3bc:	fff7c793          	not	a5,a5
 3c0:	00d7f7b3          	and	a5,a5,a3
 3c4:	00e595b3          	sll	a1,a1,a4
 3c8:	00f5e5b3          	or	a1,a1,a5
 3cc:	e8b52223          	sw	a1,-380(a0)
 3d0:	00008067          	ret
 3d4:	0000                	.2byte	0x0
 3d6:	0000                	.2byte	0x0
 3d8:	0000                	.2byte	0x0
 3da:	0000                	.2byte	0x0
 3dc:	0000                	.2byte	0x0
 3de:	0000                	.2byte	0x0

000003e0 <__neorv32_rte_core>:
 3e0:	fc010113          	addi	sp,sp,-64
 3e4:	02112e23          	sw	ra,60(sp)
 3e8:	02512c23          	sw	t0,56(sp)
 3ec:	02612a23          	sw	t1,52(sp)
 3f0:	02712823          	sw	t2,48(sp)
 3f4:	02a12623          	sw	a0,44(sp)
 3f8:	02b12423          	sw	a1,40(sp)
 3fc:	02c12223          	sw	a2,36(sp)
 400:	02d12023          	sw	a3,32(sp)
 404:	00e12e23          	sw	a4,28(sp)
 408:	00f12c23          	sw	a5,24(sp)
 40c:	01012a23          	sw	a6,20(sp)
 410:	01112823          	sw	a7,16(sp)
 414:	01c12623          	sw	t3,12(sp)
 418:	01d12423          	sw	t4,8(sp)
 41c:	01e12223          	sw	t5,4(sp)
 420:	01f12023          	sw	t6,0(sp)
 424:	34102773          	csrr	a4,mepc
 428:	34071073          	csrw	mscratch,a4
 42c:	342027f3          	csrr	a5,mcause
 430:	0807c863          	bltz	a5,4c0 <__neorv32_rte_core+0xe0>
 434:	00071683          	lh	a3,0(a4)
 438:	00300593          	li	a1,3
 43c:	0036f693          	andi	a3,a3,3
 440:	00270613          	addi	a2,a4,2
 444:	00b69463          	bne	a3,a1,44c <__neorv32_rte_core+0x6c>
 448:	00470613          	addi	a2,a4,4
 44c:	34161073          	csrw	mepc,a2
 450:	00b00713          	li	a4,11
 454:	04f77a63          	bgeu	a4,a5,4a8 <__neorv32_rte_core+0xc8>
 458:	69000793          	li	a5,1680
 45c:	000780e7          	jalr	a5
 460:	03c12083          	lw	ra,60(sp)
 464:	03812283          	lw	t0,56(sp)
 468:	03412303          	lw	t1,52(sp)
 46c:	03012383          	lw	t2,48(sp)
 470:	02c12503          	lw	a0,44(sp)
 474:	02812583          	lw	a1,40(sp)
 478:	02412603          	lw	a2,36(sp)
 47c:	02012683          	lw	a3,32(sp)
 480:	01c12703          	lw	a4,28(sp)
 484:	01812783          	lw	a5,24(sp)
 488:	01412803          	lw	a6,20(sp)
 48c:	01012883          	lw	a7,16(sp)
 490:	00c12e03          	lw	t3,12(sp)
 494:	00812e83          	lw	t4,8(sp)
 498:	00412f03          	lw	t5,4(sp)
 49c:	00012f83          	lw	t6,0(sp)
 4a0:	04010113          	addi	sp,sp,64
 4a4:	30200073          	mret
 4a8:	00001737          	lui	a4,0x1
 4ac:	00279793          	slli	a5,a5,0x2
 4b0:	ec470713          	addi	a4,a4,-316 # ec4 <__etext+0x14>
 4b4:	00e787b3          	add	a5,a5,a4
 4b8:	0007a783          	lw	a5,0(a5)
 4bc:	00078067          	jr	a5
 4c0:	80000737          	lui	a4,0x80000
 4c4:	ffd74713          	xori	a4,a4,-3
 4c8:	00e787b3          	add	a5,a5,a4
 4cc:	01c00713          	li	a4,28
 4d0:	f8f764e3          	bltu	a4,a5,458 <__neorv32_rte_core+0x78>
 4d4:	00001737          	lui	a4,0x1
 4d8:	00279793          	slli	a5,a5,0x2
 4dc:	ef470713          	addi	a4,a4,-268 # ef4 <__etext+0x44>
 4e0:	00e787b3          	add	a5,a5,a4
 4e4:	0007a783          	lw	a5,0(a5)
 4e8:	00078067          	jr	a5
 4ec:	800007b7          	lui	a5,0x80000
 4f0:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 4f4:	f69ff06f          	j	45c <__neorv32_rte_core+0x7c>
 4f8:	800007b7          	lui	a5,0x80000
 4fc:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 500:	f5dff06f          	j	45c <__neorv32_rte_core+0x7c>
 504:	800007b7          	lui	a5,0x80000
 508:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 50c:	f51ff06f          	j	45c <__neorv32_rte_core+0x7c>
 510:	800007b7          	lui	a5,0x80000
 514:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 518:	f45ff06f          	j	45c <__neorv32_rte_core+0x7c>
 51c:	800007b7          	lui	a5,0x80000
 520:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 524:	f39ff06f          	j	45c <__neorv32_rte_core+0x7c>
 528:	800007b7          	lui	a5,0x80000
 52c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 530:	f2dff06f          	j	45c <__neorv32_rte_core+0x7c>
 534:	800007b7          	lui	a5,0x80000
 538:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 53c:	f21ff06f          	j	45c <__neorv32_rte_core+0x7c>
 540:	800007b7          	lui	a5,0x80000
 544:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 548:	f15ff06f          	j	45c <__neorv32_rte_core+0x7c>
 54c:	800007b7          	lui	a5,0x80000
 550:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 554:	f09ff06f          	j	45c <__neorv32_rte_core+0x7c>
 558:	800007b7          	lui	a5,0x80000
 55c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 560:	efdff06f          	j	45c <__neorv32_rte_core+0x7c>
 564:	800007b7          	lui	a5,0x80000
 568:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 56c:	ef1ff06f          	j	45c <__neorv32_rte_core+0x7c>
 570:	800007b7          	lui	a5,0x80000
 574:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 578:	ee5ff06f          	j	45c <__neorv32_rte_core+0x7c>
 57c:	800007b7          	lui	a5,0x80000
 580:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 584:	ed9ff06f          	j	45c <__neorv32_rte_core+0x7c>
 588:	800007b7          	lui	a5,0x80000
 58c:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 590:	ecdff06f          	j	45c <__neorv32_rte_core+0x7c>
 594:	800007b7          	lui	a5,0x80000
 598:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 59c:	ec1ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5a0:	800007b7          	lui	a5,0x80000
 5a4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 5a8:	eb5ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5ac:	800007b7          	lui	a5,0x80000
 5b0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 5b4:	ea9ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5b8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 5bc:	ea1ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5c0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 5c4:	e99ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5c8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 5cc:	e91ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5d0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 5d4:	e89ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5d8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 5dc:	e81ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5e0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 5e4:	e79ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5e8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 5ec:	e71ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5f0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 5f4:	e69ff06f          	j	45c <__neorv32_rte_core+0x7c>
 5f8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 5fc:	e61ff06f          	j	45c <__neorv32_rte_core+0x7c>
 600:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 604:	e59ff06f          	j	45c <__neorv32_rte_core+0x7c>
 608:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 60c:	e51ff06f          	j	45c <__neorv32_rte_core+0x7c>
 610:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 614:	e49ff06f          	j	45c <__neorv32_rte_core+0x7c>
 618:	0000                	.2byte	0x0
 61a:	0000                	.2byte	0x0
 61c:	0000                	.2byte	0x0
 61e:	0000                	.2byte	0x0

00000620 <__neorv32_rte_print_hex_word>:
 620:	fe010113          	addi	sp,sp,-32
 624:	01212823          	sw	s2,16(sp)
 628:	00050913          	mv	s2,a0
 62c:	00001537          	lui	a0,0x1
 630:	00912a23          	sw	s1,20(sp)
 634:	f6850513          	addi	a0,a0,-152 # f68 <__etext+0xb8>
 638:	000014b7          	lui	s1,0x1
 63c:	00812c23          	sw	s0,24(sp)
 640:	01312623          	sw	s3,12(sp)
 644:	00112e23          	sw	ra,28(sp)
 648:	01c00413          	li	s0,28
 64c:	518000ef          	jal	ra,b64 <neorv32_uart0_print>
 650:	1e448493          	addi	s1,s1,484 # 11e4 <hex_symbols.0>
 654:	ffc00993          	li	s3,-4
 658:	008957b3          	srl	a5,s2,s0
 65c:	00f7f793          	andi	a5,a5,15
 660:	00f487b3          	add	a5,s1,a5
 664:	0007c503          	lbu	a0,0(a5)
 668:	ffc40413          	addi	s0,s0,-4
 66c:	4e0000ef          	jal	ra,b4c <neorv32_uart0_putc>
 670:	ff3414e3          	bne	s0,s3,658 <__neorv32_rte_print_hex_word+0x38>
 674:	01c12083          	lw	ra,28(sp)
 678:	01812403          	lw	s0,24(sp)
 67c:	01412483          	lw	s1,20(sp)
 680:	01012903          	lw	s2,16(sp)
 684:	00c12983          	lw	s3,12(sp)
 688:	02010113          	addi	sp,sp,32
 68c:	00008067          	ret

00000690 <__neorv32_rte_debug_exc_handler>:
 690:	ff010113          	addi	sp,sp,-16
 694:	00112623          	sw	ra,12(sp)
 698:	00812423          	sw	s0,8(sp)
 69c:	00912223          	sw	s1,4(sp)
 6a0:	3f0000ef          	jal	ra,a90 <neorv32_uart0_available>
 6a4:	1a050e63          	beqz	a0,860 <__neorv32_rte_debug_exc_handler+0x1d0>
 6a8:	00001537          	lui	a0,0x1
 6ac:	f6c50513          	addi	a0,a0,-148 # f6c <__etext+0xbc>
 6b0:	4b4000ef          	jal	ra,b64 <neorv32_uart0_print>
 6b4:	34202473          	csrr	s0,mcause
 6b8:	00900713          	li	a4,9
 6bc:	00f47793          	andi	a5,s0,15
 6c0:	03078493          	addi	s1,a5,48
 6c4:	00f77463          	bgeu	a4,a5,6cc <__neorv32_rte_debug_exc_handler+0x3c>
 6c8:	05778493          	addi	s1,a5,87
 6cc:	00b00793          	li	a5,11
 6d0:	0087ee63          	bltu	a5,s0,6ec <__neorv32_rte_debug_exc_handler+0x5c>
 6d4:	00001737          	lui	a4,0x1
 6d8:	00241793          	slli	a5,s0,0x2
 6dc:	12c70713          	addi	a4,a4,300 # 112c <__etext+0x27c>
 6e0:	00e787b3          	add	a5,a5,a4
 6e4:	0007a783          	lw	a5,0(a5)
 6e8:	00078067          	jr	a5
 6ec:	800007b7          	lui	a5,0x80000
 6f0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 6f4:	14e40463          	beq	s0,a4,83c <__neorv32_rte_debug_exc_handler+0x1ac>
 6f8:	02876663          	bltu	a4,s0,724 <__neorv32_rte_debug_exc_handler+0x94>
 6fc:	00378713          	addi	a4,a5,3
 700:	12e40263          	beq	s0,a4,824 <__neorv32_rte_debug_exc_handler+0x194>
 704:	00778793          	addi	a5,a5,7
 708:	12f40463          	beq	s0,a5,830 <__neorv32_rte_debug_exc_handler+0x1a0>
 70c:	00001537          	lui	a0,0x1
 710:	0cc50513          	addi	a0,a0,204 # 10cc <__etext+0x21c>
 714:	450000ef          	jal	ra,b64 <neorv32_uart0_print>
 718:	00040513          	mv	a0,s0
 71c:	f05ff0ef          	jal	ra,620 <__neorv32_rte_print_hex_word>
 720:	0280006f          	j	748 <__neorv32_rte_debug_exc_handler+0xb8>
 724:	ff07c793          	xori	a5,a5,-16
 728:	00f407b3          	add	a5,s0,a5
 72c:	00f00713          	li	a4,15
 730:	fcf76ee3          	bltu	a4,a5,70c <__neorv32_rte_debug_exc_handler+0x7c>
 734:	00001537          	lui	a0,0x1
 738:	0bc50513          	addi	a0,a0,188 # 10bc <__etext+0x20c>
 73c:	428000ef          	jal	ra,b64 <neorv32_uart0_print>
 740:	00048513          	mv	a0,s1
 744:	408000ef          	jal	ra,b4c <neorv32_uart0_putc>
 748:	00001537          	lui	a0,0x1
 74c:	11050513          	addi	a0,a0,272 # 1110 <__etext+0x260>
 750:	414000ef          	jal	ra,b64 <neorv32_uart0_print>
 754:	34002573          	csrr	a0,mscratch
 758:	ec9ff0ef          	jal	ra,620 <__neorv32_rte_print_hex_word>
 75c:	00001537          	lui	a0,0x1
 760:	11850513          	addi	a0,a0,280 # 1118 <__etext+0x268>
 764:	400000ef          	jal	ra,b64 <neorv32_uart0_print>
 768:	34302573          	csrr	a0,mtval
 76c:	eb5ff0ef          	jal	ra,620 <__neorv32_rte_print_hex_word>
 770:	00812403          	lw	s0,8(sp)
 774:	00c12083          	lw	ra,12(sp)
 778:	00412483          	lw	s1,4(sp)
 77c:	00001537          	lui	a0,0x1
 780:	12450513          	addi	a0,a0,292 # 1124 <__etext+0x274>
 784:	01010113          	addi	sp,sp,16
 788:	3dc0006f          	j	b64 <neorv32_uart0_print>
 78c:	00001537          	lui	a0,0x1
 790:	f7450513          	addi	a0,a0,-140 # f74 <__etext+0xc4>
 794:	3d0000ef          	jal	ra,b64 <neorv32_uart0_print>
 798:	fb1ff06f          	j	748 <__neorv32_rte_debug_exc_handler+0xb8>
 79c:	00001537          	lui	a0,0x1
 7a0:	f9450513          	addi	a0,a0,-108 # f94 <__etext+0xe4>
 7a4:	3c0000ef          	jal	ra,b64 <neorv32_uart0_print>
 7a8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 7ac:	0a07d463          	bgez	a5,854 <__neorv32_rte_debug_exc_handler+0x1c4>
 7b0:	0017f793          	andi	a5,a5,1
 7b4:	08078a63          	beqz	a5,848 <__neorv32_rte_debug_exc_handler+0x1b8>
 7b8:	00001537          	lui	a0,0x1
 7bc:	0e450513          	addi	a0,a0,228 # 10e4 <__etext+0x234>
 7c0:	fd5ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 7c4:	00001537          	lui	a0,0x1
 7c8:	fb050513          	addi	a0,a0,-80 # fb0 <__etext+0x100>
 7cc:	fc9ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 7d0:	00001537          	lui	a0,0x1
 7d4:	fc450513          	addi	a0,a0,-60 # fc4 <__etext+0x114>
 7d8:	fbdff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 7dc:	00001537          	lui	a0,0x1
 7e0:	fd050513          	addi	a0,a0,-48 # fd0 <__etext+0x120>
 7e4:	fb1ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 7e8:	00001537          	lui	a0,0x1
 7ec:	fe850513          	addi	a0,a0,-24 # fe8 <__etext+0x138>
 7f0:	fb5ff06f          	j	7a4 <__neorv32_rte_debug_exc_handler+0x114>
 7f4:	00001537          	lui	a0,0x1
 7f8:	ffc50513          	addi	a0,a0,-4 # ffc <__etext+0x14c>
 7fc:	f99ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 800:	00001537          	lui	a0,0x1
 804:	01850513          	addi	a0,a0,24 # 1018 <__etext+0x168>
 808:	f9dff06f          	j	7a4 <__neorv32_rte_debug_exc_handler+0x114>
 80c:	00001537          	lui	a0,0x1
 810:	02c50513          	addi	a0,a0,44 # 102c <__etext+0x17c>
 814:	f81ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 818:	00001537          	lui	a0,0x1
 81c:	04c50513          	addi	a0,a0,76 # 104c <__etext+0x19c>
 820:	f75ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 824:	00001537          	lui	a0,0x1
 828:	06c50513          	addi	a0,a0,108 # 106c <__etext+0x1bc>
 82c:	f69ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 830:	00001537          	lui	a0,0x1
 834:	08850513          	addi	a0,a0,136 # 1088 <__etext+0x1d8>
 838:	f5dff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 83c:	00001537          	lui	a0,0x1
 840:	0a050513          	addi	a0,a0,160 # 10a0 <__etext+0x1f0>
 844:	f51ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 848:	00001537          	lui	a0,0x1
 84c:	0f450513          	addi	a0,a0,244 # 10f4 <__etext+0x244>
 850:	f45ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 854:	00001537          	lui	a0,0x1
 858:	10450513          	addi	a0,a0,260 # 1104 <__etext+0x254>
 85c:	f39ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x104>
 860:	00c12083          	lw	ra,12(sp)
 864:	00812403          	lw	s0,8(sp)
 868:	00412483          	lw	s1,4(sp)
 86c:	01010113          	addi	sp,sp,16
 870:	00008067          	ret

00000874 <neorv32_rte_exception_uninstall>:
 874:	01f00793          	li	a5,31
 878:	02a7e263          	bltu	a5,a0,89c <neorv32_rte_exception_uninstall+0x28>
 87c:	800007b7          	lui	a5,0x80000
 880:	00251513          	slli	a0,a0,0x2
 884:	00078793          	mv	a5,a5
 888:	00a787b3          	add	a5,a5,a0
 88c:	69000713          	li	a4,1680
 890:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 894:	00000513          	li	a0,0
 898:	00008067          	ret
 89c:	00100513          	li	a0,1
 8a0:	00008067          	ret

000008a4 <neorv32_rte_setup>:
 8a4:	ff010113          	addi	sp,sp,-16
 8a8:	00112623          	sw	ra,12(sp)
 8ac:	00812423          	sw	s0,8(sp)
 8b0:	00912223          	sw	s1,4(sp)
 8b4:	3e000793          	li	a5,992
 8b8:	30579073          	csrw	mtvec,a5
 8bc:	00000413          	li	s0,0
 8c0:	01d00493          	li	s1,29
 8c4:	00040513          	mv	a0,s0
 8c8:	00140413          	addi	s0,s0,1
 8cc:	0ff47413          	zext.b	s0,s0
 8d0:	fa5ff0ef          	jal	ra,874 <neorv32_rte_exception_uninstall>
 8d4:	fe9418e3          	bne	s0,s1,8c4 <neorv32_rte_setup+0x20>
 8d8:	00c12083          	lw	ra,12(sp)
 8dc:	00812403          	lw	s0,8(sp)
 8e0:	00412483          	lw	s1,4(sp)
 8e4:	01010113          	addi	sp,sp,16
 8e8:	00008067          	ret

000008ec <neorv32_rte_check_isa>:
 8ec:	30102673          	csrr	a2,misa
 8f0:	400007b7          	lui	a5,0x40000
 8f4:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffeeec>
 8f8:	00f67733          	and	a4,a2,a5
 8fc:	04f70463          	beq	a4,a5,944 <neorv32_rte_check_isa+0x58>
 900:	fe010113          	addi	sp,sp,-32
 904:	00112e23          	sw	ra,28(sp)
 908:	02051463          	bnez	a0,930 <neorv32_rte_check_isa+0x44>
 90c:	400005b7          	lui	a1,0x40000
 910:	00001537          	lui	a0,0x1
 914:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffeeec>
 918:	15c50513          	addi	a0,a0,348 # 115c <__etext+0x2ac>
 91c:	2a0000ef          	jal	ra,bbc <neorv32_uart0_printf>
 920:	01c12083          	lw	ra,28(sp)
 924:	00100513          	li	a0,1
 928:	02010113          	addi	sp,sp,32
 92c:	00008067          	ret
 930:	00c12623          	sw	a2,12(sp)
 934:	15c000ef          	jal	ra,a90 <neorv32_uart0_available>
 938:	00c12603          	lw	a2,12(sp)
 93c:	fc0508e3          	beqz	a0,90c <neorv32_rte_check_isa+0x20>
 940:	fe1ff06f          	j	920 <neorv32_rte_check_isa+0x34>
 944:	00000513          	li	a0,0
 948:	00008067          	ret

0000094c <__neorv32_uart_itoa>:
 94c:	fd010113          	addi	sp,sp,-48
 950:	02812423          	sw	s0,40(sp)
 954:	02912223          	sw	s1,36(sp)
 958:	03212023          	sw	s2,32(sp)
 95c:	01312e23          	sw	s3,28(sp)
 960:	01412c23          	sw	s4,24(sp)
 964:	02112623          	sw	ra,44(sp)
 968:	01512a23          	sw	s5,20(sp)
 96c:	00001a37          	lui	s4,0x1
 970:	00050493          	mv	s1,a0
 974:	00058413          	mv	s0,a1
 978:	00058523          	sb	zero,10(a1)
 97c:	00000993          	li	s3,0
 980:	00410913          	addi	s2,sp,4
 984:	208a0a13          	addi	s4,s4,520 # 1208 <numbers.1>
 988:	00a00593          	li	a1,10
 98c:	00048513          	mv	a0,s1
 990:	4bc000ef          	jal	ra,e4c <__umodsi3>
 994:	00aa0533          	add	a0,s4,a0
 998:	00054783          	lbu	a5,0(a0)
 99c:	01390ab3          	add	s5,s2,s3
 9a0:	00048513          	mv	a0,s1
 9a4:	00fa8023          	sb	a5,0(s5)
 9a8:	00a00593          	li	a1,10
 9ac:	458000ef          	jal	ra,e04 <__hidden___udivsi3>
 9b0:	00198993          	addi	s3,s3,1
 9b4:	00a00793          	li	a5,10
 9b8:	00050493          	mv	s1,a0
 9bc:	fcf996e3          	bne	s3,a5,988 <__neorv32_uart_itoa+0x3c>
 9c0:	00090693          	mv	a3,s2
 9c4:	00900713          	li	a4,9
 9c8:	03000613          	li	a2,48
 9cc:	0096c583          	lbu	a1,9(a3)
 9d0:	00070793          	mv	a5,a4
 9d4:	fff70713          	addi	a4,a4,-1
 9d8:	01071713          	slli	a4,a4,0x10
 9dc:	01075713          	srli	a4,a4,0x10
 9e0:	00c59a63          	bne	a1,a2,9f4 <__neorv32_uart_itoa+0xa8>
 9e4:	000684a3          	sb	zero,9(a3)
 9e8:	fff68693          	addi	a3,a3,-1
 9ec:	fe0710e3          	bnez	a4,9cc <__neorv32_uart_itoa+0x80>
 9f0:	00000793          	li	a5,0
 9f4:	00f907b3          	add	a5,s2,a5
 9f8:	00000713          	li	a4,0
 9fc:	0007c683          	lbu	a3,0(a5)
 a00:	00068c63          	beqz	a3,a18 <__neorv32_uart_itoa+0xcc>
 a04:	00170613          	addi	a2,a4,1
 a08:	00e40733          	add	a4,s0,a4
 a0c:	00d70023          	sb	a3,0(a4)
 a10:	01061713          	slli	a4,a2,0x10
 a14:	01075713          	srli	a4,a4,0x10
 a18:	fff78693          	addi	a3,a5,-1
 a1c:	02f91863          	bne	s2,a5,a4c <__neorv32_uart_itoa+0x100>
 a20:	00e40433          	add	s0,s0,a4
 a24:	00040023          	sb	zero,0(s0)
 a28:	02c12083          	lw	ra,44(sp)
 a2c:	02812403          	lw	s0,40(sp)
 a30:	02412483          	lw	s1,36(sp)
 a34:	02012903          	lw	s2,32(sp)
 a38:	01c12983          	lw	s3,28(sp)
 a3c:	01812a03          	lw	s4,24(sp)
 a40:	01412a83          	lw	s5,20(sp)
 a44:	03010113          	addi	sp,sp,48
 a48:	00008067          	ret
 a4c:	00068793          	mv	a5,a3
 a50:	fadff06f          	j	9fc <__neorv32_uart_itoa+0xb0>

00000a54 <__neorv32_uart_tohex>:
 a54:	00001637          	lui	a2,0x1
 a58:	00758693          	addi	a3,a1,7
 a5c:	00000713          	li	a4,0
 a60:	1f460613          	addi	a2,a2,500 # 11f4 <symbols.0>
 a64:	02000813          	li	a6,32
 a68:	00e557b3          	srl	a5,a0,a4
 a6c:	00f7f793          	andi	a5,a5,15
 a70:	00f607b3          	add	a5,a2,a5
 a74:	0007c783          	lbu	a5,0(a5)
 a78:	00470713          	addi	a4,a4,4
 a7c:	fff68693          	addi	a3,a3,-1
 a80:	00f680a3          	sb	a5,1(a3)
 a84:	ff0712e3          	bne	a4,a6,a68 <__neorv32_uart_tohex+0x14>
 a88:	00058423          	sb	zero,8(a1)
 a8c:	00008067          	ret

00000a90 <neorv32_uart0_available>:
 a90:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 a94:	01255513          	srli	a0,a0,0x12
 a98:	00157513          	andi	a0,a0,1
 a9c:	00008067          	ret

00000aa0 <neorv32_uart0_setup>:
 aa0:	ff010113          	addi	sp,sp,-16
 aa4:	00812423          	sw	s0,8(sp)
 aa8:	00912223          	sw	s1,4(sp)
 aac:	00112623          	sw	ra,12(sp)
 ab0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 ab4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 ab8:	00058413          	mv	s0,a1
 abc:	00151593          	slli	a1,a0,0x1
 ac0:	00078513          	mv	a0,a5
 ac4:	00060493          	mv	s1,a2
 ac8:	33c000ef          	jal	ra,e04 <__hidden___udivsi3>
 acc:	01051513          	slli	a0,a0,0x10
 ad0:	000017b7          	lui	a5,0x1
 ad4:	01055513          	srli	a0,a0,0x10
 ad8:	00000713          	li	a4,0
 adc:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x14e>
 ae0:	04a7e463          	bltu	a5,a0,b28 <neorv32_uart0_setup+0x88>
 ae4:	0034f493          	andi	s1,s1,3
 ae8:	01449493          	slli	s1,s1,0x14
 aec:	00347413          	andi	s0,s0,3
 af0:	fff50793          	addi	a5,a0,-1
 af4:	0097e7b3          	or	a5,a5,s1
 af8:	01641413          	slli	s0,s0,0x16
 afc:	0087e7b3          	or	a5,a5,s0
 b00:	01871713          	slli	a4,a4,0x18
 b04:	00c12083          	lw	ra,12(sp)
 b08:	00812403          	lw	s0,8(sp)
 b0c:	00e7e7b3          	or	a5,a5,a4
 b10:	10000737          	lui	a4,0x10000
 b14:	00e7e7b3          	or	a5,a5,a4
 b18:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 b1c:	00412483          	lw	s1,4(sp)
 b20:	01010113          	addi	sp,sp,16
 b24:	00008067          	ret
 b28:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffedea>
 b2c:	0fd6f693          	andi	a3,a3,253
 b30:	00069a63          	bnez	a3,b44 <neorv32_uart0_setup+0xa4>
 b34:	00355513          	srli	a0,a0,0x3
 b38:	00170713          	addi	a4,a4,1
 b3c:	0ff77713          	zext.b	a4,a4
 b40:	fa1ff06f          	j	ae0 <neorv32_uart0_setup+0x40>
 b44:	00155513          	srli	a0,a0,0x1
 b48:	ff1ff06f          	j	b38 <neorv32_uart0_setup+0x98>

00000b4c <neorv32_uart0_putc>:
 b4c:	00040737          	lui	a4,0x40
 b50:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 b54:	00e7f7b3          	and	a5,a5,a4
 b58:	fe079ce3          	bnez	a5,b50 <neorv32_uart0_putc+0x4>
 b5c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 b60:	00008067          	ret

00000b64 <neorv32_uart0_print>:
 b64:	ff010113          	addi	sp,sp,-16
 b68:	00812423          	sw	s0,8(sp)
 b6c:	01212023          	sw	s2,0(sp)
 b70:	00112623          	sw	ra,12(sp)
 b74:	00912223          	sw	s1,4(sp)
 b78:	00050413          	mv	s0,a0
 b7c:	00a00913          	li	s2,10
 b80:	00044483          	lbu	s1,0(s0)
 b84:	00140413          	addi	s0,s0,1
 b88:	00049e63          	bnez	s1,ba4 <neorv32_uart0_print+0x40>
 b8c:	00c12083          	lw	ra,12(sp)
 b90:	00812403          	lw	s0,8(sp)
 b94:	00412483          	lw	s1,4(sp)
 b98:	00012903          	lw	s2,0(sp)
 b9c:	01010113          	addi	sp,sp,16
 ba0:	00008067          	ret
 ba4:	01249663          	bne	s1,s2,bb0 <neorv32_uart0_print+0x4c>
 ba8:	00d00513          	li	a0,13
 bac:	fa1ff0ef          	jal	ra,b4c <neorv32_uart0_putc>
 bb0:	00048513          	mv	a0,s1
 bb4:	f99ff0ef          	jal	ra,b4c <neorv32_uart0_putc>
 bb8:	fc9ff06f          	j	b80 <neorv32_uart0_print+0x1c>

00000bbc <neorv32_uart0_printf>:
 bbc:	fa010113          	addi	sp,sp,-96
 bc0:	04f12a23          	sw	a5,84(sp)
 bc4:	04410793          	addi	a5,sp,68
 bc8:	02812c23          	sw	s0,56(sp)
 bcc:	03212823          	sw	s2,48(sp)
 bd0:	03312623          	sw	s3,44(sp)
 bd4:	03412423          	sw	s4,40(sp)
 bd8:	03512223          	sw	s5,36(sp)
 bdc:	03612023          	sw	s6,32(sp)
 be0:	01712e23          	sw	s7,28(sp)
 be4:	01812c23          	sw	s8,24(sp)
 be8:	02112e23          	sw	ra,60(sp)
 bec:	02912a23          	sw	s1,52(sp)
 bf0:	00050413          	mv	s0,a0
 bf4:	04b12223          	sw	a1,68(sp)
 bf8:	04c12423          	sw	a2,72(sp)
 bfc:	04d12623          	sw	a3,76(sp)
 c00:	04e12823          	sw	a4,80(sp)
 c04:	05012c23          	sw	a6,88(sp)
 c08:	05112e23          	sw	a7,92(sp)
 c0c:	00f12023          	sw	a5,0(sp)
 c10:	02500993          	li	s3,37
 c14:	00a00a13          	li	s4,10
 c18:	07300913          	li	s2,115
 c1c:	07500a93          	li	s5,117
 c20:	07800b13          	li	s6,120
 c24:	06300b93          	li	s7,99
 c28:	06900c13          	li	s8,105
 c2c:	00044483          	lbu	s1,0(s0)
 c30:	02049a63          	bnez	s1,c64 <neorv32_uart0_printf+0xa8>
 c34:	03c12083          	lw	ra,60(sp)
 c38:	03812403          	lw	s0,56(sp)
 c3c:	03412483          	lw	s1,52(sp)
 c40:	03012903          	lw	s2,48(sp)
 c44:	02c12983          	lw	s3,44(sp)
 c48:	02812a03          	lw	s4,40(sp)
 c4c:	02412a83          	lw	s5,36(sp)
 c50:	02012b03          	lw	s6,32(sp)
 c54:	01c12b83          	lw	s7,28(sp)
 c58:	01812c03          	lw	s8,24(sp)
 c5c:	06010113          	addi	sp,sp,96
 c60:	00008067          	ret
 c64:	0d349663          	bne	s1,s3,d30 <neorv32_uart0_printf+0x174>
 c68:	00144483          	lbu	s1,1(s0)
 c6c:	05248263          	beq	s1,s2,cb0 <neorv32_uart0_printf+0xf4>
 c70:	00996e63          	bltu	s2,s1,c8c <neorv32_uart0_printf+0xd0>
 c74:	05748c63          	beq	s1,s7,ccc <neorv32_uart0_printf+0x110>
 c78:	07848663          	beq	s1,s8,ce4 <neorv32_uart0_printf+0x128>
 c7c:	02500513          	li	a0,37
 c80:	ecdff0ef          	jal	ra,b4c <neorv32_uart0_putc>
 c84:	00048513          	mv	a0,s1
 c88:	0540006f          	j	cdc <neorv32_uart0_printf+0x120>
 c8c:	09548663          	beq	s1,s5,d18 <neorv32_uart0_printf+0x15c>
 c90:	ff6496e3          	bne	s1,s6,c7c <neorv32_uart0_printf+0xc0>
 c94:	00012783          	lw	a5,0(sp)
 c98:	00410593          	addi	a1,sp,4
 c9c:	0007a503          	lw	a0,0(a5)
 ca0:	00478713          	addi	a4,a5,4
 ca4:	00e12023          	sw	a4,0(sp)
 ca8:	dadff0ef          	jal	ra,a54 <__neorv32_uart_tohex>
 cac:	0640006f          	j	d10 <neorv32_uart0_printf+0x154>
 cb0:	00012783          	lw	a5,0(sp)
 cb4:	0007a503          	lw	a0,0(a5)
 cb8:	00478713          	addi	a4,a5,4
 cbc:	00e12023          	sw	a4,0(sp)
 cc0:	ea5ff0ef          	jal	ra,b64 <neorv32_uart0_print>
 cc4:	00240413          	addi	s0,s0,2
 cc8:	f65ff06f          	j	c2c <neorv32_uart0_printf+0x70>
 ccc:	00012783          	lw	a5,0(sp)
 cd0:	0007c503          	lbu	a0,0(a5)
 cd4:	00478713          	addi	a4,a5,4
 cd8:	00e12023          	sw	a4,0(sp)
 cdc:	e71ff0ef          	jal	ra,b4c <neorv32_uart0_putc>
 ce0:	fe5ff06f          	j	cc4 <neorv32_uart0_printf+0x108>
 ce4:	00012783          	lw	a5,0(sp)
 ce8:	0007a483          	lw	s1,0(a5)
 cec:	00478713          	addi	a4,a5,4
 cf0:	00e12023          	sw	a4,0(sp)
 cf4:	0004d863          	bgez	s1,d04 <neorv32_uart0_printf+0x148>
 cf8:	02d00513          	li	a0,45
 cfc:	409004b3          	neg	s1,s1
 d00:	e4dff0ef          	jal	ra,b4c <neorv32_uart0_putc>
 d04:	00410593          	addi	a1,sp,4
 d08:	00048513          	mv	a0,s1
 d0c:	c41ff0ef          	jal	ra,94c <__neorv32_uart_itoa>
 d10:	00410513          	addi	a0,sp,4
 d14:	fadff06f          	j	cc0 <neorv32_uart0_printf+0x104>
 d18:	00012783          	lw	a5,0(sp)
 d1c:	00410593          	addi	a1,sp,4
 d20:	00478713          	addi	a4,a5,4
 d24:	0007a503          	lw	a0,0(a5)
 d28:	00e12023          	sw	a4,0(sp)
 d2c:	fe1ff06f          	j	d0c <neorv32_uart0_printf+0x150>
 d30:	01449663          	bne	s1,s4,d3c <neorv32_uart0_printf+0x180>
 d34:	00d00513          	li	a0,13
 d38:	e15ff0ef          	jal	ra,b4c <neorv32_uart0_putc>
 d3c:	00048513          	mv	a0,s1
 d40:	00140413          	addi	s0,s0,1
 d44:	e09ff0ef          	jal	ra,b4c <neorv32_uart0_putc>
 d48:	ee5ff06f          	j	c2c <neorv32_uart0_printf+0x70>

00000d4c <__mulsi3>:
 d4c:	00050613          	mv	a2,a0
 d50:	00000513          	li	a0,0
 d54:	0015f693          	andi	a3,a1,1
 d58:	00068463          	beqz	a3,d60 <__mulsi3+0x14>
 d5c:	00c50533          	add	a0,a0,a2
 d60:	0015d593          	srli	a1,a1,0x1
 d64:	00161613          	slli	a2,a2,0x1
 d68:	fe0596e3          	bnez	a1,d54 <__mulsi3+0x8>
 d6c:	00008067          	ret

00000d70 <__muldi3>:
 d70:	00050e13          	mv	t3,a0
 d74:	ff010113          	addi	sp,sp,-16
 d78:	00068313          	mv	t1,a3
 d7c:	00112623          	sw	ra,12(sp)
 d80:	00060513          	mv	a0,a2
 d84:	000e0893          	mv	a7,t3
 d88:	00060693          	mv	a3,a2
 d8c:	00000713          	li	a4,0
 d90:	00000793          	li	a5,0
 d94:	00000813          	li	a6,0
 d98:	0016fe93          	andi	t4,a3,1
 d9c:	00171613          	slli	a2,a4,0x1
 da0:	000e8a63          	beqz	t4,db4 <__muldi3+0x44>
 da4:	01088833          	add	a6,a7,a6
 da8:	00e787b3          	add	a5,a5,a4
 dac:	01183733          	sltu	a4,a6,a7
 db0:	00f707b3          	add	a5,a4,a5
 db4:	01f8d713          	srli	a4,a7,0x1f
 db8:	0016d693          	srli	a3,a3,0x1
 dbc:	00e66733          	or	a4,a2,a4
 dc0:	00189893          	slli	a7,a7,0x1
 dc4:	fc069ae3          	bnez	a3,d98 <__muldi3+0x28>
 dc8:	00058663          	beqz	a1,dd4 <__muldi3+0x64>
 dcc:	f81ff0ef          	jal	ra,d4c <__mulsi3>
 dd0:	00a787b3          	add	a5,a5,a0
 dd4:	00030a63          	beqz	t1,de8 <__muldi3+0x78>
 dd8:	000e0513          	mv	a0,t3
 ddc:	00030593          	mv	a1,t1
 de0:	f6dff0ef          	jal	ra,d4c <__mulsi3>
 de4:	00f507b3          	add	a5,a0,a5
 de8:	00c12083          	lw	ra,12(sp)
 dec:	00080513          	mv	a0,a6
 df0:	00078593          	mv	a1,a5
 df4:	01010113          	addi	sp,sp,16
 df8:	00008067          	ret

00000dfc <__divsi3>:
 dfc:	06054063          	bltz	a0,e5c <__umodsi3+0x10>
 e00:	0605c663          	bltz	a1,e6c <__umodsi3+0x20>

00000e04 <__hidden___udivsi3>:
 e04:	00058613          	mv	a2,a1
 e08:	00050593          	mv	a1,a0
 e0c:	fff00513          	li	a0,-1
 e10:	02060c63          	beqz	a2,e48 <__hidden___udivsi3+0x44>
 e14:	00100693          	li	a3,1
 e18:	00b67a63          	bgeu	a2,a1,e2c <__hidden___udivsi3+0x28>
 e1c:	00c05863          	blez	a2,e2c <__hidden___udivsi3+0x28>
 e20:	00161613          	slli	a2,a2,0x1
 e24:	00169693          	slli	a3,a3,0x1
 e28:	feb66ae3          	bltu	a2,a1,e1c <__hidden___udivsi3+0x18>
 e2c:	00000513          	li	a0,0
 e30:	00c5e663          	bltu	a1,a2,e3c <__hidden___udivsi3+0x38>
 e34:	40c585b3          	sub	a1,a1,a2
 e38:	00d56533          	or	a0,a0,a3
 e3c:	0016d693          	srli	a3,a3,0x1
 e40:	00165613          	srli	a2,a2,0x1
 e44:	fe0696e3          	bnez	a3,e30 <__hidden___udivsi3+0x2c>
 e48:	00008067          	ret

00000e4c <__umodsi3>:
 e4c:	00008293          	mv	t0,ra
 e50:	fb5ff0ef          	jal	ra,e04 <__hidden___udivsi3>
 e54:	00058513          	mv	a0,a1
 e58:	00028067          	jr	t0
 e5c:	40a00533          	neg	a0,a0
 e60:	00b04863          	bgtz	a1,e70 <__umodsi3+0x24>
 e64:	40b005b3          	neg	a1,a1
 e68:	f9dff06f          	j	e04 <__hidden___udivsi3>
 e6c:	40b005b3          	neg	a1,a1
 e70:	00008293          	mv	t0,ra
 e74:	f91ff0ef          	jal	ra,e04 <__hidden___udivsi3>
 e78:	40a00533          	neg	a0,a0
 e7c:	00028067          	jr	t0

00000e80 <__modsi3>:
 e80:	00008293          	mv	t0,ra
 e84:	0005ca63          	bltz	a1,e98 <__modsi3+0x18>
 e88:	00054c63          	bltz	a0,ea0 <__modsi3+0x20>
 e8c:	f79ff0ef          	jal	ra,e04 <__hidden___udivsi3>
 e90:	00058513          	mv	a0,a1
 e94:	00028067          	jr	t0
 e98:	40b005b3          	neg	a1,a1
 e9c:	fe0558e3          	bgez	a0,e8c <__modsi3+0xc>
 ea0:	40a00533          	neg	a0,a0
 ea4:	f61ff0ef          	jal	ra,e04 <__hidden___udivsi3>
 ea8:	40b00533          	neg	a0,a1
 eac:	00028067          	jr	t0
