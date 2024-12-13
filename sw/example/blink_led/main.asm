
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
  e0:	f8858593          	addi	a1,a1,-120 # 1064 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3a9c>
 194:	00112623          	sw	ra,12(sp)
 198:	794000ef          	jal	ra,92c <neorv32_uart0_setup>
 19c:	22c000ef          	jal	ra,3c8 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	730000ef          	jal	ra,8d4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	d7450513          	addi	a0,a0,-652 # d74 <__etext+0x24>
 1b0:	041000ef          	jal	ra,9f0 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <blink_led_c>
 1b8:	00001537          	lui	a0,0x1
 1bc:	d5050513          	addi	a0,a0,-688 # d50 <__etext>
 1c0:	031000ef          	jal	ra,9f0 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <blink_led_c>:
 1d4:	fb010113          	addi	sp,sp,-80
 1d8:	000015b7          	lui	a1,0x1
 1dc:	04812423          	sw	s0,72(sp)
 1e0:	01800613          	li	a2,24
 1e4:	d9058413          	addi	s0,a1,-624 # d90 <__etext+0x40>
 1e8:	01810513          	addi	a0,sp,24
 1ec:	d9058593          	addi	a1,a1,-624
 1f0:	04112623          	sw	ra,76(sp)
 1f4:	04912223          	sw	s1,68(sp)
 1f8:	05212023          	sw	s2,64(sp)
 1fc:	03312e23          	sw	s3,60(sp)
 200:	1ad000ef          	jal	ra,bac <memcpy>
 204:	01840593          	addi	a1,s0,24
 208:	01400613          	li	a2,20
 20c:	00410513          	addi	a0,sp,4
 210:	19d000ef          	jal	ra,bac <memcpy>
 214:	00000513          	li	a0,0
 218:	00000593          	li	a1,0
 21c:	1bc000ef          	jal	ra,3d8 <neorv32_gpio_port_set>
 220:	00000413          	li	s0,0
 224:	00000993          	li	s3,0
 228:	00100493          	li	s1,1
 22c:	00300913          	li	s2,3
 230:	1b8000ef          	jal	ra,3e8 <neorv32_gpio_port_get>
 234:	00157793          	andi	a5,a0,1
 238:	00155513          	srli	a0,a0,0x1
 23c:	00157513          	andi	a0,a0,1
 240:	02079463          	bnez	a5,268 <blink_led_c+0x94>
 244:	04050863          	beqz	a0,294 <blink_led_c+0xc0>
 248:	00000513          	li	a0,0
 24c:	00000593          	li	a1,0
 250:	188000ef          	jal	ra,3d8 <neorv32_gpio_port_set>
 254:	00000413          	li	s0,0
 258:	00140413          	addi	s0,s0,1
 25c:	0ff47413          	zext.b	s0,s0
 260:	00100993          	li	s3,1
 264:	0240006f          	j	288 <blink_led_c+0xb4>
 268:	02051663          	bnez	a0,294 <blink_led_c+0xc0>
 26c:	01000513          	li	a0,16
 270:	00000593          	li	a1,0
 274:	164000ef          	jal	ra,3d8 <neorv32_gpio_port_set>
 278:	00000413          	li	s0,0
 27c:	00140413          	addi	s0,s0,1
 280:	0ff47413          	zext.b	s0,s0
 284:	00000993          	li	s3,0
 288:	0c800513          	li	a0,200
 28c:	080000ef          	jal	ra,30c <neorv32_cpu_delay_ms>
 290:	fa1ff06f          	j	230 <blink_led_c+0x5c>
 294:	00241793          	slli	a5,s0,0x2
 298:	03078793          	addi	a5,a5,48
 29c:	002787b3          	add	a5,a5,sp
 2a0:	02998263          	beq	s3,s1,2c4 <blink_led_c+0xf0>
 2a4:	fe87a503          	lw	a0,-24(a5)
 2a8:	00000593          	li	a1,0
 2ac:	0f057513          	andi	a0,a0,240
 2b0:	128000ef          	jal	ra,3d8 <neorv32_gpio_port_set>
 2b4:	00500793          	li	a5,5
 2b8:	fcf412e3          	bne	s0,a5,27c <blink_led_c+0xa8>
 2bc:	00098413          	mv	s0,s3
 2c0:	fc9ff06f          	j	288 <blink_led_c+0xb4>
 2c4:	fd47a503          	lw	a0,-44(a5)
 2c8:	00000593          	li	a1,0
 2cc:	0f057513          	andi	a0,a0,240
 2d0:	108000ef          	jal	ra,3d8 <neorv32_gpio_port_set>
 2d4:	f88972e3          	bgeu	s2,s0,258 <blink_led_c+0x84>
 2d8:	00000413          	li	s0,0
 2dc:	fadff06f          	j	288 <blink_led_c+0xb4>

000002e0 <neorv32_cpu_get_systime>:
 2e0:	ff010113          	addi	sp,sp,-16
 2e4:	c81026f3          	rdtimeh	a3
 2e8:	c0102773          	rdtime	a4
 2ec:	c81027f3          	rdtimeh	a5
 2f0:	fed79ae3          	bne	a5,a3,2e4 <neorv32_cpu_get_systime+0x4>
 2f4:	00e12023          	sw	a4,0(sp)
 2f8:	00f12223          	sw	a5,4(sp)
 2fc:	00012503          	lw	a0,0(sp)
 300:	00412583          	lw	a1,4(sp)
 304:	01010113          	addi	sp,sp,16
 308:	00008067          	ret

0000030c <neorv32_cpu_delay_ms>:
 30c:	fd010113          	addi	sp,sp,-48
 310:	00a12623          	sw	a0,12(sp)
 314:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 318:	3e800593          	li	a1,1000
 31c:	02112623          	sw	ra,44(sp)
 320:	02812423          	sw	s0,40(sp)
 324:	02912223          	sw	s1,36(sp)
 328:	03212023          	sw	s2,32(sp)
 32c:	01312e23          	sw	s3,28(sp)
 330:	7d0000ef          	jal	ra,b00 <__hidden___udivsi3>
 334:	00c12603          	lw	a2,12(sp)
 338:	00000693          	li	a3,0
 33c:	00000593          	li	a1,0
 340:	72c000ef          	jal	ra,a6c <__muldi3>
 344:	00050413          	mv	s0,a0
 348:	00058993          	mv	s3,a1
 34c:	f95ff0ef          	jal	ra,2e0 <neorv32_cpu_get_systime>
 350:	00058913          	mv	s2,a1
 354:	00050493          	mv	s1,a0
 358:	f89ff0ef          	jal	ra,2e0 <neorv32_cpu_get_systime>
 35c:	00b96663          	bltu	s2,a1,368 <neorv32_cpu_delay_ms+0x5c>
 360:	05259263          	bne	a1,s2,3a4 <neorv32_cpu_delay_ms+0x98>
 364:	04a4f063          	bgeu	s1,a0,3a4 <neorv32_cpu_delay_ms+0x98>
 368:	008484b3          	add	s1,s1,s0
 36c:	0084b433          	sltu	s0,s1,s0
 370:	01390933          	add	s2,s2,s3
 374:	01240433          	add	s0,s0,s2
 378:	f69ff0ef          	jal	ra,2e0 <neorv32_cpu_get_systime>
 37c:	fe85eee3          	bltu	a1,s0,378 <neorv32_cpu_delay_ms+0x6c>
 380:	00b41463          	bne	s0,a1,388 <neorv32_cpu_delay_ms+0x7c>
 384:	fe956ae3          	bltu	a0,s1,378 <neorv32_cpu_delay_ms+0x6c>
 388:	02c12083          	lw	ra,44(sp)
 38c:	02812403          	lw	s0,40(sp)
 390:	02412483          	lw	s1,36(sp)
 394:	02012903          	lw	s2,32(sp)
 398:	01c12983          	lw	s3,28(sp)
 39c:	03010113          	addi	sp,sp,48
 3a0:	00008067          	ret
 3a4:	01c99993          	slli	s3,s3,0x1c
 3a8:	00445413          	srli	s0,s0,0x4
 3ac:	0089e433          	or	s0,s3,s0

000003b0 <__neorv32_cpu_delay_ms_start>:
 3b0:	00040a63          	beqz	s0,3c4 <__neorv32_cpu_delay_ms_end>
 3b4:	00040863          	beqz	s0,3c4 <__neorv32_cpu_delay_ms_end>
 3b8:	fff40413          	addi	s0,s0,-1
 3bc:	00000013          	nop
 3c0:	ff1ff06f          	j	3b0 <__neorv32_cpu_delay_ms_start>

000003c4 <__neorv32_cpu_delay_ms_end>:
 3c4:	fc5ff06f          	j	388 <neorv32_cpu_delay_ms+0x7c>

000003c8 <neorv32_gpio_available>:
 3c8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3cc:	01055513          	srli	a0,a0,0x10
 3d0:	00157513          	andi	a0,a0,1
 3d4:	00008067          	ret

000003d8 <neorv32_gpio_port_set>:
 3d8:	fc000793          	li	a5,-64
 3dc:	00a7a423          	sw	a0,8(a5)
 3e0:	00b7a623          	sw	a1,12(a5)
 3e4:	00008067          	ret

000003e8 <neorv32_gpio_port_get>:
 3e8:	fc000793          	li	a5,-64
 3ec:	0007a703          	lw	a4,0(a5)
 3f0:	ff010113          	addi	sp,sp,-16
 3f4:	00e12023          	sw	a4,0(sp)
 3f8:	0047a783          	lw	a5,4(a5)
 3fc:	00012503          	lw	a0,0(sp)
 400:	00f12223          	sw	a5,4(sp)
 404:	00412583          	lw	a1,4(sp)
 408:	01010113          	addi	sp,sp,16
 40c:	00008067          	ret

00000410 <__neorv32_rte_core>:
 410:	fc010113          	addi	sp,sp,-64
 414:	02112e23          	sw	ra,60(sp)
 418:	02512c23          	sw	t0,56(sp)
 41c:	02612a23          	sw	t1,52(sp)
 420:	02712823          	sw	t2,48(sp)
 424:	02a12623          	sw	a0,44(sp)
 428:	02b12423          	sw	a1,40(sp)
 42c:	02c12223          	sw	a2,36(sp)
 430:	02d12023          	sw	a3,32(sp)
 434:	00e12e23          	sw	a4,28(sp)
 438:	00f12c23          	sw	a5,24(sp)
 43c:	01012a23          	sw	a6,20(sp)
 440:	01112823          	sw	a7,16(sp)
 444:	01c12623          	sw	t3,12(sp)
 448:	01d12423          	sw	t4,8(sp)
 44c:	01e12223          	sw	t5,4(sp)
 450:	01f12023          	sw	t6,0(sp)
 454:	34102773          	csrr	a4,mepc
 458:	34071073          	csrw	mscratch,a4
 45c:	342027f3          	csrr	a5,mcause
 460:	0807c863          	bltz	a5,4f0 <__neorv32_rte_core+0xe0>
 464:	00071683          	lh	a3,0(a4)
 468:	00300593          	li	a1,3
 46c:	0036f693          	andi	a3,a3,3
 470:	00270613          	addi	a2,a4,2
 474:	00b69463          	bne	a3,a1,47c <__neorv32_rte_core+0x6c>
 478:	00470613          	addi	a2,a4,4
 47c:	34161073          	csrw	mepc,a2
 480:	00b00713          	li	a4,11
 484:	04f77a63          	bgeu	a4,a5,4d8 <__neorv32_rte_core+0xc8>
 488:	6c000793          	li	a5,1728
 48c:	000780e7          	jalr	a5
 490:	03c12083          	lw	ra,60(sp)
 494:	03812283          	lw	t0,56(sp)
 498:	03412303          	lw	t1,52(sp)
 49c:	03012383          	lw	t2,48(sp)
 4a0:	02c12503          	lw	a0,44(sp)
 4a4:	02812583          	lw	a1,40(sp)
 4a8:	02412603          	lw	a2,36(sp)
 4ac:	02012683          	lw	a3,32(sp)
 4b0:	01c12703          	lw	a4,28(sp)
 4b4:	01812783          	lw	a5,24(sp)
 4b8:	01412803          	lw	a6,20(sp)
 4bc:	01012883          	lw	a7,16(sp)
 4c0:	00c12e03          	lw	t3,12(sp)
 4c4:	00812e83          	lw	t4,8(sp)
 4c8:	00412f03          	lw	t5,4(sp)
 4cc:	00012f83          	lw	t6,0(sp)
 4d0:	04010113          	addi	sp,sp,64
 4d4:	30200073          	mret
 4d8:	00001737          	lui	a4,0x1
 4dc:	00279793          	slli	a5,a5,0x2
 4e0:	dbc70713          	addi	a4,a4,-580 # dbc <__etext+0x6c>
 4e4:	00e787b3          	add	a5,a5,a4
 4e8:	0007a783          	lw	a5,0(a5)
 4ec:	00078067          	jr	a5
 4f0:	80000737          	lui	a4,0x80000
 4f4:	ffd74713          	xori	a4,a4,-3
 4f8:	00e787b3          	add	a5,a5,a4
 4fc:	01c00713          	li	a4,28
 500:	f8f764e3          	bltu	a4,a5,488 <__neorv32_rte_core+0x78>
 504:	00001737          	lui	a4,0x1
 508:	00279793          	slli	a5,a5,0x2
 50c:	dec70713          	addi	a4,a4,-532 # dec <__etext+0x9c>
 510:	00e787b3          	add	a5,a5,a4
 514:	0007a783          	lw	a5,0(a5)
 518:	00078067          	jr	a5
 51c:	800007b7          	lui	a5,0x80000
 520:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 524:	f69ff06f          	j	48c <__neorv32_rte_core+0x7c>
 528:	800007b7          	lui	a5,0x80000
 52c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 530:	f5dff06f          	j	48c <__neorv32_rte_core+0x7c>
 534:	800007b7          	lui	a5,0x80000
 538:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 53c:	f51ff06f          	j	48c <__neorv32_rte_core+0x7c>
 540:	800007b7          	lui	a5,0x80000
 544:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 548:	f45ff06f          	j	48c <__neorv32_rte_core+0x7c>
 54c:	800007b7          	lui	a5,0x80000
 550:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 554:	f39ff06f          	j	48c <__neorv32_rte_core+0x7c>
 558:	800007b7          	lui	a5,0x80000
 55c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 560:	f2dff06f          	j	48c <__neorv32_rte_core+0x7c>
 564:	800007b7          	lui	a5,0x80000
 568:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 56c:	f21ff06f          	j	48c <__neorv32_rte_core+0x7c>
 570:	800007b7          	lui	a5,0x80000
 574:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 578:	f15ff06f          	j	48c <__neorv32_rte_core+0x7c>
 57c:	800007b7          	lui	a5,0x80000
 580:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 584:	f09ff06f          	j	48c <__neorv32_rte_core+0x7c>
 588:	800007b7          	lui	a5,0x80000
 58c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 590:	efdff06f          	j	48c <__neorv32_rte_core+0x7c>
 594:	800007b7          	lui	a5,0x80000
 598:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 59c:	ef1ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5a0:	800007b7          	lui	a5,0x80000
 5a4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 5a8:	ee5ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5ac:	800007b7          	lui	a5,0x80000
 5b0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 5b4:	ed9ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5b8:	800007b7          	lui	a5,0x80000
 5bc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 5c0:	ecdff06f          	j	48c <__neorv32_rte_core+0x7c>
 5c4:	800007b7          	lui	a5,0x80000
 5c8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 5cc:	ec1ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5d0:	800007b7          	lui	a5,0x80000
 5d4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 5d8:	eb5ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5dc:	800007b7          	lui	a5,0x80000
 5e0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 5e4:	ea9ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5e8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 5ec:	ea1ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5f0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 5f4:	e99ff06f          	j	48c <__neorv32_rte_core+0x7c>
 5f8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 5fc:	e91ff06f          	j	48c <__neorv32_rte_core+0x7c>
 600:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 604:	e89ff06f          	j	48c <__neorv32_rte_core+0x7c>
 608:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 60c:	e81ff06f          	j	48c <__neorv32_rte_core+0x7c>
 610:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 614:	e79ff06f          	j	48c <__neorv32_rte_core+0x7c>
 618:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 61c:	e71ff06f          	j	48c <__neorv32_rte_core+0x7c>
 620:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 624:	e69ff06f          	j	48c <__neorv32_rte_core+0x7c>
 628:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 62c:	e61ff06f          	j	48c <__neorv32_rte_core+0x7c>
 630:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 634:	e59ff06f          	j	48c <__neorv32_rte_core+0x7c>
 638:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 63c:	e51ff06f          	j	48c <__neorv32_rte_core+0x7c>
 640:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 644:	e49ff06f          	j	48c <__neorv32_rte_core+0x7c>
 648:	0000                	.2byte	0x0
 64a:	0000                	.2byte	0x0
 64c:	0000                	.2byte	0x0
 64e:	0000                	.2byte	0x0

00000650 <__neorv32_rte_print_hex_word>:
 650:	fe010113          	addi	sp,sp,-32
 654:	01212823          	sw	s2,16(sp)
 658:	00050913          	mv	s2,a0
 65c:	00001537          	lui	a0,0x1
 660:	00912a23          	sw	s1,20(sp)
 664:	e6050513          	addi	a0,a0,-416 # e60 <__etext+0x110>
 668:	000014b7          	lui	s1,0x1
 66c:	00812c23          	sw	s0,24(sp)
 670:	01312623          	sw	s3,12(sp)
 674:	00112e23          	sw	ra,28(sp)
 678:	01c00413          	li	s0,28
 67c:	374000ef          	jal	ra,9f0 <neorv32_uart0_print>
 680:	05448493          	addi	s1,s1,84 # 1054 <hex_symbols.0>
 684:	ffc00993          	li	s3,-4
 688:	008957b3          	srl	a5,s2,s0
 68c:	00f7f793          	andi	a5,a5,15
 690:	00f487b3          	add	a5,s1,a5
 694:	0007c503          	lbu	a0,0(a5)
 698:	ffc40413          	addi	s0,s0,-4
 69c:	33c000ef          	jal	ra,9d8 <neorv32_uart0_putc>
 6a0:	ff3414e3          	bne	s0,s3,688 <__neorv32_rte_print_hex_word+0x38>
 6a4:	01c12083          	lw	ra,28(sp)
 6a8:	01812403          	lw	s0,24(sp)
 6ac:	01412483          	lw	s1,20(sp)
 6b0:	01012903          	lw	s2,16(sp)
 6b4:	00c12983          	lw	s3,12(sp)
 6b8:	02010113          	addi	sp,sp,32
 6bc:	00008067          	ret

000006c0 <__neorv32_rte_debug_exc_handler>:
 6c0:	ff010113          	addi	sp,sp,-16
 6c4:	00112623          	sw	ra,12(sp)
 6c8:	00812423          	sw	s0,8(sp)
 6cc:	00912223          	sw	s1,4(sp)
 6d0:	24c000ef          	jal	ra,91c <neorv32_uart0_available>
 6d4:	1a050e63          	beqz	a0,890 <__neorv32_rte_debug_exc_handler+0x1d0>
 6d8:	00001537          	lui	a0,0x1
 6dc:	e6450513          	addi	a0,a0,-412 # e64 <__etext+0x114>
 6e0:	310000ef          	jal	ra,9f0 <neorv32_uart0_print>
 6e4:	34202473          	csrr	s0,mcause
 6e8:	00900713          	li	a4,9
 6ec:	00f47793          	andi	a5,s0,15
 6f0:	03078493          	addi	s1,a5,48
 6f4:	00f77463          	bgeu	a4,a5,6fc <__neorv32_rte_debug_exc_handler+0x3c>
 6f8:	05778493          	addi	s1,a5,87
 6fc:	00b00793          	li	a5,11
 700:	0087ee63          	bltu	a5,s0,71c <__neorv32_rte_debug_exc_handler+0x5c>
 704:	00001737          	lui	a4,0x1
 708:	00241793          	slli	a5,s0,0x2
 70c:	02470713          	addi	a4,a4,36 # 1024 <__etext+0x2d4>
 710:	00e787b3          	add	a5,a5,a4
 714:	0007a783          	lw	a5,0(a5)
 718:	00078067          	jr	a5
 71c:	800007b7          	lui	a5,0x80000
 720:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 724:	14e40463          	beq	s0,a4,86c <__neorv32_rte_debug_exc_handler+0x1ac>
 728:	02876663          	bltu	a4,s0,754 <__neorv32_rte_debug_exc_handler+0x94>
 72c:	00378713          	addi	a4,a5,3
 730:	12e40263          	beq	s0,a4,854 <__neorv32_rte_debug_exc_handler+0x194>
 734:	00778793          	addi	a5,a5,7
 738:	12f40463          	beq	s0,a5,860 <__neorv32_rte_debug_exc_handler+0x1a0>
 73c:	00001537          	lui	a0,0x1
 740:	fc450513          	addi	a0,a0,-60 # fc4 <__etext+0x274>
 744:	2ac000ef          	jal	ra,9f0 <neorv32_uart0_print>
 748:	00040513          	mv	a0,s0
 74c:	f05ff0ef          	jal	ra,650 <__neorv32_rte_print_hex_word>
 750:	0280006f          	j	778 <__neorv32_rte_debug_exc_handler+0xb8>
 754:	ff07c793          	xori	a5,a5,-16
 758:	00f407b3          	add	a5,s0,a5
 75c:	00f00713          	li	a4,15
 760:	fcf76ee3          	bltu	a4,a5,73c <__neorv32_rte_debug_exc_handler+0x7c>
 764:	00001537          	lui	a0,0x1
 768:	fb450513          	addi	a0,a0,-76 # fb4 <__etext+0x264>
 76c:	284000ef          	jal	ra,9f0 <neorv32_uart0_print>
 770:	00048513          	mv	a0,s1
 774:	264000ef          	jal	ra,9d8 <neorv32_uart0_putc>
 778:	00001537          	lui	a0,0x1
 77c:	00850513          	addi	a0,a0,8 # 1008 <__etext+0x2b8>
 780:	270000ef          	jal	ra,9f0 <neorv32_uart0_print>
 784:	34002573          	csrr	a0,mscratch
 788:	ec9ff0ef          	jal	ra,650 <__neorv32_rte_print_hex_word>
 78c:	00001537          	lui	a0,0x1
 790:	01050513          	addi	a0,a0,16 # 1010 <__etext+0x2c0>
 794:	25c000ef          	jal	ra,9f0 <neorv32_uart0_print>
 798:	34302573          	csrr	a0,mtval
 79c:	eb5ff0ef          	jal	ra,650 <__neorv32_rte_print_hex_word>
 7a0:	00812403          	lw	s0,8(sp)
 7a4:	00c12083          	lw	ra,12(sp)
 7a8:	00412483          	lw	s1,4(sp)
 7ac:	00001537          	lui	a0,0x1
 7b0:	01c50513          	addi	a0,a0,28 # 101c <__etext+0x2cc>
 7b4:	01010113          	addi	sp,sp,16
 7b8:	2380006f          	j	9f0 <neorv32_uart0_print>
 7bc:	00001537          	lui	a0,0x1
 7c0:	e6c50513          	addi	a0,a0,-404 # e6c <__etext+0x11c>
 7c4:	22c000ef          	jal	ra,9f0 <neorv32_uart0_print>
 7c8:	fb1ff06f          	j	778 <__neorv32_rte_debug_exc_handler+0xb8>
 7cc:	00001537          	lui	a0,0x1
 7d0:	e8c50513          	addi	a0,a0,-372 # e8c <__etext+0x13c>
 7d4:	21c000ef          	jal	ra,9f0 <neorv32_uart0_print>
 7d8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 7dc:	0a07d463          	bgez	a5,884 <__neorv32_rte_debug_exc_handler+0x1c4>
 7e0:	0017f793          	andi	a5,a5,1
 7e4:	08078a63          	beqz	a5,878 <__neorv32_rte_debug_exc_handler+0x1b8>
 7e8:	00001537          	lui	a0,0x1
 7ec:	fdc50513          	addi	a0,a0,-36 # fdc <__etext+0x28c>
 7f0:	fd5ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 7f4:	00001537          	lui	a0,0x1
 7f8:	ea850513          	addi	a0,a0,-344 # ea8 <__etext+0x158>
 7fc:	fc9ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 800:	00001537          	lui	a0,0x1
 804:	ebc50513          	addi	a0,a0,-324 # ebc <__etext+0x16c>
 808:	fbdff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 80c:	00001537          	lui	a0,0x1
 810:	ec850513          	addi	a0,a0,-312 # ec8 <__etext+0x178>
 814:	fb1ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 818:	00001537          	lui	a0,0x1
 81c:	ee050513          	addi	a0,a0,-288 # ee0 <__etext+0x190>
 820:	fb5ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x114>
 824:	00001537          	lui	a0,0x1
 828:	ef450513          	addi	a0,a0,-268 # ef4 <__etext+0x1a4>
 82c:	f99ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 830:	00001537          	lui	a0,0x1
 834:	f1050513          	addi	a0,a0,-240 # f10 <__etext+0x1c0>
 838:	f9dff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x114>
 83c:	00001537          	lui	a0,0x1
 840:	f2450513          	addi	a0,a0,-220 # f24 <__etext+0x1d4>
 844:	f81ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 848:	00001537          	lui	a0,0x1
 84c:	f4450513          	addi	a0,a0,-188 # f44 <__etext+0x1f4>
 850:	f75ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 854:	00001537          	lui	a0,0x1
 858:	f6450513          	addi	a0,a0,-156 # f64 <__etext+0x214>
 85c:	f69ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 860:	00001537          	lui	a0,0x1
 864:	f8050513          	addi	a0,a0,-128 # f80 <__etext+0x230>
 868:	f5dff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 86c:	00001537          	lui	a0,0x1
 870:	f9850513          	addi	a0,a0,-104 # f98 <__etext+0x248>
 874:	f51ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 878:	00001537          	lui	a0,0x1
 87c:	fec50513          	addi	a0,a0,-20 # fec <__etext+0x29c>
 880:	f45ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 884:	00001537          	lui	a0,0x1
 888:	ffc50513          	addi	a0,a0,-4 # ffc <__etext+0x2ac>
 88c:	f39ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x104>
 890:	00c12083          	lw	ra,12(sp)
 894:	00812403          	lw	s0,8(sp)
 898:	00412483          	lw	s1,4(sp)
 89c:	01010113          	addi	sp,sp,16
 8a0:	00008067          	ret

000008a4 <neorv32_rte_exception_uninstall>:
 8a4:	01f00793          	li	a5,31
 8a8:	02a7e263          	bltu	a5,a0,8cc <neorv32_rte_exception_uninstall+0x28>
 8ac:	800007b7          	lui	a5,0x80000
 8b0:	00251513          	slli	a0,a0,0x2
 8b4:	00078793          	mv	a5,a5
 8b8:	00a787b3          	add	a5,a5,a0
 8bc:	6c000713          	li	a4,1728
 8c0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 8c4:	00000513          	li	a0,0
 8c8:	00008067          	ret
 8cc:	00100513          	li	a0,1
 8d0:	00008067          	ret

000008d4 <neorv32_rte_setup>:
 8d4:	ff010113          	addi	sp,sp,-16
 8d8:	00112623          	sw	ra,12(sp)
 8dc:	00812423          	sw	s0,8(sp)
 8e0:	00912223          	sw	s1,4(sp)
 8e4:	41000793          	li	a5,1040
 8e8:	30579073          	csrw	mtvec,a5
 8ec:	00000413          	li	s0,0
 8f0:	01d00493          	li	s1,29
 8f4:	00040513          	mv	a0,s0
 8f8:	00140413          	addi	s0,s0,1
 8fc:	0ff47413          	zext.b	s0,s0
 900:	fa5ff0ef          	jal	ra,8a4 <neorv32_rte_exception_uninstall>
 904:	fe9418e3          	bne	s0,s1,8f4 <neorv32_rte_setup+0x20>
 908:	00c12083          	lw	ra,12(sp)
 90c:	00812403          	lw	s0,8(sp)
 910:	00412483          	lw	s1,4(sp)
 914:	01010113          	addi	sp,sp,16
 918:	00008067          	ret

0000091c <neorv32_uart0_available>:
 91c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 920:	01255513          	srli	a0,a0,0x12
 924:	00157513          	andi	a0,a0,1
 928:	00008067          	ret

0000092c <neorv32_uart0_setup>:
 92c:	ff010113          	addi	sp,sp,-16
 930:	00812423          	sw	s0,8(sp)
 934:	00912223          	sw	s1,4(sp)
 938:	00112623          	sw	ra,12(sp)
 93c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 940:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 944:	00058413          	mv	s0,a1
 948:	00151593          	slli	a1,a0,0x1
 94c:	00078513          	mv	a0,a5
 950:	00060493          	mv	s1,a2
 954:	1ac000ef          	jal	ra,b00 <__hidden___udivsi3>
 958:	01051513          	slli	a0,a0,0x10
 95c:	000017b7          	lui	a5,0x1
 960:	01055513          	srli	a0,a0,0x10
 964:	00000713          	li	a4,0
 968:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x2ae>
 96c:	04a7e463          	bltu	a5,a0,9b4 <neorv32_uart0_setup+0x88>
 970:	0034f493          	andi	s1,s1,3
 974:	01449493          	slli	s1,s1,0x14
 978:	00347413          	andi	s0,s0,3
 97c:	fff50793          	addi	a5,a0,-1
 980:	0097e7b3          	or	a5,a5,s1
 984:	01641413          	slli	s0,s0,0x16
 988:	0087e7b3          	or	a5,a5,s0
 98c:	01871713          	slli	a4,a4,0x18
 990:	00c12083          	lw	ra,12(sp)
 994:	00812403          	lw	s0,8(sp)
 998:	00e7e7b3          	or	a5,a5,a4
 99c:	10000737          	lui	a4,0x10000
 9a0:	00e7e7b3          	or	a5,a5,a4
 9a4:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 9a8:	00412483          	lw	s1,4(sp)
 9ac:	01010113          	addi	sp,sp,16
 9b0:	00008067          	ret
 9b4:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffef9a>
 9b8:	0fd6f693          	andi	a3,a3,253
 9bc:	00069a63          	bnez	a3,9d0 <neorv32_uart0_setup+0xa4>
 9c0:	00355513          	srli	a0,a0,0x3
 9c4:	00170713          	addi	a4,a4,1
 9c8:	0ff77713          	zext.b	a4,a4
 9cc:	fa1ff06f          	j	96c <neorv32_uart0_setup+0x40>
 9d0:	00155513          	srli	a0,a0,0x1
 9d4:	ff1ff06f          	j	9c4 <neorv32_uart0_setup+0x98>

000009d8 <neorv32_uart0_putc>:
 9d8:	00040737          	lui	a4,0x40
 9dc:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 9e0:	00e7f7b3          	and	a5,a5,a4
 9e4:	fe079ce3          	bnez	a5,9dc <neorv32_uart0_putc+0x4>
 9e8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 9ec:	00008067          	ret

000009f0 <neorv32_uart0_print>:
 9f0:	ff010113          	addi	sp,sp,-16
 9f4:	00812423          	sw	s0,8(sp)
 9f8:	01212023          	sw	s2,0(sp)
 9fc:	00112623          	sw	ra,12(sp)
 a00:	00912223          	sw	s1,4(sp)
 a04:	00050413          	mv	s0,a0
 a08:	00a00913          	li	s2,10
 a0c:	00044483          	lbu	s1,0(s0)
 a10:	00140413          	addi	s0,s0,1
 a14:	00049e63          	bnez	s1,a30 <neorv32_uart0_print+0x40>
 a18:	00c12083          	lw	ra,12(sp)
 a1c:	00812403          	lw	s0,8(sp)
 a20:	00412483          	lw	s1,4(sp)
 a24:	00012903          	lw	s2,0(sp)
 a28:	01010113          	addi	sp,sp,16
 a2c:	00008067          	ret
 a30:	01249663          	bne	s1,s2,a3c <neorv32_uart0_print+0x4c>
 a34:	00d00513          	li	a0,13
 a38:	fa1ff0ef          	jal	ra,9d8 <neorv32_uart0_putc>
 a3c:	00048513          	mv	a0,s1
 a40:	f99ff0ef          	jal	ra,9d8 <neorv32_uart0_putc>
 a44:	fc9ff06f          	j	a0c <neorv32_uart0_print+0x1c>

00000a48 <__mulsi3>:
 a48:	00050613          	mv	a2,a0
 a4c:	00000513          	li	a0,0
 a50:	0015f693          	andi	a3,a1,1
 a54:	00068463          	beqz	a3,a5c <__mulsi3+0x14>
 a58:	00c50533          	add	a0,a0,a2
 a5c:	0015d593          	srli	a1,a1,0x1
 a60:	00161613          	slli	a2,a2,0x1
 a64:	fe0596e3          	bnez	a1,a50 <__mulsi3+0x8>
 a68:	00008067          	ret

00000a6c <__muldi3>:
 a6c:	00050e13          	mv	t3,a0
 a70:	ff010113          	addi	sp,sp,-16
 a74:	00068313          	mv	t1,a3
 a78:	00112623          	sw	ra,12(sp)
 a7c:	00060513          	mv	a0,a2
 a80:	000e0893          	mv	a7,t3
 a84:	00060693          	mv	a3,a2
 a88:	00000713          	li	a4,0
 a8c:	00000793          	li	a5,0
 a90:	00000813          	li	a6,0
 a94:	0016fe93          	andi	t4,a3,1
 a98:	00171613          	slli	a2,a4,0x1
 a9c:	000e8a63          	beqz	t4,ab0 <__muldi3+0x44>
 aa0:	01088833          	add	a6,a7,a6
 aa4:	00e787b3          	add	a5,a5,a4
 aa8:	01183733          	sltu	a4,a6,a7
 aac:	00f707b3          	add	a5,a4,a5
 ab0:	01f8d713          	srli	a4,a7,0x1f
 ab4:	0016d693          	srli	a3,a3,0x1
 ab8:	00e66733          	or	a4,a2,a4
 abc:	00189893          	slli	a7,a7,0x1
 ac0:	fc069ae3          	bnez	a3,a94 <__muldi3+0x28>
 ac4:	00058663          	beqz	a1,ad0 <__muldi3+0x64>
 ac8:	f81ff0ef          	jal	ra,a48 <__mulsi3>
 acc:	00a787b3          	add	a5,a5,a0
 ad0:	00030a63          	beqz	t1,ae4 <__muldi3+0x78>
 ad4:	000e0513          	mv	a0,t3
 ad8:	00030593          	mv	a1,t1
 adc:	f6dff0ef          	jal	ra,a48 <__mulsi3>
 ae0:	00f507b3          	add	a5,a0,a5
 ae4:	00c12083          	lw	ra,12(sp)
 ae8:	00080513          	mv	a0,a6
 aec:	00078593          	mv	a1,a5
 af0:	01010113          	addi	sp,sp,16
 af4:	00008067          	ret

00000af8 <__divsi3>:
 af8:	06054063          	bltz	a0,b58 <__umodsi3+0x10>
 afc:	0605c663          	bltz	a1,b68 <__umodsi3+0x20>

00000b00 <__hidden___udivsi3>:
 b00:	00058613          	mv	a2,a1
 b04:	00050593          	mv	a1,a0
 b08:	fff00513          	li	a0,-1
 b0c:	02060c63          	beqz	a2,b44 <__hidden___udivsi3+0x44>
 b10:	00100693          	li	a3,1
 b14:	00b67a63          	bgeu	a2,a1,b28 <__hidden___udivsi3+0x28>
 b18:	00c05863          	blez	a2,b28 <__hidden___udivsi3+0x28>
 b1c:	00161613          	slli	a2,a2,0x1
 b20:	00169693          	slli	a3,a3,0x1
 b24:	feb66ae3          	bltu	a2,a1,b18 <__hidden___udivsi3+0x18>
 b28:	00000513          	li	a0,0
 b2c:	00c5e663          	bltu	a1,a2,b38 <__hidden___udivsi3+0x38>
 b30:	40c585b3          	sub	a1,a1,a2
 b34:	00d56533          	or	a0,a0,a3
 b38:	0016d693          	srli	a3,a3,0x1
 b3c:	00165613          	srli	a2,a2,0x1
 b40:	fe0696e3          	bnez	a3,b2c <__hidden___udivsi3+0x2c>
 b44:	00008067          	ret

00000b48 <__umodsi3>:
 b48:	00008293          	mv	t0,ra
 b4c:	fb5ff0ef          	jal	ra,b00 <__hidden___udivsi3>
 b50:	00058513          	mv	a0,a1
 b54:	00028067          	jr	t0
 b58:	40a00533          	neg	a0,a0
 b5c:	00b04863          	bgtz	a1,b6c <__umodsi3+0x24>
 b60:	40b005b3          	neg	a1,a1
 b64:	f9dff06f          	j	b00 <__hidden___udivsi3>
 b68:	40b005b3          	neg	a1,a1
 b6c:	00008293          	mv	t0,ra
 b70:	f91ff0ef          	jal	ra,b00 <__hidden___udivsi3>
 b74:	40a00533          	neg	a0,a0
 b78:	00028067          	jr	t0

00000b7c <__modsi3>:
 b7c:	00008293          	mv	t0,ra
 b80:	0005ca63          	bltz	a1,b94 <__modsi3+0x18>
 b84:	00054c63          	bltz	a0,b9c <__modsi3+0x20>
 b88:	f79ff0ef          	jal	ra,b00 <__hidden___udivsi3>
 b8c:	00058513          	mv	a0,a1
 b90:	00028067          	jr	t0
 b94:	40b005b3          	neg	a1,a1
 b98:	fe0558e3          	bgez	a0,b88 <__modsi3+0xc>
 b9c:	40a00533          	neg	a0,a0
 ba0:	f61ff0ef          	jal	ra,b00 <__hidden___udivsi3>
 ba4:	40b00533          	neg	a0,a1
 ba8:	00028067          	jr	t0

00000bac <memcpy>:
 bac:	00b547b3          	xor	a5,a0,a1
 bb0:	0037f793          	andi	a5,a5,3
 bb4:	00c508b3          	add	a7,a0,a2
 bb8:	06079463          	bnez	a5,c20 <memcpy+0x74>
 bbc:	00300793          	li	a5,3
 bc0:	06c7f063          	bgeu	a5,a2,c20 <memcpy+0x74>
 bc4:	00357793          	andi	a5,a0,3
 bc8:	00050713          	mv	a4,a0
 bcc:	06079a63          	bnez	a5,c40 <memcpy+0x94>
 bd0:	ffc8f613          	andi	a2,a7,-4
 bd4:	40e606b3          	sub	a3,a2,a4
 bd8:	02000793          	li	a5,32
 bdc:	08d7ce63          	blt	a5,a3,c78 <memcpy+0xcc>
 be0:	00058693          	mv	a3,a1
 be4:	00070793          	mv	a5,a4
 be8:	02c77863          	bgeu	a4,a2,c18 <memcpy+0x6c>
 bec:	0006a803          	lw	a6,0(a3)
 bf0:	00478793          	addi	a5,a5,4
 bf4:	00468693          	addi	a3,a3,4
 bf8:	ff07ae23          	sw	a6,-4(a5)
 bfc:	fec7e8e3          	bltu	a5,a2,bec <memcpy+0x40>
 c00:	fff60793          	addi	a5,a2,-1
 c04:	40e787b3          	sub	a5,a5,a4
 c08:	ffc7f793          	andi	a5,a5,-4
 c0c:	00478793          	addi	a5,a5,4
 c10:	00f70733          	add	a4,a4,a5
 c14:	00f585b3          	add	a1,a1,a5
 c18:	01176863          	bltu	a4,a7,c28 <memcpy+0x7c>
 c1c:	00008067          	ret
 c20:	00050713          	mv	a4,a0
 c24:	05157863          	bgeu	a0,a7,c74 <memcpy+0xc8>
 c28:	0005c783          	lbu	a5,0(a1)
 c2c:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ef9d>
 c30:	00158593          	addi	a1,a1,1
 c34:	fef70fa3          	sb	a5,-1(a4)
 c38:	fee898e3          	bne	a7,a4,c28 <memcpy+0x7c>
 c3c:	00008067          	ret
 c40:	0005c683          	lbu	a3,0(a1)
 c44:	00170713          	addi	a4,a4,1
 c48:	00377793          	andi	a5,a4,3
 c4c:	fed70fa3          	sb	a3,-1(a4)
 c50:	00158593          	addi	a1,a1,1
 c54:	f6078ee3          	beqz	a5,bd0 <memcpy+0x24>
 c58:	0005c683          	lbu	a3,0(a1)
 c5c:	00170713          	addi	a4,a4,1
 c60:	00377793          	andi	a5,a4,3
 c64:	fed70fa3          	sb	a3,-1(a4)
 c68:	00158593          	addi	a1,a1,1
 c6c:	fc079ae3          	bnez	a5,c40 <memcpy+0x94>
 c70:	f61ff06f          	j	bd0 <memcpy+0x24>
 c74:	00008067          	ret
 c78:	ff010113          	addi	sp,sp,-16
 c7c:	00812623          	sw	s0,12(sp)
 c80:	02000413          	li	s0,32
 c84:	0005a383          	lw	t2,0(a1)
 c88:	0045a283          	lw	t0,4(a1)
 c8c:	0085af83          	lw	t6,8(a1)
 c90:	00c5af03          	lw	t5,12(a1)
 c94:	0105ae83          	lw	t4,16(a1)
 c98:	0145ae03          	lw	t3,20(a1)
 c9c:	0185a303          	lw	t1,24(a1)
 ca0:	01c5a803          	lw	a6,28(a1)
 ca4:	0205a683          	lw	a3,32(a1)
 ca8:	02470713          	addi	a4,a4,36
 cac:	40e607b3          	sub	a5,a2,a4
 cb0:	fc772e23          	sw	t2,-36(a4)
 cb4:	fe572023          	sw	t0,-32(a4)
 cb8:	fff72223          	sw	t6,-28(a4)
 cbc:	ffe72423          	sw	t5,-24(a4)
 cc0:	ffd72623          	sw	t4,-20(a4)
 cc4:	ffc72823          	sw	t3,-16(a4)
 cc8:	fe672a23          	sw	t1,-12(a4)
 ccc:	ff072c23          	sw	a6,-8(a4)
 cd0:	fed72e23          	sw	a3,-4(a4)
 cd4:	02458593          	addi	a1,a1,36
 cd8:	faf446e3          	blt	s0,a5,c84 <memcpy+0xd8>
 cdc:	00058693          	mv	a3,a1
 ce0:	00070793          	mv	a5,a4
 ce4:	02c77863          	bgeu	a4,a2,d14 <memcpy+0x168>
 ce8:	0006a803          	lw	a6,0(a3)
 cec:	00478793          	addi	a5,a5,4
 cf0:	00468693          	addi	a3,a3,4
 cf4:	ff07ae23          	sw	a6,-4(a5)
 cf8:	fec7e8e3          	bltu	a5,a2,ce8 <memcpy+0x13c>
 cfc:	fff60793          	addi	a5,a2,-1
 d00:	40e787b3          	sub	a5,a5,a4
 d04:	ffc7f793          	andi	a5,a5,-4
 d08:	00478793          	addi	a5,a5,4
 d0c:	00f70733          	add	a4,a4,a5
 d10:	00f585b3          	add	a1,a1,a5
 d14:	01176863          	bltu	a4,a7,d24 <memcpy+0x178>
 d18:	00c12403          	lw	s0,12(sp)
 d1c:	01010113          	addi	sp,sp,16
 d20:	00008067          	ret
 d24:	0005c783          	lbu	a5,0(a1)
 d28:	00170713          	addi	a4,a4,1
 d2c:	00158593          	addi	a1,a1,1
 d30:	fef70fa3          	sb	a5,-1(a4)
 d34:	fee882e3          	beq	a7,a4,d18 <memcpy+0x16c>
 d38:	0005c783          	lbu	a5,0(a1)
 d3c:	00170713          	addi	a4,a4,1
 d40:	00158593          	addi	a1,a1,1
 d44:	fef70fa3          	sb	a5,-1(a4)
 d48:	fce89ee3          	bne	a7,a4,d24 <memcpy+0x178>
 d4c:	fcdff06f          	j	d18 <memcpy+0x16c>
