
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
  e0:	cd858593          	addi	a1,a1,-808 # db4 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3d4c>
 194:	00112623          	sw	ra,12(sp)
 198:	6b4000ef          	jal	ra,84c <neorv32_uart0_setup>
 19c:	16c000ef          	jal	ra,308 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	650000ef          	jal	ra,7f4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	af050513          	addi	a0,a0,-1296 # af0 <__etext+0x24>
 1b0:	760000ef          	jal	ra,910 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <blink_led_c>
 1b8:	00001537          	lui	a0,0x1
 1bc:	acc50513          	addi	a0,a0,-1332 # acc <__etext>
 1c0:	750000ef          	jal	ra,910 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <blink_led_c>:
 1d4:	ff010113          	addi	sp,sp,-16
 1d8:	00000513          	li	a0,0
 1dc:	00000593          	li	a1,0
 1e0:	00812423          	sw	s0,8(sp)
 1e4:	00912223          	sw	s1,4(sp)
 1e8:	00112623          	sw	ra,12(sp)
 1ec:	01000413          	li	s0,16
 1f0:	128000ef          	jal	ra,318 <neorv32_gpio_port_set>
 1f4:	00000493          	li	s1,0
 1f8:	00040513          	mv	a0,s0
 1fc:	00048593          	mv	a1,s1
 200:	118000ef          	jal	ra,318 <neorv32_gpio_port_set>
 204:	0c800513          	li	a0,200
 208:	044000ef          	jal	ra,24c <neorv32_cpu_delay_ms>
 20c:	01040793          	addi	a5,s0,16
 210:	0087b733          	sltu	a4,a5,s0
 214:	009704b3          	add	s1,a4,s1
 218:	00078413          	mv	s0,a5
 21c:	fddff06f          	j	1f8 <blink_led_c+0x24>

00000220 <neorv32_cpu_get_systime>:
 220:	ff010113          	addi	sp,sp,-16
 224:	c81026f3          	rdtimeh	a3
 228:	c0102773          	rdtime	a4
 22c:	c81027f3          	rdtimeh	a5
 230:	fed79ae3          	bne	a5,a3,224 <neorv32_cpu_get_systime+0x4>
 234:	00e12023          	sw	a4,0(sp)
 238:	00f12223          	sw	a5,4(sp)
 23c:	00012503          	lw	a0,0(sp)
 240:	00412583          	lw	a1,4(sp)
 244:	01010113          	addi	sp,sp,16
 248:	00008067          	ret

0000024c <neorv32_cpu_delay_ms>:
 24c:	fd010113          	addi	sp,sp,-48
 250:	00a12623          	sw	a0,12(sp)
 254:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 258:	3e800593          	li	a1,1000
 25c:	02112623          	sw	ra,44(sp)
 260:	02812423          	sw	s0,40(sp)
 264:	02912223          	sw	s1,36(sp)
 268:	03212023          	sw	s2,32(sp)
 26c:	01312e23          	sw	s3,28(sp)
 270:	7b0000ef          	jal	ra,a20 <__hidden___udivsi3>
 274:	00c12603          	lw	a2,12(sp)
 278:	00000693          	li	a3,0
 27c:	00000593          	li	a1,0
 280:	70c000ef          	jal	ra,98c <__muldi3>
 284:	00050413          	mv	s0,a0
 288:	00058993          	mv	s3,a1
 28c:	f95ff0ef          	jal	ra,220 <neorv32_cpu_get_systime>
 290:	00058913          	mv	s2,a1
 294:	00050493          	mv	s1,a0
 298:	f89ff0ef          	jal	ra,220 <neorv32_cpu_get_systime>
 29c:	00b96663          	bltu	s2,a1,2a8 <neorv32_cpu_delay_ms+0x5c>
 2a0:	05259263          	bne	a1,s2,2e4 <neorv32_cpu_delay_ms+0x98>
 2a4:	04a4f063          	bgeu	s1,a0,2e4 <neorv32_cpu_delay_ms+0x98>
 2a8:	008484b3          	add	s1,s1,s0
 2ac:	0084b433          	sltu	s0,s1,s0
 2b0:	01390933          	add	s2,s2,s3
 2b4:	01240433          	add	s0,s0,s2
 2b8:	f69ff0ef          	jal	ra,220 <neorv32_cpu_get_systime>
 2bc:	fe85eee3          	bltu	a1,s0,2b8 <neorv32_cpu_delay_ms+0x6c>
 2c0:	00b41463          	bne	s0,a1,2c8 <neorv32_cpu_delay_ms+0x7c>
 2c4:	fe956ae3          	bltu	a0,s1,2b8 <neorv32_cpu_delay_ms+0x6c>
 2c8:	02c12083          	lw	ra,44(sp)
 2cc:	02812403          	lw	s0,40(sp)
 2d0:	02412483          	lw	s1,36(sp)
 2d4:	02012903          	lw	s2,32(sp)
 2d8:	01c12983          	lw	s3,28(sp)
 2dc:	03010113          	addi	sp,sp,48
 2e0:	00008067          	ret
 2e4:	01c99993          	slli	s3,s3,0x1c
 2e8:	00445413          	srli	s0,s0,0x4
 2ec:	0089e433          	or	s0,s3,s0

000002f0 <__neorv32_cpu_delay_ms_start>:
 2f0:	00040a63          	beqz	s0,304 <__neorv32_cpu_delay_ms_end>
 2f4:	00040863          	beqz	s0,304 <__neorv32_cpu_delay_ms_end>
 2f8:	fff40413          	addi	s0,s0,-1
 2fc:	00000013          	nop
 300:	ff1ff06f          	j	2f0 <__neorv32_cpu_delay_ms_start>

00000304 <__neorv32_cpu_delay_ms_end>:
 304:	fc5ff06f          	j	2c8 <neorv32_cpu_delay_ms+0x7c>

00000308 <neorv32_gpio_available>:
 308:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 30c:	01055513          	srli	a0,a0,0x10
 310:	00157513          	andi	a0,a0,1
 314:	00008067          	ret

00000318 <neorv32_gpio_port_set>:
 318:	fc000793          	li	a5,-64
 31c:	00a7a423          	sw	a0,8(a5)
 320:	00b7a623          	sw	a1,12(a5)
 324:	00008067          	ret
 328:	0000                	.2byte	0x0
 32a:	0000                	.2byte	0x0
 32c:	0000                	.2byte	0x0
 32e:	0000                	.2byte	0x0

00000330 <__neorv32_rte_core>:
 330:	fc010113          	addi	sp,sp,-64
 334:	02112e23          	sw	ra,60(sp)
 338:	02512c23          	sw	t0,56(sp)
 33c:	02612a23          	sw	t1,52(sp)
 340:	02712823          	sw	t2,48(sp)
 344:	02a12623          	sw	a0,44(sp)
 348:	02b12423          	sw	a1,40(sp)
 34c:	02c12223          	sw	a2,36(sp)
 350:	02d12023          	sw	a3,32(sp)
 354:	00e12e23          	sw	a4,28(sp)
 358:	00f12c23          	sw	a5,24(sp)
 35c:	01012a23          	sw	a6,20(sp)
 360:	01112823          	sw	a7,16(sp)
 364:	01c12623          	sw	t3,12(sp)
 368:	01d12423          	sw	t4,8(sp)
 36c:	01e12223          	sw	t5,4(sp)
 370:	01f12023          	sw	t6,0(sp)
 374:	34102773          	csrr	a4,mepc
 378:	34071073          	csrw	mscratch,a4
 37c:	342027f3          	csrr	a5,mcause
 380:	0807c863          	bltz	a5,410 <__neorv32_rte_core+0xe0>
 384:	00071683          	lh	a3,0(a4)
 388:	00300593          	li	a1,3
 38c:	0036f693          	andi	a3,a3,3
 390:	00270613          	addi	a2,a4,2
 394:	00b69463          	bne	a3,a1,39c <__neorv32_rte_core+0x6c>
 398:	00470613          	addi	a2,a4,4
 39c:	34161073          	csrw	mepc,a2
 3a0:	00b00713          	li	a4,11
 3a4:	04f77a63          	bgeu	a4,a5,3f8 <__neorv32_rte_core+0xc8>
 3a8:	5e000793          	li	a5,1504
 3ac:	000780e7          	jalr	a5
 3b0:	03c12083          	lw	ra,60(sp)
 3b4:	03812283          	lw	t0,56(sp)
 3b8:	03412303          	lw	t1,52(sp)
 3bc:	03012383          	lw	t2,48(sp)
 3c0:	02c12503          	lw	a0,44(sp)
 3c4:	02812583          	lw	a1,40(sp)
 3c8:	02412603          	lw	a2,36(sp)
 3cc:	02012683          	lw	a3,32(sp)
 3d0:	01c12703          	lw	a4,28(sp)
 3d4:	01812783          	lw	a5,24(sp)
 3d8:	01412803          	lw	a6,20(sp)
 3dc:	01012883          	lw	a7,16(sp)
 3e0:	00c12e03          	lw	t3,12(sp)
 3e4:	00812e83          	lw	t4,8(sp)
 3e8:	00412f03          	lw	t5,4(sp)
 3ec:	00012f83          	lw	t6,0(sp)
 3f0:	04010113          	addi	sp,sp,64
 3f4:	30200073          	mret
 3f8:	00001737          	lui	a4,0x1
 3fc:	00279793          	slli	a5,a5,0x2
 400:	b0c70713          	addi	a4,a4,-1268 # b0c <__etext+0x40>
 404:	00e787b3          	add	a5,a5,a4
 408:	0007a783          	lw	a5,0(a5)
 40c:	00078067          	jr	a5
 410:	80000737          	lui	a4,0x80000
 414:	ffd74713          	xori	a4,a4,-3
 418:	00e787b3          	add	a5,a5,a4
 41c:	01c00713          	li	a4,28
 420:	f8f764e3          	bltu	a4,a5,3a8 <__neorv32_rte_core+0x78>
 424:	00001737          	lui	a4,0x1
 428:	00279793          	slli	a5,a5,0x2
 42c:	b3c70713          	addi	a4,a4,-1220 # b3c <__etext+0x70>
 430:	00e787b3          	add	a5,a5,a4
 434:	0007a783          	lw	a5,0(a5)
 438:	00078067          	jr	a5
 43c:	800007b7          	lui	a5,0x80000
 440:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 444:	f69ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 448:	800007b7          	lui	a5,0x80000
 44c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 450:	f5dff06f          	j	3ac <__neorv32_rte_core+0x7c>
 454:	800007b7          	lui	a5,0x80000
 458:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 45c:	f51ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 460:	800007b7          	lui	a5,0x80000
 464:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 468:	f45ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 46c:	800007b7          	lui	a5,0x80000
 470:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 474:	f39ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 478:	800007b7          	lui	a5,0x80000
 47c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 480:	f2dff06f          	j	3ac <__neorv32_rte_core+0x7c>
 484:	800007b7          	lui	a5,0x80000
 488:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 48c:	f21ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 490:	800007b7          	lui	a5,0x80000
 494:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 498:	f15ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 49c:	800007b7          	lui	a5,0x80000
 4a0:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 4a4:	f09ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4a8:	800007b7          	lui	a5,0x80000
 4ac:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 4b0:	efdff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4b4:	800007b7          	lui	a5,0x80000
 4b8:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 4bc:	ef1ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4c0:	800007b7          	lui	a5,0x80000
 4c4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 4c8:	ee5ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4cc:	800007b7          	lui	a5,0x80000
 4d0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 4d4:	ed9ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4d8:	800007b7          	lui	a5,0x80000
 4dc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 4e0:	ecdff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4e4:	800007b7          	lui	a5,0x80000
 4e8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 4ec:	ec1ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4f0:	800007b7          	lui	a5,0x80000
 4f4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 4f8:	eb5ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 4fc:	800007b7          	lui	a5,0x80000
 500:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 504:	ea9ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 508:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 50c:	ea1ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 510:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 514:	e99ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 518:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 51c:	e91ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 520:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 524:	e89ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 528:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 52c:	e81ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 530:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 534:	e79ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 538:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 53c:	e71ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 540:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 544:	e69ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 548:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 54c:	e61ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 550:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 554:	e59ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 558:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 55c:	e51ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 560:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 564:	e49ff06f          	j	3ac <__neorv32_rte_core+0x7c>
 568:	0000                	.2byte	0x0
 56a:	0000                	.2byte	0x0
 56c:	0000                	.2byte	0x0
 56e:	0000                	.2byte	0x0

00000570 <__neorv32_rte_print_hex_word>:
 570:	fe010113          	addi	sp,sp,-32
 574:	01212823          	sw	s2,16(sp)
 578:	00050913          	mv	s2,a0
 57c:	00001537          	lui	a0,0x1
 580:	00912a23          	sw	s1,20(sp)
 584:	bb050513          	addi	a0,a0,-1104 # bb0 <__etext+0xe4>
 588:	000014b7          	lui	s1,0x1
 58c:	00812c23          	sw	s0,24(sp)
 590:	01312623          	sw	s3,12(sp)
 594:	00112e23          	sw	ra,28(sp)
 598:	01c00413          	li	s0,28
 59c:	374000ef          	jal	ra,910 <neorv32_uart0_print>
 5a0:	da448493          	addi	s1,s1,-604 # da4 <hex_symbols.0>
 5a4:	ffc00993          	li	s3,-4
 5a8:	008957b3          	srl	a5,s2,s0
 5ac:	00f7f793          	andi	a5,a5,15
 5b0:	00f487b3          	add	a5,s1,a5
 5b4:	0007c503          	lbu	a0,0(a5)
 5b8:	ffc40413          	addi	s0,s0,-4
 5bc:	33c000ef          	jal	ra,8f8 <neorv32_uart0_putc>
 5c0:	ff3414e3          	bne	s0,s3,5a8 <__neorv32_rte_print_hex_word+0x38>
 5c4:	01c12083          	lw	ra,28(sp)
 5c8:	01812403          	lw	s0,24(sp)
 5cc:	01412483          	lw	s1,20(sp)
 5d0:	01012903          	lw	s2,16(sp)
 5d4:	00c12983          	lw	s3,12(sp)
 5d8:	02010113          	addi	sp,sp,32
 5dc:	00008067          	ret

000005e0 <__neorv32_rte_debug_exc_handler>:
 5e0:	ff010113          	addi	sp,sp,-16
 5e4:	00112623          	sw	ra,12(sp)
 5e8:	00812423          	sw	s0,8(sp)
 5ec:	00912223          	sw	s1,4(sp)
 5f0:	24c000ef          	jal	ra,83c <neorv32_uart0_available>
 5f4:	1a050e63          	beqz	a0,7b0 <__neorv32_rte_debug_exc_handler+0x1d0>
 5f8:	00001537          	lui	a0,0x1
 5fc:	bb450513          	addi	a0,a0,-1100 # bb4 <__etext+0xe8>
 600:	310000ef          	jal	ra,910 <neorv32_uart0_print>
 604:	34202473          	csrr	s0,mcause
 608:	00900713          	li	a4,9
 60c:	00f47793          	andi	a5,s0,15
 610:	03078493          	addi	s1,a5,48
 614:	00f77463          	bgeu	a4,a5,61c <__neorv32_rte_debug_exc_handler+0x3c>
 618:	05778493          	addi	s1,a5,87
 61c:	00b00793          	li	a5,11
 620:	0087ee63          	bltu	a5,s0,63c <__neorv32_rte_debug_exc_handler+0x5c>
 624:	00001737          	lui	a4,0x1
 628:	00241793          	slli	a5,s0,0x2
 62c:	d7470713          	addi	a4,a4,-652 # d74 <__etext+0x2a8>
 630:	00e787b3          	add	a5,a5,a4
 634:	0007a783          	lw	a5,0(a5)
 638:	00078067          	jr	a5
 63c:	800007b7          	lui	a5,0x80000
 640:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 644:	14e40463          	beq	s0,a4,78c <__neorv32_rte_debug_exc_handler+0x1ac>
 648:	02876663          	bltu	a4,s0,674 <__neorv32_rte_debug_exc_handler+0x94>
 64c:	00378713          	addi	a4,a5,3
 650:	12e40263          	beq	s0,a4,774 <__neorv32_rte_debug_exc_handler+0x194>
 654:	00778793          	addi	a5,a5,7
 658:	12f40463          	beq	s0,a5,780 <__neorv32_rte_debug_exc_handler+0x1a0>
 65c:	00001537          	lui	a0,0x1
 660:	d1450513          	addi	a0,a0,-748 # d14 <__etext+0x248>
 664:	2ac000ef          	jal	ra,910 <neorv32_uart0_print>
 668:	00040513          	mv	a0,s0
 66c:	f05ff0ef          	jal	ra,570 <__neorv32_rte_print_hex_word>
 670:	0280006f          	j	698 <__neorv32_rte_debug_exc_handler+0xb8>
 674:	ff07c793          	xori	a5,a5,-16
 678:	00f407b3          	add	a5,s0,a5
 67c:	00f00713          	li	a4,15
 680:	fcf76ee3          	bltu	a4,a5,65c <__neorv32_rte_debug_exc_handler+0x7c>
 684:	00001537          	lui	a0,0x1
 688:	d0450513          	addi	a0,a0,-764 # d04 <__etext+0x238>
 68c:	284000ef          	jal	ra,910 <neorv32_uart0_print>
 690:	00048513          	mv	a0,s1
 694:	264000ef          	jal	ra,8f8 <neorv32_uart0_putc>
 698:	00001537          	lui	a0,0x1
 69c:	d5850513          	addi	a0,a0,-680 # d58 <__etext+0x28c>
 6a0:	270000ef          	jal	ra,910 <neorv32_uart0_print>
 6a4:	34002573          	csrr	a0,mscratch
 6a8:	ec9ff0ef          	jal	ra,570 <__neorv32_rte_print_hex_word>
 6ac:	00001537          	lui	a0,0x1
 6b0:	d6050513          	addi	a0,a0,-672 # d60 <__etext+0x294>
 6b4:	25c000ef          	jal	ra,910 <neorv32_uart0_print>
 6b8:	34302573          	csrr	a0,mtval
 6bc:	eb5ff0ef          	jal	ra,570 <__neorv32_rte_print_hex_word>
 6c0:	00812403          	lw	s0,8(sp)
 6c4:	00c12083          	lw	ra,12(sp)
 6c8:	00412483          	lw	s1,4(sp)
 6cc:	00001537          	lui	a0,0x1
 6d0:	d6c50513          	addi	a0,a0,-660 # d6c <__etext+0x2a0>
 6d4:	01010113          	addi	sp,sp,16
 6d8:	2380006f          	j	910 <neorv32_uart0_print>
 6dc:	00001537          	lui	a0,0x1
 6e0:	bbc50513          	addi	a0,a0,-1092 # bbc <__etext+0xf0>
 6e4:	22c000ef          	jal	ra,910 <neorv32_uart0_print>
 6e8:	fb1ff06f          	j	698 <__neorv32_rte_debug_exc_handler+0xb8>
 6ec:	00001537          	lui	a0,0x1
 6f0:	bdc50513          	addi	a0,a0,-1060 # bdc <__etext+0x110>
 6f4:	21c000ef          	jal	ra,910 <neorv32_uart0_print>
 6f8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 6fc:	0a07d463          	bgez	a5,7a4 <__neorv32_rte_debug_exc_handler+0x1c4>
 700:	0017f793          	andi	a5,a5,1
 704:	08078a63          	beqz	a5,798 <__neorv32_rte_debug_exc_handler+0x1b8>
 708:	00001537          	lui	a0,0x1
 70c:	d2c50513          	addi	a0,a0,-724 # d2c <__etext+0x260>
 710:	fd5ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 714:	00001537          	lui	a0,0x1
 718:	bf850513          	addi	a0,a0,-1032 # bf8 <__etext+0x12c>
 71c:	fc9ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 720:	00001537          	lui	a0,0x1
 724:	c0c50513          	addi	a0,a0,-1012 # c0c <__etext+0x140>
 728:	fbdff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 72c:	00001537          	lui	a0,0x1
 730:	c1850513          	addi	a0,a0,-1000 # c18 <__etext+0x14c>
 734:	fb1ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 738:	00001537          	lui	a0,0x1
 73c:	c3050513          	addi	a0,a0,-976 # c30 <__etext+0x164>
 740:	fb5ff06f          	j	6f4 <__neorv32_rte_debug_exc_handler+0x114>
 744:	00001537          	lui	a0,0x1
 748:	c4450513          	addi	a0,a0,-956 # c44 <__etext+0x178>
 74c:	f99ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 750:	00001537          	lui	a0,0x1
 754:	c6050513          	addi	a0,a0,-928 # c60 <__etext+0x194>
 758:	f9dff06f          	j	6f4 <__neorv32_rte_debug_exc_handler+0x114>
 75c:	00001537          	lui	a0,0x1
 760:	c7450513          	addi	a0,a0,-908 # c74 <__etext+0x1a8>
 764:	f81ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 768:	00001537          	lui	a0,0x1
 76c:	c9450513          	addi	a0,a0,-876 # c94 <__etext+0x1c8>
 770:	f75ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 774:	00001537          	lui	a0,0x1
 778:	cb450513          	addi	a0,a0,-844 # cb4 <__etext+0x1e8>
 77c:	f69ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 780:	00001537          	lui	a0,0x1
 784:	cd050513          	addi	a0,a0,-816 # cd0 <__etext+0x204>
 788:	f5dff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 78c:	00001537          	lui	a0,0x1
 790:	ce850513          	addi	a0,a0,-792 # ce8 <__etext+0x21c>
 794:	f51ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 798:	00001537          	lui	a0,0x1
 79c:	d3c50513          	addi	a0,a0,-708 # d3c <__etext+0x270>
 7a0:	f45ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 7a4:	00001537          	lui	a0,0x1
 7a8:	d4c50513          	addi	a0,a0,-692 # d4c <__etext+0x280>
 7ac:	f39ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x104>
 7b0:	00c12083          	lw	ra,12(sp)
 7b4:	00812403          	lw	s0,8(sp)
 7b8:	00412483          	lw	s1,4(sp)
 7bc:	01010113          	addi	sp,sp,16
 7c0:	00008067          	ret

000007c4 <neorv32_rte_exception_uninstall>:
 7c4:	01f00793          	li	a5,31
 7c8:	02a7e263          	bltu	a5,a0,7ec <neorv32_rte_exception_uninstall+0x28>
 7cc:	800007b7          	lui	a5,0x80000
 7d0:	00251513          	slli	a0,a0,0x2
 7d4:	00078793          	mv	a5,a5
 7d8:	00a787b3          	add	a5,a5,a0
 7dc:	5e000713          	li	a4,1504
 7e0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 7e4:	00000513          	li	a0,0
 7e8:	00008067          	ret
 7ec:	00100513          	li	a0,1
 7f0:	00008067          	ret

000007f4 <neorv32_rte_setup>:
 7f4:	ff010113          	addi	sp,sp,-16
 7f8:	00112623          	sw	ra,12(sp)
 7fc:	00812423          	sw	s0,8(sp)
 800:	00912223          	sw	s1,4(sp)
 804:	33000793          	li	a5,816
 808:	30579073          	csrw	mtvec,a5
 80c:	00000413          	li	s0,0
 810:	01d00493          	li	s1,29
 814:	00040513          	mv	a0,s0
 818:	00140413          	addi	s0,s0,1
 81c:	0ff47413          	zext.b	s0,s0
 820:	fa5ff0ef          	jal	ra,7c4 <neorv32_rte_exception_uninstall>
 824:	fe9418e3          	bne	s0,s1,814 <neorv32_rte_setup+0x20>
 828:	00c12083          	lw	ra,12(sp)
 82c:	00812403          	lw	s0,8(sp)
 830:	00412483          	lw	s1,4(sp)
 834:	01010113          	addi	sp,sp,16
 838:	00008067          	ret

0000083c <neorv32_uart0_available>:
 83c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 840:	01255513          	srli	a0,a0,0x12
 844:	00157513          	andi	a0,a0,1
 848:	00008067          	ret

0000084c <neorv32_uart0_setup>:
 84c:	ff010113          	addi	sp,sp,-16
 850:	00812423          	sw	s0,8(sp)
 854:	00912223          	sw	s1,4(sp)
 858:	00112623          	sw	ra,12(sp)
 85c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 860:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 864:	00058413          	mv	s0,a1
 868:	00151593          	slli	a1,a0,0x1
 86c:	00078513          	mv	a0,a5
 870:	00060493          	mv	s1,a2
 874:	1ac000ef          	jal	ra,a20 <__hidden___udivsi3>
 878:	01051513          	slli	a0,a0,0x10
 87c:	000017b7          	lui	a5,0x1
 880:	01055513          	srli	a0,a0,0x10
 884:	00000713          	li	a4,0
 888:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x24a>
 88c:	04a7e463          	bltu	a5,a0,8d4 <neorv32_uart0_setup+0x88>
 890:	0034f493          	andi	s1,s1,3
 894:	01449493          	slli	s1,s1,0x14
 898:	00347413          	andi	s0,s0,3
 89c:	fff50793          	addi	a5,a0,-1
 8a0:	0097e7b3          	or	a5,a5,s1
 8a4:	01641413          	slli	s0,s0,0x16
 8a8:	0087e7b3          	or	a5,a5,s0
 8ac:	01871713          	slli	a4,a4,0x18
 8b0:	00c12083          	lw	ra,12(sp)
 8b4:	00812403          	lw	s0,8(sp)
 8b8:	00e7e7b3          	or	a5,a5,a4
 8bc:	10000737          	lui	a4,0x10000
 8c0:	00e7e7b3          	or	a5,a5,a4
 8c4:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 8c8:	00412483          	lw	s1,4(sp)
 8cc:	01010113          	addi	sp,sp,16
 8d0:	00008067          	ret
 8d4:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff24a>
 8d8:	0fd6f693          	andi	a3,a3,253
 8dc:	00069a63          	bnez	a3,8f0 <neorv32_uart0_setup+0xa4>
 8e0:	00355513          	srli	a0,a0,0x3
 8e4:	00170713          	addi	a4,a4,1
 8e8:	0ff77713          	zext.b	a4,a4
 8ec:	fa1ff06f          	j	88c <neorv32_uart0_setup+0x40>
 8f0:	00155513          	srli	a0,a0,0x1
 8f4:	ff1ff06f          	j	8e4 <neorv32_uart0_setup+0x98>

000008f8 <neorv32_uart0_putc>:
 8f8:	00040737          	lui	a4,0x40
 8fc:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 900:	00e7f7b3          	and	a5,a5,a4
 904:	fe079ce3          	bnez	a5,8fc <neorv32_uart0_putc+0x4>
 908:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 90c:	00008067          	ret

00000910 <neorv32_uart0_print>:
 910:	ff010113          	addi	sp,sp,-16
 914:	00812423          	sw	s0,8(sp)
 918:	01212023          	sw	s2,0(sp)
 91c:	00112623          	sw	ra,12(sp)
 920:	00912223          	sw	s1,4(sp)
 924:	00050413          	mv	s0,a0
 928:	00a00913          	li	s2,10
 92c:	00044483          	lbu	s1,0(s0)
 930:	00140413          	addi	s0,s0,1
 934:	00049e63          	bnez	s1,950 <neorv32_uart0_print+0x40>
 938:	00c12083          	lw	ra,12(sp)
 93c:	00812403          	lw	s0,8(sp)
 940:	00412483          	lw	s1,4(sp)
 944:	00012903          	lw	s2,0(sp)
 948:	01010113          	addi	sp,sp,16
 94c:	00008067          	ret
 950:	01249663          	bne	s1,s2,95c <neorv32_uart0_print+0x4c>
 954:	00d00513          	li	a0,13
 958:	fa1ff0ef          	jal	ra,8f8 <neorv32_uart0_putc>
 95c:	00048513          	mv	a0,s1
 960:	f99ff0ef          	jal	ra,8f8 <neorv32_uart0_putc>
 964:	fc9ff06f          	j	92c <neorv32_uart0_print+0x1c>

00000968 <__mulsi3>:
 968:	00050613          	mv	a2,a0
 96c:	00000513          	li	a0,0
 970:	0015f693          	andi	a3,a1,1
 974:	00068463          	beqz	a3,97c <__mulsi3+0x14>
 978:	00c50533          	add	a0,a0,a2
 97c:	0015d593          	srli	a1,a1,0x1
 980:	00161613          	slli	a2,a2,0x1
 984:	fe0596e3          	bnez	a1,970 <__mulsi3+0x8>
 988:	00008067          	ret

0000098c <__muldi3>:
 98c:	00050e13          	mv	t3,a0
 990:	ff010113          	addi	sp,sp,-16
 994:	00068313          	mv	t1,a3
 998:	00112623          	sw	ra,12(sp)
 99c:	00060513          	mv	a0,a2
 9a0:	000e0893          	mv	a7,t3
 9a4:	00060693          	mv	a3,a2
 9a8:	00000713          	li	a4,0
 9ac:	00000793          	li	a5,0
 9b0:	00000813          	li	a6,0
 9b4:	0016fe93          	andi	t4,a3,1
 9b8:	00171613          	slli	a2,a4,0x1
 9bc:	000e8a63          	beqz	t4,9d0 <__muldi3+0x44>
 9c0:	01088833          	add	a6,a7,a6
 9c4:	00e787b3          	add	a5,a5,a4
 9c8:	01183733          	sltu	a4,a6,a7
 9cc:	00f707b3          	add	a5,a4,a5
 9d0:	01f8d713          	srli	a4,a7,0x1f
 9d4:	0016d693          	srli	a3,a3,0x1
 9d8:	00e66733          	or	a4,a2,a4
 9dc:	00189893          	slli	a7,a7,0x1
 9e0:	fc069ae3          	bnez	a3,9b4 <__muldi3+0x28>
 9e4:	00058663          	beqz	a1,9f0 <__muldi3+0x64>
 9e8:	f81ff0ef          	jal	ra,968 <__mulsi3>
 9ec:	00a787b3          	add	a5,a5,a0
 9f0:	00030a63          	beqz	t1,a04 <__muldi3+0x78>
 9f4:	000e0513          	mv	a0,t3
 9f8:	00030593          	mv	a1,t1
 9fc:	f6dff0ef          	jal	ra,968 <__mulsi3>
 a00:	00f507b3          	add	a5,a0,a5
 a04:	00c12083          	lw	ra,12(sp)
 a08:	00080513          	mv	a0,a6
 a0c:	00078593          	mv	a1,a5
 a10:	01010113          	addi	sp,sp,16
 a14:	00008067          	ret

00000a18 <__divsi3>:
 a18:	06054063          	bltz	a0,a78 <__umodsi3+0x10>
 a1c:	0605c663          	bltz	a1,a88 <__umodsi3+0x20>

00000a20 <__hidden___udivsi3>:
 a20:	00058613          	mv	a2,a1
 a24:	00050593          	mv	a1,a0
 a28:	fff00513          	li	a0,-1
 a2c:	02060c63          	beqz	a2,a64 <__hidden___udivsi3+0x44>
 a30:	00100693          	li	a3,1
 a34:	00b67a63          	bgeu	a2,a1,a48 <__hidden___udivsi3+0x28>
 a38:	00c05863          	blez	a2,a48 <__hidden___udivsi3+0x28>
 a3c:	00161613          	slli	a2,a2,0x1
 a40:	00169693          	slli	a3,a3,0x1
 a44:	feb66ae3          	bltu	a2,a1,a38 <__hidden___udivsi3+0x18>
 a48:	00000513          	li	a0,0
 a4c:	00c5e663          	bltu	a1,a2,a58 <__hidden___udivsi3+0x38>
 a50:	40c585b3          	sub	a1,a1,a2
 a54:	00d56533          	or	a0,a0,a3
 a58:	0016d693          	srli	a3,a3,0x1
 a5c:	00165613          	srli	a2,a2,0x1
 a60:	fe0696e3          	bnez	a3,a4c <__hidden___udivsi3+0x2c>
 a64:	00008067          	ret

00000a68 <__umodsi3>:
 a68:	00008293          	mv	t0,ra
 a6c:	fb5ff0ef          	jal	ra,a20 <__hidden___udivsi3>
 a70:	00058513          	mv	a0,a1
 a74:	00028067          	jr	t0
 a78:	40a00533          	neg	a0,a0
 a7c:	00b04863          	bgtz	a1,a8c <__umodsi3+0x24>
 a80:	40b005b3          	neg	a1,a1
 a84:	f9dff06f          	j	a20 <__hidden___udivsi3>
 a88:	40b005b3          	neg	a1,a1
 a8c:	00008293          	mv	t0,ra
 a90:	f91ff0ef          	jal	ra,a20 <__hidden___udivsi3>
 a94:	40a00533          	neg	a0,a0
 a98:	00028067          	jr	t0

00000a9c <__modsi3>:
 a9c:	00008293          	mv	t0,ra
 aa0:	0005ca63          	bltz	a1,ab4 <__modsi3+0x18>
 aa4:	00054c63          	bltz	a0,abc <__modsi3+0x20>
 aa8:	f79ff0ef          	jal	ra,a20 <__hidden___udivsi3>
 aac:	00058513          	mv	a0,a1
 ab0:	00028067          	jr	t0
 ab4:	40b005b3          	neg	a1,a1
 ab8:	fe0558e3          	bgez	a0,aa8 <__modsi3+0xc>
 abc:	40a00533          	neg	a0,a0
 ac0:	f61ff0ef          	jal	ra,a20 <__hidden___udivsi3>
 ac4:	40b00533          	neg	a0,a1
 ac8:	00028067          	jr	t0
