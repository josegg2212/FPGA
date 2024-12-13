
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
  e0:	e0c58593          	addi	a1,a1,-500 # ee8 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3c18>
 194:	00112623          	sw	ra,12(sp)
 198:	6e8000ef          	jal	ra,880 <neorv32_uart0_setup>
 19c:	070000ef          	jal	ra,20c <neorv32_gpio_available>
 1a0:	02051063          	bnez	a0,1c0 <main+0x40>
 1a4:	00001537          	lui	a0,0x1
 1a8:	bf050513          	addi	a0,a0,-1040 # bf0 <__etext+0x10>
 1ac:	798000ef          	jal	ra,944 <neorv32_uart0_print>
 1b0:	00100513          	li	a0,1
 1b4:	00c12083          	lw	ra,12(sp)
 1b8:	01010113          	addi	sp,sp,16
 1bc:	00008067          	ret
 1c0:	524000ef          	jal	ra,6e4 <neorv32_rte_setup>
 1c4:	00001537          	lui	a0,0x1
 1c8:	c1450513          	addi	a0,a0,-1004 # c14 <__etext+0x34>
 1cc:	778000ef          	jal	ra,944 <neorv32_uart0_print>
 1d0:	00c000ef          	jal	ra,1dc <wb_calculadora>
 1d4:	00000513          	li	a0,0
 1d8:	fddff06f          	j	1b4 <main+0x34>

000001dc <wb_calculadora>:
 1dc:	900007b7          	lui	a5,0x90000
 1e0:	00100713          	li	a4,1
 1e4:	00e7a023          	sw	a4,0(a5) # 90000000 <__ctr0_io_space_begin+0x90000200>
 1e8:	00400713          	li	a4,4
 1ec:	00478593          	addi	a1,a5,4
 1f0:	00e5a023          	sw	a4,0(a1)
 1f4:	0007a783          	lw	a5,0(a5)
 1f8:	0005a583          	lw	a1,0(a1)
 1fc:	00001537          	lui	a0,0x1
 200:	00f585b3          	add	a1,a1,a5
 204:	be050513          	addi	a0,a0,-1056 # be0 <__etext>
 208:	7940006f          	j	99c <neorv32_uart0_printf>

0000020c <neorv32_gpio_available>:
 20c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 210:	01055513          	srli	a0,a0,0x10
 214:	00157513          	andi	a0,a0,1
 218:	00008067          	ret
 21c:	0000                	.2byte	0x0
 21e:	0000                	.2byte	0x0

00000220 <__neorv32_rte_core>:
 220:	fc010113          	addi	sp,sp,-64
 224:	02112e23          	sw	ra,60(sp)
 228:	02512c23          	sw	t0,56(sp)
 22c:	02612a23          	sw	t1,52(sp)
 230:	02712823          	sw	t2,48(sp)
 234:	02a12623          	sw	a0,44(sp)
 238:	02b12423          	sw	a1,40(sp)
 23c:	02c12223          	sw	a2,36(sp)
 240:	02d12023          	sw	a3,32(sp)
 244:	00e12e23          	sw	a4,28(sp)
 248:	00f12c23          	sw	a5,24(sp)
 24c:	01012a23          	sw	a6,20(sp)
 250:	01112823          	sw	a7,16(sp)
 254:	01c12623          	sw	t3,12(sp)
 258:	01d12423          	sw	t4,8(sp)
 25c:	01e12223          	sw	t5,4(sp)
 260:	01f12023          	sw	t6,0(sp)
 264:	34102773          	csrr	a4,mepc
 268:	34071073          	csrw	mscratch,a4
 26c:	342027f3          	csrr	a5,mcause
 270:	0807c863          	bltz	a5,300 <__neorv32_rte_core+0xe0>
 274:	00071683          	lh	a3,0(a4)
 278:	00300593          	li	a1,3
 27c:	0036f693          	andi	a3,a3,3
 280:	00270613          	addi	a2,a4,2
 284:	00b69463          	bne	a3,a1,28c <__neorv32_rte_core+0x6c>
 288:	00470613          	addi	a2,a4,4
 28c:	34161073          	csrw	mepc,a2
 290:	00b00713          	li	a4,11
 294:	04f77a63          	bgeu	a4,a5,2e8 <__neorv32_rte_core+0xc8>
 298:	4d000793          	li	a5,1232
 29c:	000780e7          	jalr	a5
 2a0:	03c12083          	lw	ra,60(sp)
 2a4:	03812283          	lw	t0,56(sp)
 2a8:	03412303          	lw	t1,52(sp)
 2ac:	03012383          	lw	t2,48(sp)
 2b0:	02c12503          	lw	a0,44(sp)
 2b4:	02812583          	lw	a1,40(sp)
 2b8:	02412603          	lw	a2,36(sp)
 2bc:	02012683          	lw	a3,32(sp)
 2c0:	01c12703          	lw	a4,28(sp)
 2c4:	01812783          	lw	a5,24(sp)
 2c8:	01412803          	lw	a6,20(sp)
 2cc:	01012883          	lw	a7,16(sp)
 2d0:	00c12e03          	lw	t3,12(sp)
 2d4:	00812e83          	lw	t4,8(sp)
 2d8:	00412f03          	lw	t5,4(sp)
 2dc:	00012f83          	lw	t6,0(sp)
 2e0:	04010113          	addi	sp,sp,64
 2e4:	30200073          	mret
 2e8:	00001737          	lui	a4,0x1
 2ec:	00279793          	slli	a5,a5,0x2
 2f0:	c2070713          	addi	a4,a4,-992 # c20 <__etext+0x40>
 2f4:	00e787b3          	add	a5,a5,a4
 2f8:	0007a783          	lw	a5,0(a5)
 2fc:	00078067          	jr	a5
 300:	80000737          	lui	a4,0x80000
 304:	ffd74713          	xori	a4,a4,-3
 308:	00e787b3          	add	a5,a5,a4
 30c:	01c00713          	li	a4,28
 310:	f8f764e3          	bltu	a4,a5,298 <__neorv32_rte_core+0x78>
 314:	00001737          	lui	a4,0x1
 318:	00279793          	slli	a5,a5,0x2
 31c:	c5070713          	addi	a4,a4,-944 # c50 <__etext+0x70>
 320:	00e787b3          	add	a5,a5,a4
 324:	0007a783          	lw	a5,0(a5)
 328:	00078067          	jr	a5
 32c:	800007b7          	lui	a5,0x80000
 330:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 334:	f69ff06f          	j	29c <__neorv32_rte_core+0x7c>
 338:	800007b7          	lui	a5,0x80000
 33c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 340:	f5dff06f          	j	29c <__neorv32_rte_core+0x7c>
 344:	800007b7          	lui	a5,0x80000
 348:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 34c:	f51ff06f          	j	29c <__neorv32_rte_core+0x7c>
 350:	800007b7          	lui	a5,0x80000
 354:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 358:	f45ff06f          	j	29c <__neorv32_rte_core+0x7c>
 35c:	800007b7          	lui	a5,0x80000
 360:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 364:	f39ff06f          	j	29c <__neorv32_rte_core+0x7c>
 368:	800007b7          	lui	a5,0x80000
 36c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 370:	f2dff06f          	j	29c <__neorv32_rte_core+0x7c>
 374:	800007b7          	lui	a5,0x80000
 378:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 37c:	f21ff06f          	j	29c <__neorv32_rte_core+0x7c>
 380:	800007b7          	lui	a5,0x80000
 384:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 388:	f15ff06f          	j	29c <__neorv32_rte_core+0x7c>
 38c:	800007b7          	lui	a5,0x80000
 390:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 394:	f09ff06f          	j	29c <__neorv32_rte_core+0x7c>
 398:	800007b7          	lui	a5,0x80000
 39c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 3a0:	efdff06f          	j	29c <__neorv32_rte_core+0x7c>
 3a4:	800007b7          	lui	a5,0x80000
 3a8:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 3ac:	ef1ff06f          	j	29c <__neorv32_rte_core+0x7c>
 3b0:	800007b7          	lui	a5,0x80000
 3b4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 3b8:	ee5ff06f          	j	29c <__neorv32_rte_core+0x7c>
 3bc:	800007b7          	lui	a5,0x80000
 3c0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 3c4:	ed9ff06f          	j	29c <__neorv32_rte_core+0x7c>
 3c8:	800007b7          	lui	a5,0x80000
 3cc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 3d0:	ecdff06f          	j	29c <__neorv32_rte_core+0x7c>
 3d4:	800007b7          	lui	a5,0x80000
 3d8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 3dc:	ec1ff06f          	j	29c <__neorv32_rte_core+0x7c>
 3e0:	800007b7          	lui	a5,0x80000
 3e4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 3e8:	eb5ff06f          	j	29c <__neorv32_rte_core+0x7c>
 3ec:	800007b7          	lui	a5,0x80000
 3f0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 3f4:	ea9ff06f          	j	29c <__neorv32_rte_core+0x7c>
 3f8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 3fc:	ea1ff06f          	j	29c <__neorv32_rte_core+0x7c>
 400:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 404:	e99ff06f          	j	29c <__neorv32_rte_core+0x7c>
 408:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 40c:	e91ff06f          	j	29c <__neorv32_rte_core+0x7c>
 410:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 414:	e89ff06f          	j	29c <__neorv32_rte_core+0x7c>
 418:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 41c:	e81ff06f          	j	29c <__neorv32_rte_core+0x7c>
 420:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 424:	e79ff06f          	j	29c <__neorv32_rte_core+0x7c>
 428:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 42c:	e71ff06f          	j	29c <__neorv32_rte_core+0x7c>
 430:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 434:	e69ff06f          	j	29c <__neorv32_rte_core+0x7c>
 438:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 43c:	e61ff06f          	j	29c <__neorv32_rte_core+0x7c>
 440:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 444:	e59ff06f          	j	29c <__neorv32_rte_core+0x7c>
 448:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 44c:	e51ff06f          	j	29c <__neorv32_rte_core+0x7c>
 450:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 454:	e49ff06f          	j	29c <__neorv32_rte_core+0x7c>
 458:	0000                	.2byte	0x0
 45a:	0000                	.2byte	0x0
 45c:	0000                	.2byte	0x0
 45e:	0000                	.2byte	0x0

00000460 <__neorv32_rte_print_hex_word>:
 460:	fe010113          	addi	sp,sp,-32
 464:	01212823          	sw	s2,16(sp)
 468:	00050913          	mv	s2,a0
 46c:	00001537          	lui	a0,0x1
 470:	00912a23          	sw	s1,20(sp)
 474:	cc450513          	addi	a0,a0,-828 # cc4 <__etext+0xe4>
 478:	000014b7          	lui	s1,0x1
 47c:	00812c23          	sw	s0,24(sp)
 480:	01312623          	sw	s3,12(sp)
 484:	00112e23          	sw	ra,28(sp)
 488:	01c00413          	li	s0,28
 48c:	4b8000ef          	jal	ra,944 <neorv32_uart0_print>
 490:	eb848493          	addi	s1,s1,-328 # eb8 <hex_symbols.0>
 494:	ffc00993          	li	s3,-4
 498:	008957b3          	srl	a5,s2,s0
 49c:	00f7f793          	andi	a5,a5,15
 4a0:	00f487b3          	add	a5,s1,a5
 4a4:	0007c503          	lbu	a0,0(a5)
 4a8:	ffc40413          	addi	s0,s0,-4
 4ac:	480000ef          	jal	ra,92c <neorv32_uart0_putc>
 4b0:	ff3414e3          	bne	s0,s3,498 <__neorv32_rte_print_hex_word+0x38>
 4b4:	01c12083          	lw	ra,28(sp)
 4b8:	01812403          	lw	s0,24(sp)
 4bc:	01412483          	lw	s1,20(sp)
 4c0:	01012903          	lw	s2,16(sp)
 4c4:	00c12983          	lw	s3,12(sp)
 4c8:	02010113          	addi	sp,sp,32
 4cc:	00008067          	ret

000004d0 <__neorv32_rte_debug_exc_handler>:
 4d0:	ff010113          	addi	sp,sp,-16
 4d4:	00112623          	sw	ra,12(sp)
 4d8:	00812423          	sw	s0,8(sp)
 4dc:	00912223          	sw	s1,4(sp)
 4e0:	390000ef          	jal	ra,870 <neorv32_uart0_available>
 4e4:	1a050e63          	beqz	a0,6a0 <__neorv32_rte_debug_exc_handler+0x1d0>
 4e8:	00001537          	lui	a0,0x1
 4ec:	cc850513          	addi	a0,a0,-824 # cc8 <__etext+0xe8>
 4f0:	454000ef          	jal	ra,944 <neorv32_uart0_print>
 4f4:	34202473          	csrr	s0,mcause
 4f8:	00900713          	li	a4,9
 4fc:	00f47793          	andi	a5,s0,15
 500:	03078493          	addi	s1,a5,48
 504:	00f77463          	bgeu	a4,a5,50c <__neorv32_rte_debug_exc_handler+0x3c>
 508:	05778493          	addi	s1,a5,87
 50c:	00b00793          	li	a5,11
 510:	0087ee63          	bltu	a5,s0,52c <__neorv32_rte_debug_exc_handler+0x5c>
 514:	00001737          	lui	a4,0x1
 518:	00241793          	slli	a5,s0,0x2
 51c:	e8870713          	addi	a4,a4,-376 # e88 <__etext+0x2a8>
 520:	00e787b3          	add	a5,a5,a4
 524:	0007a783          	lw	a5,0(a5)
 528:	00078067          	jr	a5
 52c:	800007b7          	lui	a5,0x80000
 530:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 534:	14e40463          	beq	s0,a4,67c <__neorv32_rte_debug_exc_handler+0x1ac>
 538:	02876663          	bltu	a4,s0,564 <__neorv32_rte_debug_exc_handler+0x94>
 53c:	00378713          	addi	a4,a5,3
 540:	12e40263          	beq	s0,a4,664 <__neorv32_rte_debug_exc_handler+0x194>
 544:	00778793          	addi	a5,a5,7
 548:	12f40463          	beq	s0,a5,670 <__neorv32_rte_debug_exc_handler+0x1a0>
 54c:	00001537          	lui	a0,0x1
 550:	e2850513          	addi	a0,a0,-472 # e28 <__etext+0x248>
 554:	3f0000ef          	jal	ra,944 <neorv32_uart0_print>
 558:	00040513          	mv	a0,s0
 55c:	f05ff0ef          	jal	ra,460 <__neorv32_rte_print_hex_word>
 560:	0280006f          	j	588 <__neorv32_rte_debug_exc_handler+0xb8>
 564:	ff07c793          	xori	a5,a5,-16
 568:	00f407b3          	add	a5,s0,a5
 56c:	00f00713          	li	a4,15
 570:	fcf76ee3          	bltu	a4,a5,54c <__neorv32_rte_debug_exc_handler+0x7c>
 574:	00001537          	lui	a0,0x1
 578:	e1850513          	addi	a0,a0,-488 # e18 <__etext+0x238>
 57c:	3c8000ef          	jal	ra,944 <neorv32_uart0_print>
 580:	00048513          	mv	a0,s1
 584:	3a8000ef          	jal	ra,92c <neorv32_uart0_putc>
 588:	00001537          	lui	a0,0x1
 58c:	e6c50513          	addi	a0,a0,-404 # e6c <__etext+0x28c>
 590:	3b4000ef          	jal	ra,944 <neorv32_uart0_print>
 594:	34002573          	csrr	a0,mscratch
 598:	ec9ff0ef          	jal	ra,460 <__neorv32_rte_print_hex_word>
 59c:	00001537          	lui	a0,0x1
 5a0:	e7450513          	addi	a0,a0,-396 # e74 <__etext+0x294>
 5a4:	3a0000ef          	jal	ra,944 <neorv32_uart0_print>
 5a8:	34302573          	csrr	a0,mtval
 5ac:	eb5ff0ef          	jal	ra,460 <__neorv32_rte_print_hex_word>
 5b0:	00812403          	lw	s0,8(sp)
 5b4:	00c12083          	lw	ra,12(sp)
 5b8:	00412483          	lw	s1,4(sp)
 5bc:	00001537          	lui	a0,0x1
 5c0:	e8050513          	addi	a0,a0,-384 # e80 <__etext+0x2a0>
 5c4:	01010113          	addi	sp,sp,16
 5c8:	37c0006f          	j	944 <neorv32_uart0_print>
 5cc:	00001537          	lui	a0,0x1
 5d0:	cd050513          	addi	a0,a0,-816 # cd0 <__etext+0xf0>
 5d4:	370000ef          	jal	ra,944 <neorv32_uart0_print>
 5d8:	fb1ff06f          	j	588 <__neorv32_rte_debug_exc_handler+0xb8>
 5dc:	00001537          	lui	a0,0x1
 5e0:	cf050513          	addi	a0,a0,-784 # cf0 <__etext+0x110>
 5e4:	360000ef          	jal	ra,944 <neorv32_uart0_print>
 5e8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 5ec:	0a07d463          	bgez	a5,694 <__neorv32_rte_debug_exc_handler+0x1c4>
 5f0:	0017f793          	andi	a5,a5,1
 5f4:	08078a63          	beqz	a5,688 <__neorv32_rte_debug_exc_handler+0x1b8>
 5f8:	00001537          	lui	a0,0x1
 5fc:	e4050513          	addi	a0,a0,-448 # e40 <__etext+0x260>
 600:	fd5ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 604:	00001537          	lui	a0,0x1
 608:	d0c50513          	addi	a0,a0,-756 # d0c <__etext+0x12c>
 60c:	fc9ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 610:	00001537          	lui	a0,0x1
 614:	d2050513          	addi	a0,a0,-736 # d20 <__etext+0x140>
 618:	fbdff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 61c:	00001537          	lui	a0,0x1
 620:	d2c50513          	addi	a0,a0,-724 # d2c <__etext+0x14c>
 624:	fb1ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 628:	00001537          	lui	a0,0x1
 62c:	d4450513          	addi	a0,a0,-700 # d44 <__etext+0x164>
 630:	fb5ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x114>
 634:	00001537          	lui	a0,0x1
 638:	d5850513          	addi	a0,a0,-680 # d58 <__etext+0x178>
 63c:	f99ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 640:	00001537          	lui	a0,0x1
 644:	d7450513          	addi	a0,a0,-652 # d74 <__etext+0x194>
 648:	f9dff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x114>
 64c:	00001537          	lui	a0,0x1
 650:	d8850513          	addi	a0,a0,-632 # d88 <__etext+0x1a8>
 654:	f81ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 658:	00001537          	lui	a0,0x1
 65c:	da850513          	addi	a0,a0,-600 # da8 <__etext+0x1c8>
 660:	f75ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 664:	00001537          	lui	a0,0x1
 668:	dc850513          	addi	a0,a0,-568 # dc8 <__etext+0x1e8>
 66c:	f69ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 670:	00001537          	lui	a0,0x1
 674:	de450513          	addi	a0,a0,-540 # de4 <__etext+0x204>
 678:	f5dff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 67c:	00001537          	lui	a0,0x1
 680:	dfc50513          	addi	a0,a0,-516 # dfc <__etext+0x21c>
 684:	f51ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 688:	00001537          	lui	a0,0x1
 68c:	e5050513          	addi	a0,a0,-432 # e50 <__etext+0x270>
 690:	f45ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 694:	00001537          	lui	a0,0x1
 698:	e6050513          	addi	a0,a0,-416 # e60 <__etext+0x280>
 69c:	f39ff06f          	j	5d4 <__neorv32_rte_debug_exc_handler+0x104>
 6a0:	00c12083          	lw	ra,12(sp)
 6a4:	00812403          	lw	s0,8(sp)
 6a8:	00412483          	lw	s1,4(sp)
 6ac:	01010113          	addi	sp,sp,16
 6b0:	00008067          	ret

000006b4 <neorv32_rte_exception_uninstall>:
 6b4:	01f00793          	li	a5,31
 6b8:	02a7e263          	bltu	a5,a0,6dc <neorv32_rte_exception_uninstall+0x28>
 6bc:	800007b7          	lui	a5,0x80000
 6c0:	00251513          	slli	a0,a0,0x2
 6c4:	00078793          	mv	a5,a5
 6c8:	00a787b3          	add	a5,a5,a0
 6cc:	4d000713          	li	a4,1232
 6d0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 6d4:	00000513          	li	a0,0
 6d8:	00008067          	ret
 6dc:	00100513          	li	a0,1
 6e0:	00008067          	ret

000006e4 <neorv32_rte_setup>:
 6e4:	ff010113          	addi	sp,sp,-16
 6e8:	00112623          	sw	ra,12(sp)
 6ec:	00812423          	sw	s0,8(sp)
 6f0:	00912223          	sw	s1,4(sp)
 6f4:	22000793          	li	a5,544
 6f8:	30579073          	csrw	mtvec,a5
 6fc:	00000413          	li	s0,0
 700:	01d00493          	li	s1,29
 704:	00040513          	mv	a0,s0
 708:	00140413          	addi	s0,s0,1
 70c:	0ff47413          	zext.b	s0,s0
 710:	fa5ff0ef          	jal	ra,6b4 <neorv32_rte_exception_uninstall>
 714:	fe9418e3          	bne	s0,s1,704 <neorv32_rte_setup+0x20>
 718:	00c12083          	lw	ra,12(sp)
 71c:	00812403          	lw	s0,8(sp)
 720:	00412483          	lw	s1,4(sp)
 724:	01010113          	addi	sp,sp,16
 728:	00008067          	ret

0000072c <__neorv32_uart_itoa>:
 72c:	fd010113          	addi	sp,sp,-48
 730:	02812423          	sw	s0,40(sp)
 734:	02912223          	sw	s1,36(sp)
 738:	03212023          	sw	s2,32(sp)
 73c:	01312e23          	sw	s3,28(sp)
 740:	01412c23          	sw	s4,24(sp)
 744:	02112623          	sw	ra,44(sp)
 748:	01512a23          	sw	s5,20(sp)
 74c:	00001a37          	lui	s4,0x1
 750:	00050493          	mv	s1,a0
 754:	00058413          	mv	s0,a1
 758:	00058523          	sb	zero,10(a1)
 75c:	00000993          	li	s3,0
 760:	00410913          	addi	s2,sp,4
 764:	edca0a13          	addi	s4,s4,-292 # edc <numbers.1>
 768:	00a00593          	li	a1,10
 76c:	00048513          	mv	a0,s1
 770:	40c000ef          	jal	ra,b7c <__umodsi3>
 774:	00aa0533          	add	a0,s4,a0
 778:	00054783          	lbu	a5,0(a0)
 77c:	01390ab3          	add	s5,s2,s3
 780:	00048513          	mv	a0,s1
 784:	00fa8023          	sb	a5,0(s5)
 788:	00a00593          	li	a1,10
 78c:	3a8000ef          	jal	ra,b34 <__hidden___udivsi3>
 790:	00198993          	addi	s3,s3,1
 794:	00a00793          	li	a5,10
 798:	00050493          	mv	s1,a0
 79c:	fcf996e3          	bne	s3,a5,768 <__neorv32_uart_itoa+0x3c>
 7a0:	00090693          	mv	a3,s2
 7a4:	00900713          	li	a4,9
 7a8:	03000613          	li	a2,48
 7ac:	0096c583          	lbu	a1,9(a3)
 7b0:	00070793          	mv	a5,a4
 7b4:	fff70713          	addi	a4,a4,-1
 7b8:	01071713          	slli	a4,a4,0x10
 7bc:	01075713          	srli	a4,a4,0x10
 7c0:	00c59a63          	bne	a1,a2,7d4 <__neorv32_uart_itoa+0xa8>
 7c4:	000684a3          	sb	zero,9(a3)
 7c8:	fff68693          	addi	a3,a3,-1
 7cc:	fe0710e3          	bnez	a4,7ac <__neorv32_uart_itoa+0x80>
 7d0:	00000793          	li	a5,0
 7d4:	00f907b3          	add	a5,s2,a5
 7d8:	00000713          	li	a4,0
 7dc:	0007c683          	lbu	a3,0(a5)
 7e0:	00068c63          	beqz	a3,7f8 <__neorv32_uart_itoa+0xcc>
 7e4:	00170613          	addi	a2,a4,1
 7e8:	00e40733          	add	a4,s0,a4
 7ec:	00d70023          	sb	a3,0(a4)
 7f0:	01061713          	slli	a4,a2,0x10
 7f4:	01075713          	srli	a4,a4,0x10
 7f8:	fff78693          	addi	a3,a5,-1
 7fc:	02f91863          	bne	s2,a5,82c <__neorv32_uart_itoa+0x100>
 800:	00e40433          	add	s0,s0,a4
 804:	00040023          	sb	zero,0(s0)
 808:	02c12083          	lw	ra,44(sp)
 80c:	02812403          	lw	s0,40(sp)
 810:	02412483          	lw	s1,36(sp)
 814:	02012903          	lw	s2,32(sp)
 818:	01c12983          	lw	s3,28(sp)
 81c:	01812a03          	lw	s4,24(sp)
 820:	01412a83          	lw	s5,20(sp)
 824:	03010113          	addi	sp,sp,48
 828:	00008067          	ret
 82c:	00068793          	mv	a5,a3
 830:	fadff06f          	j	7dc <__neorv32_uart_itoa+0xb0>

00000834 <__neorv32_uart_tohex>:
 834:	00001637          	lui	a2,0x1
 838:	00758693          	addi	a3,a1,7
 83c:	00000713          	li	a4,0
 840:	ec860613          	addi	a2,a2,-312 # ec8 <symbols.0>
 844:	02000813          	li	a6,32
 848:	00e557b3          	srl	a5,a0,a4
 84c:	00f7f793          	andi	a5,a5,15
 850:	00f607b3          	add	a5,a2,a5
 854:	0007c783          	lbu	a5,0(a5)
 858:	00470713          	addi	a4,a4,4
 85c:	fff68693          	addi	a3,a3,-1
 860:	00f680a3          	sb	a5,1(a3)
 864:	ff0712e3          	bne	a4,a6,848 <__neorv32_uart_tohex+0x14>
 868:	00058423          	sb	zero,8(a1)
 86c:	00008067          	ret

00000870 <neorv32_uart0_available>:
 870:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 874:	01255513          	srli	a0,a0,0x12
 878:	00157513          	andi	a0,a0,1
 87c:	00008067          	ret

00000880 <neorv32_uart0_setup>:
 880:	ff010113          	addi	sp,sp,-16
 884:	00812423          	sw	s0,8(sp)
 888:	00912223          	sw	s1,4(sp)
 88c:	00112623          	sw	ra,12(sp)
 890:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 894:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 898:	00058413          	mv	s0,a1
 89c:	00151593          	slli	a1,a0,0x1
 8a0:	00078513          	mv	a0,a5
 8a4:	00060493          	mv	s1,a2
 8a8:	28c000ef          	jal	ra,b34 <__hidden___udivsi3>
 8ac:	01051513          	slli	a0,a0,0x10
 8b0:	000017b7          	lui	a5,0x1
 8b4:	01055513          	srli	a0,a0,0x10
 8b8:	00000713          	li	a4,0
 8bc:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x116>
 8c0:	04a7e463          	bltu	a5,a0,908 <neorv32_uart0_setup+0x88>
 8c4:	0034f493          	andi	s1,s1,3
 8c8:	01449493          	slli	s1,s1,0x14
 8cc:	00347413          	andi	s0,s0,3
 8d0:	fff50793          	addi	a5,a0,-1
 8d4:	0097e7b3          	or	a5,a5,s1
 8d8:	01641413          	slli	s0,s0,0x16
 8dc:	0087e7b3          	or	a5,a5,s0
 8e0:	01871713          	slli	a4,a4,0x18
 8e4:	00c12083          	lw	ra,12(sp)
 8e8:	00812403          	lw	s0,8(sp)
 8ec:	00e7e7b3          	or	a5,a5,a4
 8f0:	10000737          	lui	a4,0x10000
 8f4:	00e7e7b3          	or	a5,a5,a4
 8f8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 8fc:	00412483          	lw	s1,4(sp)
 900:	01010113          	addi	sp,sp,16
 904:	00008067          	ret
 908:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff116>
 90c:	0fd6f693          	andi	a3,a3,253
 910:	00069a63          	bnez	a3,924 <neorv32_uart0_setup+0xa4>
 914:	00355513          	srli	a0,a0,0x3
 918:	00170713          	addi	a4,a4,1
 91c:	0ff77713          	zext.b	a4,a4
 920:	fa1ff06f          	j	8c0 <neorv32_uart0_setup+0x40>
 924:	00155513          	srli	a0,a0,0x1
 928:	ff1ff06f          	j	918 <neorv32_uart0_setup+0x98>

0000092c <neorv32_uart0_putc>:
 92c:	00040737          	lui	a4,0x40
 930:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 934:	00e7f7b3          	and	a5,a5,a4
 938:	fe079ce3          	bnez	a5,930 <neorv32_uart0_putc+0x4>
 93c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 940:	00008067          	ret

00000944 <neorv32_uart0_print>:
 944:	ff010113          	addi	sp,sp,-16
 948:	00812423          	sw	s0,8(sp)
 94c:	01212023          	sw	s2,0(sp)
 950:	00112623          	sw	ra,12(sp)
 954:	00912223          	sw	s1,4(sp)
 958:	00050413          	mv	s0,a0
 95c:	00a00913          	li	s2,10
 960:	00044483          	lbu	s1,0(s0)
 964:	00140413          	addi	s0,s0,1
 968:	00049e63          	bnez	s1,984 <neorv32_uart0_print+0x40>
 96c:	00c12083          	lw	ra,12(sp)
 970:	00812403          	lw	s0,8(sp)
 974:	00412483          	lw	s1,4(sp)
 978:	00012903          	lw	s2,0(sp)
 97c:	01010113          	addi	sp,sp,16
 980:	00008067          	ret
 984:	01249663          	bne	s1,s2,990 <neorv32_uart0_print+0x4c>
 988:	00d00513          	li	a0,13
 98c:	fa1ff0ef          	jal	ra,92c <neorv32_uart0_putc>
 990:	00048513          	mv	a0,s1
 994:	f99ff0ef          	jal	ra,92c <neorv32_uart0_putc>
 998:	fc9ff06f          	j	960 <neorv32_uart0_print+0x1c>

0000099c <neorv32_uart0_printf>:
 99c:	fa010113          	addi	sp,sp,-96
 9a0:	04f12a23          	sw	a5,84(sp)
 9a4:	04410793          	addi	a5,sp,68
 9a8:	02812c23          	sw	s0,56(sp)
 9ac:	03212823          	sw	s2,48(sp)
 9b0:	03312623          	sw	s3,44(sp)
 9b4:	03412423          	sw	s4,40(sp)
 9b8:	03512223          	sw	s5,36(sp)
 9bc:	03612023          	sw	s6,32(sp)
 9c0:	01712e23          	sw	s7,28(sp)
 9c4:	01812c23          	sw	s8,24(sp)
 9c8:	02112e23          	sw	ra,60(sp)
 9cc:	02912a23          	sw	s1,52(sp)
 9d0:	00050413          	mv	s0,a0
 9d4:	04b12223          	sw	a1,68(sp)
 9d8:	04c12423          	sw	a2,72(sp)
 9dc:	04d12623          	sw	a3,76(sp)
 9e0:	04e12823          	sw	a4,80(sp)
 9e4:	05012c23          	sw	a6,88(sp)
 9e8:	05112e23          	sw	a7,92(sp)
 9ec:	00f12023          	sw	a5,0(sp)
 9f0:	02500993          	li	s3,37
 9f4:	00a00a13          	li	s4,10
 9f8:	07300913          	li	s2,115
 9fc:	07500a93          	li	s5,117
 a00:	07800b13          	li	s6,120
 a04:	06300b93          	li	s7,99
 a08:	06900c13          	li	s8,105
 a0c:	00044483          	lbu	s1,0(s0)
 a10:	02049a63          	bnez	s1,a44 <neorv32_uart0_printf+0xa8>
 a14:	03c12083          	lw	ra,60(sp)
 a18:	03812403          	lw	s0,56(sp)
 a1c:	03412483          	lw	s1,52(sp)
 a20:	03012903          	lw	s2,48(sp)
 a24:	02c12983          	lw	s3,44(sp)
 a28:	02812a03          	lw	s4,40(sp)
 a2c:	02412a83          	lw	s5,36(sp)
 a30:	02012b03          	lw	s6,32(sp)
 a34:	01c12b83          	lw	s7,28(sp)
 a38:	01812c03          	lw	s8,24(sp)
 a3c:	06010113          	addi	sp,sp,96
 a40:	00008067          	ret
 a44:	0d349663          	bne	s1,s3,b10 <neorv32_uart0_printf+0x174>
 a48:	00144483          	lbu	s1,1(s0)
 a4c:	05248263          	beq	s1,s2,a90 <neorv32_uart0_printf+0xf4>
 a50:	00996e63          	bltu	s2,s1,a6c <neorv32_uart0_printf+0xd0>
 a54:	05748c63          	beq	s1,s7,aac <neorv32_uart0_printf+0x110>
 a58:	07848663          	beq	s1,s8,ac4 <neorv32_uart0_printf+0x128>
 a5c:	02500513          	li	a0,37
 a60:	ecdff0ef          	jal	ra,92c <neorv32_uart0_putc>
 a64:	00048513          	mv	a0,s1
 a68:	0540006f          	j	abc <neorv32_uart0_printf+0x120>
 a6c:	09548663          	beq	s1,s5,af8 <neorv32_uart0_printf+0x15c>
 a70:	ff6496e3          	bne	s1,s6,a5c <neorv32_uart0_printf+0xc0>
 a74:	00012783          	lw	a5,0(sp)
 a78:	00410593          	addi	a1,sp,4
 a7c:	0007a503          	lw	a0,0(a5)
 a80:	00478713          	addi	a4,a5,4
 a84:	00e12023          	sw	a4,0(sp)
 a88:	dadff0ef          	jal	ra,834 <__neorv32_uart_tohex>
 a8c:	0640006f          	j	af0 <neorv32_uart0_printf+0x154>
 a90:	00012783          	lw	a5,0(sp)
 a94:	0007a503          	lw	a0,0(a5)
 a98:	00478713          	addi	a4,a5,4
 a9c:	00e12023          	sw	a4,0(sp)
 aa0:	ea5ff0ef          	jal	ra,944 <neorv32_uart0_print>
 aa4:	00240413          	addi	s0,s0,2
 aa8:	f65ff06f          	j	a0c <neorv32_uart0_printf+0x70>
 aac:	00012783          	lw	a5,0(sp)
 ab0:	0007c503          	lbu	a0,0(a5)
 ab4:	00478713          	addi	a4,a5,4
 ab8:	00e12023          	sw	a4,0(sp)
 abc:	e71ff0ef          	jal	ra,92c <neorv32_uart0_putc>
 ac0:	fe5ff06f          	j	aa4 <neorv32_uart0_printf+0x108>
 ac4:	00012783          	lw	a5,0(sp)
 ac8:	0007a483          	lw	s1,0(a5)
 acc:	00478713          	addi	a4,a5,4
 ad0:	00e12023          	sw	a4,0(sp)
 ad4:	0004d863          	bgez	s1,ae4 <neorv32_uart0_printf+0x148>
 ad8:	02d00513          	li	a0,45
 adc:	409004b3          	neg	s1,s1
 ae0:	e4dff0ef          	jal	ra,92c <neorv32_uart0_putc>
 ae4:	00410593          	addi	a1,sp,4
 ae8:	00048513          	mv	a0,s1
 aec:	c41ff0ef          	jal	ra,72c <__neorv32_uart_itoa>
 af0:	00410513          	addi	a0,sp,4
 af4:	fadff06f          	j	aa0 <neorv32_uart0_printf+0x104>
 af8:	00012783          	lw	a5,0(sp)
 afc:	00410593          	addi	a1,sp,4
 b00:	00478713          	addi	a4,a5,4
 b04:	0007a503          	lw	a0,0(a5)
 b08:	00e12023          	sw	a4,0(sp)
 b0c:	fe1ff06f          	j	aec <neorv32_uart0_printf+0x150>
 b10:	01449663          	bne	s1,s4,b1c <neorv32_uart0_printf+0x180>
 b14:	00d00513          	li	a0,13
 b18:	e15ff0ef          	jal	ra,92c <neorv32_uart0_putc>
 b1c:	00048513          	mv	a0,s1
 b20:	00140413          	addi	s0,s0,1
 b24:	e09ff0ef          	jal	ra,92c <neorv32_uart0_putc>
 b28:	ee5ff06f          	j	a0c <neorv32_uart0_printf+0x70>

00000b2c <__divsi3>:
 b2c:	06054063          	bltz	a0,b8c <__umodsi3+0x10>
 b30:	0605c663          	bltz	a1,b9c <__umodsi3+0x20>

00000b34 <__hidden___udivsi3>:
 b34:	00058613          	mv	a2,a1
 b38:	00050593          	mv	a1,a0
 b3c:	fff00513          	li	a0,-1
 b40:	02060c63          	beqz	a2,b78 <__hidden___udivsi3+0x44>
 b44:	00100693          	li	a3,1
 b48:	00b67a63          	bgeu	a2,a1,b5c <__hidden___udivsi3+0x28>
 b4c:	00c05863          	blez	a2,b5c <__hidden___udivsi3+0x28>
 b50:	00161613          	slli	a2,a2,0x1
 b54:	00169693          	slli	a3,a3,0x1
 b58:	feb66ae3          	bltu	a2,a1,b4c <__hidden___udivsi3+0x18>
 b5c:	00000513          	li	a0,0
 b60:	00c5e663          	bltu	a1,a2,b6c <__hidden___udivsi3+0x38>
 b64:	40c585b3          	sub	a1,a1,a2
 b68:	00d56533          	or	a0,a0,a3
 b6c:	0016d693          	srli	a3,a3,0x1
 b70:	00165613          	srli	a2,a2,0x1
 b74:	fe0696e3          	bnez	a3,b60 <__hidden___udivsi3+0x2c>
 b78:	00008067          	ret

00000b7c <__umodsi3>:
 b7c:	00008293          	mv	t0,ra
 b80:	fb5ff0ef          	jal	ra,b34 <__hidden___udivsi3>
 b84:	00058513          	mv	a0,a1
 b88:	00028067          	jr	t0
 b8c:	40a00533          	neg	a0,a0
 b90:	00b04863          	bgtz	a1,ba0 <__umodsi3+0x24>
 b94:	40b005b3          	neg	a1,a1
 b98:	f9dff06f          	j	b34 <__hidden___udivsi3>
 b9c:	40b005b3          	neg	a1,a1
 ba0:	00008293          	mv	t0,ra
 ba4:	f91ff0ef          	jal	ra,b34 <__hidden___udivsi3>
 ba8:	40a00533          	neg	a0,a0
 bac:	00028067          	jr	t0

00000bb0 <__modsi3>:
 bb0:	00008293          	mv	t0,ra
 bb4:	0005ca63          	bltz	a1,bc8 <__modsi3+0x18>
 bb8:	00054c63          	bltz	a0,bd0 <__modsi3+0x20>
 bbc:	f79ff0ef          	jal	ra,b34 <__hidden___udivsi3>
 bc0:	00058513          	mv	a0,a1
 bc4:	00028067          	jr	t0
 bc8:	40b005b3          	neg	a1,a1
 bcc:	fe0558e3          	bgez	a0,bbc <__modsi3+0xc>
 bd0:	40a00533          	neg	a0,a0
 bd4:	f61ff0ef          	jal	ra,b34 <__hidden___udivsi3>
 bd8:	40b00533          	neg	a0,a1
 bdc:	00028067          	jr	t0
