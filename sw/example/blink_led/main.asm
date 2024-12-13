
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
  e0:	cc858593          	addi	a1,a1,-824 # da4 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3d5c>
 194:	00112623          	sw	ra,12(sp)
 198:	6a4000ef          	jal	ra,83c <neorv32_uart0_setup>
 19c:	15c000ef          	jal	ra,2f8 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	640000ef          	jal	ra,7e4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	ae050513          	addi	a0,a0,-1312 # ae0 <__etext+0x24>
 1b0:	750000ef          	jal	ra,900 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <blink_led_c>
 1b8:	00001537          	lui	a0,0x1
 1bc:	abc50513          	addi	a0,a0,-1348 # abc <__etext>
 1c0:	740000ef          	jal	ra,900 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <blink_led_c>:
 1d4:	ff010113          	addi	sp,sp,-16
 1d8:	00000513          	li	a0,0
 1dc:	00000593          	li	a1,0
 1e0:	00112623          	sw	ra,12(sp)
 1e4:	00812423          	sw	s0,8(sp)
 1e8:	120000ef          	jal	ra,308 <neorv32_gpio_port_set>
 1ec:	00000513          	li	a0,0
 1f0:	00150413          	addi	s0,a0,1
 1f4:	00000593          	li	a1,0
 1f8:	0ff57513          	zext.b	a0,a0
 1fc:	10c000ef          	jal	ra,308 <neorv32_gpio_port_set>
 200:	0c800513          	li	a0,200
 204:	038000ef          	jal	ra,23c <neorv32_cpu_delay_ms>
 208:	00040513          	mv	a0,s0
 20c:	fe5ff06f          	j	1f0 <blink_led_c+0x1c>

00000210 <neorv32_cpu_get_systime>:
 210:	ff010113          	addi	sp,sp,-16
 214:	c81026f3          	rdtimeh	a3
 218:	c0102773          	rdtime	a4
 21c:	c81027f3          	rdtimeh	a5
 220:	fed79ae3          	bne	a5,a3,214 <neorv32_cpu_get_systime+0x4>
 224:	00e12023          	sw	a4,0(sp)
 228:	00f12223          	sw	a5,4(sp)
 22c:	00012503          	lw	a0,0(sp)
 230:	00412583          	lw	a1,4(sp)
 234:	01010113          	addi	sp,sp,16
 238:	00008067          	ret

0000023c <neorv32_cpu_delay_ms>:
 23c:	fd010113          	addi	sp,sp,-48
 240:	00a12623          	sw	a0,12(sp)
 244:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 248:	3e800593          	li	a1,1000
 24c:	02112623          	sw	ra,44(sp)
 250:	02812423          	sw	s0,40(sp)
 254:	02912223          	sw	s1,36(sp)
 258:	03212023          	sw	s2,32(sp)
 25c:	01312e23          	sw	s3,28(sp)
 260:	7b0000ef          	jal	ra,a10 <__hidden___udivsi3>
 264:	00c12603          	lw	a2,12(sp)
 268:	00000693          	li	a3,0
 26c:	00000593          	li	a1,0
 270:	70c000ef          	jal	ra,97c <__muldi3>
 274:	00050413          	mv	s0,a0
 278:	00058993          	mv	s3,a1
 27c:	f95ff0ef          	jal	ra,210 <neorv32_cpu_get_systime>
 280:	00058913          	mv	s2,a1
 284:	00050493          	mv	s1,a0
 288:	f89ff0ef          	jal	ra,210 <neorv32_cpu_get_systime>
 28c:	00b96663          	bltu	s2,a1,298 <neorv32_cpu_delay_ms+0x5c>
 290:	05259263          	bne	a1,s2,2d4 <neorv32_cpu_delay_ms+0x98>
 294:	04a4f063          	bgeu	s1,a0,2d4 <neorv32_cpu_delay_ms+0x98>
 298:	008484b3          	add	s1,s1,s0
 29c:	0084b433          	sltu	s0,s1,s0
 2a0:	01390933          	add	s2,s2,s3
 2a4:	01240433          	add	s0,s0,s2
 2a8:	f69ff0ef          	jal	ra,210 <neorv32_cpu_get_systime>
 2ac:	fe85eee3          	bltu	a1,s0,2a8 <neorv32_cpu_delay_ms+0x6c>
 2b0:	00b41463          	bne	s0,a1,2b8 <neorv32_cpu_delay_ms+0x7c>
 2b4:	fe956ae3          	bltu	a0,s1,2a8 <neorv32_cpu_delay_ms+0x6c>
 2b8:	02c12083          	lw	ra,44(sp)
 2bc:	02812403          	lw	s0,40(sp)
 2c0:	02412483          	lw	s1,36(sp)
 2c4:	02012903          	lw	s2,32(sp)
 2c8:	01c12983          	lw	s3,28(sp)
 2cc:	03010113          	addi	sp,sp,48
 2d0:	00008067          	ret
 2d4:	01c99993          	slli	s3,s3,0x1c
 2d8:	00445413          	srli	s0,s0,0x4
 2dc:	0089e433          	or	s0,s3,s0

000002e0 <__neorv32_cpu_delay_ms_start>:
 2e0:	00040a63          	beqz	s0,2f4 <__neorv32_cpu_delay_ms_end>
 2e4:	00040863          	beqz	s0,2f4 <__neorv32_cpu_delay_ms_end>
 2e8:	fff40413          	addi	s0,s0,-1
 2ec:	00000013          	nop
 2f0:	ff1ff06f          	j	2e0 <__neorv32_cpu_delay_ms_start>

000002f4 <__neorv32_cpu_delay_ms_end>:
 2f4:	fc5ff06f          	j	2b8 <neorv32_cpu_delay_ms+0x7c>

000002f8 <neorv32_gpio_available>:
 2f8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2fc:	01055513          	srli	a0,a0,0x10
 300:	00157513          	andi	a0,a0,1
 304:	00008067          	ret

00000308 <neorv32_gpio_port_set>:
 308:	fc000793          	li	a5,-64
 30c:	00a7a423          	sw	a0,8(a5)
 310:	00b7a623          	sw	a1,12(a5)
 314:	00008067          	ret
 318:	0000                	.2byte	0x0
 31a:	0000                	.2byte	0x0
 31c:	0000                	.2byte	0x0
 31e:	0000                	.2byte	0x0

00000320 <__neorv32_rte_core>:
 320:	fc010113          	addi	sp,sp,-64
 324:	02112e23          	sw	ra,60(sp)
 328:	02512c23          	sw	t0,56(sp)
 32c:	02612a23          	sw	t1,52(sp)
 330:	02712823          	sw	t2,48(sp)
 334:	02a12623          	sw	a0,44(sp)
 338:	02b12423          	sw	a1,40(sp)
 33c:	02c12223          	sw	a2,36(sp)
 340:	02d12023          	sw	a3,32(sp)
 344:	00e12e23          	sw	a4,28(sp)
 348:	00f12c23          	sw	a5,24(sp)
 34c:	01012a23          	sw	a6,20(sp)
 350:	01112823          	sw	a7,16(sp)
 354:	01c12623          	sw	t3,12(sp)
 358:	01d12423          	sw	t4,8(sp)
 35c:	01e12223          	sw	t5,4(sp)
 360:	01f12023          	sw	t6,0(sp)
 364:	34102773          	csrr	a4,mepc
 368:	34071073          	csrw	mscratch,a4
 36c:	342027f3          	csrr	a5,mcause
 370:	0807c863          	bltz	a5,400 <__neorv32_rte_core+0xe0>
 374:	00071683          	lh	a3,0(a4)
 378:	00300593          	li	a1,3
 37c:	0036f693          	andi	a3,a3,3
 380:	00270613          	addi	a2,a4,2
 384:	00b69463          	bne	a3,a1,38c <__neorv32_rte_core+0x6c>
 388:	00470613          	addi	a2,a4,4
 38c:	34161073          	csrw	mepc,a2
 390:	00b00713          	li	a4,11
 394:	04f77a63          	bgeu	a4,a5,3e8 <__neorv32_rte_core+0xc8>
 398:	5d000793          	li	a5,1488
 39c:	000780e7          	jalr	a5
 3a0:	03c12083          	lw	ra,60(sp)
 3a4:	03812283          	lw	t0,56(sp)
 3a8:	03412303          	lw	t1,52(sp)
 3ac:	03012383          	lw	t2,48(sp)
 3b0:	02c12503          	lw	a0,44(sp)
 3b4:	02812583          	lw	a1,40(sp)
 3b8:	02412603          	lw	a2,36(sp)
 3bc:	02012683          	lw	a3,32(sp)
 3c0:	01c12703          	lw	a4,28(sp)
 3c4:	01812783          	lw	a5,24(sp)
 3c8:	01412803          	lw	a6,20(sp)
 3cc:	01012883          	lw	a7,16(sp)
 3d0:	00c12e03          	lw	t3,12(sp)
 3d4:	00812e83          	lw	t4,8(sp)
 3d8:	00412f03          	lw	t5,4(sp)
 3dc:	00012f83          	lw	t6,0(sp)
 3e0:	04010113          	addi	sp,sp,64
 3e4:	30200073          	mret
 3e8:	00001737          	lui	a4,0x1
 3ec:	00279793          	slli	a5,a5,0x2
 3f0:	afc70713          	addi	a4,a4,-1284 # afc <__etext+0x40>
 3f4:	00e787b3          	add	a5,a5,a4
 3f8:	0007a783          	lw	a5,0(a5)
 3fc:	00078067          	jr	a5
 400:	80000737          	lui	a4,0x80000
 404:	ffd74713          	xori	a4,a4,-3
 408:	00e787b3          	add	a5,a5,a4
 40c:	01c00713          	li	a4,28
 410:	f8f764e3          	bltu	a4,a5,398 <__neorv32_rte_core+0x78>
 414:	00001737          	lui	a4,0x1
 418:	00279793          	slli	a5,a5,0x2
 41c:	b2c70713          	addi	a4,a4,-1236 # b2c <__etext+0x70>
 420:	00e787b3          	add	a5,a5,a4
 424:	0007a783          	lw	a5,0(a5)
 428:	00078067          	jr	a5
 42c:	800007b7          	lui	a5,0x80000
 430:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 434:	f69ff06f          	j	39c <__neorv32_rte_core+0x7c>
 438:	800007b7          	lui	a5,0x80000
 43c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 440:	f5dff06f          	j	39c <__neorv32_rte_core+0x7c>
 444:	800007b7          	lui	a5,0x80000
 448:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 44c:	f51ff06f          	j	39c <__neorv32_rte_core+0x7c>
 450:	800007b7          	lui	a5,0x80000
 454:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 458:	f45ff06f          	j	39c <__neorv32_rte_core+0x7c>
 45c:	800007b7          	lui	a5,0x80000
 460:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 464:	f39ff06f          	j	39c <__neorv32_rte_core+0x7c>
 468:	800007b7          	lui	a5,0x80000
 46c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 470:	f2dff06f          	j	39c <__neorv32_rte_core+0x7c>
 474:	800007b7          	lui	a5,0x80000
 478:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 47c:	f21ff06f          	j	39c <__neorv32_rte_core+0x7c>
 480:	800007b7          	lui	a5,0x80000
 484:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 488:	f15ff06f          	j	39c <__neorv32_rte_core+0x7c>
 48c:	800007b7          	lui	a5,0x80000
 490:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 494:	f09ff06f          	j	39c <__neorv32_rte_core+0x7c>
 498:	800007b7          	lui	a5,0x80000
 49c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 4a0:	efdff06f          	j	39c <__neorv32_rte_core+0x7c>
 4a4:	800007b7          	lui	a5,0x80000
 4a8:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 4ac:	ef1ff06f          	j	39c <__neorv32_rte_core+0x7c>
 4b0:	800007b7          	lui	a5,0x80000
 4b4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 4b8:	ee5ff06f          	j	39c <__neorv32_rte_core+0x7c>
 4bc:	800007b7          	lui	a5,0x80000
 4c0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 4c4:	ed9ff06f          	j	39c <__neorv32_rte_core+0x7c>
 4c8:	800007b7          	lui	a5,0x80000
 4cc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 4d0:	ecdff06f          	j	39c <__neorv32_rte_core+0x7c>
 4d4:	800007b7          	lui	a5,0x80000
 4d8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 4dc:	ec1ff06f          	j	39c <__neorv32_rte_core+0x7c>
 4e0:	800007b7          	lui	a5,0x80000
 4e4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 4e8:	eb5ff06f          	j	39c <__neorv32_rte_core+0x7c>
 4ec:	800007b7          	lui	a5,0x80000
 4f0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 4f4:	ea9ff06f          	j	39c <__neorv32_rte_core+0x7c>
 4f8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 4fc:	ea1ff06f          	j	39c <__neorv32_rte_core+0x7c>
 500:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 504:	e99ff06f          	j	39c <__neorv32_rte_core+0x7c>
 508:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 50c:	e91ff06f          	j	39c <__neorv32_rte_core+0x7c>
 510:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 514:	e89ff06f          	j	39c <__neorv32_rte_core+0x7c>
 518:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 51c:	e81ff06f          	j	39c <__neorv32_rte_core+0x7c>
 520:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 524:	e79ff06f          	j	39c <__neorv32_rte_core+0x7c>
 528:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 52c:	e71ff06f          	j	39c <__neorv32_rte_core+0x7c>
 530:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 534:	e69ff06f          	j	39c <__neorv32_rte_core+0x7c>
 538:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 53c:	e61ff06f          	j	39c <__neorv32_rte_core+0x7c>
 540:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 544:	e59ff06f          	j	39c <__neorv32_rte_core+0x7c>
 548:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 54c:	e51ff06f          	j	39c <__neorv32_rte_core+0x7c>
 550:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 554:	e49ff06f          	j	39c <__neorv32_rte_core+0x7c>
 558:	0000                	.2byte	0x0
 55a:	0000                	.2byte	0x0
 55c:	0000                	.2byte	0x0
 55e:	0000                	.2byte	0x0

00000560 <__neorv32_rte_print_hex_word>:
 560:	fe010113          	addi	sp,sp,-32
 564:	01212823          	sw	s2,16(sp)
 568:	00050913          	mv	s2,a0
 56c:	00001537          	lui	a0,0x1
 570:	00912a23          	sw	s1,20(sp)
 574:	ba050513          	addi	a0,a0,-1120 # ba0 <__etext+0xe4>
 578:	000014b7          	lui	s1,0x1
 57c:	00812c23          	sw	s0,24(sp)
 580:	01312623          	sw	s3,12(sp)
 584:	00112e23          	sw	ra,28(sp)
 588:	01c00413          	li	s0,28
 58c:	374000ef          	jal	ra,900 <neorv32_uart0_print>
 590:	d9448493          	addi	s1,s1,-620 # d94 <hex_symbols.0>
 594:	ffc00993          	li	s3,-4
 598:	008957b3          	srl	a5,s2,s0
 59c:	00f7f793          	andi	a5,a5,15
 5a0:	00f487b3          	add	a5,s1,a5
 5a4:	0007c503          	lbu	a0,0(a5)
 5a8:	ffc40413          	addi	s0,s0,-4
 5ac:	33c000ef          	jal	ra,8e8 <neorv32_uart0_putc>
 5b0:	ff3414e3          	bne	s0,s3,598 <__neorv32_rte_print_hex_word+0x38>
 5b4:	01c12083          	lw	ra,28(sp)
 5b8:	01812403          	lw	s0,24(sp)
 5bc:	01412483          	lw	s1,20(sp)
 5c0:	01012903          	lw	s2,16(sp)
 5c4:	00c12983          	lw	s3,12(sp)
 5c8:	02010113          	addi	sp,sp,32
 5cc:	00008067          	ret

000005d0 <__neorv32_rte_debug_exc_handler>:
 5d0:	ff010113          	addi	sp,sp,-16
 5d4:	00112623          	sw	ra,12(sp)
 5d8:	00812423          	sw	s0,8(sp)
 5dc:	00912223          	sw	s1,4(sp)
 5e0:	24c000ef          	jal	ra,82c <neorv32_uart0_available>
 5e4:	1a050e63          	beqz	a0,7a0 <__neorv32_rte_debug_exc_handler+0x1d0>
 5e8:	00001537          	lui	a0,0x1
 5ec:	ba450513          	addi	a0,a0,-1116 # ba4 <__etext+0xe8>
 5f0:	310000ef          	jal	ra,900 <neorv32_uart0_print>
 5f4:	34202473          	csrr	s0,mcause
 5f8:	00900713          	li	a4,9
 5fc:	00f47793          	andi	a5,s0,15
 600:	03078493          	addi	s1,a5,48
 604:	00f77463          	bgeu	a4,a5,60c <__neorv32_rte_debug_exc_handler+0x3c>
 608:	05778493          	addi	s1,a5,87
 60c:	00b00793          	li	a5,11
 610:	0087ee63          	bltu	a5,s0,62c <__neorv32_rte_debug_exc_handler+0x5c>
 614:	00001737          	lui	a4,0x1
 618:	00241793          	slli	a5,s0,0x2
 61c:	d6470713          	addi	a4,a4,-668 # d64 <__etext+0x2a8>
 620:	00e787b3          	add	a5,a5,a4
 624:	0007a783          	lw	a5,0(a5)
 628:	00078067          	jr	a5
 62c:	800007b7          	lui	a5,0x80000
 630:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 634:	14e40463          	beq	s0,a4,77c <__neorv32_rte_debug_exc_handler+0x1ac>
 638:	02876663          	bltu	a4,s0,664 <__neorv32_rte_debug_exc_handler+0x94>
 63c:	00378713          	addi	a4,a5,3
 640:	12e40263          	beq	s0,a4,764 <__neorv32_rte_debug_exc_handler+0x194>
 644:	00778793          	addi	a5,a5,7
 648:	12f40463          	beq	s0,a5,770 <__neorv32_rte_debug_exc_handler+0x1a0>
 64c:	00001537          	lui	a0,0x1
 650:	d0450513          	addi	a0,a0,-764 # d04 <__etext+0x248>
 654:	2ac000ef          	jal	ra,900 <neorv32_uart0_print>
 658:	00040513          	mv	a0,s0
 65c:	f05ff0ef          	jal	ra,560 <__neorv32_rte_print_hex_word>
 660:	0280006f          	j	688 <__neorv32_rte_debug_exc_handler+0xb8>
 664:	ff07c793          	xori	a5,a5,-16
 668:	00f407b3          	add	a5,s0,a5
 66c:	00f00713          	li	a4,15
 670:	fcf76ee3          	bltu	a4,a5,64c <__neorv32_rte_debug_exc_handler+0x7c>
 674:	00001537          	lui	a0,0x1
 678:	cf450513          	addi	a0,a0,-780 # cf4 <__etext+0x238>
 67c:	284000ef          	jal	ra,900 <neorv32_uart0_print>
 680:	00048513          	mv	a0,s1
 684:	264000ef          	jal	ra,8e8 <neorv32_uart0_putc>
 688:	00001537          	lui	a0,0x1
 68c:	d4850513          	addi	a0,a0,-696 # d48 <__etext+0x28c>
 690:	270000ef          	jal	ra,900 <neorv32_uart0_print>
 694:	34002573          	csrr	a0,mscratch
 698:	ec9ff0ef          	jal	ra,560 <__neorv32_rte_print_hex_word>
 69c:	00001537          	lui	a0,0x1
 6a0:	d5050513          	addi	a0,a0,-688 # d50 <__etext+0x294>
 6a4:	25c000ef          	jal	ra,900 <neorv32_uart0_print>
 6a8:	34302573          	csrr	a0,mtval
 6ac:	eb5ff0ef          	jal	ra,560 <__neorv32_rte_print_hex_word>
 6b0:	00812403          	lw	s0,8(sp)
 6b4:	00c12083          	lw	ra,12(sp)
 6b8:	00412483          	lw	s1,4(sp)
 6bc:	00001537          	lui	a0,0x1
 6c0:	d5c50513          	addi	a0,a0,-676 # d5c <__etext+0x2a0>
 6c4:	01010113          	addi	sp,sp,16
 6c8:	2380006f          	j	900 <neorv32_uart0_print>
 6cc:	00001537          	lui	a0,0x1
 6d0:	bac50513          	addi	a0,a0,-1108 # bac <__etext+0xf0>
 6d4:	22c000ef          	jal	ra,900 <neorv32_uart0_print>
 6d8:	fb1ff06f          	j	688 <__neorv32_rte_debug_exc_handler+0xb8>
 6dc:	00001537          	lui	a0,0x1
 6e0:	bcc50513          	addi	a0,a0,-1076 # bcc <__etext+0x110>
 6e4:	21c000ef          	jal	ra,900 <neorv32_uart0_print>
 6e8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 6ec:	0a07d463          	bgez	a5,794 <__neorv32_rte_debug_exc_handler+0x1c4>
 6f0:	0017f793          	andi	a5,a5,1
 6f4:	08078a63          	beqz	a5,788 <__neorv32_rte_debug_exc_handler+0x1b8>
 6f8:	00001537          	lui	a0,0x1
 6fc:	d1c50513          	addi	a0,a0,-740 # d1c <__etext+0x260>
 700:	fd5ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 704:	00001537          	lui	a0,0x1
 708:	be850513          	addi	a0,a0,-1048 # be8 <__etext+0x12c>
 70c:	fc9ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 710:	00001537          	lui	a0,0x1
 714:	bfc50513          	addi	a0,a0,-1028 # bfc <__etext+0x140>
 718:	fbdff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 71c:	00001537          	lui	a0,0x1
 720:	c0850513          	addi	a0,a0,-1016 # c08 <__etext+0x14c>
 724:	fb1ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 728:	00001537          	lui	a0,0x1
 72c:	c2050513          	addi	a0,a0,-992 # c20 <__etext+0x164>
 730:	fb5ff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x114>
 734:	00001537          	lui	a0,0x1
 738:	c3450513          	addi	a0,a0,-972 # c34 <__etext+0x178>
 73c:	f99ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 740:	00001537          	lui	a0,0x1
 744:	c5050513          	addi	a0,a0,-944 # c50 <__etext+0x194>
 748:	f9dff06f          	j	6e4 <__neorv32_rte_debug_exc_handler+0x114>
 74c:	00001537          	lui	a0,0x1
 750:	c6450513          	addi	a0,a0,-924 # c64 <__etext+0x1a8>
 754:	f81ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 758:	00001537          	lui	a0,0x1
 75c:	c8450513          	addi	a0,a0,-892 # c84 <__etext+0x1c8>
 760:	f75ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 764:	00001537          	lui	a0,0x1
 768:	ca450513          	addi	a0,a0,-860 # ca4 <__etext+0x1e8>
 76c:	f69ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 770:	00001537          	lui	a0,0x1
 774:	cc050513          	addi	a0,a0,-832 # cc0 <__etext+0x204>
 778:	f5dff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 77c:	00001537          	lui	a0,0x1
 780:	cd850513          	addi	a0,a0,-808 # cd8 <__etext+0x21c>
 784:	f51ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 788:	00001537          	lui	a0,0x1
 78c:	d2c50513          	addi	a0,a0,-724 # d2c <__etext+0x270>
 790:	f45ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 794:	00001537          	lui	a0,0x1
 798:	d3c50513          	addi	a0,a0,-708 # d3c <__etext+0x280>
 79c:	f39ff06f          	j	6d4 <__neorv32_rte_debug_exc_handler+0x104>
 7a0:	00c12083          	lw	ra,12(sp)
 7a4:	00812403          	lw	s0,8(sp)
 7a8:	00412483          	lw	s1,4(sp)
 7ac:	01010113          	addi	sp,sp,16
 7b0:	00008067          	ret

000007b4 <neorv32_rte_exception_uninstall>:
 7b4:	01f00793          	li	a5,31
 7b8:	02a7e263          	bltu	a5,a0,7dc <neorv32_rte_exception_uninstall+0x28>
 7bc:	800007b7          	lui	a5,0x80000
 7c0:	00251513          	slli	a0,a0,0x2
 7c4:	00078793          	mv	a5,a5
 7c8:	00a787b3          	add	a5,a5,a0
 7cc:	5d000713          	li	a4,1488
 7d0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 7d4:	00000513          	li	a0,0
 7d8:	00008067          	ret
 7dc:	00100513          	li	a0,1
 7e0:	00008067          	ret

000007e4 <neorv32_rte_setup>:
 7e4:	ff010113          	addi	sp,sp,-16
 7e8:	00112623          	sw	ra,12(sp)
 7ec:	00812423          	sw	s0,8(sp)
 7f0:	00912223          	sw	s1,4(sp)
 7f4:	32000793          	li	a5,800
 7f8:	30579073          	csrw	mtvec,a5
 7fc:	00000413          	li	s0,0
 800:	01d00493          	li	s1,29
 804:	00040513          	mv	a0,s0
 808:	00140413          	addi	s0,s0,1
 80c:	0ff47413          	zext.b	s0,s0
 810:	fa5ff0ef          	jal	ra,7b4 <neorv32_rte_exception_uninstall>
 814:	fe9418e3          	bne	s0,s1,804 <neorv32_rte_setup+0x20>
 818:	00c12083          	lw	ra,12(sp)
 81c:	00812403          	lw	s0,8(sp)
 820:	00412483          	lw	s1,4(sp)
 824:	01010113          	addi	sp,sp,16
 828:	00008067          	ret

0000082c <neorv32_uart0_available>:
 82c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 830:	01255513          	srli	a0,a0,0x12
 834:	00157513          	andi	a0,a0,1
 838:	00008067          	ret

0000083c <neorv32_uart0_setup>:
 83c:	ff010113          	addi	sp,sp,-16
 840:	00812423          	sw	s0,8(sp)
 844:	00912223          	sw	s1,4(sp)
 848:	00112623          	sw	ra,12(sp)
 84c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 850:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 854:	00058413          	mv	s0,a1
 858:	00151593          	slli	a1,a0,0x1
 85c:	00078513          	mv	a0,a5
 860:	00060493          	mv	s1,a2
 864:	1ac000ef          	jal	ra,a10 <__hidden___udivsi3>
 868:	01051513          	slli	a0,a0,0x10
 86c:	000017b7          	lui	a5,0x1
 870:	01055513          	srli	a0,a0,0x10
 874:	00000713          	li	a4,0
 878:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x25a>
 87c:	04a7e463          	bltu	a5,a0,8c4 <neorv32_uart0_setup+0x88>
 880:	0034f493          	andi	s1,s1,3
 884:	01449493          	slli	s1,s1,0x14
 888:	00347413          	andi	s0,s0,3
 88c:	fff50793          	addi	a5,a0,-1
 890:	0097e7b3          	or	a5,a5,s1
 894:	01641413          	slli	s0,s0,0x16
 898:	0087e7b3          	or	a5,a5,s0
 89c:	01871713          	slli	a4,a4,0x18
 8a0:	00c12083          	lw	ra,12(sp)
 8a4:	00812403          	lw	s0,8(sp)
 8a8:	00e7e7b3          	or	a5,a5,a4
 8ac:	10000737          	lui	a4,0x10000
 8b0:	00e7e7b3          	or	a5,a5,a4
 8b4:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 8b8:	00412483          	lw	s1,4(sp)
 8bc:	01010113          	addi	sp,sp,16
 8c0:	00008067          	ret
 8c4:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff25a>
 8c8:	0fd6f693          	andi	a3,a3,253
 8cc:	00069a63          	bnez	a3,8e0 <neorv32_uart0_setup+0xa4>
 8d0:	00355513          	srli	a0,a0,0x3
 8d4:	00170713          	addi	a4,a4,1
 8d8:	0ff77713          	zext.b	a4,a4
 8dc:	fa1ff06f          	j	87c <neorv32_uart0_setup+0x40>
 8e0:	00155513          	srli	a0,a0,0x1
 8e4:	ff1ff06f          	j	8d4 <neorv32_uart0_setup+0x98>

000008e8 <neorv32_uart0_putc>:
 8e8:	00040737          	lui	a4,0x40
 8ec:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 8f0:	00e7f7b3          	and	a5,a5,a4
 8f4:	fe079ce3          	bnez	a5,8ec <neorv32_uart0_putc+0x4>
 8f8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 8fc:	00008067          	ret

00000900 <neorv32_uart0_print>:
 900:	ff010113          	addi	sp,sp,-16
 904:	00812423          	sw	s0,8(sp)
 908:	01212023          	sw	s2,0(sp)
 90c:	00112623          	sw	ra,12(sp)
 910:	00912223          	sw	s1,4(sp)
 914:	00050413          	mv	s0,a0
 918:	00a00913          	li	s2,10
 91c:	00044483          	lbu	s1,0(s0)
 920:	00140413          	addi	s0,s0,1
 924:	00049e63          	bnez	s1,940 <neorv32_uart0_print+0x40>
 928:	00c12083          	lw	ra,12(sp)
 92c:	00812403          	lw	s0,8(sp)
 930:	00412483          	lw	s1,4(sp)
 934:	00012903          	lw	s2,0(sp)
 938:	01010113          	addi	sp,sp,16
 93c:	00008067          	ret
 940:	01249663          	bne	s1,s2,94c <neorv32_uart0_print+0x4c>
 944:	00d00513          	li	a0,13
 948:	fa1ff0ef          	jal	ra,8e8 <neorv32_uart0_putc>
 94c:	00048513          	mv	a0,s1
 950:	f99ff0ef          	jal	ra,8e8 <neorv32_uart0_putc>
 954:	fc9ff06f          	j	91c <neorv32_uart0_print+0x1c>

00000958 <__mulsi3>:
 958:	00050613          	mv	a2,a0
 95c:	00000513          	li	a0,0
 960:	0015f693          	andi	a3,a1,1
 964:	00068463          	beqz	a3,96c <__mulsi3+0x14>
 968:	00c50533          	add	a0,a0,a2
 96c:	0015d593          	srli	a1,a1,0x1
 970:	00161613          	slli	a2,a2,0x1
 974:	fe0596e3          	bnez	a1,960 <__mulsi3+0x8>
 978:	00008067          	ret

0000097c <__muldi3>:
 97c:	00050e13          	mv	t3,a0
 980:	ff010113          	addi	sp,sp,-16
 984:	00068313          	mv	t1,a3
 988:	00112623          	sw	ra,12(sp)
 98c:	00060513          	mv	a0,a2
 990:	000e0893          	mv	a7,t3
 994:	00060693          	mv	a3,a2
 998:	00000713          	li	a4,0
 99c:	00000793          	li	a5,0
 9a0:	00000813          	li	a6,0
 9a4:	0016fe93          	andi	t4,a3,1
 9a8:	00171613          	slli	a2,a4,0x1
 9ac:	000e8a63          	beqz	t4,9c0 <__muldi3+0x44>
 9b0:	01088833          	add	a6,a7,a6
 9b4:	00e787b3          	add	a5,a5,a4
 9b8:	01183733          	sltu	a4,a6,a7
 9bc:	00f707b3          	add	a5,a4,a5
 9c0:	01f8d713          	srli	a4,a7,0x1f
 9c4:	0016d693          	srli	a3,a3,0x1
 9c8:	00e66733          	or	a4,a2,a4
 9cc:	00189893          	slli	a7,a7,0x1
 9d0:	fc069ae3          	bnez	a3,9a4 <__muldi3+0x28>
 9d4:	00058663          	beqz	a1,9e0 <__muldi3+0x64>
 9d8:	f81ff0ef          	jal	ra,958 <__mulsi3>
 9dc:	00a787b3          	add	a5,a5,a0
 9e0:	00030a63          	beqz	t1,9f4 <__muldi3+0x78>
 9e4:	000e0513          	mv	a0,t3
 9e8:	00030593          	mv	a1,t1
 9ec:	f6dff0ef          	jal	ra,958 <__mulsi3>
 9f0:	00f507b3          	add	a5,a0,a5
 9f4:	00c12083          	lw	ra,12(sp)
 9f8:	00080513          	mv	a0,a6
 9fc:	00078593          	mv	a1,a5
 a00:	01010113          	addi	sp,sp,16
 a04:	00008067          	ret

00000a08 <__divsi3>:
 a08:	06054063          	bltz	a0,a68 <__umodsi3+0x10>
 a0c:	0605c663          	bltz	a1,a78 <__umodsi3+0x20>

00000a10 <__hidden___udivsi3>:
 a10:	00058613          	mv	a2,a1
 a14:	00050593          	mv	a1,a0
 a18:	fff00513          	li	a0,-1
 a1c:	02060c63          	beqz	a2,a54 <__hidden___udivsi3+0x44>
 a20:	00100693          	li	a3,1
 a24:	00b67a63          	bgeu	a2,a1,a38 <__hidden___udivsi3+0x28>
 a28:	00c05863          	blez	a2,a38 <__hidden___udivsi3+0x28>
 a2c:	00161613          	slli	a2,a2,0x1
 a30:	00169693          	slli	a3,a3,0x1
 a34:	feb66ae3          	bltu	a2,a1,a28 <__hidden___udivsi3+0x18>
 a38:	00000513          	li	a0,0
 a3c:	00c5e663          	bltu	a1,a2,a48 <__hidden___udivsi3+0x38>
 a40:	40c585b3          	sub	a1,a1,a2
 a44:	00d56533          	or	a0,a0,a3
 a48:	0016d693          	srli	a3,a3,0x1
 a4c:	00165613          	srli	a2,a2,0x1
 a50:	fe0696e3          	bnez	a3,a3c <__hidden___udivsi3+0x2c>
 a54:	00008067          	ret

00000a58 <__umodsi3>:
 a58:	00008293          	mv	t0,ra
 a5c:	fb5ff0ef          	jal	ra,a10 <__hidden___udivsi3>
 a60:	00058513          	mv	a0,a1
 a64:	00028067          	jr	t0
 a68:	40a00533          	neg	a0,a0
 a6c:	00b04863          	bgtz	a1,a7c <__umodsi3+0x24>
 a70:	40b005b3          	neg	a1,a1
 a74:	f9dff06f          	j	a10 <__hidden___udivsi3>
 a78:	40b005b3          	neg	a1,a1
 a7c:	00008293          	mv	t0,ra
 a80:	f91ff0ef          	jal	ra,a10 <__hidden___udivsi3>
 a84:	40a00533          	neg	a0,a0
 a88:	00028067          	jr	t0

00000a8c <__modsi3>:
 a8c:	00008293          	mv	t0,ra
 a90:	0005ca63          	bltz	a1,aa4 <__modsi3+0x18>
 a94:	00054c63          	bltz	a0,aac <__modsi3+0x20>
 a98:	f79ff0ef          	jal	ra,a10 <__hidden___udivsi3>
 a9c:	00058513          	mv	a0,a1
 aa0:	00028067          	jr	t0
 aa4:	40b005b3          	neg	a1,a1
 aa8:	fe0558e3          	bgez	a0,a98 <__modsi3+0xc>
 aac:	40a00533          	neg	a0,a0
 ab0:	f61ff0ef          	jal	ra,a10 <__hidden___udivsi3>
 ab4:	40b00533          	neg	a0,a1
 ab8:	00028067          	jr	t0
