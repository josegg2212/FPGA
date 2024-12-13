
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
  e0:	dfc58593          	addi	a1,a1,-516 # ed8 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3c28>
 194:	00112623          	sw	ra,12(sp)
 198:	6d8000ef          	jal	ra,870 <neorv32_uart0_setup>
 19c:	060000ef          	jal	ra,1fc <neorv32_gpio_available>
 1a0:	02051063          	bnez	a0,1c0 <main+0x40>
 1a4:	00001537          	lui	a0,0x1
 1a8:	be050513          	addi	a0,a0,-1056 # be0 <__etext+0x10>
 1ac:	788000ef          	jal	ra,934 <neorv32_uart0_print>
 1b0:	00100513          	li	a0,1
 1b4:	00c12083          	lw	ra,12(sp)
 1b8:	01010113          	addi	sp,sp,16
 1bc:	00008067          	ret
 1c0:	514000ef          	jal	ra,6d4 <neorv32_rte_setup>
 1c4:	00001537          	lui	a0,0x1
 1c8:	c0450513          	addi	a0,a0,-1020 # c04 <__etext+0x34>
 1cc:	768000ef          	jal	ra,934 <neorv32_uart0_print>
 1d0:	00c000ef          	jal	ra,1dc <wb_regs>
 1d4:	00000513          	li	a0,0
 1d8:	fddff06f          	j	1b4 <main+0x34>

000001dc <wb_regs>:
 1dc:	abcd17b7          	lui	a5,0xabcd1
 1e0:	900005b7          	lui	a1,0x90000
 1e4:	23478793          	addi	a5,a5,564 # abcd1234 <__ctr0_io_space_begin+0xabcd1434>
 1e8:	00f5a023          	sw	a5,0(a1) # 90000000 <__ctr0_io_space_begin+0x90000200>
 1ec:	0005a583          	lw	a1,0(a1)
 1f0:	00001537          	lui	a0,0x1
 1f4:	bd050513          	addi	a0,a0,-1072 # bd0 <__etext>
 1f8:	7940006f          	j	98c <neorv32_uart0_printf>

000001fc <neorv32_gpio_available>:
 1fc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 200:	01055513          	srli	a0,a0,0x10
 204:	00157513          	andi	a0,a0,1
 208:	00008067          	ret
 20c:	0000                	.2byte	0x0
 20e:	0000                	.2byte	0x0

00000210 <__neorv32_rte_core>:
 210:	fc010113          	addi	sp,sp,-64
 214:	02112e23          	sw	ra,60(sp)
 218:	02512c23          	sw	t0,56(sp)
 21c:	02612a23          	sw	t1,52(sp)
 220:	02712823          	sw	t2,48(sp)
 224:	02a12623          	sw	a0,44(sp)
 228:	02b12423          	sw	a1,40(sp)
 22c:	02c12223          	sw	a2,36(sp)
 230:	02d12023          	sw	a3,32(sp)
 234:	00e12e23          	sw	a4,28(sp)
 238:	00f12c23          	sw	a5,24(sp)
 23c:	01012a23          	sw	a6,20(sp)
 240:	01112823          	sw	a7,16(sp)
 244:	01c12623          	sw	t3,12(sp)
 248:	01d12423          	sw	t4,8(sp)
 24c:	01e12223          	sw	t5,4(sp)
 250:	01f12023          	sw	t6,0(sp)
 254:	34102773          	csrr	a4,mepc
 258:	34071073          	csrw	mscratch,a4
 25c:	342027f3          	csrr	a5,mcause
 260:	0807c863          	bltz	a5,2f0 <__neorv32_rte_core+0xe0>
 264:	00071683          	lh	a3,0(a4)
 268:	00300593          	li	a1,3
 26c:	0036f693          	andi	a3,a3,3
 270:	00270613          	addi	a2,a4,2
 274:	00b69463          	bne	a3,a1,27c <__neorv32_rte_core+0x6c>
 278:	00470613          	addi	a2,a4,4
 27c:	34161073          	csrw	mepc,a2
 280:	00b00713          	li	a4,11
 284:	04f77a63          	bgeu	a4,a5,2d8 <__neorv32_rte_core+0xc8>
 288:	4c000793          	li	a5,1216
 28c:	000780e7          	jalr	a5
 290:	03c12083          	lw	ra,60(sp)
 294:	03812283          	lw	t0,56(sp)
 298:	03412303          	lw	t1,52(sp)
 29c:	03012383          	lw	t2,48(sp)
 2a0:	02c12503          	lw	a0,44(sp)
 2a4:	02812583          	lw	a1,40(sp)
 2a8:	02412603          	lw	a2,36(sp)
 2ac:	02012683          	lw	a3,32(sp)
 2b0:	01c12703          	lw	a4,28(sp)
 2b4:	01812783          	lw	a5,24(sp)
 2b8:	01412803          	lw	a6,20(sp)
 2bc:	01012883          	lw	a7,16(sp)
 2c0:	00c12e03          	lw	t3,12(sp)
 2c4:	00812e83          	lw	t4,8(sp)
 2c8:	00412f03          	lw	t5,4(sp)
 2cc:	00012f83          	lw	t6,0(sp)
 2d0:	04010113          	addi	sp,sp,64
 2d4:	30200073          	mret
 2d8:	00001737          	lui	a4,0x1
 2dc:	00279793          	slli	a5,a5,0x2
 2e0:	c1070713          	addi	a4,a4,-1008 # c10 <__etext+0x40>
 2e4:	00e787b3          	add	a5,a5,a4
 2e8:	0007a783          	lw	a5,0(a5)
 2ec:	00078067          	jr	a5
 2f0:	80000737          	lui	a4,0x80000
 2f4:	ffd74713          	xori	a4,a4,-3
 2f8:	00e787b3          	add	a5,a5,a4
 2fc:	01c00713          	li	a4,28
 300:	f8f764e3          	bltu	a4,a5,288 <__neorv32_rte_core+0x78>
 304:	00001737          	lui	a4,0x1
 308:	00279793          	slli	a5,a5,0x2
 30c:	c4070713          	addi	a4,a4,-960 # c40 <__etext+0x70>
 310:	00e787b3          	add	a5,a5,a4
 314:	0007a783          	lw	a5,0(a5)
 318:	00078067          	jr	a5
 31c:	800007b7          	lui	a5,0x80000
 320:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 324:	f69ff06f          	j	28c <__neorv32_rte_core+0x7c>
 328:	800007b7          	lui	a5,0x80000
 32c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 330:	f5dff06f          	j	28c <__neorv32_rte_core+0x7c>
 334:	800007b7          	lui	a5,0x80000
 338:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 33c:	f51ff06f          	j	28c <__neorv32_rte_core+0x7c>
 340:	800007b7          	lui	a5,0x80000
 344:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 348:	f45ff06f          	j	28c <__neorv32_rte_core+0x7c>
 34c:	800007b7          	lui	a5,0x80000
 350:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 354:	f39ff06f          	j	28c <__neorv32_rte_core+0x7c>
 358:	800007b7          	lui	a5,0x80000
 35c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 360:	f2dff06f          	j	28c <__neorv32_rte_core+0x7c>
 364:	800007b7          	lui	a5,0x80000
 368:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 36c:	f21ff06f          	j	28c <__neorv32_rte_core+0x7c>
 370:	800007b7          	lui	a5,0x80000
 374:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 378:	f15ff06f          	j	28c <__neorv32_rte_core+0x7c>
 37c:	800007b7          	lui	a5,0x80000
 380:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 384:	f09ff06f          	j	28c <__neorv32_rte_core+0x7c>
 388:	800007b7          	lui	a5,0x80000
 38c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 390:	efdff06f          	j	28c <__neorv32_rte_core+0x7c>
 394:	800007b7          	lui	a5,0x80000
 398:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 39c:	ef1ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3a0:	800007b7          	lui	a5,0x80000
 3a4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 3a8:	ee5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3ac:	800007b7          	lui	a5,0x80000
 3b0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 3b4:	ed9ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3b8:	800007b7          	lui	a5,0x80000
 3bc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 3c0:	ecdff06f          	j	28c <__neorv32_rte_core+0x7c>
 3c4:	800007b7          	lui	a5,0x80000
 3c8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 3cc:	ec1ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3d0:	800007b7          	lui	a5,0x80000
 3d4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 3d8:	eb5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3dc:	800007b7          	lui	a5,0x80000
 3e0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 3e4:	ea9ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3e8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 3ec:	ea1ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3f0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 3f4:	e99ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3f8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 3fc:	e91ff06f          	j	28c <__neorv32_rte_core+0x7c>
 400:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 404:	e89ff06f          	j	28c <__neorv32_rte_core+0x7c>
 408:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 40c:	e81ff06f          	j	28c <__neorv32_rte_core+0x7c>
 410:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 414:	e79ff06f          	j	28c <__neorv32_rte_core+0x7c>
 418:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 41c:	e71ff06f          	j	28c <__neorv32_rte_core+0x7c>
 420:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 424:	e69ff06f          	j	28c <__neorv32_rte_core+0x7c>
 428:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 42c:	e61ff06f          	j	28c <__neorv32_rte_core+0x7c>
 430:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 434:	e59ff06f          	j	28c <__neorv32_rte_core+0x7c>
 438:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 43c:	e51ff06f          	j	28c <__neorv32_rte_core+0x7c>
 440:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 444:	e49ff06f          	j	28c <__neorv32_rte_core+0x7c>
 448:	0000                	.2byte	0x0
 44a:	0000                	.2byte	0x0
 44c:	0000                	.2byte	0x0
 44e:	0000                	.2byte	0x0

00000450 <__neorv32_rte_print_hex_word>:
 450:	fe010113          	addi	sp,sp,-32
 454:	01212823          	sw	s2,16(sp)
 458:	00050913          	mv	s2,a0
 45c:	00001537          	lui	a0,0x1
 460:	00912a23          	sw	s1,20(sp)
 464:	cb450513          	addi	a0,a0,-844 # cb4 <__etext+0xe4>
 468:	000014b7          	lui	s1,0x1
 46c:	00812c23          	sw	s0,24(sp)
 470:	01312623          	sw	s3,12(sp)
 474:	00112e23          	sw	ra,28(sp)
 478:	01c00413          	li	s0,28
 47c:	4b8000ef          	jal	ra,934 <neorv32_uart0_print>
 480:	ea848493          	addi	s1,s1,-344 # ea8 <hex_symbols.0>
 484:	ffc00993          	li	s3,-4
 488:	008957b3          	srl	a5,s2,s0
 48c:	00f7f793          	andi	a5,a5,15
 490:	00f487b3          	add	a5,s1,a5
 494:	0007c503          	lbu	a0,0(a5)
 498:	ffc40413          	addi	s0,s0,-4
 49c:	480000ef          	jal	ra,91c <neorv32_uart0_putc>
 4a0:	ff3414e3          	bne	s0,s3,488 <__neorv32_rte_print_hex_word+0x38>
 4a4:	01c12083          	lw	ra,28(sp)
 4a8:	01812403          	lw	s0,24(sp)
 4ac:	01412483          	lw	s1,20(sp)
 4b0:	01012903          	lw	s2,16(sp)
 4b4:	00c12983          	lw	s3,12(sp)
 4b8:	02010113          	addi	sp,sp,32
 4bc:	00008067          	ret

000004c0 <__neorv32_rte_debug_exc_handler>:
 4c0:	ff010113          	addi	sp,sp,-16
 4c4:	00112623          	sw	ra,12(sp)
 4c8:	00812423          	sw	s0,8(sp)
 4cc:	00912223          	sw	s1,4(sp)
 4d0:	390000ef          	jal	ra,860 <neorv32_uart0_available>
 4d4:	1a050e63          	beqz	a0,690 <__neorv32_rte_debug_exc_handler+0x1d0>
 4d8:	00001537          	lui	a0,0x1
 4dc:	cb850513          	addi	a0,a0,-840 # cb8 <__etext+0xe8>
 4e0:	454000ef          	jal	ra,934 <neorv32_uart0_print>
 4e4:	34202473          	csrr	s0,mcause
 4e8:	00900713          	li	a4,9
 4ec:	00f47793          	andi	a5,s0,15
 4f0:	03078493          	addi	s1,a5,48
 4f4:	00f77463          	bgeu	a4,a5,4fc <__neorv32_rte_debug_exc_handler+0x3c>
 4f8:	05778493          	addi	s1,a5,87
 4fc:	00b00793          	li	a5,11
 500:	0087ee63          	bltu	a5,s0,51c <__neorv32_rte_debug_exc_handler+0x5c>
 504:	00001737          	lui	a4,0x1
 508:	00241793          	slli	a5,s0,0x2
 50c:	e7870713          	addi	a4,a4,-392 # e78 <__etext+0x2a8>
 510:	00e787b3          	add	a5,a5,a4
 514:	0007a783          	lw	a5,0(a5)
 518:	00078067          	jr	a5
 51c:	800007b7          	lui	a5,0x80000
 520:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 524:	14e40463          	beq	s0,a4,66c <__neorv32_rte_debug_exc_handler+0x1ac>
 528:	02876663          	bltu	a4,s0,554 <__neorv32_rte_debug_exc_handler+0x94>
 52c:	00378713          	addi	a4,a5,3
 530:	12e40263          	beq	s0,a4,654 <__neorv32_rte_debug_exc_handler+0x194>
 534:	00778793          	addi	a5,a5,7
 538:	12f40463          	beq	s0,a5,660 <__neorv32_rte_debug_exc_handler+0x1a0>
 53c:	00001537          	lui	a0,0x1
 540:	e1850513          	addi	a0,a0,-488 # e18 <__etext+0x248>
 544:	3f0000ef          	jal	ra,934 <neorv32_uart0_print>
 548:	00040513          	mv	a0,s0
 54c:	f05ff0ef          	jal	ra,450 <__neorv32_rte_print_hex_word>
 550:	0280006f          	j	578 <__neorv32_rte_debug_exc_handler+0xb8>
 554:	ff07c793          	xori	a5,a5,-16
 558:	00f407b3          	add	a5,s0,a5
 55c:	00f00713          	li	a4,15
 560:	fcf76ee3          	bltu	a4,a5,53c <__neorv32_rte_debug_exc_handler+0x7c>
 564:	00001537          	lui	a0,0x1
 568:	e0850513          	addi	a0,a0,-504 # e08 <__etext+0x238>
 56c:	3c8000ef          	jal	ra,934 <neorv32_uart0_print>
 570:	00048513          	mv	a0,s1
 574:	3a8000ef          	jal	ra,91c <neorv32_uart0_putc>
 578:	00001537          	lui	a0,0x1
 57c:	e5c50513          	addi	a0,a0,-420 # e5c <__etext+0x28c>
 580:	3b4000ef          	jal	ra,934 <neorv32_uart0_print>
 584:	34002573          	csrr	a0,mscratch
 588:	ec9ff0ef          	jal	ra,450 <__neorv32_rte_print_hex_word>
 58c:	00001537          	lui	a0,0x1
 590:	e6450513          	addi	a0,a0,-412 # e64 <__etext+0x294>
 594:	3a0000ef          	jal	ra,934 <neorv32_uart0_print>
 598:	34302573          	csrr	a0,mtval
 59c:	eb5ff0ef          	jal	ra,450 <__neorv32_rte_print_hex_word>
 5a0:	00812403          	lw	s0,8(sp)
 5a4:	00c12083          	lw	ra,12(sp)
 5a8:	00412483          	lw	s1,4(sp)
 5ac:	00001537          	lui	a0,0x1
 5b0:	e7050513          	addi	a0,a0,-400 # e70 <__etext+0x2a0>
 5b4:	01010113          	addi	sp,sp,16
 5b8:	37c0006f          	j	934 <neorv32_uart0_print>
 5bc:	00001537          	lui	a0,0x1
 5c0:	cc050513          	addi	a0,a0,-832 # cc0 <__etext+0xf0>
 5c4:	370000ef          	jal	ra,934 <neorv32_uart0_print>
 5c8:	fb1ff06f          	j	578 <__neorv32_rte_debug_exc_handler+0xb8>
 5cc:	00001537          	lui	a0,0x1
 5d0:	ce050513          	addi	a0,a0,-800 # ce0 <__etext+0x110>
 5d4:	360000ef          	jal	ra,934 <neorv32_uart0_print>
 5d8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 5dc:	0a07d463          	bgez	a5,684 <__neorv32_rte_debug_exc_handler+0x1c4>
 5e0:	0017f793          	andi	a5,a5,1
 5e4:	08078a63          	beqz	a5,678 <__neorv32_rte_debug_exc_handler+0x1b8>
 5e8:	00001537          	lui	a0,0x1
 5ec:	e3050513          	addi	a0,a0,-464 # e30 <__etext+0x260>
 5f0:	fd5ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 5f4:	00001537          	lui	a0,0x1
 5f8:	cfc50513          	addi	a0,a0,-772 # cfc <__etext+0x12c>
 5fc:	fc9ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 600:	00001537          	lui	a0,0x1
 604:	d1050513          	addi	a0,a0,-752 # d10 <__etext+0x140>
 608:	fbdff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 60c:	00001537          	lui	a0,0x1
 610:	d1c50513          	addi	a0,a0,-740 # d1c <__etext+0x14c>
 614:	fb1ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 618:	00001537          	lui	a0,0x1
 61c:	d3450513          	addi	a0,a0,-716 # d34 <__etext+0x164>
 620:	fb5ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x114>
 624:	00001537          	lui	a0,0x1
 628:	d4850513          	addi	a0,a0,-696 # d48 <__etext+0x178>
 62c:	f99ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 630:	00001537          	lui	a0,0x1
 634:	d6450513          	addi	a0,a0,-668 # d64 <__etext+0x194>
 638:	f9dff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x114>
 63c:	00001537          	lui	a0,0x1
 640:	d7850513          	addi	a0,a0,-648 # d78 <__etext+0x1a8>
 644:	f81ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 648:	00001537          	lui	a0,0x1
 64c:	d9850513          	addi	a0,a0,-616 # d98 <__etext+0x1c8>
 650:	f75ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 654:	00001537          	lui	a0,0x1
 658:	db850513          	addi	a0,a0,-584 # db8 <__etext+0x1e8>
 65c:	f69ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 660:	00001537          	lui	a0,0x1
 664:	dd450513          	addi	a0,a0,-556 # dd4 <__etext+0x204>
 668:	f5dff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 66c:	00001537          	lui	a0,0x1
 670:	dec50513          	addi	a0,a0,-532 # dec <__etext+0x21c>
 674:	f51ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 678:	00001537          	lui	a0,0x1
 67c:	e4050513          	addi	a0,a0,-448 # e40 <__etext+0x270>
 680:	f45ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 684:	00001537          	lui	a0,0x1
 688:	e5050513          	addi	a0,a0,-432 # e50 <__etext+0x280>
 68c:	f39ff06f          	j	5c4 <__neorv32_rte_debug_exc_handler+0x104>
 690:	00c12083          	lw	ra,12(sp)
 694:	00812403          	lw	s0,8(sp)
 698:	00412483          	lw	s1,4(sp)
 69c:	01010113          	addi	sp,sp,16
 6a0:	00008067          	ret

000006a4 <neorv32_rte_exception_uninstall>:
 6a4:	01f00793          	li	a5,31
 6a8:	02a7e263          	bltu	a5,a0,6cc <neorv32_rte_exception_uninstall+0x28>
 6ac:	800007b7          	lui	a5,0x80000
 6b0:	00251513          	slli	a0,a0,0x2
 6b4:	00078793          	mv	a5,a5
 6b8:	00a787b3          	add	a5,a5,a0
 6bc:	4c000713          	li	a4,1216
 6c0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 6c4:	00000513          	li	a0,0
 6c8:	00008067          	ret
 6cc:	00100513          	li	a0,1
 6d0:	00008067          	ret

000006d4 <neorv32_rte_setup>:
 6d4:	ff010113          	addi	sp,sp,-16
 6d8:	00112623          	sw	ra,12(sp)
 6dc:	00812423          	sw	s0,8(sp)
 6e0:	00912223          	sw	s1,4(sp)
 6e4:	21000793          	li	a5,528
 6e8:	30579073          	csrw	mtvec,a5
 6ec:	00000413          	li	s0,0
 6f0:	01d00493          	li	s1,29
 6f4:	00040513          	mv	a0,s0
 6f8:	00140413          	addi	s0,s0,1
 6fc:	0ff47413          	zext.b	s0,s0
 700:	fa5ff0ef          	jal	ra,6a4 <neorv32_rte_exception_uninstall>
 704:	fe9418e3          	bne	s0,s1,6f4 <neorv32_rte_setup+0x20>
 708:	00c12083          	lw	ra,12(sp)
 70c:	00812403          	lw	s0,8(sp)
 710:	00412483          	lw	s1,4(sp)
 714:	01010113          	addi	sp,sp,16
 718:	00008067          	ret

0000071c <__neorv32_uart_itoa>:
 71c:	fd010113          	addi	sp,sp,-48
 720:	02812423          	sw	s0,40(sp)
 724:	02912223          	sw	s1,36(sp)
 728:	03212023          	sw	s2,32(sp)
 72c:	01312e23          	sw	s3,28(sp)
 730:	01412c23          	sw	s4,24(sp)
 734:	02112623          	sw	ra,44(sp)
 738:	01512a23          	sw	s5,20(sp)
 73c:	00001a37          	lui	s4,0x1
 740:	00050493          	mv	s1,a0
 744:	00058413          	mv	s0,a1
 748:	00058523          	sb	zero,10(a1)
 74c:	00000993          	li	s3,0
 750:	00410913          	addi	s2,sp,4
 754:	ecca0a13          	addi	s4,s4,-308 # ecc <numbers.1>
 758:	00a00593          	li	a1,10
 75c:	00048513          	mv	a0,s1
 760:	40c000ef          	jal	ra,b6c <__umodsi3>
 764:	00aa0533          	add	a0,s4,a0
 768:	00054783          	lbu	a5,0(a0)
 76c:	01390ab3          	add	s5,s2,s3
 770:	00048513          	mv	a0,s1
 774:	00fa8023          	sb	a5,0(s5)
 778:	00a00593          	li	a1,10
 77c:	3a8000ef          	jal	ra,b24 <__hidden___udivsi3>
 780:	00198993          	addi	s3,s3,1
 784:	00a00793          	li	a5,10
 788:	00050493          	mv	s1,a0
 78c:	fcf996e3          	bne	s3,a5,758 <__neorv32_uart_itoa+0x3c>
 790:	00090693          	mv	a3,s2
 794:	00900713          	li	a4,9
 798:	03000613          	li	a2,48
 79c:	0096c583          	lbu	a1,9(a3)
 7a0:	00070793          	mv	a5,a4
 7a4:	fff70713          	addi	a4,a4,-1
 7a8:	01071713          	slli	a4,a4,0x10
 7ac:	01075713          	srli	a4,a4,0x10
 7b0:	00c59a63          	bne	a1,a2,7c4 <__neorv32_uart_itoa+0xa8>
 7b4:	000684a3          	sb	zero,9(a3)
 7b8:	fff68693          	addi	a3,a3,-1
 7bc:	fe0710e3          	bnez	a4,79c <__neorv32_uart_itoa+0x80>
 7c0:	00000793          	li	a5,0
 7c4:	00f907b3          	add	a5,s2,a5
 7c8:	00000713          	li	a4,0
 7cc:	0007c683          	lbu	a3,0(a5)
 7d0:	00068c63          	beqz	a3,7e8 <__neorv32_uart_itoa+0xcc>
 7d4:	00170613          	addi	a2,a4,1
 7d8:	00e40733          	add	a4,s0,a4
 7dc:	00d70023          	sb	a3,0(a4)
 7e0:	01061713          	slli	a4,a2,0x10
 7e4:	01075713          	srli	a4,a4,0x10
 7e8:	fff78693          	addi	a3,a5,-1
 7ec:	02f91863          	bne	s2,a5,81c <__neorv32_uart_itoa+0x100>
 7f0:	00e40433          	add	s0,s0,a4
 7f4:	00040023          	sb	zero,0(s0)
 7f8:	02c12083          	lw	ra,44(sp)
 7fc:	02812403          	lw	s0,40(sp)
 800:	02412483          	lw	s1,36(sp)
 804:	02012903          	lw	s2,32(sp)
 808:	01c12983          	lw	s3,28(sp)
 80c:	01812a03          	lw	s4,24(sp)
 810:	01412a83          	lw	s5,20(sp)
 814:	03010113          	addi	sp,sp,48
 818:	00008067          	ret
 81c:	00068793          	mv	a5,a3
 820:	fadff06f          	j	7cc <__neorv32_uart_itoa+0xb0>

00000824 <__neorv32_uart_tohex>:
 824:	00001637          	lui	a2,0x1
 828:	00758693          	addi	a3,a1,7
 82c:	00000713          	li	a4,0
 830:	eb860613          	addi	a2,a2,-328 # eb8 <symbols.0>
 834:	02000813          	li	a6,32
 838:	00e557b3          	srl	a5,a0,a4
 83c:	00f7f793          	andi	a5,a5,15
 840:	00f607b3          	add	a5,a2,a5
 844:	0007c783          	lbu	a5,0(a5)
 848:	00470713          	addi	a4,a4,4
 84c:	fff68693          	addi	a3,a3,-1
 850:	00f680a3          	sb	a5,1(a3)
 854:	ff0712e3          	bne	a4,a6,838 <__neorv32_uart_tohex+0x14>
 858:	00058423          	sb	zero,8(a1)
 85c:	00008067          	ret

00000860 <neorv32_uart0_available>:
 860:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 864:	01255513          	srli	a0,a0,0x12
 868:	00157513          	andi	a0,a0,1
 86c:	00008067          	ret

00000870 <neorv32_uart0_setup>:
 870:	ff010113          	addi	sp,sp,-16
 874:	00812423          	sw	s0,8(sp)
 878:	00912223          	sw	s1,4(sp)
 87c:	00112623          	sw	ra,12(sp)
 880:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 884:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 888:	00058413          	mv	s0,a1
 88c:	00151593          	slli	a1,a0,0x1
 890:	00078513          	mv	a0,a5
 894:	00060493          	mv	s1,a2
 898:	28c000ef          	jal	ra,b24 <__hidden___udivsi3>
 89c:	01051513          	slli	a0,a0,0x10
 8a0:	000017b7          	lui	a5,0x1
 8a4:	01055513          	srli	a0,a0,0x10
 8a8:	00000713          	li	a4,0
 8ac:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x126>
 8b0:	04a7e463          	bltu	a5,a0,8f8 <neorv32_uart0_setup+0x88>
 8b4:	0034f493          	andi	s1,s1,3
 8b8:	01449493          	slli	s1,s1,0x14
 8bc:	00347413          	andi	s0,s0,3
 8c0:	fff50793          	addi	a5,a0,-1
 8c4:	0097e7b3          	or	a5,a5,s1
 8c8:	01641413          	slli	s0,s0,0x16
 8cc:	0087e7b3          	or	a5,a5,s0
 8d0:	01871713          	slli	a4,a4,0x18
 8d4:	00c12083          	lw	ra,12(sp)
 8d8:	00812403          	lw	s0,8(sp)
 8dc:	00e7e7b3          	or	a5,a5,a4
 8e0:	10000737          	lui	a4,0x10000
 8e4:	00e7e7b3          	or	a5,a5,a4
 8e8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 8ec:	00412483          	lw	s1,4(sp)
 8f0:	01010113          	addi	sp,sp,16
 8f4:	00008067          	ret
 8f8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff126>
 8fc:	0fd6f693          	andi	a3,a3,253
 900:	00069a63          	bnez	a3,914 <neorv32_uart0_setup+0xa4>
 904:	00355513          	srli	a0,a0,0x3
 908:	00170713          	addi	a4,a4,1
 90c:	0ff77713          	zext.b	a4,a4
 910:	fa1ff06f          	j	8b0 <neorv32_uart0_setup+0x40>
 914:	00155513          	srli	a0,a0,0x1
 918:	ff1ff06f          	j	908 <neorv32_uart0_setup+0x98>

0000091c <neorv32_uart0_putc>:
 91c:	00040737          	lui	a4,0x40
 920:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 924:	00e7f7b3          	and	a5,a5,a4
 928:	fe079ce3          	bnez	a5,920 <neorv32_uart0_putc+0x4>
 92c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 930:	00008067          	ret

00000934 <neorv32_uart0_print>:
 934:	ff010113          	addi	sp,sp,-16
 938:	00812423          	sw	s0,8(sp)
 93c:	01212023          	sw	s2,0(sp)
 940:	00112623          	sw	ra,12(sp)
 944:	00912223          	sw	s1,4(sp)
 948:	00050413          	mv	s0,a0
 94c:	00a00913          	li	s2,10
 950:	00044483          	lbu	s1,0(s0)
 954:	00140413          	addi	s0,s0,1
 958:	00049e63          	bnez	s1,974 <neorv32_uart0_print+0x40>
 95c:	00c12083          	lw	ra,12(sp)
 960:	00812403          	lw	s0,8(sp)
 964:	00412483          	lw	s1,4(sp)
 968:	00012903          	lw	s2,0(sp)
 96c:	01010113          	addi	sp,sp,16
 970:	00008067          	ret
 974:	01249663          	bne	s1,s2,980 <neorv32_uart0_print+0x4c>
 978:	00d00513          	li	a0,13
 97c:	fa1ff0ef          	jal	ra,91c <neorv32_uart0_putc>
 980:	00048513          	mv	a0,s1
 984:	f99ff0ef          	jal	ra,91c <neorv32_uart0_putc>
 988:	fc9ff06f          	j	950 <neorv32_uart0_print+0x1c>

0000098c <neorv32_uart0_printf>:
 98c:	fa010113          	addi	sp,sp,-96
 990:	04f12a23          	sw	a5,84(sp)
 994:	04410793          	addi	a5,sp,68
 998:	02812c23          	sw	s0,56(sp)
 99c:	03212823          	sw	s2,48(sp)
 9a0:	03312623          	sw	s3,44(sp)
 9a4:	03412423          	sw	s4,40(sp)
 9a8:	03512223          	sw	s5,36(sp)
 9ac:	03612023          	sw	s6,32(sp)
 9b0:	01712e23          	sw	s7,28(sp)
 9b4:	01812c23          	sw	s8,24(sp)
 9b8:	02112e23          	sw	ra,60(sp)
 9bc:	02912a23          	sw	s1,52(sp)
 9c0:	00050413          	mv	s0,a0
 9c4:	04b12223          	sw	a1,68(sp)
 9c8:	04c12423          	sw	a2,72(sp)
 9cc:	04d12623          	sw	a3,76(sp)
 9d0:	04e12823          	sw	a4,80(sp)
 9d4:	05012c23          	sw	a6,88(sp)
 9d8:	05112e23          	sw	a7,92(sp)
 9dc:	00f12023          	sw	a5,0(sp)
 9e0:	02500993          	li	s3,37
 9e4:	00a00a13          	li	s4,10
 9e8:	07300913          	li	s2,115
 9ec:	07500a93          	li	s5,117
 9f0:	07800b13          	li	s6,120
 9f4:	06300b93          	li	s7,99
 9f8:	06900c13          	li	s8,105
 9fc:	00044483          	lbu	s1,0(s0)
 a00:	02049a63          	bnez	s1,a34 <neorv32_uart0_printf+0xa8>
 a04:	03c12083          	lw	ra,60(sp)
 a08:	03812403          	lw	s0,56(sp)
 a0c:	03412483          	lw	s1,52(sp)
 a10:	03012903          	lw	s2,48(sp)
 a14:	02c12983          	lw	s3,44(sp)
 a18:	02812a03          	lw	s4,40(sp)
 a1c:	02412a83          	lw	s5,36(sp)
 a20:	02012b03          	lw	s6,32(sp)
 a24:	01c12b83          	lw	s7,28(sp)
 a28:	01812c03          	lw	s8,24(sp)
 a2c:	06010113          	addi	sp,sp,96
 a30:	00008067          	ret
 a34:	0d349663          	bne	s1,s3,b00 <neorv32_uart0_printf+0x174>
 a38:	00144483          	lbu	s1,1(s0)
 a3c:	05248263          	beq	s1,s2,a80 <neorv32_uart0_printf+0xf4>
 a40:	00996e63          	bltu	s2,s1,a5c <neorv32_uart0_printf+0xd0>
 a44:	05748c63          	beq	s1,s7,a9c <neorv32_uart0_printf+0x110>
 a48:	07848663          	beq	s1,s8,ab4 <neorv32_uart0_printf+0x128>
 a4c:	02500513          	li	a0,37
 a50:	ecdff0ef          	jal	ra,91c <neorv32_uart0_putc>
 a54:	00048513          	mv	a0,s1
 a58:	0540006f          	j	aac <neorv32_uart0_printf+0x120>
 a5c:	09548663          	beq	s1,s5,ae8 <neorv32_uart0_printf+0x15c>
 a60:	ff6496e3          	bne	s1,s6,a4c <neorv32_uart0_printf+0xc0>
 a64:	00012783          	lw	a5,0(sp)
 a68:	00410593          	addi	a1,sp,4
 a6c:	0007a503          	lw	a0,0(a5)
 a70:	00478713          	addi	a4,a5,4
 a74:	00e12023          	sw	a4,0(sp)
 a78:	dadff0ef          	jal	ra,824 <__neorv32_uart_tohex>
 a7c:	0640006f          	j	ae0 <neorv32_uart0_printf+0x154>
 a80:	00012783          	lw	a5,0(sp)
 a84:	0007a503          	lw	a0,0(a5)
 a88:	00478713          	addi	a4,a5,4
 a8c:	00e12023          	sw	a4,0(sp)
 a90:	ea5ff0ef          	jal	ra,934 <neorv32_uart0_print>
 a94:	00240413          	addi	s0,s0,2
 a98:	f65ff06f          	j	9fc <neorv32_uart0_printf+0x70>
 a9c:	00012783          	lw	a5,0(sp)
 aa0:	0007c503          	lbu	a0,0(a5)
 aa4:	00478713          	addi	a4,a5,4
 aa8:	00e12023          	sw	a4,0(sp)
 aac:	e71ff0ef          	jal	ra,91c <neorv32_uart0_putc>
 ab0:	fe5ff06f          	j	a94 <neorv32_uart0_printf+0x108>
 ab4:	00012783          	lw	a5,0(sp)
 ab8:	0007a483          	lw	s1,0(a5)
 abc:	00478713          	addi	a4,a5,4
 ac0:	00e12023          	sw	a4,0(sp)
 ac4:	0004d863          	bgez	s1,ad4 <neorv32_uart0_printf+0x148>
 ac8:	02d00513          	li	a0,45
 acc:	409004b3          	neg	s1,s1
 ad0:	e4dff0ef          	jal	ra,91c <neorv32_uart0_putc>
 ad4:	00410593          	addi	a1,sp,4
 ad8:	00048513          	mv	a0,s1
 adc:	c41ff0ef          	jal	ra,71c <__neorv32_uart_itoa>
 ae0:	00410513          	addi	a0,sp,4
 ae4:	fadff06f          	j	a90 <neorv32_uart0_printf+0x104>
 ae8:	00012783          	lw	a5,0(sp)
 aec:	00410593          	addi	a1,sp,4
 af0:	00478713          	addi	a4,a5,4
 af4:	0007a503          	lw	a0,0(a5)
 af8:	00e12023          	sw	a4,0(sp)
 afc:	fe1ff06f          	j	adc <neorv32_uart0_printf+0x150>
 b00:	01449663          	bne	s1,s4,b0c <neorv32_uart0_printf+0x180>
 b04:	00d00513          	li	a0,13
 b08:	e15ff0ef          	jal	ra,91c <neorv32_uart0_putc>
 b0c:	00048513          	mv	a0,s1
 b10:	00140413          	addi	s0,s0,1
 b14:	e09ff0ef          	jal	ra,91c <neorv32_uart0_putc>
 b18:	ee5ff06f          	j	9fc <neorv32_uart0_printf+0x70>

00000b1c <__divsi3>:
 b1c:	06054063          	bltz	a0,b7c <__umodsi3+0x10>
 b20:	0605c663          	bltz	a1,b8c <__umodsi3+0x20>

00000b24 <__hidden___udivsi3>:
 b24:	00058613          	mv	a2,a1
 b28:	00050593          	mv	a1,a0
 b2c:	fff00513          	li	a0,-1
 b30:	02060c63          	beqz	a2,b68 <__hidden___udivsi3+0x44>
 b34:	00100693          	li	a3,1
 b38:	00b67a63          	bgeu	a2,a1,b4c <__hidden___udivsi3+0x28>
 b3c:	00c05863          	blez	a2,b4c <__hidden___udivsi3+0x28>
 b40:	00161613          	slli	a2,a2,0x1
 b44:	00169693          	slli	a3,a3,0x1
 b48:	feb66ae3          	bltu	a2,a1,b3c <__hidden___udivsi3+0x18>
 b4c:	00000513          	li	a0,0
 b50:	00c5e663          	bltu	a1,a2,b5c <__hidden___udivsi3+0x38>
 b54:	40c585b3          	sub	a1,a1,a2
 b58:	00d56533          	or	a0,a0,a3
 b5c:	0016d693          	srli	a3,a3,0x1
 b60:	00165613          	srli	a2,a2,0x1
 b64:	fe0696e3          	bnez	a3,b50 <__hidden___udivsi3+0x2c>
 b68:	00008067          	ret

00000b6c <__umodsi3>:
 b6c:	00008293          	mv	t0,ra
 b70:	fb5ff0ef          	jal	ra,b24 <__hidden___udivsi3>
 b74:	00058513          	mv	a0,a1
 b78:	00028067          	jr	t0
 b7c:	40a00533          	neg	a0,a0
 b80:	00b04863          	bgtz	a1,b90 <__umodsi3+0x24>
 b84:	40b005b3          	neg	a1,a1
 b88:	f9dff06f          	j	b24 <__hidden___udivsi3>
 b8c:	40b005b3          	neg	a1,a1
 b90:	00008293          	mv	t0,ra
 b94:	f91ff0ef          	jal	ra,b24 <__hidden___udivsi3>
 b98:	40a00533          	neg	a0,a0
 b9c:	00028067          	jr	t0

00000ba0 <__modsi3>:
 ba0:	00008293          	mv	t0,ra
 ba4:	0005ca63          	bltz	a1,bb8 <__modsi3+0x18>
 ba8:	00054c63          	bltz	a0,bc0 <__modsi3+0x20>
 bac:	f79ff0ef          	jal	ra,b24 <__hidden___udivsi3>
 bb0:	00058513          	mv	a0,a1
 bb4:	00028067          	jr	t0
 bb8:	40b005b3          	neg	a1,a1
 bbc:	fe0558e3          	bgez	a0,bac <__modsi3+0xc>
 bc0:	40a00533          	neg	a0,a0
 bc4:	f61ff0ef          	jal	ra,b24 <__hidden___udivsi3>
 bc8:	40b00533          	neg	a0,a1
 bcc:	00028067          	jr	t0
