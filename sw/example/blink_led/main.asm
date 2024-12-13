
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
  e0:	00858593          	addi	a1,a1,8 # 10e4 <__crt0_copy_data_src_begin>
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
 180:	00005537          	lui	a0,0x5
 184:	ff010113          	addi	sp,sp,-16
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3a1c>
 194:	00112623          	sw	ra,12(sp)
 198:	015000ef          	jal	ra,9ac <neorv32_uart0_setup>
 19c:	2a8000ef          	jal	ra,444 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	7b0000ef          	jal	ra,954 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	df450513          	addi	a0,a0,-524 # df4 <__etext+0x24>
 1b0:	0c1000ef          	jal	ra,a70 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <blink_led_c>
 1b8:	00001537          	lui	a0,0x1
 1bc:	dd050513          	addi	a0,a0,-560 # dd0 <__etext>
 1c0:	0b1000ef          	jal	ra,a70 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <blink_led_c>:
 1d4:	fa010113          	addi	sp,sp,-96
 1d8:	000015b7          	lui	a1,0x1
 1dc:	04812c23          	sw	s0,88(sp)
 1e0:	01800613          	li	a2,24
 1e4:	e1058413          	addi	s0,a1,-496 # e10 <__etext+0x40>
 1e8:	02810513          	addi	a0,sp,40
 1ec:	e1058593          	addi	a1,a1,-496
 1f0:	04112e23          	sw	ra,92(sp)
 1f4:	04912a23          	sw	s1,84(sp)
 1f8:	05212823          	sw	s2,80(sp)
 1fc:	05312623          	sw	s3,76(sp)
 200:	05412423          	sw	s4,72(sp)
 204:	05512223          	sw	s5,68(sp)
 208:	225000ef          	jal	ra,c2c <memcpy>
 20c:	01840593          	addi	a1,s0,24
 210:	01400613          	li	a2,20
 214:	01410513          	addi	a0,sp,20
 218:	215000ef          	jal	ra,c2c <memcpy>
 21c:	0a000793          	li	a5,160
 220:	00f12623          	sw	a5,12(sp)
 224:	00000513          	li	a0,0
 228:	05000793          	li	a5,80
 22c:	00000593          	li	a1,0
 230:	00f12823          	sw	a5,16(sp)
 234:	00000413          	li	s0,0
 238:	21c000ef          	jal	ra,454 <neorv32_gpio_port_set>
 23c:	00000493          	li	s1,0
 240:	00100913          	li	s2,1
 244:	00300993          	li	s3,3
 248:	00200a13          	li	s4,2
 24c:	00500a93          	li	s5,5
 250:	214000ef          	jal	ra,464 <neorv32_gpio_port_get>
 254:	01f59713          	slli	a4,a1,0x1f
 258:	00155793          	srli	a5,a0,0x1
 25c:	00f767b3          	or	a5,a4,a5
 260:	01e59593          	slli	a1,a1,0x1e
 264:	00255713          	srli	a4,a0,0x2
 268:	00157693          	andi	a3,a0,1
 26c:	00e5e733          	or	a4,a1,a4
 270:	02069c63          	bnez	a3,2a8 <blink_led_c+0xd4>
 274:	0017f693          	andi	a3,a5,1
 278:	00177713          	andi	a4,a4,1
 27c:	06068c63          	beqz	a3,2f4 <blink_led_c+0x120>
 280:	04070c63          	beqz	a4,2d8 <blink_led_c+0x104>
 284:	00a7e7b3          	or	a5,a5,a0
 288:	0017f793          	andi	a5,a5,1
 28c:	06079663          	bnez	a5,2f8 <blink_led_c+0x124>
 290:	0a000513          	li	a0,160
 294:	00000593          	li	a1,0
 298:	1bc000ef          	jal	ra,454 <neorv32_gpio_port_set>
 29c:	00200493          	li	s1,2
 2a0:	00100413          	li	s0,1
 2a4:	0280006f          	j	2cc <blink_led_c+0xf8>
 2a8:	00e7e7b3          	or	a5,a5,a4
 2ac:	0017f793          	andi	a5,a5,1
 2b0:	04079463          	bnez	a5,2f8 <blink_led_c+0x124>
 2b4:	01000513          	li	a0,16
 2b8:	00000593          	li	a1,0
 2bc:	198000ef          	jal	ra,454 <neorv32_gpio_port_set>
 2c0:	00000413          	li	s0,0
 2c4:	00140413          	addi	s0,s0,1
 2c8:	00000493          	li	s1,0
 2cc:	0c800513          	li	a0,200
 2d0:	0b8000ef          	jal	ra,388 <neorv32_cpu_delay_ms>
 2d4:	f7dff06f          	j	250 <blink_led_c+0x7c>
 2d8:	00000513          	li	a0,0
 2dc:	00000593          	li	a1,0
 2e0:	174000ef          	jal	ra,454 <neorv32_gpio_port_set>
 2e4:	00000413          	li	s0,0
 2e8:	00140413          	addi	s0,s0,1
 2ec:	00100493          	li	s1,1
 2f0:	fddff06f          	j	2cc <blink_led_c+0xf8>
 2f4:	f8071ee3          	bnez	a4,290 <blink_led_c+0xbc>
 2f8:	00241793          	slli	a5,s0,0x2
 2fc:	04078793          	addi	a5,a5,64
 300:	002787b3          	add	a5,a5,sp
 304:	03248463          	beq	s1,s2,32c <blink_led_c+0x158>
 308:	03448e63          	beq	s1,s4,344 <blink_led_c+0x170>
 30c:	fe87a503          	lw	a0,-24(a5)
 310:	00000593          	li	a1,0
 314:	00000493          	li	s1,0
 318:	0f057513          	andi	a0,a0,240
 31c:	138000ef          	jal	ra,454 <neorv32_gpio_port_set>
 320:	fb5412e3          	bne	s0,s5,2c4 <blink_led_c+0xf0>
 324:	00000413          	li	s0,0
 328:	fa5ff06f          	j	2cc <blink_led_c+0xf8>
 32c:	fd47a503          	lw	a0,-44(a5)
 330:	00000593          	li	a1,0
 334:	0f057513          	andi	a0,a0,240
 338:	11c000ef          	jal	ra,454 <neorv32_gpio_port_set>
 33c:	fe89c4e3          	blt	s3,s0,324 <blink_led_c+0x150>
 340:	fa9ff06f          	j	2e8 <blink_led_c+0x114>
 344:	fcc7a503          	lw	a0,-52(a5)
 348:	00000593          	li	a1,0
 34c:	00143413          	seqz	s0,s0
 350:	0f057513          	andi	a0,a0,240
 354:	100000ef          	jal	ra,454 <neorv32_gpio_port_set>
 358:	f75ff06f          	j	2cc <blink_led_c+0xf8>

0000035c <neorv32_cpu_get_systime>:
 35c:	ff010113          	addi	sp,sp,-16
 360:	c81026f3          	rdtimeh	a3
 364:	c0102773          	rdtime	a4
 368:	c81027f3          	rdtimeh	a5
 36c:	fed79ae3          	bne	a5,a3,360 <neorv32_cpu_get_systime+0x4>
 370:	00e12023          	sw	a4,0(sp)
 374:	00f12223          	sw	a5,4(sp)
 378:	00012503          	lw	a0,0(sp)
 37c:	00412583          	lw	a1,4(sp)
 380:	01010113          	addi	sp,sp,16
 384:	00008067          	ret

00000388 <neorv32_cpu_delay_ms>:
 388:	fd010113          	addi	sp,sp,-48
 38c:	00a12623          	sw	a0,12(sp)
 390:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 394:	3e800593          	li	a1,1000
 398:	02112623          	sw	ra,44(sp)
 39c:	02812423          	sw	s0,40(sp)
 3a0:	02912223          	sw	s1,36(sp)
 3a4:	03212023          	sw	s2,32(sp)
 3a8:	01312e23          	sw	s3,28(sp)
 3ac:	7d4000ef          	jal	ra,b80 <__hidden___udivsi3>
 3b0:	00c12603          	lw	a2,12(sp)
 3b4:	00000693          	li	a3,0
 3b8:	00000593          	li	a1,0
 3bc:	730000ef          	jal	ra,aec <__muldi3>
 3c0:	00050413          	mv	s0,a0
 3c4:	00058993          	mv	s3,a1
 3c8:	f95ff0ef          	jal	ra,35c <neorv32_cpu_get_systime>
 3cc:	00058913          	mv	s2,a1
 3d0:	00050493          	mv	s1,a0
 3d4:	f89ff0ef          	jal	ra,35c <neorv32_cpu_get_systime>
 3d8:	00b96663          	bltu	s2,a1,3e4 <neorv32_cpu_delay_ms+0x5c>
 3dc:	05259263          	bne	a1,s2,420 <neorv32_cpu_delay_ms+0x98>
 3e0:	04a4f063          	bgeu	s1,a0,420 <neorv32_cpu_delay_ms+0x98>
 3e4:	008484b3          	add	s1,s1,s0
 3e8:	0084b433          	sltu	s0,s1,s0
 3ec:	01390933          	add	s2,s2,s3
 3f0:	01240433          	add	s0,s0,s2
 3f4:	f69ff0ef          	jal	ra,35c <neorv32_cpu_get_systime>
 3f8:	fe85eee3          	bltu	a1,s0,3f4 <neorv32_cpu_delay_ms+0x6c>
 3fc:	00b41463          	bne	s0,a1,404 <neorv32_cpu_delay_ms+0x7c>
 400:	fe956ae3          	bltu	a0,s1,3f4 <neorv32_cpu_delay_ms+0x6c>
 404:	02c12083          	lw	ra,44(sp)
 408:	02812403          	lw	s0,40(sp)
 40c:	02412483          	lw	s1,36(sp)
 410:	02012903          	lw	s2,32(sp)
 414:	01c12983          	lw	s3,28(sp)
 418:	03010113          	addi	sp,sp,48
 41c:	00008067          	ret
 420:	01c99993          	slli	s3,s3,0x1c
 424:	00445413          	srli	s0,s0,0x4
 428:	0089e433          	or	s0,s3,s0

0000042c <__neorv32_cpu_delay_ms_start>:
 42c:	00040a63          	beqz	s0,440 <__neorv32_cpu_delay_ms_end>
 430:	00040863          	beqz	s0,440 <__neorv32_cpu_delay_ms_end>
 434:	fff40413          	addi	s0,s0,-1
 438:	00000013          	nop
 43c:	ff1ff06f          	j	42c <__neorv32_cpu_delay_ms_start>

00000440 <__neorv32_cpu_delay_ms_end>:
 440:	fc5ff06f          	j	404 <neorv32_cpu_delay_ms+0x7c>

00000444 <neorv32_gpio_available>:
 444:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 448:	01055513          	srli	a0,a0,0x10
 44c:	00157513          	andi	a0,a0,1
 450:	00008067          	ret

00000454 <neorv32_gpio_port_set>:
 454:	fc000793          	li	a5,-64
 458:	00a7a423          	sw	a0,8(a5)
 45c:	00b7a623          	sw	a1,12(a5)
 460:	00008067          	ret

00000464 <neorv32_gpio_port_get>:
 464:	fc000793          	li	a5,-64
 468:	0007a703          	lw	a4,0(a5)
 46c:	ff010113          	addi	sp,sp,-16
 470:	00e12023          	sw	a4,0(sp)
 474:	0047a783          	lw	a5,4(a5)
 478:	00012503          	lw	a0,0(sp)
 47c:	00f12223          	sw	a5,4(sp)
 480:	00412583          	lw	a1,4(sp)
 484:	01010113          	addi	sp,sp,16
 488:	00008067          	ret
 48c:	0000                	.2byte	0x0
 48e:	0000                	.2byte	0x0

00000490 <__neorv32_rte_core>:
 490:	fc010113          	addi	sp,sp,-64
 494:	02112e23          	sw	ra,60(sp)
 498:	02512c23          	sw	t0,56(sp)
 49c:	02612a23          	sw	t1,52(sp)
 4a0:	02712823          	sw	t2,48(sp)
 4a4:	02a12623          	sw	a0,44(sp)
 4a8:	02b12423          	sw	a1,40(sp)
 4ac:	02c12223          	sw	a2,36(sp)
 4b0:	02d12023          	sw	a3,32(sp)
 4b4:	00e12e23          	sw	a4,28(sp)
 4b8:	00f12c23          	sw	a5,24(sp)
 4bc:	01012a23          	sw	a6,20(sp)
 4c0:	01112823          	sw	a7,16(sp)
 4c4:	01c12623          	sw	t3,12(sp)
 4c8:	01d12423          	sw	t4,8(sp)
 4cc:	01e12223          	sw	t5,4(sp)
 4d0:	01f12023          	sw	t6,0(sp)
 4d4:	34102773          	csrr	a4,mepc
 4d8:	34071073          	csrw	mscratch,a4
 4dc:	342027f3          	csrr	a5,mcause
 4e0:	0807c863          	bltz	a5,570 <__neorv32_rte_core+0xe0>
 4e4:	00071683          	lh	a3,0(a4)
 4e8:	00300593          	li	a1,3
 4ec:	0036f693          	andi	a3,a3,3
 4f0:	00270613          	addi	a2,a4,2
 4f4:	00b69463          	bne	a3,a1,4fc <__neorv32_rte_core+0x6c>
 4f8:	00470613          	addi	a2,a4,4
 4fc:	34161073          	csrw	mepc,a2
 500:	00b00713          	li	a4,11
 504:	04f77a63          	bgeu	a4,a5,558 <__neorv32_rte_core+0xc8>
 508:	74000793          	li	a5,1856
 50c:	000780e7          	jalr	a5
 510:	03c12083          	lw	ra,60(sp)
 514:	03812283          	lw	t0,56(sp)
 518:	03412303          	lw	t1,52(sp)
 51c:	03012383          	lw	t2,48(sp)
 520:	02c12503          	lw	a0,44(sp)
 524:	02812583          	lw	a1,40(sp)
 528:	02412603          	lw	a2,36(sp)
 52c:	02012683          	lw	a3,32(sp)
 530:	01c12703          	lw	a4,28(sp)
 534:	01812783          	lw	a5,24(sp)
 538:	01412803          	lw	a6,20(sp)
 53c:	01012883          	lw	a7,16(sp)
 540:	00c12e03          	lw	t3,12(sp)
 544:	00812e83          	lw	t4,8(sp)
 548:	00412f03          	lw	t5,4(sp)
 54c:	00012f83          	lw	t6,0(sp)
 550:	04010113          	addi	sp,sp,64
 554:	30200073          	mret
 558:	00001737          	lui	a4,0x1
 55c:	00279793          	slli	a5,a5,0x2
 560:	e3c70713          	addi	a4,a4,-452 # e3c <__etext+0x6c>
 564:	00e787b3          	add	a5,a5,a4
 568:	0007a783          	lw	a5,0(a5)
 56c:	00078067          	jr	a5
 570:	80000737          	lui	a4,0x80000
 574:	ffd74713          	xori	a4,a4,-3
 578:	00e787b3          	add	a5,a5,a4
 57c:	01c00713          	li	a4,28
 580:	f8f764e3          	bltu	a4,a5,508 <__neorv32_rte_core+0x78>
 584:	00001737          	lui	a4,0x1
 588:	00279793          	slli	a5,a5,0x2
 58c:	e6c70713          	addi	a4,a4,-404 # e6c <__etext+0x9c>
 590:	00e787b3          	add	a5,a5,a4
 594:	0007a783          	lw	a5,0(a5)
 598:	00078067          	jr	a5
 59c:	800007b7          	lui	a5,0x80000
 5a0:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 5a4:	f69ff06f          	j	50c <__neorv32_rte_core+0x7c>
 5a8:	800007b7          	lui	a5,0x80000
 5ac:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 5b0:	f5dff06f          	j	50c <__neorv32_rte_core+0x7c>
 5b4:	800007b7          	lui	a5,0x80000
 5b8:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 5bc:	f51ff06f          	j	50c <__neorv32_rte_core+0x7c>
 5c0:	800007b7          	lui	a5,0x80000
 5c4:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 5c8:	f45ff06f          	j	50c <__neorv32_rte_core+0x7c>
 5cc:	800007b7          	lui	a5,0x80000
 5d0:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 5d4:	f39ff06f          	j	50c <__neorv32_rte_core+0x7c>
 5d8:	800007b7          	lui	a5,0x80000
 5dc:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 5e0:	f2dff06f          	j	50c <__neorv32_rte_core+0x7c>
 5e4:	800007b7          	lui	a5,0x80000
 5e8:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 5ec:	f21ff06f          	j	50c <__neorv32_rte_core+0x7c>
 5f0:	800007b7          	lui	a5,0x80000
 5f4:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 5f8:	f15ff06f          	j	50c <__neorv32_rte_core+0x7c>
 5fc:	800007b7          	lui	a5,0x80000
 600:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 604:	f09ff06f          	j	50c <__neorv32_rte_core+0x7c>
 608:	800007b7          	lui	a5,0x80000
 60c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 610:	efdff06f          	j	50c <__neorv32_rte_core+0x7c>
 614:	800007b7          	lui	a5,0x80000
 618:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 61c:	ef1ff06f          	j	50c <__neorv32_rte_core+0x7c>
 620:	800007b7          	lui	a5,0x80000
 624:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 628:	ee5ff06f          	j	50c <__neorv32_rte_core+0x7c>
 62c:	800007b7          	lui	a5,0x80000
 630:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 634:	ed9ff06f          	j	50c <__neorv32_rte_core+0x7c>
 638:	800007b7          	lui	a5,0x80000
 63c:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 640:	ecdff06f          	j	50c <__neorv32_rte_core+0x7c>
 644:	800007b7          	lui	a5,0x80000
 648:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 64c:	ec1ff06f          	j	50c <__neorv32_rte_core+0x7c>
 650:	800007b7          	lui	a5,0x80000
 654:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 658:	eb5ff06f          	j	50c <__neorv32_rte_core+0x7c>
 65c:	800007b7          	lui	a5,0x80000
 660:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 664:	ea9ff06f          	j	50c <__neorv32_rte_core+0x7c>
 668:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 66c:	ea1ff06f          	j	50c <__neorv32_rte_core+0x7c>
 670:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 674:	e99ff06f          	j	50c <__neorv32_rte_core+0x7c>
 678:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 67c:	e91ff06f          	j	50c <__neorv32_rte_core+0x7c>
 680:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 684:	e89ff06f          	j	50c <__neorv32_rte_core+0x7c>
 688:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 68c:	e81ff06f          	j	50c <__neorv32_rte_core+0x7c>
 690:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 694:	e79ff06f          	j	50c <__neorv32_rte_core+0x7c>
 698:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 69c:	e71ff06f          	j	50c <__neorv32_rte_core+0x7c>
 6a0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 6a4:	e69ff06f          	j	50c <__neorv32_rte_core+0x7c>
 6a8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 6ac:	e61ff06f          	j	50c <__neorv32_rte_core+0x7c>
 6b0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 6b4:	e59ff06f          	j	50c <__neorv32_rte_core+0x7c>
 6b8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 6bc:	e51ff06f          	j	50c <__neorv32_rte_core+0x7c>
 6c0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 6c4:	e49ff06f          	j	50c <__neorv32_rte_core+0x7c>
 6c8:	0000                	.2byte	0x0
 6ca:	0000                	.2byte	0x0
 6cc:	0000                	.2byte	0x0
 6ce:	0000                	.2byte	0x0

000006d0 <__neorv32_rte_print_hex_word>:
 6d0:	fe010113          	addi	sp,sp,-32
 6d4:	01212823          	sw	s2,16(sp)
 6d8:	00050913          	mv	s2,a0
 6dc:	00001537          	lui	a0,0x1
 6e0:	00912a23          	sw	s1,20(sp)
 6e4:	ee050513          	addi	a0,a0,-288 # ee0 <__etext+0x110>
 6e8:	000014b7          	lui	s1,0x1
 6ec:	00812c23          	sw	s0,24(sp)
 6f0:	01312623          	sw	s3,12(sp)
 6f4:	00112e23          	sw	ra,28(sp)
 6f8:	01c00413          	li	s0,28
 6fc:	374000ef          	jal	ra,a70 <neorv32_uart0_print>
 700:	0d448493          	addi	s1,s1,212 # 10d4 <hex_symbols.0>
 704:	ffc00993          	li	s3,-4
 708:	008957b3          	srl	a5,s2,s0
 70c:	00f7f793          	andi	a5,a5,15
 710:	00f487b3          	add	a5,s1,a5
 714:	0007c503          	lbu	a0,0(a5)
 718:	ffc40413          	addi	s0,s0,-4
 71c:	33c000ef          	jal	ra,a58 <neorv32_uart0_putc>
 720:	ff3414e3          	bne	s0,s3,708 <__neorv32_rte_print_hex_word+0x38>
 724:	01c12083          	lw	ra,28(sp)
 728:	01812403          	lw	s0,24(sp)
 72c:	01412483          	lw	s1,20(sp)
 730:	01012903          	lw	s2,16(sp)
 734:	00c12983          	lw	s3,12(sp)
 738:	02010113          	addi	sp,sp,32
 73c:	00008067          	ret

00000740 <__neorv32_rte_debug_exc_handler>:
 740:	ff010113          	addi	sp,sp,-16
 744:	00112623          	sw	ra,12(sp)
 748:	00812423          	sw	s0,8(sp)
 74c:	00912223          	sw	s1,4(sp)
 750:	24c000ef          	jal	ra,99c <neorv32_uart0_available>
 754:	1a050e63          	beqz	a0,910 <__neorv32_rte_debug_exc_handler+0x1d0>
 758:	00001537          	lui	a0,0x1
 75c:	ee450513          	addi	a0,a0,-284 # ee4 <__etext+0x114>
 760:	310000ef          	jal	ra,a70 <neorv32_uart0_print>
 764:	34202473          	csrr	s0,mcause
 768:	00900713          	li	a4,9
 76c:	00f47793          	andi	a5,s0,15
 770:	03078493          	addi	s1,a5,48
 774:	00f77463          	bgeu	a4,a5,77c <__neorv32_rte_debug_exc_handler+0x3c>
 778:	05778493          	addi	s1,a5,87
 77c:	00b00793          	li	a5,11
 780:	0087ee63          	bltu	a5,s0,79c <__neorv32_rte_debug_exc_handler+0x5c>
 784:	00001737          	lui	a4,0x1
 788:	00241793          	slli	a5,s0,0x2
 78c:	0a470713          	addi	a4,a4,164 # 10a4 <__etext+0x2d4>
 790:	00e787b3          	add	a5,a5,a4
 794:	0007a783          	lw	a5,0(a5)
 798:	00078067          	jr	a5
 79c:	800007b7          	lui	a5,0x80000
 7a0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 7a4:	14e40463          	beq	s0,a4,8ec <__neorv32_rte_debug_exc_handler+0x1ac>
 7a8:	02876663          	bltu	a4,s0,7d4 <__neorv32_rte_debug_exc_handler+0x94>
 7ac:	00378713          	addi	a4,a5,3
 7b0:	12e40263          	beq	s0,a4,8d4 <__neorv32_rte_debug_exc_handler+0x194>
 7b4:	00778793          	addi	a5,a5,7
 7b8:	12f40463          	beq	s0,a5,8e0 <__neorv32_rte_debug_exc_handler+0x1a0>
 7bc:	00001537          	lui	a0,0x1
 7c0:	04450513          	addi	a0,a0,68 # 1044 <__etext+0x274>
 7c4:	2ac000ef          	jal	ra,a70 <neorv32_uart0_print>
 7c8:	00040513          	mv	a0,s0
 7cc:	f05ff0ef          	jal	ra,6d0 <__neorv32_rte_print_hex_word>
 7d0:	0280006f          	j	7f8 <__neorv32_rte_debug_exc_handler+0xb8>
 7d4:	ff07c793          	xori	a5,a5,-16
 7d8:	00f407b3          	add	a5,s0,a5
 7dc:	00f00713          	li	a4,15
 7e0:	fcf76ee3          	bltu	a4,a5,7bc <__neorv32_rte_debug_exc_handler+0x7c>
 7e4:	00001537          	lui	a0,0x1
 7e8:	03450513          	addi	a0,a0,52 # 1034 <__etext+0x264>
 7ec:	284000ef          	jal	ra,a70 <neorv32_uart0_print>
 7f0:	00048513          	mv	a0,s1
 7f4:	264000ef          	jal	ra,a58 <neorv32_uart0_putc>
 7f8:	00001537          	lui	a0,0x1
 7fc:	08850513          	addi	a0,a0,136 # 1088 <__etext+0x2b8>
 800:	270000ef          	jal	ra,a70 <neorv32_uart0_print>
 804:	34002573          	csrr	a0,mscratch
 808:	ec9ff0ef          	jal	ra,6d0 <__neorv32_rte_print_hex_word>
 80c:	00001537          	lui	a0,0x1
 810:	09050513          	addi	a0,a0,144 # 1090 <__etext+0x2c0>
 814:	25c000ef          	jal	ra,a70 <neorv32_uart0_print>
 818:	34302573          	csrr	a0,mtval
 81c:	eb5ff0ef          	jal	ra,6d0 <__neorv32_rte_print_hex_word>
 820:	00812403          	lw	s0,8(sp)
 824:	00c12083          	lw	ra,12(sp)
 828:	00412483          	lw	s1,4(sp)
 82c:	00001537          	lui	a0,0x1
 830:	09c50513          	addi	a0,a0,156 # 109c <__etext+0x2cc>
 834:	01010113          	addi	sp,sp,16
 838:	2380006f          	j	a70 <neorv32_uart0_print>
 83c:	00001537          	lui	a0,0x1
 840:	eec50513          	addi	a0,a0,-276 # eec <__etext+0x11c>
 844:	22c000ef          	jal	ra,a70 <neorv32_uart0_print>
 848:	fb1ff06f          	j	7f8 <__neorv32_rte_debug_exc_handler+0xb8>
 84c:	00001537          	lui	a0,0x1
 850:	f0c50513          	addi	a0,a0,-244 # f0c <__etext+0x13c>
 854:	21c000ef          	jal	ra,a70 <neorv32_uart0_print>
 858:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 85c:	0a07d463          	bgez	a5,904 <__neorv32_rte_debug_exc_handler+0x1c4>
 860:	0017f793          	andi	a5,a5,1
 864:	08078a63          	beqz	a5,8f8 <__neorv32_rte_debug_exc_handler+0x1b8>
 868:	00001537          	lui	a0,0x1
 86c:	05c50513          	addi	a0,a0,92 # 105c <__etext+0x28c>
 870:	fd5ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 874:	00001537          	lui	a0,0x1
 878:	f2850513          	addi	a0,a0,-216 # f28 <__etext+0x158>
 87c:	fc9ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 880:	00001537          	lui	a0,0x1
 884:	f3c50513          	addi	a0,a0,-196 # f3c <__etext+0x16c>
 888:	fbdff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 88c:	00001537          	lui	a0,0x1
 890:	f4850513          	addi	a0,a0,-184 # f48 <__etext+0x178>
 894:	fb1ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 898:	00001537          	lui	a0,0x1
 89c:	f6050513          	addi	a0,a0,-160 # f60 <__etext+0x190>
 8a0:	fb5ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x114>
 8a4:	00001537          	lui	a0,0x1
 8a8:	f7450513          	addi	a0,a0,-140 # f74 <__etext+0x1a4>
 8ac:	f99ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 8b0:	00001537          	lui	a0,0x1
 8b4:	f9050513          	addi	a0,a0,-112 # f90 <__etext+0x1c0>
 8b8:	f9dff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x114>
 8bc:	00001537          	lui	a0,0x1
 8c0:	fa450513          	addi	a0,a0,-92 # fa4 <__etext+0x1d4>
 8c4:	f81ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 8c8:	00001537          	lui	a0,0x1
 8cc:	fc450513          	addi	a0,a0,-60 # fc4 <__etext+0x1f4>
 8d0:	f75ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 8d4:	00001537          	lui	a0,0x1
 8d8:	fe450513          	addi	a0,a0,-28 # fe4 <__etext+0x214>
 8dc:	f69ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 8e0:	00001537          	lui	a0,0x1
 8e4:	00050513          	mv	a0,a0
 8e8:	f5dff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 8ec:	00001537          	lui	a0,0x1
 8f0:	01850513          	addi	a0,a0,24 # 1018 <__etext+0x248>
 8f4:	f51ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 8f8:	00001537          	lui	a0,0x1
 8fc:	06c50513          	addi	a0,a0,108 # 106c <__etext+0x29c>
 900:	f45ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 904:	00001537          	lui	a0,0x1
 908:	07c50513          	addi	a0,a0,124 # 107c <__etext+0x2ac>
 90c:	f39ff06f          	j	844 <__neorv32_rte_debug_exc_handler+0x104>
 910:	00c12083          	lw	ra,12(sp)
 914:	00812403          	lw	s0,8(sp)
 918:	00412483          	lw	s1,4(sp)
 91c:	01010113          	addi	sp,sp,16
 920:	00008067          	ret

00000924 <neorv32_rte_exception_uninstall>:
 924:	01f00793          	li	a5,31
 928:	02a7e263          	bltu	a5,a0,94c <neorv32_rte_exception_uninstall+0x28>
 92c:	800007b7          	lui	a5,0x80000
 930:	00251513          	slli	a0,a0,0x2
 934:	00078793          	mv	a5,a5
 938:	00a787b3          	add	a5,a5,a0
 93c:	74000713          	li	a4,1856
 940:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 944:	00000513          	li	a0,0
 948:	00008067          	ret
 94c:	00100513          	li	a0,1
 950:	00008067          	ret

00000954 <neorv32_rte_setup>:
 954:	ff010113          	addi	sp,sp,-16
 958:	00112623          	sw	ra,12(sp)
 95c:	00812423          	sw	s0,8(sp)
 960:	00912223          	sw	s1,4(sp)
 964:	49000793          	li	a5,1168
 968:	30579073          	csrw	mtvec,a5
 96c:	00000413          	li	s0,0
 970:	01d00493          	li	s1,29
 974:	00040513          	mv	a0,s0
 978:	00140413          	addi	s0,s0,1
 97c:	0ff47413          	zext.b	s0,s0
 980:	fa5ff0ef          	jal	ra,924 <neorv32_rte_exception_uninstall>
 984:	fe9418e3          	bne	s0,s1,974 <neorv32_rte_setup+0x20>
 988:	00c12083          	lw	ra,12(sp)
 98c:	00812403          	lw	s0,8(sp)
 990:	00412483          	lw	s1,4(sp)
 994:	01010113          	addi	sp,sp,16
 998:	00008067          	ret

0000099c <neorv32_uart0_available>:
 99c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 9a0:	01255513          	srli	a0,a0,0x12
 9a4:	00157513          	andi	a0,a0,1
 9a8:	00008067          	ret

000009ac <neorv32_uart0_setup>:
 9ac:	ff010113          	addi	sp,sp,-16
 9b0:	00812423          	sw	s0,8(sp)
 9b4:	00912223          	sw	s1,4(sp)
 9b8:	00112623          	sw	ra,12(sp)
 9bc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 9c0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 9c4:	00058413          	mv	s0,a1
 9c8:	00151593          	slli	a1,a0,0x1
 9cc:	00078513          	mv	a0,a5
 9d0:	00060493          	mv	s1,a2
 9d4:	1ac000ef          	jal	ra,b80 <__hidden___udivsi3>
 9d8:	01051513          	slli	a0,a0,0x10
 9dc:	000017b7          	lui	a5,0x1
 9e0:	01055513          	srli	a0,a0,0x10
 9e4:	00000713          	li	a4,0
 9e8:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x22e>
 9ec:	04a7e463          	bltu	a5,a0,a34 <neorv32_uart0_setup+0x88>
 9f0:	0034f493          	andi	s1,s1,3
 9f4:	01449493          	slli	s1,s1,0x14
 9f8:	00347413          	andi	s0,s0,3
 9fc:	fff50793          	addi	a5,a0,-1
 a00:	0097e7b3          	or	a5,a5,s1
 a04:	01641413          	slli	s0,s0,0x16
 a08:	0087e7b3          	or	a5,a5,s0
 a0c:	01871713          	slli	a4,a4,0x18
 a10:	00c12083          	lw	ra,12(sp)
 a14:	00812403          	lw	s0,8(sp)
 a18:	00e7e7b3          	or	a5,a5,a4
 a1c:	10000737          	lui	a4,0x10000
 a20:	00e7e7b3          	or	a5,a5,a4
 a24:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a28:	00412483          	lw	s1,4(sp)
 a2c:	01010113          	addi	sp,sp,16
 a30:	00008067          	ret
 a34:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffef1a>
 a38:	0fd6f693          	andi	a3,a3,253
 a3c:	00069a63          	bnez	a3,a50 <neorv32_uart0_setup+0xa4>
 a40:	00355513          	srli	a0,a0,0x3
 a44:	00170713          	addi	a4,a4,1
 a48:	0ff77713          	zext.b	a4,a4
 a4c:	fa1ff06f          	j	9ec <neorv32_uart0_setup+0x40>
 a50:	00155513          	srli	a0,a0,0x1
 a54:	ff1ff06f          	j	a44 <neorv32_uart0_setup+0x98>

00000a58 <neorv32_uart0_putc>:
 a58:	00040737          	lui	a4,0x40
 a5c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a60:	00e7f7b3          	and	a5,a5,a4
 a64:	fe079ce3          	bnez	a5,a5c <neorv32_uart0_putc+0x4>
 a68:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 a6c:	00008067          	ret

00000a70 <neorv32_uart0_print>:
 a70:	ff010113          	addi	sp,sp,-16
 a74:	00812423          	sw	s0,8(sp)
 a78:	01212023          	sw	s2,0(sp)
 a7c:	00112623          	sw	ra,12(sp)
 a80:	00912223          	sw	s1,4(sp)
 a84:	00050413          	mv	s0,a0
 a88:	00a00913          	li	s2,10
 a8c:	00044483          	lbu	s1,0(s0)
 a90:	00140413          	addi	s0,s0,1
 a94:	00049e63          	bnez	s1,ab0 <neorv32_uart0_print+0x40>
 a98:	00c12083          	lw	ra,12(sp)
 a9c:	00812403          	lw	s0,8(sp)
 aa0:	00412483          	lw	s1,4(sp)
 aa4:	00012903          	lw	s2,0(sp)
 aa8:	01010113          	addi	sp,sp,16
 aac:	00008067          	ret
 ab0:	01249663          	bne	s1,s2,abc <neorv32_uart0_print+0x4c>
 ab4:	00d00513          	li	a0,13
 ab8:	fa1ff0ef          	jal	ra,a58 <neorv32_uart0_putc>
 abc:	00048513          	mv	a0,s1
 ac0:	f99ff0ef          	jal	ra,a58 <neorv32_uart0_putc>
 ac4:	fc9ff06f          	j	a8c <neorv32_uart0_print+0x1c>

00000ac8 <__mulsi3>:
 ac8:	00050613          	mv	a2,a0
 acc:	00000513          	li	a0,0
 ad0:	0015f693          	andi	a3,a1,1
 ad4:	00068463          	beqz	a3,adc <__mulsi3+0x14>
 ad8:	00c50533          	add	a0,a0,a2
 adc:	0015d593          	srli	a1,a1,0x1
 ae0:	00161613          	slli	a2,a2,0x1
 ae4:	fe0596e3          	bnez	a1,ad0 <__mulsi3+0x8>
 ae8:	00008067          	ret

00000aec <__muldi3>:
 aec:	00050e13          	mv	t3,a0
 af0:	ff010113          	addi	sp,sp,-16
 af4:	00068313          	mv	t1,a3
 af8:	00112623          	sw	ra,12(sp)
 afc:	00060513          	mv	a0,a2
 b00:	000e0893          	mv	a7,t3
 b04:	00060693          	mv	a3,a2
 b08:	00000713          	li	a4,0
 b0c:	00000793          	li	a5,0
 b10:	00000813          	li	a6,0
 b14:	0016fe93          	andi	t4,a3,1
 b18:	00171613          	slli	a2,a4,0x1
 b1c:	000e8a63          	beqz	t4,b30 <__muldi3+0x44>
 b20:	01088833          	add	a6,a7,a6
 b24:	00e787b3          	add	a5,a5,a4
 b28:	01183733          	sltu	a4,a6,a7
 b2c:	00f707b3          	add	a5,a4,a5
 b30:	01f8d713          	srli	a4,a7,0x1f
 b34:	0016d693          	srli	a3,a3,0x1
 b38:	00e66733          	or	a4,a2,a4
 b3c:	00189893          	slli	a7,a7,0x1
 b40:	fc069ae3          	bnez	a3,b14 <__muldi3+0x28>
 b44:	00058663          	beqz	a1,b50 <__muldi3+0x64>
 b48:	f81ff0ef          	jal	ra,ac8 <__mulsi3>
 b4c:	00a787b3          	add	a5,a5,a0
 b50:	00030a63          	beqz	t1,b64 <__muldi3+0x78>
 b54:	000e0513          	mv	a0,t3
 b58:	00030593          	mv	a1,t1
 b5c:	f6dff0ef          	jal	ra,ac8 <__mulsi3>
 b60:	00f507b3          	add	a5,a0,a5
 b64:	00c12083          	lw	ra,12(sp)
 b68:	00080513          	mv	a0,a6
 b6c:	00078593          	mv	a1,a5
 b70:	01010113          	addi	sp,sp,16
 b74:	00008067          	ret

00000b78 <__divsi3>:
 b78:	06054063          	bltz	a0,bd8 <__umodsi3+0x10>
 b7c:	0605c663          	bltz	a1,be8 <__umodsi3+0x20>

00000b80 <__hidden___udivsi3>:
 b80:	00058613          	mv	a2,a1
 b84:	00050593          	mv	a1,a0
 b88:	fff00513          	li	a0,-1
 b8c:	02060c63          	beqz	a2,bc4 <__hidden___udivsi3+0x44>
 b90:	00100693          	li	a3,1
 b94:	00b67a63          	bgeu	a2,a1,ba8 <__hidden___udivsi3+0x28>
 b98:	00c05863          	blez	a2,ba8 <__hidden___udivsi3+0x28>
 b9c:	00161613          	slli	a2,a2,0x1
 ba0:	00169693          	slli	a3,a3,0x1
 ba4:	feb66ae3          	bltu	a2,a1,b98 <__hidden___udivsi3+0x18>
 ba8:	00000513          	li	a0,0
 bac:	00c5e663          	bltu	a1,a2,bb8 <__hidden___udivsi3+0x38>
 bb0:	40c585b3          	sub	a1,a1,a2
 bb4:	00d56533          	or	a0,a0,a3
 bb8:	0016d693          	srli	a3,a3,0x1
 bbc:	00165613          	srli	a2,a2,0x1
 bc0:	fe0696e3          	bnez	a3,bac <__hidden___udivsi3+0x2c>
 bc4:	00008067          	ret

00000bc8 <__umodsi3>:
 bc8:	00008293          	mv	t0,ra
 bcc:	fb5ff0ef          	jal	ra,b80 <__hidden___udivsi3>
 bd0:	00058513          	mv	a0,a1
 bd4:	00028067          	jr	t0
 bd8:	40a00533          	neg	a0,a0
 bdc:	00b04863          	bgtz	a1,bec <__umodsi3+0x24>
 be0:	40b005b3          	neg	a1,a1
 be4:	f9dff06f          	j	b80 <__hidden___udivsi3>
 be8:	40b005b3          	neg	a1,a1
 bec:	00008293          	mv	t0,ra
 bf0:	f91ff0ef          	jal	ra,b80 <__hidden___udivsi3>
 bf4:	40a00533          	neg	a0,a0
 bf8:	00028067          	jr	t0

00000bfc <__modsi3>:
 bfc:	00008293          	mv	t0,ra
 c00:	0005ca63          	bltz	a1,c14 <__modsi3+0x18>
 c04:	00054c63          	bltz	a0,c1c <__modsi3+0x20>
 c08:	f79ff0ef          	jal	ra,b80 <__hidden___udivsi3>
 c0c:	00058513          	mv	a0,a1
 c10:	00028067          	jr	t0
 c14:	40b005b3          	neg	a1,a1
 c18:	fe0558e3          	bgez	a0,c08 <__modsi3+0xc>
 c1c:	40a00533          	neg	a0,a0
 c20:	f61ff0ef          	jal	ra,b80 <__hidden___udivsi3>
 c24:	40b00533          	neg	a0,a1
 c28:	00028067          	jr	t0

00000c2c <memcpy>:
 c2c:	00b547b3          	xor	a5,a0,a1
 c30:	0037f793          	andi	a5,a5,3
 c34:	00c508b3          	add	a7,a0,a2
 c38:	06079463          	bnez	a5,ca0 <memcpy+0x74>
 c3c:	00300793          	li	a5,3
 c40:	06c7f063          	bgeu	a5,a2,ca0 <memcpy+0x74>
 c44:	00357793          	andi	a5,a0,3
 c48:	00050713          	mv	a4,a0
 c4c:	06079a63          	bnez	a5,cc0 <memcpy+0x94>
 c50:	ffc8f613          	andi	a2,a7,-4
 c54:	40e606b3          	sub	a3,a2,a4
 c58:	02000793          	li	a5,32
 c5c:	08d7ce63          	blt	a5,a3,cf8 <memcpy+0xcc>
 c60:	00058693          	mv	a3,a1
 c64:	00070793          	mv	a5,a4
 c68:	02c77863          	bgeu	a4,a2,c98 <memcpy+0x6c>
 c6c:	0006a803          	lw	a6,0(a3)
 c70:	00478793          	addi	a5,a5,4
 c74:	00468693          	addi	a3,a3,4
 c78:	ff07ae23          	sw	a6,-4(a5)
 c7c:	fec7e8e3          	bltu	a5,a2,c6c <memcpy+0x40>
 c80:	fff60793          	addi	a5,a2,-1
 c84:	40e787b3          	sub	a5,a5,a4
 c88:	ffc7f793          	andi	a5,a5,-4
 c8c:	00478793          	addi	a5,a5,4
 c90:	00f70733          	add	a4,a4,a5
 c94:	00f585b3          	add	a1,a1,a5
 c98:	01176863          	bltu	a4,a7,ca8 <memcpy+0x7c>
 c9c:	00008067          	ret
 ca0:	00050713          	mv	a4,a0
 ca4:	05157863          	bgeu	a0,a7,cf4 <memcpy+0xc8>
 ca8:	0005c783          	lbu	a5,0(a1)
 cac:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ef1d>
 cb0:	00158593          	addi	a1,a1,1
 cb4:	fef70fa3          	sb	a5,-1(a4)
 cb8:	fee898e3          	bne	a7,a4,ca8 <memcpy+0x7c>
 cbc:	00008067          	ret
 cc0:	0005c683          	lbu	a3,0(a1)
 cc4:	00170713          	addi	a4,a4,1
 cc8:	00377793          	andi	a5,a4,3
 ccc:	fed70fa3          	sb	a3,-1(a4)
 cd0:	00158593          	addi	a1,a1,1
 cd4:	f6078ee3          	beqz	a5,c50 <memcpy+0x24>
 cd8:	0005c683          	lbu	a3,0(a1)
 cdc:	00170713          	addi	a4,a4,1
 ce0:	00377793          	andi	a5,a4,3
 ce4:	fed70fa3          	sb	a3,-1(a4)
 ce8:	00158593          	addi	a1,a1,1
 cec:	fc079ae3          	bnez	a5,cc0 <memcpy+0x94>
 cf0:	f61ff06f          	j	c50 <memcpy+0x24>
 cf4:	00008067          	ret
 cf8:	ff010113          	addi	sp,sp,-16
 cfc:	00812623          	sw	s0,12(sp)
 d00:	02000413          	li	s0,32
 d04:	0005a383          	lw	t2,0(a1)
 d08:	0045a283          	lw	t0,4(a1)
 d0c:	0085af83          	lw	t6,8(a1)
 d10:	00c5af03          	lw	t5,12(a1)
 d14:	0105ae83          	lw	t4,16(a1)
 d18:	0145ae03          	lw	t3,20(a1)
 d1c:	0185a303          	lw	t1,24(a1)
 d20:	01c5a803          	lw	a6,28(a1)
 d24:	0205a683          	lw	a3,32(a1)
 d28:	02470713          	addi	a4,a4,36
 d2c:	40e607b3          	sub	a5,a2,a4
 d30:	fc772e23          	sw	t2,-36(a4)
 d34:	fe572023          	sw	t0,-32(a4)
 d38:	fff72223          	sw	t6,-28(a4)
 d3c:	ffe72423          	sw	t5,-24(a4)
 d40:	ffd72623          	sw	t4,-20(a4)
 d44:	ffc72823          	sw	t3,-16(a4)
 d48:	fe672a23          	sw	t1,-12(a4)
 d4c:	ff072c23          	sw	a6,-8(a4)
 d50:	fed72e23          	sw	a3,-4(a4)
 d54:	02458593          	addi	a1,a1,36
 d58:	faf446e3          	blt	s0,a5,d04 <memcpy+0xd8>
 d5c:	00058693          	mv	a3,a1
 d60:	00070793          	mv	a5,a4
 d64:	02c77863          	bgeu	a4,a2,d94 <memcpy+0x168>
 d68:	0006a803          	lw	a6,0(a3)
 d6c:	00478793          	addi	a5,a5,4
 d70:	00468693          	addi	a3,a3,4
 d74:	ff07ae23          	sw	a6,-4(a5)
 d78:	fec7e8e3          	bltu	a5,a2,d68 <memcpy+0x13c>
 d7c:	fff60793          	addi	a5,a2,-1
 d80:	40e787b3          	sub	a5,a5,a4
 d84:	ffc7f793          	andi	a5,a5,-4
 d88:	00478793          	addi	a5,a5,4
 d8c:	00f70733          	add	a4,a4,a5
 d90:	00f585b3          	add	a1,a1,a5
 d94:	01176863          	bltu	a4,a7,da4 <memcpy+0x178>
 d98:	00c12403          	lw	s0,12(sp)
 d9c:	01010113          	addi	sp,sp,16
 da0:	00008067          	ret
 da4:	0005c783          	lbu	a5,0(a1)
 da8:	00170713          	addi	a4,a4,1
 dac:	00158593          	addi	a1,a1,1
 db0:	fef70fa3          	sb	a5,-1(a4)
 db4:	fee882e3          	beq	a7,a4,d98 <memcpy+0x16c>
 db8:	0005c783          	lbu	a5,0(a1)
 dbc:	00170713          	addi	a4,a4,1
 dc0:	00158593          	addi	a1,a1,1
 dc4:	fef70fa3          	sb	a5,-1(a4)
 dc8:	fce89ee3          	bne	a7,a4,da4 <memcpy+0x178>
 dcc:	fcdff06f          	j	d98 <memcpy+0x16c>
