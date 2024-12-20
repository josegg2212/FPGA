
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
  e0:	fe458593          	addi	a1,a1,-28 # 10c0 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3a40>
 194:	00112623          	sw	ra,12(sp)
 198:	7b8000ef          	jal	ra,950 <neorv32_uart0_setup>
 19c:	140000ef          	jal	ra,2dc <neorv32_gpio_available>
 1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
 1a4:	610000ef          	jal	ra,7b4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	ddc50513          	addi	a0,a0,-548 # ddc <__etext+0xf8>
 1b0:	075000ef          	jal	ra,a24 <neorv32_uart0_print>
 1b4:	024000ef          	jal	ra,1d8 <wb_calculadora>
 1b8:	ffdff06f          	j	1b4 <main+0x34>
 1bc:	00001537          	lui	a0,0x1
 1c0:	db850513          	addi	a0,a0,-584 # db8 <__etext+0xd4>
 1c4:	061000ef          	jal	ra,a24 <neorv32_uart0_print>
 1c8:	00c12083          	lw	ra,12(sp)
 1cc:	00100513          	li	a0,1
 1d0:	01010113          	addi	sp,sp,16
 1d4:	00008067          	ret

000001d8 <wb_calculadora>:
 1d8:	00001537          	lui	a0,0x1
 1dc:	ff010113          	addi	sp,sp,-16
 1e0:	ce450513          	addi	a0,a0,-796 # ce4 <__etext>
 1e4:	00112623          	sw	ra,12(sp)
 1e8:	00812423          	sw	s0,8(sp)
 1ec:	00912223          	sw	s1,4(sp)
 1f0:	08d000ef          	jal	ra,a7c <neorv32_uart0_printf>
 1f4:	021000ef          	jal	ra,a14 <neorv32_uart0_getc>
 1f8:	fd050513          	addi	a0,a0,-48
 1fc:	90000437          	lui	s0,0x90000
 200:	00a42023          	sw	a0,0(s0) # 90000000 <__ctr0_io_space_begin+0x90000200>
 204:	00001537          	lui	a0,0x1
 208:	d0450513          	addi	a0,a0,-764 # d04 <__etext+0x20>
 20c:	071000ef          	jal	ra,a7c <neorv32_uart0_printf>
 210:	005000ef          	jal	ra,a14 <neorv32_uart0_getc>
 214:	fd050513          	addi	a0,a0,-48
 218:	00440493          	addi	s1,s0,4
 21c:	00a4a023          	sw	a0,0(s1)
 220:	00001537          	lui	a0,0x1
 224:	d2450513          	addi	a0,a0,-732 # d24 <__etext+0x40>
 228:	055000ef          	jal	ra,a7c <neorv32_uart0_printf>
 22c:	7e8000ef          	jal	ra,a14 <neorv32_uart0_getc>
 230:	00840713          	addi	a4,s0,8
 234:	00a72023          	sw	a0,0(a4)
 238:	00042403          	lw	s0,0(s0)
 23c:	0004a503          	lw	a0,0(s1)
 240:	00072703          	lw	a4,0(a4)
 244:	02d00693          	li	a3,45
 248:	40a407b3          	sub	a5,s0,a0
 24c:	04d70863          	beq	a4,a3,29c <wb_calculadora+0xc4>
 250:	02e6e263          	bltu	a3,a4,274 <wb_calculadora+0x9c>
 254:	02a00793          	li	a5,42
 258:	02f70c63          	beq	a4,a5,290 <wb_calculadora+0xb8>
 25c:	02b00693          	li	a3,43
 260:	008507b3          	add	a5,a0,s0
 264:	02d70c63          	beq	a4,a3,29c <wb_calculadora+0xc4>
 268:	00001537          	lui	a0,0x1
 26c:	d8c50513          	addi	a0,a0,-628 # d8c <__etext+0xa8>
 270:	0600006f          	j	2d0 <wb_calculadora+0xf8>
 274:	02f00793          	li	a5,47
 278:	fef718e3          	bne	a4,a5,268 <wb_calculadora+0x90>
 27c:	04050663          	beqz	a0,2c8 <wb_calculadora+0xf0>
 280:	00050593          	mv	a1,a0
 284:	00040513          	mv	a0,s0
 288:	1b1000ef          	jal	ra,c38 <__hidden___udivsi3>
 28c:	00c0006f          	j	298 <wb_calculadora+0xc0>
 290:	00040593          	mv	a1,s0
 294:	179000ef          	jal	ra,c0c <__mulsi3>
 298:	00050793          	mv	a5,a0
 29c:	900005b7          	lui	a1,0x90000
 2a0:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
 2a4:	00f5a023          	sw	a5,0(a1)
 2a8:	0005a583          	lw	a1,0(a1)
 2ac:	00812403          	lw	s0,8(sp)
 2b0:	00c12083          	lw	ra,12(sp)
 2b4:	00412483          	lw	s1,4(sp)
 2b8:	00001537          	lui	a0,0x1
 2bc:	da850513          	addi	a0,a0,-600 # da8 <__etext+0xc4>
 2c0:	01010113          	addi	sp,sp,16
 2c4:	7b80006f          	j	a7c <neorv32_uart0_printf>
 2c8:	00001537          	lui	a0,0x1
 2cc:	d7050513          	addi	a0,a0,-656 # d70 <__etext+0x8c>
 2d0:	7ac000ef          	jal	ra,a7c <neorv32_uart0_printf>
 2d4:	fff00793          	li	a5,-1
 2d8:	fc5ff06f          	j	29c <wb_calculadora+0xc4>

000002dc <neorv32_gpio_available>:
 2dc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2e0:	01055513          	srli	a0,a0,0x10
 2e4:	00157513          	andi	a0,a0,1
 2e8:	00008067          	ret
 2ec:	0000                	.2byte	0x0
 2ee:	0000                	.2byte	0x0

000002f0 <__neorv32_rte_core>:
 2f0:	fc010113          	addi	sp,sp,-64
 2f4:	02112e23          	sw	ra,60(sp)
 2f8:	02512c23          	sw	t0,56(sp)
 2fc:	02612a23          	sw	t1,52(sp)
 300:	02712823          	sw	t2,48(sp)
 304:	02a12623          	sw	a0,44(sp)
 308:	02b12423          	sw	a1,40(sp)
 30c:	02c12223          	sw	a2,36(sp)
 310:	02d12023          	sw	a3,32(sp)
 314:	00e12e23          	sw	a4,28(sp)
 318:	00f12c23          	sw	a5,24(sp)
 31c:	01012a23          	sw	a6,20(sp)
 320:	01112823          	sw	a7,16(sp)
 324:	01c12623          	sw	t3,12(sp)
 328:	01d12423          	sw	t4,8(sp)
 32c:	01e12223          	sw	t5,4(sp)
 330:	01f12023          	sw	t6,0(sp)
 334:	34102773          	csrr	a4,mepc
 338:	34071073          	csrw	mscratch,a4
 33c:	342027f3          	csrr	a5,mcause
 340:	0807c863          	bltz	a5,3d0 <__neorv32_rte_core+0xe0>
 344:	00071683          	lh	a3,0(a4)
 348:	00300593          	li	a1,3
 34c:	0036f693          	andi	a3,a3,3
 350:	00270613          	addi	a2,a4,2
 354:	00b69463          	bne	a3,a1,35c <__neorv32_rte_core+0x6c>
 358:	00470613          	addi	a2,a4,4
 35c:	34161073          	csrw	mepc,a2
 360:	00b00713          	li	a4,11
 364:	04f77a63          	bgeu	a4,a5,3b8 <__neorv32_rte_core+0xc8>
 368:	5a000793          	li	a5,1440
 36c:	000780e7          	jalr	a5
 370:	03c12083          	lw	ra,60(sp)
 374:	03812283          	lw	t0,56(sp)
 378:	03412303          	lw	t1,52(sp)
 37c:	03012383          	lw	t2,48(sp)
 380:	02c12503          	lw	a0,44(sp)
 384:	02812583          	lw	a1,40(sp)
 388:	02412603          	lw	a2,36(sp)
 38c:	02012683          	lw	a3,32(sp)
 390:	01c12703          	lw	a4,28(sp)
 394:	01812783          	lw	a5,24(sp)
 398:	01412803          	lw	a6,20(sp)
 39c:	01012883          	lw	a7,16(sp)
 3a0:	00c12e03          	lw	t3,12(sp)
 3a4:	00812e83          	lw	t4,8(sp)
 3a8:	00412f03          	lw	t5,4(sp)
 3ac:	00012f83          	lw	t6,0(sp)
 3b0:	04010113          	addi	sp,sp,64
 3b4:	30200073          	mret
 3b8:	00001737          	lui	a4,0x1
 3bc:	00279793          	slli	a5,a5,0x2
 3c0:	df870713          	addi	a4,a4,-520 # df8 <__etext+0x114>
 3c4:	00e787b3          	add	a5,a5,a4
 3c8:	0007a783          	lw	a5,0(a5)
 3cc:	00078067          	jr	a5
 3d0:	80000737          	lui	a4,0x80000
 3d4:	ffd74713          	xori	a4,a4,-3
 3d8:	00e787b3          	add	a5,a5,a4
 3dc:	01c00713          	li	a4,28
 3e0:	f8f764e3          	bltu	a4,a5,368 <__neorv32_rte_core+0x78>
 3e4:	00001737          	lui	a4,0x1
 3e8:	00279793          	slli	a5,a5,0x2
 3ec:	e2870713          	addi	a4,a4,-472 # e28 <__etext+0x144>
 3f0:	00e787b3          	add	a5,a5,a4
 3f4:	0007a783          	lw	a5,0(a5)
 3f8:	00078067          	jr	a5
 3fc:	800007b7          	lui	a5,0x80000
 400:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 404:	f69ff06f          	j	36c <__neorv32_rte_core+0x7c>
 408:	800007b7          	lui	a5,0x80000
 40c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 410:	f5dff06f          	j	36c <__neorv32_rte_core+0x7c>
 414:	800007b7          	lui	a5,0x80000
 418:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 41c:	f51ff06f          	j	36c <__neorv32_rte_core+0x7c>
 420:	800007b7          	lui	a5,0x80000
 424:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 428:	f45ff06f          	j	36c <__neorv32_rte_core+0x7c>
 42c:	800007b7          	lui	a5,0x80000
 430:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 434:	f39ff06f          	j	36c <__neorv32_rte_core+0x7c>
 438:	800007b7          	lui	a5,0x80000
 43c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 440:	f2dff06f          	j	36c <__neorv32_rte_core+0x7c>
 444:	800007b7          	lui	a5,0x80000
 448:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 44c:	f21ff06f          	j	36c <__neorv32_rte_core+0x7c>
 450:	800007b7          	lui	a5,0x80000
 454:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 458:	f15ff06f          	j	36c <__neorv32_rte_core+0x7c>
 45c:	800007b7          	lui	a5,0x80000
 460:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 464:	f09ff06f          	j	36c <__neorv32_rte_core+0x7c>
 468:	800007b7          	lui	a5,0x80000
 46c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 470:	efdff06f          	j	36c <__neorv32_rte_core+0x7c>
 474:	800007b7          	lui	a5,0x80000
 478:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 47c:	ef1ff06f          	j	36c <__neorv32_rte_core+0x7c>
 480:	800007b7          	lui	a5,0x80000
 484:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 488:	ee5ff06f          	j	36c <__neorv32_rte_core+0x7c>
 48c:	800007b7          	lui	a5,0x80000
 490:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 494:	ed9ff06f          	j	36c <__neorv32_rte_core+0x7c>
 498:	800007b7          	lui	a5,0x80000
 49c:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 4a0:	ecdff06f          	j	36c <__neorv32_rte_core+0x7c>
 4a4:	800007b7          	lui	a5,0x80000
 4a8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 4ac:	ec1ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4b0:	800007b7          	lui	a5,0x80000
 4b4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 4b8:	eb5ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4bc:	800007b7          	lui	a5,0x80000
 4c0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 4c4:	ea9ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4c8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 4cc:	ea1ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4d0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 4d4:	e99ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4d8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 4dc:	e91ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4e0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 4e4:	e89ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4e8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 4ec:	e81ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4f0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 4f4:	e79ff06f          	j	36c <__neorv32_rte_core+0x7c>
 4f8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 4fc:	e71ff06f          	j	36c <__neorv32_rte_core+0x7c>
 500:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 504:	e69ff06f          	j	36c <__neorv32_rte_core+0x7c>
 508:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 50c:	e61ff06f          	j	36c <__neorv32_rte_core+0x7c>
 510:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 514:	e59ff06f          	j	36c <__neorv32_rte_core+0x7c>
 518:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 51c:	e51ff06f          	j	36c <__neorv32_rte_core+0x7c>
 520:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 524:	e49ff06f          	j	36c <__neorv32_rte_core+0x7c>
 528:	0000                	.2byte	0x0
 52a:	0000                	.2byte	0x0
 52c:	0000                	.2byte	0x0
 52e:	0000                	.2byte	0x0

00000530 <__neorv32_rte_print_hex_word>:
 530:	fe010113          	addi	sp,sp,-32
 534:	01212823          	sw	s2,16(sp)
 538:	00050913          	mv	s2,a0
 53c:	00001537          	lui	a0,0x1
 540:	00912a23          	sw	s1,20(sp)
 544:	e9c50513          	addi	a0,a0,-356 # e9c <__etext+0x1b8>
 548:	000014b7          	lui	s1,0x1
 54c:	00812c23          	sw	s0,24(sp)
 550:	01312623          	sw	s3,12(sp)
 554:	00112e23          	sw	ra,28(sp)
 558:	01c00413          	li	s0,28
 55c:	4c8000ef          	jal	ra,a24 <neorv32_uart0_print>
 560:	09048493          	addi	s1,s1,144 # 1090 <hex_symbols.0>
 564:	ffc00993          	li	s3,-4
 568:	008957b3          	srl	a5,s2,s0
 56c:	00f7f793          	andi	a5,a5,15
 570:	00f487b3          	add	a5,s1,a5
 574:	0007c503          	lbu	a0,0(a5)
 578:	ffc40413          	addi	s0,s0,-4
 57c:	480000ef          	jal	ra,9fc <neorv32_uart0_putc>
 580:	ff3414e3          	bne	s0,s3,568 <__neorv32_rte_print_hex_word+0x38>
 584:	01c12083          	lw	ra,28(sp)
 588:	01812403          	lw	s0,24(sp)
 58c:	01412483          	lw	s1,20(sp)
 590:	01012903          	lw	s2,16(sp)
 594:	00c12983          	lw	s3,12(sp)
 598:	02010113          	addi	sp,sp,32
 59c:	00008067          	ret

000005a0 <__neorv32_rte_debug_exc_handler>:
 5a0:	ff010113          	addi	sp,sp,-16
 5a4:	00112623          	sw	ra,12(sp)
 5a8:	00812423          	sw	s0,8(sp)
 5ac:	00912223          	sw	s1,4(sp)
 5b0:	390000ef          	jal	ra,940 <neorv32_uart0_available>
 5b4:	1a050e63          	beqz	a0,770 <__neorv32_rte_debug_exc_handler+0x1d0>
 5b8:	00001537          	lui	a0,0x1
 5bc:	ea050513          	addi	a0,a0,-352 # ea0 <__etext+0x1bc>
 5c0:	464000ef          	jal	ra,a24 <neorv32_uart0_print>
 5c4:	34202473          	csrr	s0,mcause
 5c8:	00900713          	li	a4,9
 5cc:	00f47793          	andi	a5,s0,15
 5d0:	03078493          	addi	s1,a5,48
 5d4:	00f77463          	bgeu	a4,a5,5dc <__neorv32_rte_debug_exc_handler+0x3c>
 5d8:	05778493          	addi	s1,a5,87
 5dc:	00b00793          	li	a5,11
 5e0:	0087ee63          	bltu	a5,s0,5fc <__neorv32_rte_debug_exc_handler+0x5c>
 5e4:	00001737          	lui	a4,0x1
 5e8:	00241793          	slli	a5,s0,0x2
 5ec:	06070713          	addi	a4,a4,96 # 1060 <__etext+0x37c>
 5f0:	00e787b3          	add	a5,a5,a4
 5f4:	0007a783          	lw	a5,0(a5)
 5f8:	00078067          	jr	a5
 5fc:	800007b7          	lui	a5,0x80000
 600:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 604:	14e40463          	beq	s0,a4,74c <__neorv32_rte_debug_exc_handler+0x1ac>
 608:	02876663          	bltu	a4,s0,634 <__neorv32_rte_debug_exc_handler+0x94>
 60c:	00378713          	addi	a4,a5,3
 610:	12e40263          	beq	s0,a4,734 <__neorv32_rte_debug_exc_handler+0x194>
 614:	00778793          	addi	a5,a5,7
 618:	12f40463          	beq	s0,a5,740 <__neorv32_rte_debug_exc_handler+0x1a0>
 61c:	00001537          	lui	a0,0x1
 620:	00050513          	mv	a0,a0
 624:	400000ef          	jal	ra,a24 <neorv32_uart0_print>
 628:	00040513          	mv	a0,s0
 62c:	f05ff0ef          	jal	ra,530 <__neorv32_rte_print_hex_word>
 630:	0280006f          	j	658 <__neorv32_rte_debug_exc_handler+0xb8>
 634:	ff07c793          	xori	a5,a5,-16
 638:	00f407b3          	add	a5,s0,a5
 63c:	00f00713          	li	a4,15
 640:	fcf76ee3          	bltu	a4,a5,61c <__neorv32_rte_debug_exc_handler+0x7c>
 644:	00001537          	lui	a0,0x1
 648:	ff050513          	addi	a0,a0,-16 # ff0 <__etext+0x30c>
 64c:	3d8000ef          	jal	ra,a24 <neorv32_uart0_print>
 650:	00048513          	mv	a0,s1
 654:	3a8000ef          	jal	ra,9fc <neorv32_uart0_putc>
 658:	00001537          	lui	a0,0x1
 65c:	04450513          	addi	a0,a0,68 # 1044 <__etext+0x360>
 660:	3c4000ef          	jal	ra,a24 <neorv32_uart0_print>
 664:	34002573          	csrr	a0,mscratch
 668:	ec9ff0ef          	jal	ra,530 <__neorv32_rte_print_hex_word>
 66c:	00001537          	lui	a0,0x1
 670:	04c50513          	addi	a0,a0,76 # 104c <__etext+0x368>
 674:	3b0000ef          	jal	ra,a24 <neorv32_uart0_print>
 678:	34302573          	csrr	a0,mtval
 67c:	eb5ff0ef          	jal	ra,530 <__neorv32_rte_print_hex_word>
 680:	00812403          	lw	s0,8(sp)
 684:	00c12083          	lw	ra,12(sp)
 688:	00412483          	lw	s1,4(sp)
 68c:	00001537          	lui	a0,0x1
 690:	05850513          	addi	a0,a0,88 # 1058 <__etext+0x374>
 694:	01010113          	addi	sp,sp,16
 698:	38c0006f          	j	a24 <neorv32_uart0_print>
 69c:	00001537          	lui	a0,0x1
 6a0:	ea850513          	addi	a0,a0,-344 # ea8 <__etext+0x1c4>
 6a4:	380000ef          	jal	ra,a24 <neorv32_uart0_print>
 6a8:	fb1ff06f          	j	658 <__neorv32_rte_debug_exc_handler+0xb8>
 6ac:	00001537          	lui	a0,0x1
 6b0:	ec850513          	addi	a0,a0,-312 # ec8 <__etext+0x1e4>
 6b4:	370000ef          	jal	ra,a24 <neorv32_uart0_print>
 6b8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 6bc:	0a07d463          	bgez	a5,764 <__neorv32_rte_debug_exc_handler+0x1c4>
 6c0:	0017f793          	andi	a5,a5,1
 6c4:	08078a63          	beqz	a5,758 <__neorv32_rte_debug_exc_handler+0x1b8>
 6c8:	00001537          	lui	a0,0x1
 6cc:	01850513          	addi	a0,a0,24 # 1018 <__etext+0x334>
 6d0:	fd5ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 6d4:	00001537          	lui	a0,0x1
 6d8:	ee450513          	addi	a0,a0,-284 # ee4 <__etext+0x200>
 6dc:	fc9ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 6e0:	00001537          	lui	a0,0x1
 6e4:	ef850513          	addi	a0,a0,-264 # ef8 <__etext+0x214>
 6e8:	fbdff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 6ec:	00001537          	lui	a0,0x1
 6f0:	f0450513          	addi	a0,a0,-252 # f04 <__etext+0x220>
 6f4:	fb1ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 6f8:	00001537          	lui	a0,0x1
 6fc:	f1c50513          	addi	a0,a0,-228 # f1c <__etext+0x238>
 700:	fb5ff06f          	j	6b4 <__neorv32_rte_debug_exc_handler+0x114>
 704:	00001537          	lui	a0,0x1
 708:	f3050513          	addi	a0,a0,-208 # f30 <__etext+0x24c>
 70c:	f99ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 710:	00001537          	lui	a0,0x1
 714:	f4c50513          	addi	a0,a0,-180 # f4c <__etext+0x268>
 718:	f9dff06f          	j	6b4 <__neorv32_rte_debug_exc_handler+0x114>
 71c:	00001537          	lui	a0,0x1
 720:	f6050513          	addi	a0,a0,-160 # f60 <__etext+0x27c>
 724:	f81ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 728:	00001537          	lui	a0,0x1
 72c:	f8050513          	addi	a0,a0,-128 # f80 <__etext+0x29c>
 730:	f75ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 734:	00001537          	lui	a0,0x1
 738:	fa050513          	addi	a0,a0,-96 # fa0 <__etext+0x2bc>
 73c:	f69ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 740:	00001537          	lui	a0,0x1
 744:	fbc50513          	addi	a0,a0,-68 # fbc <__etext+0x2d8>
 748:	f5dff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 74c:	00001537          	lui	a0,0x1
 750:	fd450513          	addi	a0,a0,-44 # fd4 <__etext+0x2f0>
 754:	f51ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 758:	00001537          	lui	a0,0x1
 75c:	02850513          	addi	a0,a0,40 # 1028 <__etext+0x344>
 760:	f45ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 764:	00001537          	lui	a0,0x1
 768:	03850513          	addi	a0,a0,56 # 1038 <__etext+0x354>
 76c:	f39ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x104>
 770:	00c12083          	lw	ra,12(sp)
 774:	00812403          	lw	s0,8(sp)
 778:	00412483          	lw	s1,4(sp)
 77c:	01010113          	addi	sp,sp,16
 780:	00008067          	ret

00000784 <neorv32_rte_exception_uninstall>:
 784:	01f00793          	li	a5,31
 788:	02a7e263          	bltu	a5,a0,7ac <neorv32_rte_exception_uninstall+0x28>
 78c:	800007b7          	lui	a5,0x80000
 790:	00251513          	slli	a0,a0,0x2
 794:	00078793          	mv	a5,a5
 798:	00a787b3          	add	a5,a5,a0
 79c:	5a000713          	li	a4,1440
 7a0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 7a4:	00000513          	li	a0,0
 7a8:	00008067          	ret
 7ac:	00100513          	li	a0,1
 7b0:	00008067          	ret

000007b4 <neorv32_rte_setup>:
 7b4:	ff010113          	addi	sp,sp,-16
 7b8:	00112623          	sw	ra,12(sp)
 7bc:	00812423          	sw	s0,8(sp)
 7c0:	00912223          	sw	s1,4(sp)
 7c4:	2f000793          	li	a5,752
 7c8:	30579073          	csrw	mtvec,a5
 7cc:	00000413          	li	s0,0
 7d0:	01d00493          	li	s1,29
 7d4:	00040513          	mv	a0,s0
 7d8:	00140413          	addi	s0,s0,1
 7dc:	0ff47413          	zext.b	s0,s0
 7e0:	fa5ff0ef          	jal	ra,784 <neorv32_rte_exception_uninstall>
 7e4:	fe9418e3          	bne	s0,s1,7d4 <neorv32_rte_setup+0x20>
 7e8:	00c12083          	lw	ra,12(sp)
 7ec:	00812403          	lw	s0,8(sp)
 7f0:	00412483          	lw	s1,4(sp)
 7f4:	01010113          	addi	sp,sp,16
 7f8:	00008067          	ret

000007fc <__neorv32_uart_itoa>:
 7fc:	fd010113          	addi	sp,sp,-48
 800:	02812423          	sw	s0,40(sp)
 804:	02912223          	sw	s1,36(sp)
 808:	03212023          	sw	s2,32(sp)
 80c:	01312e23          	sw	s3,28(sp)
 810:	01412c23          	sw	s4,24(sp)
 814:	02112623          	sw	ra,44(sp)
 818:	01512a23          	sw	s5,20(sp)
 81c:	00001a37          	lui	s4,0x1
 820:	00050493          	mv	s1,a0
 824:	00058413          	mv	s0,a1
 828:	00058523          	sb	zero,10(a1)
 82c:	00000993          	li	s3,0
 830:	00410913          	addi	s2,sp,4
 834:	0b4a0a13          	addi	s4,s4,180 # 10b4 <numbers.1>
 838:	00a00593          	li	a1,10
 83c:	00048513          	mv	a0,s1
 840:	440000ef          	jal	ra,c80 <__umodsi3>
 844:	00aa0533          	add	a0,s4,a0
 848:	00054783          	lbu	a5,0(a0)
 84c:	01390ab3          	add	s5,s2,s3
 850:	00048513          	mv	a0,s1
 854:	00fa8023          	sb	a5,0(s5)
 858:	00a00593          	li	a1,10
 85c:	3dc000ef          	jal	ra,c38 <__hidden___udivsi3>
 860:	00198993          	addi	s3,s3,1
 864:	00a00793          	li	a5,10
 868:	00050493          	mv	s1,a0
 86c:	fcf996e3          	bne	s3,a5,838 <__neorv32_uart_itoa+0x3c>
 870:	00090693          	mv	a3,s2
 874:	00900713          	li	a4,9
 878:	03000613          	li	a2,48
 87c:	0096c583          	lbu	a1,9(a3)
 880:	00070793          	mv	a5,a4
 884:	fff70713          	addi	a4,a4,-1
 888:	01071713          	slli	a4,a4,0x10
 88c:	01075713          	srli	a4,a4,0x10
 890:	00c59a63          	bne	a1,a2,8a4 <__neorv32_uart_itoa+0xa8>
 894:	000684a3          	sb	zero,9(a3)
 898:	fff68693          	addi	a3,a3,-1
 89c:	fe0710e3          	bnez	a4,87c <__neorv32_uart_itoa+0x80>
 8a0:	00000793          	li	a5,0
 8a4:	00f907b3          	add	a5,s2,a5
 8a8:	00000713          	li	a4,0
 8ac:	0007c683          	lbu	a3,0(a5)
 8b0:	00068c63          	beqz	a3,8c8 <__neorv32_uart_itoa+0xcc>
 8b4:	00170613          	addi	a2,a4,1
 8b8:	00e40733          	add	a4,s0,a4
 8bc:	00d70023          	sb	a3,0(a4)
 8c0:	01061713          	slli	a4,a2,0x10
 8c4:	01075713          	srli	a4,a4,0x10
 8c8:	fff78693          	addi	a3,a5,-1
 8cc:	02f91863          	bne	s2,a5,8fc <__neorv32_uart_itoa+0x100>
 8d0:	00e40433          	add	s0,s0,a4
 8d4:	00040023          	sb	zero,0(s0)
 8d8:	02c12083          	lw	ra,44(sp)
 8dc:	02812403          	lw	s0,40(sp)
 8e0:	02412483          	lw	s1,36(sp)
 8e4:	02012903          	lw	s2,32(sp)
 8e8:	01c12983          	lw	s3,28(sp)
 8ec:	01812a03          	lw	s4,24(sp)
 8f0:	01412a83          	lw	s5,20(sp)
 8f4:	03010113          	addi	sp,sp,48
 8f8:	00008067          	ret
 8fc:	00068793          	mv	a5,a3
 900:	fadff06f          	j	8ac <__neorv32_uart_itoa+0xb0>

00000904 <__neorv32_uart_tohex>:
 904:	00001637          	lui	a2,0x1
 908:	00758693          	addi	a3,a1,7
 90c:	00000713          	li	a4,0
 910:	0a060613          	addi	a2,a2,160 # 10a0 <symbols.0>
 914:	02000813          	li	a6,32
 918:	00e557b3          	srl	a5,a0,a4
 91c:	00f7f793          	andi	a5,a5,15
 920:	00f607b3          	add	a5,a2,a5
 924:	0007c783          	lbu	a5,0(a5)
 928:	00470713          	addi	a4,a4,4
 92c:	fff68693          	addi	a3,a3,-1
 930:	00f680a3          	sb	a5,1(a3)
 934:	ff0712e3          	bne	a4,a6,918 <__neorv32_uart_tohex+0x14>
 938:	00058423          	sb	zero,8(a1)
 93c:	00008067          	ret

00000940 <neorv32_uart0_available>:
 940:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 944:	01255513          	srli	a0,a0,0x12
 948:	00157513          	andi	a0,a0,1
 94c:	00008067          	ret

00000950 <neorv32_uart0_setup>:
 950:	ff010113          	addi	sp,sp,-16
 954:	00812423          	sw	s0,8(sp)
 958:	00912223          	sw	s1,4(sp)
 95c:	00112623          	sw	ra,12(sp)
 960:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 964:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 968:	00058413          	mv	s0,a1
 96c:	00151593          	slli	a1,a0,0x1
 970:	00078513          	mv	a0,a5
 974:	00060493          	mv	s1,a2
 978:	2c0000ef          	jal	ra,c38 <__hidden___udivsi3>
 97c:	01051513          	slli	a0,a0,0x10
 980:	000017b7          	lui	a5,0x1
 984:	01055513          	srli	a0,a0,0x10
 988:	00000713          	li	a4,0
 98c:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x31a>
 990:	04a7e463          	bltu	a5,a0,9d8 <neorv32_uart0_setup+0x88>
 994:	0034f493          	andi	s1,s1,3
 998:	01449493          	slli	s1,s1,0x14
 99c:	00347413          	andi	s0,s0,3
 9a0:	fff50793          	addi	a5,a0,-1
 9a4:	0097e7b3          	or	a5,a5,s1
 9a8:	01641413          	slli	s0,s0,0x16
 9ac:	0087e7b3          	or	a5,a5,s0
 9b0:	01871713          	slli	a4,a4,0x18
 9b4:	00c12083          	lw	ra,12(sp)
 9b8:	00812403          	lw	s0,8(sp)
 9bc:	00e7e7b3          	or	a5,a5,a4
 9c0:	10000737          	lui	a4,0x10000
 9c4:	00e7e7b3          	or	a5,a5,a4
 9c8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 9cc:	00412483          	lw	s1,4(sp)
 9d0:	01010113          	addi	sp,sp,16
 9d4:	00008067          	ret
 9d8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffef3e>
 9dc:	0fd6f693          	andi	a3,a3,253
 9e0:	00069a63          	bnez	a3,9f4 <neorv32_uart0_setup+0xa4>
 9e4:	00355513          	srli	a0,a0,0x3
 9e8:	00170713          	addi	a4,a4,1
 9ec:	0ff77713          	zext.b	a4,a4
 9f0:	fa1ff06f          	j	990 <neorv32_uart0_setup+0x40>
 9f4:	00155513          	srli	a0,a0,0x1
 9f8:	ff1ff06f          	j	9e8 <neorv32_uart0_setup+0x98>

000009fc <neorv32_uart0_putc>:
 9fc:	00040737          	lui	a4,0x40
 a00:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a04:	00e7f7b3          	and	a5,a5,a4
 a08:	fe079ce3          	bnez	a5,a00 <neorv32_uart0_putc+0x4>
 a0c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 a10:	00008067          	ret

00000a14 <neorv32_uart0_getc>:
 a14:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 a18:	fe055ee3          	bgez	a0,a14 <neorv32_uart0_getc>
 a1c:	0ff57513          	zext.b	a0,a0
 a20:	00008067          	ret

00000a24 <neorv32_uart0_print>:
 a24:	ff010113          	addi	sp,sp,-16
 a28:	00812423          	sw	s0,8(sp)
 a2c:	01212023          	sw	s2,0(sp)
 a30:	00112623          	sw	ra,12(sp)
 a34:	00912223          	sw	s1,4(sp)
 a38:	00050413          	mv	s0,a0
 a3c:	00a00913          	li	s2,10
 a40:	00044483          	lbu	s1,0(s0)
 a44:	00140413          	addi	s0,s0,1
 a48:	00049e63          	bnez	s1,a64 <neorv32_uart0_print+0x40>
 a4c:	00c12083          	lw	ra,12(sp)
 a50:	00812403          	lw	s0,8(sp)
 a54:	00412483          	lw	s1,4(sp)
 a58:	00012903          	lw	s2,0(sp)
 a5c:	01010113          	addi	sp,sp,16
 a60:	00008067          	ret
 a64:	01249663          	bne	s1,s2,a70 <neorv32_uart0_print+0x4c>
 a68:	00d00513          	li	a0,13
 a6c:	f91ff0ef          	jal	ra,9fc <neorv32_uart0_putc>
 a70:	00048513          	mv	a0,s1
 a74:	f89ff0ef          	jal	ra,9fc <neorv32_uart0_putc>
 a78:	fc9ff06f          	j	a40 <neorv32_uart0_print+0x1c>

00000a7c <neorv32_uart0_printf>:
 a7c:	fa010113          	addi	sp,sp,-96
 a80:	04f12a23          	sw	a5,84(sp)
 a84:	04410793          	addi	a5,sp,68
 a88:	02812c23          	sw	s0,56(sp)
 a8c:	03212823          	sw	s2,48(sp)
 a90:	03312623          	sw	s3,44(sp)
 a94:	03412423          	sw	s4,40(sp)
 a98:	03512223          	sw	s5,36(sp)
 a9c:	03612023          	sw	s6,32(sp)
 aa0:	01712e23          	sw	s7,28(sp)
 aa4:	01812c23          	sw	s8,24(sp)
 aa8:	02112e23          	sw	ra,60(sp)
 aac:	02912a23          	sw	s1,52(sp)
 ab0:	00050413          	mv	s0,a0
 ab4:	04b12223          	sw	a1,68(sp)
 ab8:	04c12423          	sw	a2,72(sp)
 abc:	04d12623          	sw	a3,76(sp)
 ac0:	04e12823          	sw	a4,80(sp)
 ac4:	05012c23          	sw	a6,88(sp)
 ac8:	05112e23          	sw	a7,92(sp)
 acc:	00f12023          	sw	a5,0(sp)
 ad0:	02500993          	li	s3,37
 ad4:	00a00a13          	li	s4,10
 ad8:	07300913          	li	s2,115
 adc:	07500a93          	li	s5,117
 ae0:	07800b13          	li	s6,120
 ae4:	06300b93          	li	s7,99
 ae8:	06900c13          	li	s8,105
 aec:	00044483          	lbu	s1,0(s0)
 af0:	02049a63          	bnez	s1,b24 <neorv32_uart0_printf+0xa8>
 af4:	03c12083          	lw	ra,60(sp)
 af8:	03812403          	lw	s0,56(sp)
 afc:	03412483          	lw	s1,52(sp)
 b00:	03012903          	lw	s2,48(sp)
 b04:	02c12983          	lw	s3,44(sp)
 b08:	02812a03          	lw	s4,40(sp)
 b0c:	02412a83          	lw	s5,36(sp)
 b10:	02012b03          	lw	s6,32(sp)
 b14:	01c12b83          	lw	s7,28(sp)
 b18:	01812c03          	lw	s8,24(sp)
 b1c:	06010113          	addi	sp,sp,96
 b20:	00008067          	ret
 b24:	0d349663          	bne	s1,s3,bf0 <neorv32_uart0_printf+0x174>
 b28:	00144483          	lbu	s1,1(s0)
 b2c:	05248263          	beq	s1,s2,b70 <neorv32_uart0_printf+0xf4>
 b30:	00996e63          	bltu	s2,s1,b4c <neorv32_uart0_printf+0xd0>
 b34:	05748c63          	beq	s1,s7,b8c <neorv32_uart0_printf+0x110>
 b38:	07848663          	beq	s1,s8,ba4 <neorv32_uart0_printf+0x128>
 b3c:	02500513          	li	a0,37
 b40:	ebdff0ef          	jal	ra,9fc <neorv32_uart0_putc>
 b44:	00048513          	mv	a0,s1
 b48:	0540006f          	j	b9c <neorv32_uart0_printf+0x120>
 b4c:	09548663          	beq	s1,s5,bd8 <neorv32_uart0_printf+0x15c>
 b50:	ff6496e3          	bne	s1,s6,b3c <neorv32_uart0_printf+0xc0>
 b54:	00012783          	lw	a5,0(sp)
 b58:	00410593          	addi	a1,sp,4
 b5c:	0007a503          	lw	a0,0(a5)
 b60:	00478713          	addi	a4,a5,4
 b64:	00e12023          	sw	a4,0(sp)
 b68:	d9dff0ef          	jal	ra,904 <__neorv32_uart_tohex>
 b6c:	0640006f          	j	bd0 <neorv32_uart0_printf+0x154>
 b70:	00012783          	lw	a5,0(sp)
 b74:	0007a503          	lw	a0,0(a5)
 b78:	00478713          	addi	a4,a5,4
 b7c:	00e12023          	sw	a4,0(sp)
 b80:	ea5ff0ef          	jal	ra,a24 <neorv32_uart0_print>
 b84:	00240413          	addi	s0,s0,2
 b88:	f65ff06f          	j	aec <neorv32_uart0_printf+0x70>
 b8c:	00012783          	lw	a5,0(sp)
 b90:	0007c503          	lbu	a0,0(a5)
 b94:	00478713          	addi	a4,a5,4
 b98:	00e12023          	sw	a4,0(sp)
 b9c:	e61ff0ef          	jal	ra,9fc <neorv32_uart0_putc>
 ba0:	fe5ff06f          	j	b84 <neorv32_uart0_printf+0x108>
 ba4:	00012783          	lw	a5,0(sp)
 ba8:	0007a483          	lw	s1,0(a5)
 bac:	00478713          	addi	a4,a5,4
 bb0:	00e12023          	sw	a4,0(sp)
 bb4:	0004d863          	bgez	s1,bc4 <neorv32_uart0_printf+0x148>
 bb8:	02d00513          	li	a0,45
 bbc:	409004b3          	neg	s1,s1
 bc0:	e3dff0ef          	jal	ra,9fc <neorv32_uart0_putc>
 bc4:	00410593          	addi	a1,sp,4
 bc8:	00048513          	mv	a0,s1
 bcc:	c31ff0ef          	jal	ra,7fc <__neorv32_uart_itoa>
 bd0:	00410513          	addi	a0,sp,4
 bd4:	fadff06f          	j	b80 <neorv32_uart0_printf+0x104>
 bd8:	00012783          	lw	a5,0(sp)
 bdc:	00410593          	addi	a1,sp,4
 be0:	00478713          	addi	a4,a5,4
 be4:	0007a503          	lw	a0,0(a5)
 be8:	00e12023          	sw	a4,0(sp)
 bec:	fe1ff06f          	j	bcc <neorv32_uart0_printf+0x150>
 bf0:	01449663          	bne	s1,s4,bfc <neorv32_uart0_printf+0x180>
 bf4:	00d00513          	li	a0,13
 bf8:	e05ff0ef          	jal	ra,9fc <neorv32_uart0_putc>
 bfc:	00048513          	mv	a0,s1
 c00:	00140413          	addi	s0,s0,1
 c04:	df9ff0ef          	jal	ra,9fc <neorv32_uart0_putc>
 c08:	ee5ff06f          	j	aec <neorv32_uart0_printf+0x70>

00000c0c <__mulsi3>:
 c0c:	00050613          	mv	a2,a0
 c10:	00000513          	li	a0,0
 c14:	0015f693          	andi	a3,a1,1
 c18:	00068463          	beqz	a3,c20 <__mulsi3+0x14>
 c1c:	00c50533          	add	a0,a0,a2
 c20:	0015d593          	srli	a1,a1,0x1
 c24:	00161613          	slli	a2,a2,0x1
 c28:	fe0596e3          	bnez	a1,c14 <__mulsi3+0x8>
 c2c:	00008067          	ret

00000c30 <__divsi3>:
 c30:	06054063          	bltz	a0,c90 <__umodsi3+0x10>
 c34:	0605c663          	bltz	a1,ca0 <__umodsi3+0x20>

00000c38 <__hidden___udivsi3>:
 c38:	00058613          	mv	a2,a1
 c3c:	00050593          	mv	a1,a0
 c40:	fff00513          	li	a0,-1
 c44:	02060c63          	beqz	a2,c7c <__hidden___udivsi3+0x44>
 c48:	00100693          	li	a3,1
 c4c:	00b67a63          	bgeu	a2,a1,c60 <__hidden___udivsi3+0x28>
 c50:	00c05863          	blez	a2,c60 <__hidden___udivsi3+0x28>
 c54:	00161613          	slli	a2,a2,0x1
 c58:	00169693          	slli	a3,a3,0x1
 c5c:	feb66ae3          	bltu	a2,a1,c50 <__hidden___udivsi3+0x18>
 c60:	00000513          	li	a0,0
 c64:	00c5e663          	bltu	a1,a2,c70 <__hidden___udivsi3+0x38>
 c68:	40c585b3          	sub	a1,a1,a2
 c6c:	00d56533          	or	a0,a0,a3
 c70:	0016d693          	srli	a3,a3,0x1
 c74:	00165613          	srli	a2,a2,0x1
 c78:	fe0696e3          	bnez	a3,c64 <__hidden___udivsi3+0x2c>
 c7c:	00008067          	ret

00000c80 <__umodsi3>:
 c80:	00008293          	mv	t0,ra
 c84:	fb5ff0ef          	jal	ra,c38 <__hidden___udivsi3>
 c88:	00058513          	mv	a0,a1
 c8c:	00028067          	jr	t0
 c90:	40a00533          	neg	a0,a0
 c94:	00b04863          	bgtz	a1,ca4 <__umodsi3+0x24>
 c98:	40b005b3          	neg	a1,a1
 c9c:	f9dff06f          	j	c38 <__hidden___udivsi3>
 ca0:	40b005b3          	neg	a1,a1
 ca4:	00008293          	mv	t0,ra
 ca8:	f91ff0ef          	jal	ra,c38 <__hidden___udivsi3>
 cac:	40a00533          	neg	a0,a0
 cb0:	00028067          	jr	t0

00000cb4 <__modsi3>:
 cb4:	00008293          	mv	t0,ra
 cb8:	0005ca63          	bltz	a1,ccc <__modsi3+0x18>
 cbc:	00054c63          	bltz	a0,cd4 <__modsi3+0x20>
 cc0:	f79ff0ef          	jal	ra,c38 <__hidden___udivsi3>
 cc4:	00058513          	mv	a0,a1
 cc8:	00028067          	jr	t0
 ccc:	40b005b3          	neg	a1,a1
 cd0:	fe0558e3          	bgez	a0,cc0 <__modsi3+0xc>
 cd4:	40a00533          	neg	a0,a0
 cd8:	f61ff0ef          	jal	ra,c38 <__hidden___udivsi3>
 cdc:	40b00533          	neg	a0,a1
 ce0:	00028067          	jr	t0
