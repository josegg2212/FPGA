
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
  e0:	18c58593          	addi	a1,a1,396 # 1268 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3898>
 194:	00112623          	sw	ra,12(sp)
 198:	019000ef          	jal	ra,9b0 <neorv32_uart0_setup>
 19c:	10c000ef          	jal	ra,2a8 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	670000ef          	jal	ra,814 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	f4c50513          	addi	a0,a0,-180 # f4c <__etext+0x98>
 1b0:	0c5000ef          	jal	ra,a74 <neorv32_uart0_print>
 1b4:	0d0000ef          	jal	ra,284 <wb_calculadora>
 1b8:	00001537          	lui	a0,0x1
 1bc:	f2850513          	addi	a0,a0,-216 # f28 <__etext+0x74>
 1c0:	0b5000ef          	jal	ra,a74 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <keyboard>:
 1d4:	fa010113          	addi	sp,sp,-96
 1d8:	000015b7          	lui	a1,0x1
 1dc:	04000613          	li	a2,64
 1e0:	f6058593          	addi	a1,a1,-160 # f60 <__etext+0xac>
 1e4:	00010513          	mv	a0,sp
 1e8:	04112e23          	sw	ra,92(sp)
 1ec:	05412423          	sw	s4,72(sp)
 1f0:	05512223          	sw	s5,68(sp)
 1f4:	05612023          	sw	s6,64(sp)
 1f8:	04812c23          	sw	s0,88(sp)
 1fc:	04912a23          	sw	s1,84(sp)
 200:	05212823          	sw	s2,80(sp)
 204:	05312623          	sw	s3,76(sp)
 208:	309000ef          	jal	ra,d10 <memcpy>
 20c:	0ff00513          	li	a0,255
 210:	00000593          	li	a1,0
 214:	12c000ef          	jal	ra,340 <neorv32_gpio_port_set>
 218:	0ff00b13          	li	s6,255
 21c:	00800a13          	li	s4,8
 220:	00400a93          	li	s5,4
 224:	00010913          	mv	s2,sp
 228:	00000413          	li	s0,0
 22c:	00040513          	mv	a0,s0
 230:	0b8000ef          	jal	ra,2e8 <neorv32_gpio_pin_clr>
 234:	00090993          	mv	s3,s2
 238:	00400493          	li	s1,4
 23c:	00048513          	mv	a0,s1
 240:	0dc000ef          	jal	ra,31c <neorv32_gpio_pin_get>
 244:	00051e63          	bnez	a0,260 <keyboard+0x8c>
 248:	03c9a503          	lw	a0,60(s3)
 24c:	01650a63          	beq	a0,s6,260 <keyboard+0x8c>
 250:	00451513          	slli	a0,a0,0x4
 254:	0f057513          	andi	a0,a0,240
 258:	00000593          	li	a1,0
 25c:	0e4000ef          	jal	ra,340 <neorv32_gpio_port_set>
 260:	00148493          	addi	s1,s1,1
 264:	ff098993          	addi	s3,s3,-16
 268:	fd449ae3          	bne	s1,s4,23c <keyboard+0x68>
 26c:	00040513          	mv	a0,s0
 270:	00140413          	addi	s0,s0,1
 274:	044000ef          	jal	ra,2b8 <neorv32_gpio_pin_set>
 278:	ffc90913          	addi	s2,s2,-4
 27c:	fb5418e3          	bne	s0,s5,22c <keyboard+0x58>
 280:	fa5ff06f          	j	224 <keyboard+0x50>

00000284 <wb_calculadora>:
 284:	00001537          	lui	a0,0x1
 288:	ff010113          	addi	sp,sp,-16
 28c:	eb450513          	addi	a0,a0,-332 # eb4 <__etext>
 290:	00112623          	sw	ra,12(sp)
 294:	039000ef          	jal	ra,acc <neorv32_uart0_printf>
 298:	00001537          	lui	a0,0x1
 29c:	f0450513          	addi	a0,a0,-252 # f04 <__etext+0x50>
 2a0:	02d000ef          	jal	ra,acc <neorv32_uart0_printf>
 2a4:	f31ff0ef          	jal	ra,1d4 <keyboard>

000002a8 <neorv32_gpio_available>:
 2a8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2ac:	01055513          	srli	a0,a0,0x10
 2b0:	00157513          	andi	a0,a0,1
 2b4:	00008067          	ret

000002b8 <neorv32_gpio_pin_set>:
 2b8:	00100793          	li	a5,1
 2bc:	01f00713          	li	a4,31
 2c0:	00a797b3          	sll	a5,a5,a0
 2c4:	00a74a63          	blt	a4,a0,2d8 <neorv32_gpio_pin_set+0x20>
 2c8:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 2cc:	00f767b3          	or	a5,a4,a5
 2d0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 2d4:	00008067          	ret
 2d8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 2dc:	00f767b3          	or	a5,a4,a5
 2e0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 2e4:	00008067          	ret

000002e8 <neorv32_gpio_pin_clr>:
 2e8:	00100793          	li	a5,1
 2ec:	00a797b3          	sll	a5,a5,a0
 2f0:	01f00713          	li	a4,31
 2f4:	fff7c793          	not	a5,a5
 2f8:	00a74a63          	blt	a4,a0,30c <neorv32_gpio_pin_clr+0x24>
 2fc:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 300:	00f777b3          	and	a5,a4,a5
 304:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 308:	00008067          	ret
 30c:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 310:	00f777b3          	and	a5,a4,a5
 314:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 318:	00008067          	ret

0000031c <neorv32_gpio_pin_get>:
 31c:	00100793          	li	a5,1
 320:	01f00713          	li	a4,31
 324:	00a797b3          	sll	a5,a5,a0
 328:	00a74863          	blt	a4,a0,338 <neorv32_gpio_pin_get+0x1c>
 32c:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 330:	00f77533          	and	a0,a4,a5
 334:	00008067          	ret
 338:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 33c:	ff5ff06f          	j	330 <neorv32_gpio_pin_get+0x14>

00000340 <neorv32_gpio_port_set>:
 340:	fc000793          	li	a5,-64
 344:	00a7a423          	sw	a0,8(a5)
 348:	00b7a623          	sw	a1,12(a5)
 34c:	00008067          	ret

00000350 <__neorv32_rte_core>:
 350:	fc010113          	addi	sp,sp,-64
 354:	02112e23          	sw	ra,60(sp)
 358:	02512c23          	sw	t0,56(sp)
 35c:	02612a23          	sw	t1,52(sp)
 360:	02712823          	sw	t2,48(sp)
 364:	02a12623          	sw	a0,44(sp)
 368:	02b12423          	sw	a1,40(sp)
 36c:	02c12223          	sw	a2,36(sp)
 370:	02d12023          	sw	a3,32(sp)
 374:	00e12e23          	sw	a4,28(sp)
 378:	00f12c23          	sw	a5,24(sp)
 37c:	01012a23          	sw	a6,20(sp)
 380:	01112823          	sw	a7,16(sp)
 384:	01c12623          	sw	t3,12(sp)
 388:	01d12423          	sw	t4,8(sp)
 38c:	01e12223          	sw	t5,4(sp)
 390:	01f12023          	sw	t6,0(sp)
 394:	34102773          	csrr	a4,mepc
 398:	34071073          	csrw	mscratch,a4
 39c:	342027f3          	csrr	a5,mcause
 3a0:	0807c863          	bltz	a5,430 <__neorv32_rte_core+0xe0>
 3a4:	00071683          	lh	a3,0(a4)
 3a8:	00300593          	li	a1,3
 3ac:	0036f693          	andi	a3,a3,3
 3b0:	00270613          	addi	a2,a4,2
 3b4:	00b69463          	bne	a3,a1,3bc <__neorv32_rte_core+0x6c>
 3b8:	00470613          	addi	a2,a4,4
 3bc:	34161073          	csrw	mepc,a2
 3c0:	00b00713          	li	a4,11
 3c4:	04f77a63          	bgeu	a4,a5,418 <__neorv32_rte_core+0xc8>
 3c8:	60000793          	li	a5,1536
 3cc:	000780e7          	jalr	a5
 3d0:	03c12083          	lw	ra,60(sp)
 3d4:	03812283          	lw	t0,56(sp)
 3d8:	03412303          	lw	t1,52(sp)
 3dc:	03012383          	lw	t2,48(sp)
 3e0:	02c12503          	lw	a0,44(sp)
 3e4:	02812583          	lw	a1,40(sp)
 3e8:	02412603          	lw	a2,36(sp)
 3ec:	02012683          	lw	a3,32(sp)
 3f0:	01c12703          	lw	a4,28(sp)
 3f4:	01812783          	lw	a5,24(sp)
 3f8:	01412803          	lw	a6,20(sp)
 3fc:	01012883          	lw	a7,16(sp)
 400:	00c12e03          	lw	t3,12(sp)
 404:	00812e83          	lw	t4,8(sp)
 408:	00412f03          	lw	t5,4(sp)
 40c:	00012f83          	lw	t6,0(sp)
 410:	04010113          	addi	sp,sp,64
 414:	30200073          	mret
 418:	00001737          	lui	a4,0x1
 41c:	00279793          	slli	a5,a5,0x2
 420:	fa070713          	addi	a4,a4,-96 # fa0 <__etext+0xec>
 424:	00e787b3          	add	a5,a5,a4
 428:	0007a783          	lw	a5,0(a5)
 42c:	00078067          	jr	a5
 430:	80000737          	lui	a4,0x80000
 434:	ffd74713          	xori	a4,a4,-3
 438:	00e787b3          	add	a5,a5,a4
 43c:	01c00713          	li	a4,28
 440:	f8f764e3          	bltu	a4,a5,3c8 <__neorv32_rte_core+0x78>
 444:	00001737          	lui	a4,0x1
 448:	00279793          	slli	a5,a5,0x2
 44c:	fd070713          	addi	a4,a4,-48 # fd0 <__etext+0x11c>
 450:	00e787b3          	add	a5,a5,a4
 454:	0007a783          	lw	a5,0(a5)
 458:	00078067          	jr	a5
 45c:	800007b7          	lui	a5,0x80000
 460:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 464:	f69ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 468:	800007b7          	lui	a5,0x80000
 46c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 470:	f5dff06f          	j	3cc <__neorv32_rte_core+0x7c>
 474:	800007b7          	lui	a5,0x80000
 478:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 47c:	f51ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 480:	800007b7          	lui	a5,0x80000
 484:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 488:	f45ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 48c:	800007b7          	lui	a5,0x80000
 490:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 494:	f39ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 498:	800007b7          	lui	a5,0x80000
 49c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 4a0:	f2dff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4a4:	800007b7          	lui	a5,0x80000
 4a8:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 4ac:	f21ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4b0:	800007b7          	lui	a5,0x80000
 4b4:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 4b8:	f15ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4bc:	800007b7          	lui	a5,0x80000
 4c0:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 4c4:	f09ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4c8:	800007b7          	lui	a5,0x80000
 4cc:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 4d0:	efdff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4d4:	800007b7          	lui	a5,0x80000
 4d8:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 4dc:	ef1ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4e0:	800007b7          	lui	a5,0x80000
 4e4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 4e8:	ee5ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4ec:	800007b7          	lui	a5,0x80000
 4f0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 4f4:	ed9ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 4f8:	800007b7          	lui	a5,0x80000
 4fc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 500:	ecdff06f          	j	3cc <__neorv32_rte_core+0x7c>
 504:	800007b7          	lui	a5,0x80000
 508:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 50c:	ec1ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 510:	800007b7          	lui	a5,0x80000
 514:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 518:	eb5ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 51c:	800007b7          	lui	a5,0x80000
 520:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 524:	ea9ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 528:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 52c:	ea1ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 530:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 534:	e99ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 538:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 53c:	e91ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 540:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 544:	e89ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 548:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 54c:	e81ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 550:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 554:	e79ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 558:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 55c:	e71ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 560:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 564:	e69ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 568:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 56c:	e61ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 570:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 574:	e59ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 578:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 57c:	e51ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 580:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 584:	e49ff06f          	j	3cc <__neorv32_rte_core+0x7c>
 588:	0000                	.2byte	0x0
 58a:	0000                	.2byte	0x0
 58c:	0000                	.2byte	0x0
 58e:	0000                	.2byte	0x0

00000590 <__neorv32_rte_print_hex_word>:
 590:	fe010113          	addi	sp,sp,-32
 594:	01212823          	sw	s2,16(sp)
 598:	00050913          	mv	s2,a0
 59c:	00001537          	lui	a0,0x1
 5a0:	00912a23          	sw	s1,20(sp)
 5a4:	04450513          	addi	a0,a0,68 # 1044 <__etext+0x190>
 5a8:	000014b7          	lui	s1,0x1
 5ac:	00812c23          	sw	s0,24(sp)
 5b0:	01312623          	sw	s3,12(sp)
 5b4:	00112e23          	sw	ra,28(sp)
 5b8:	01c00413          	li	s0,28
 5bc:	4b8000ef          	jal	ra,a74 <neorv32_uart0_print>
 5c0:	23848493          	addi	s1,s1,568 # 1238 <hex_symbols.0>
 5c4:	ffc00993          	li	s3,-4
 5c8:	008957b3          	srl	a5,s2,s0
 5cc:	00f7f793          	andi	a5,a5,15
 5d0:	00f487b3          	add	a5,s1,a5
 5d4:	0007c503          	lbu	a0,0(a5)
 5d8:	ffc40413          	addi	s0,s0,-4
 5dc:	480000ef          	jal	ra,a5c <neorv32_uart0_putc>
 5e0:	ff3414e3          	bne	s0,s3,5c8 <__neorv32_rte_print_hex_word+0x38>
 5e4:	01c12083          	lw	ra,28(sp)
 5e8:	01812403          	lw	s0,24(sp)
 5ec:	01412483          	lw	s1,20(sp)
 5f0:	01012903          	lw	s2,16(sp)
 5f4:	00c12983          	lw	s3,12(sp)
 5f8:	02010113          	addi	sp,sp,32
 5fc:	00008067          	ret

00000600 <__neorv32_rte_debug_exc_handler>:
 600:	ff010113          	addi	sp,sp,-16
 604:	00112623          	sw	ra,12(sp)
 608:	00812423          	sw	s0,8(sp)
 60c:	00912223          	sw	s1,4(sp)
 610:	390000ef          	jal	ra,9a0 <neorv32_uart0_available>
 614:	1a050e63          	beqz	a0,7d0 <__neorv32_rte_debug_exc_handler+0x1d0>
 618:	00001537          	lui	a0,0x1
 61c:	04850513          	addi	a0,a0,72 # 1048 <__etext+0x194>
 620:	454000ef          	jal	ra,a74 <neorv32_uart0_print>
 624:	34202473          	csrr	s0,mcause
 628:	00900713          	li	a4,9
 62c:	00f47793          	andi	a5,s0,15
 630:	03078493          	addi	s1,a5,48
 634:	00f77463          	bgeu	a4,a5,63c <__neorv32_rte_debug_exc_handler+0x3c>
 638:	05778493          	addi	s1,a5,87
 63c:	00b00793          	li	a5,11
 640:	0087ee63          	bltu	a5,s0,65c <__neorv32_rte_debug_exc_handler+0x5c>
 644:	00001737          	lui	a4,0x1
 648:	00241793          	slli	a5,s0,0x2
 64c:	20870713          	addi	a4,a4,520 # 1208 <__etext+0x354>
 650:	00e787b3          	add	a5,a5,a4
 654:	0007a783          	lw	a5,0(a5)
 658:	00078067          	jr	a5
 65c:	800007b7          	lui	a5,0x80000
 660:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 664:	14e40463          	beq	s0,a4,7ac <__neorv32_rte_debug_exc_handler+0x1ac>
 668:	02876663          	bltu	a4,s0,694 <__neorv32_rte_debug_exc_handler+0x94>
 66c:	00378713          	addi	a4,a5,3
 670:	12e40263          	beq	s0,a4,794 <__neorv32_rte_debug_exc_handler+0x194>
 674:	00778793          	addi	a5,a5,7
 678:	12f40463          	beq	s0,a5,7a0 <__neorv32_rte_debug_exc_handler+0x1a0>
 67c:	00001537          	lui	a0,0x1
 680:	1a850513          	addi	a0,a0,424 # 11a8 <__etext+0x2f4>
 684:	3f0000ef          	jal	ra,a74 <neorv32_uart0_print>
 688:	00040513          	mv	a0,s0
 68c:	f05ff0ef          	jal	ra,590 <__neorv32_rte_print_hex_word>
 690:	0280006f          	j	6b8 <__neorv32_rte_debug_exc_handler+0xb8>
 694:	ff07c793          	xori	a5,a5,-16
 698:	00f407b3          	add	a5,s0,a5
 69c:	00f00713          	li	a4,15
 6a0:	fcf76ee3          	bltu	a4,a5,67c <__neorv32_rte_debug_exc_handler+0x7c>
 6a4:	00001537          	lui	a0,0x1
 6a8:	19850513          	addi	a0,a0,408 # 1198 <__etext+0x2e4>
 6ac:	3c8000ef          	jal	ra,a74 <neorv32_uart0_print>
 6b0:	00048513          	mv	a0,s1
 6b4:	3a8000ef          	jal	ra,a5c <neorv32_uart0_putc>
 6b8:	00001537          	lui	a0,0x1
 6bc:	1ec50513          	addi	a0,a0,492 # 11ec <__etext+0x338>
 6c0:	3b4000ef          	jal	ra,a74 <neorv32_uart0_print>
 6c4:	34002573          	csrr	a0,mscratch
 6c8:	ec9ff0ef          	jal	ra,590 <__neorv32_rte_print_hex_word>
 6cc:	00001537          	lui	a0,0x1
 6d0:	1f450513          	addi	a0,a0,500 # 11f4 <__etext+0x340>
 6d4:	3a0000ef          	jal	ra,a74 <neorv32_uart0_print>
 6d8:	34302573          	csrr	a0,mtval
 6dc:	eb5ff0ef          	jal	ra,590 <__neorv32_rte_print_hex_word>
 6e0:	00812403          	lw	s0,8(sp)
 6e4:	00c12083          	lw	ra,12(sp)
 6e8:	00412483          	lw	s1,4(sp)
 6ec:	00001537          	lui	a0,0x1
 6f0:	20050513          	addi	a0,a0,512 # 1200 <__etext+0x34c>
 6f4:	01010113          	addi	sp,sp,16
 6f8:	37c0006f          	j	a74 <neorv32_uart0_print>
 6fc:	00001537          	lui	a0,0x1
 700:	05050513          	addi	a0,a0,80 # 1050 <__etext+0x19c>
 704:	370000ef          	jal	ra,a74 <neorv32_uart0_print>
 708:	fb1ff06f          	j	6b8 <__neorv32_rte_debug_exc_handler+0xb8>
 70c:	00001537          	lui	a0,0x1
 710:	07050513          	addi	a0,a0,112 # 1070 <__etext+0x1bc>
 714:	360000ef          	jal	ra,a74 <neorv32_uart0_print>
 718:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 71c:	0a07d463          	bgez	a5,7c4 <__neorv32_rte_debug_exc_handler+0x1c4>
 720:	0017f793          	andi	a5,a5,1
 724:	08078a63          	beqz	a5,7b8 <__neorv32_rte_debug_exc_handler+0x1b8>
 728:	00001537          	lui	a0,0x1
 72c:	1c050513          	addi	a0,a0,448 # 11c0 <__etext+0x30c>
 730:	fd5ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 734:	00001537          	lui	a0,0x1
 738:	08c50513          	addi	a0,a0,140 # 108c <__etext+0x1d8>
 73c:	fc9ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 740:	00001537          	lui	a0,0x1
 744:	0a050513          	addi	a0,a0,160 # 10a0 <__etext+0x1ec>
 748:	fbdff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 74c:	00001537          	lui	a0,0x1
 750:	0ac50513          	addi	a0,a0,172 # 10ac <__etext+0x1f8>
 754:	fb1ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 758:	00001537          	lui	a0,0x1
 75c:	0c450513          	addi	a0,a0,196 # 10c4 <__etext+0x210>
 760:	fb5ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x114>
 764:	00001537          	lui	a0,0x1
 768:	0d850513          	addi	a0,a0,216 # 10d8 <__etext+0x224>
 76c:	f99ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 770:	00001537          	lui	a0,0x1
 774:	0f450513          	addi	a0,a0,244 # 10f4 <__etext+0x240>
 778:	f9dff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x114>
 77c:	00001537          	lui	a0,0x1
 780:	10850513          	addi	a0,a0,264 # 1108 <__etext+0x254>
 784:	f81ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 788:	00001537          	lui	a0,0x1
 78c:	12850513          	addi	a0,a0,296 # 1128 <__etext+0x274>
 790:	f75ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 794:	00001537          	lui	a0,0x1
 798:	14850513          	addi	a0,a0,328 # 1148 <__etext+0x294>
 79c:	f69ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 7a0:	00001537          	lui	a0,0x1
 7a4:	16450513          	addi	a0,a0,356 # 1164 <__etext+0x2b0>
 7a8:	f5dff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 7ac:	00001537          	lui	a0,0x1
 7b0:	17c50513          	addi	a0,a0,380 # 117c <__etext+0x2c8>
 7b4:	f51ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 7b8:	00001537          	lui	a0,0x1
 7bc:	1d050513          	addi	a0,a0,464 # 11d0 <__etext+0x31c>
 7c0:	f45ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 7c4:	00001537          	lui	a0,0x1
 7c8:	1e050513          	addi	a0,a0,480 # 11e0 <__etext+0x32c>
 7cc:	f39ff06f          	j	704 <__neorv32_rte_debug_exc_handler+0x104>
 7d0:	00c12083          	lw	ra,12(sp)
 7d4:	00812403          	lw	s0,8(sp)
 7d8:	00412483          	lw	s1,4(sp)
 7dc:	01010113          	addi	sp,sp,16
 7e0:	00008067          	ret

000007e4 <neorv32_rte_exception_uninstall>:
 7e4:	01f00793          	li	a5,31
 7e8:	02a7e263          	bltu	a5,a0,80c <neorv32_rte_exception_uninstall+0x28>
 7ec:	800007b7          	lui	a5,0x80000
 7f0:	00251513          	slli	a0,a0,0x2
 7f4:	00078793          	mv	a5,a5
 7f8:	00a787b3          	add	a5,a5,a0
 7fc:	60000713          	li	a4,1536
 800:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 804:	00000513          	li	a0,0
 808:	00008067          	ret
 80c:	00100513          	li	a0,1
 810:	00008067          	ret

00000814 <neorv32_rte_setup>:
 814:	ff010113          	addi	sp,sp,-16
 818:	00112623          	sw	ra,12(sp)
 81c:	00812423          	sw	s0,8(sp)
 820:	00912223          	sw	s1,4(sp)
 824:	35000793          	li	a5,848
 828:	30579073          	csrw	mtvec,a5
 82c:	00000413          	li	s0,0
 830:	01d00493          	li	s1,29
 834:	00040513          	mv	a0,s0
 838:	00140413          	addi	s0,s0,1
 83c:	0ff47413          	zext.b	s0,s0
 840:	fa5ff0ef          	jal	ra,7e4 <neorv32_rte_exception_uninstall>
 844:	fe9418e3          	bne	s0,s1,834 <neorv32_rte_setup+0x20>
 848:	00c12083          	lw	ra,12(sp)
 84c:	00812403          	lw	s0,8(sp)
 850:	00412483          	lw	s1,4(sp)
 854:	01010113          	addi	sp,sp,16
 858:	00008067          	ret

0000085c <__neorv32_uart_itoa>:
 85c:	fd010113          	addi	sp,sp,-48
 860:	02812423          	sw	s0,40(sp)
 864:	02912223          	sw	s1,36(sp)
 868:	03212023          	sw	s2,32(sp)
 86c:	01312e23          	sw	s3,28(sp)
 870:	01412c23          	sw	s4,24(sp)
 874:	02112623          	sw	ra,44(sp)
 878:	01512a23          	sw	s5,20(sp)
 87c:	00001a37          	lui	s4,0x1
 880:	00050493          	mv	s1,a0
 884:	00058413          	mv	s0,a1
 888:	00058523          	sb	zero,10(a1)
 88c:	00000993          	li	s3,0
 890:	00410913          	addi	s2,sp,4
 894:	25ca0a13          	addi	s4,s4,604 # 125c <numbers.1>
 898:	00a00593          	li	a1,10
 89c:	00048513          	mv	a0,s1
 8a0:	40c000ef          	jal	ra,cac <__umodsi3>
 8a4:	00aa0533          	add	a0,s4,a0
 8a8:	00054783          	lbu	a5,0(a0)
 8ac:	01390ab3          	add	s5,s2,s3
 8b0:	00048513          	mv	a0,s1
 8b4:	00fa8023          	sb	a5,0(s5)
 8b8:	00a00593          	li	a1,10
 8bc:	3a8000ef          	jal	ra,c64 <__hidden___udivsi3>
 8c0:	00198993          	addi	s3,s3,1
 8c4:	00a00793          	li	a5,10
 8c8:	00050493          	mv	s1,a0
 8cc:	fcf996e3          	bne	s3,a5,898 <__neorv32_uart_itoa+0x3c>
 8d0:	00090693          	mv	a3,s2
 8d4:	00900713          	li	a4,9
 8d8:	03000613          	li	a2,48
 8dc:	0096c583          	lbu	a1,9(a3)
 8e0:	00070793          	mv	a5,a4
 8e4:	fff70713          	addi	a4,a4,-1
 8e8:	01071713          	slli	a4,a4,0x10
 8ec:	01075713          	srli	a4,a4,0x10
 8f0:	00c59a63          	bne	a1,a2,904 <__neorv32_uart_itoa+0xa8>
 8f4:	000684a3          	sb	zero,9(a3)
 8f8:	fff68693          	addi	a3,a3,-1
 8fc:	fe0710e3          	bnez	a4,8dc <__neorv32_uart_itoa+0x80>
 900:	00000793          	li	a5,0
 904:	00f907b3          	add	a5,s2,a5
 908:	00000713          	li	a4,0
 90c:	0007c683          	lbu	a3,0(a5)
 910:	00068c63          	beqz	a3,928 <__neorv32_uart_itoa+0xcc>
 914:	00170613          	addi	a2,a4,1
 918:	00e40733          	add	a4,s0,a4
 91c:	00d70023          	sb	a3,0(a4)
 920:	01061713          	slli	a4,a2,0x10
 924:	01075713          	srli	a4,a4,0x10
 928:	fff78693          	addi	a3,a5,-1
 92c:	02f91863          	bne	s2,a5,95c <__neorv32_uart_itoa+0x100>
 930:	00e40433          	add	s0,s0,a4
 934:	00040023          	sb	zero,0(s0)
 938:	02c12083          	lw	ra,44(sp)
 93c:	02812403          	lw	s0,40(sp)
 940:	02412483          	lw	s1,36(sp)
 944:	02012903          	lw	s2,32(sp)
 948:	01c12983          	lw	s3,28(sp)
 94c:	01812a03          	lw	s4,24(sp)
 950:	01412a83          	lw	s5,20(sp)
 954:	03010113          	addi	sp,sp,48
 958:	00008067          	ret
 95c:	00068793          	mv	a5,a3
 960:	fadff06f          	j	90c <__neorv32_uart_itoa+0xb0>

00000964 <__neorv32_uart_tohex>:
 964:	00001637          	lui	a2,0x1
 968:	00758693          	addi	a3,a1,7
 96c:	00000713          	li	a4,0
 970:	24860613          	addi	a2,a2,584 # 1248 <symbols.0>
 974:	02000813          	li	a6,32
 978:	00e557b3          	srl	a5,a0,a4
 97c:	00f7f793          	andi	a5,a5,15
 980:	00f607b3          	add	a5,a2,a5
 984:	0007c783          	lbu	a5,0(a5)
 988:	00470713          	addi	a4,a4,4
 98c:	fff68693          	addi	a3,a3,-1
 990:	00f680a3          	sb	a5,1(a3)
 994:	ff0712e3          	bne	a4,a6,978 <__neorv32_uart_tohex+0x14>
 998:	00058423          	sb	zero,8(a1)
 99c:	00008067          	ret

000009a0 <neorv32_uart0_available>:
 9a0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 9a4:	01255513          	srli	a0,a0,0x12
 9a8:	00157513          	andi	a0,a0,1
 9ac:	00008067          	ret

000009b0 <neorv32_uart0_setup>:
 9b0:	ff010113          	addi	sp,sp,-16
 9b4:	00812423          	sw	s0,8(sp)
 9b8:	00912223          	sw	s1,4(sp)
 9bc:	00112623          	sw	ra,12(sp)
 9c0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 9c4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 9c8:	00058413          	mv	s0,a1
 9cc:	00151593          	slli	a1,a0,0x1
 9d0:	00078513          	mv	a0,a5
 9d4:	00060493          	mv	s1,a2
 9d8:	28c000ef          	jal	ra,c64 <__hidden___udivsi3>
 9dc:	01051513          	slli	a0,a0,0x10
 9e0:	000017b7          	lui	a5,0x1
 9e4:	01055513          	srli	a0,a0,0x10
 9e8:	00000713          	li	a4,0
 9ec:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x14a>
 9f0:	04a7e463          	bltu	a5,a0,a38 <neorv32_uart0_setup+0x88>
 9f4:	0034f493          	andi	s1,s1,3
 9f8:	01449493          	slli	s1,s1,0x14
 9fc:	00347413          	andi	s0,s0,3
 a00:	fff50793          	addi	a5,a0,-1
 a04:	0097e7b3          	or	a5,a5,s1
 a08:	01641413          	slli	s0,s0,0x16
 a0c:	0087e7b3          	or	a5,a5,s0
 a10:	01871713          	slli	a4,a4,0x18
 a14:	00c12083          	lw	ra,12(sp)
 a18:	00812403          	lw	s0,8(sp)
 a1c:	00e7e7b3          	or	a5,a5,a4
 a20:	10000737          	lui	a4,0x10000
 a24:	00e7e7b3          	or	a5,a5,a4
 a28:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a2c:	00412483          	lw	s1,4(sp)
 a30:	01010113          	addi	sp,sp,16
 a34:	00008067          	ret
 a38:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed96>
 a3c:	0fd6f693          	andi	a3,a3,253
 a40:	00069a63          	bnez	a3,a54 <neorv32_uart0_setup+0xa4>
 a44:	00355513          	srli	a0,a0,0x3
 a48:	00170713          	addi	a4,a4,1
 a4c:	0ff77713          	zext.b	a4,a4
 a50:	fa1ff06f          	j	9f0 <neorv32_uart0_setup+0x40>
 a54:	00155513          	srli	a0,a0,0x1
 a58:	ff1ff06f          	j	a48 <neorv32_uart0_setup+0x98>

00000a5c <neorv32_uart0_putc>:
 a5c:	00040737          	lui	a4,0x40
 a60:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a64:	00e7f7b3          	and	a5,a5,a4
 a68:	fe079ce3          	bnez	a5,a60 <neorv32_uart0_putc+0x4>
 a6c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 a70:	00008067          	ret

00000a74 <neorv32_uart0_print>:
 a74:	ff010113          	addi	sp,sp,-16
 a78:	00812423          	sw	s0,8(sp)
 a7c:	01212023          	sw	s2,0(sp)
 a80:	00112623          	sw	ra,12(sp)
 a84:	00912223          	sw	s1,4(sp)
 a88:	00050413          	mv	s0,a0
 a8c:	00a00913          	li	s2,10
 a90:	00044483          	lbu	s1,0(s0)
 a94:	00140413          	addi	s0,s0,1
 a98:	00049e63          	bnez	s1,ab4 <neorv32_uart0_print+0x40>
 a9c:	00c12083          	lw	ra,12(sp)
 aa0:	00812403          	lw	s0,8(sp)
 aa4:	00412483          	lw	s1,4(sp)
 aa8:	00012903          	lw	s2,0(sp)
 aac:	01010113          	addi	sp,sp,16
 ab0:	00008067          	ret
 ab4:	01249663          	bne	s1,s2,ac0 <neorv32_uart0_print+0x4c>
 ab8:	00d00513          	li	a0,13
 abc:	fa1ff0ef          	jal	ra,a5c <neorv32_uart0_putc>
 ac0:	00048513          	mv	a0,s1
 ac4:	f99ff0ef          	jal	ra,a5c <neorv32_uart0_putc>
 ac8:	fc9ff06f          	j	a90 <neorv32_uart0_print+0x1c>

00000acc <neorv32_uart0_printf>:
 acc:	fa010113          	addi	sp,sp,-96
 ad0:	04f12a23          	sw	a5,84(sp)
 ad4:	04410793          	addi	a5,sp,68
 ad8:	02812c23          	sw	s0,56(sp)
 adc:	03212823          	sw	s2,48(sp)
 ae0:	03312623          	sw	s3,44(sp)
 ae4:	03412423          	sw	s4,40(sp)
 ae8:	03512223          	sw	s5,36(sp)
 aec:	03612023          	sw	s6,32(sp)
 af0:	01712e23          	sw	s7,28(sp)
 af4:	01812c23          	sw	s8,24(sp)
 af8:	02112e23          	sw	ra,60(sp)
 afc:	02912a23          	sw	s1,52(sp)
 b00:	00050413          	mv	s0,a0
 b04:	04b12223          	sw	a1,68(sp)
 b08:	04c12423          	sw	a2,72(sp)
 b0c:	04d12623          	sw	a3,76(sp)
 b10:	04e12823          	sw	a4,80(sp)
 b14:	05012c23          	sw	a6,88(sp)
 b18:	05112e23          	sw	a7,92(sp)
 b1c:	00f12023          	sw	a5,0(sp)
 b20:	02500993          	li	s3,37
 b24:	00a00a13          	li	s4,10
 b28:	07300913          	li	s2,115
 b2c:	07500a93          	li	s5,117
 b30:	07800b13          	li	s6,120
 b34:	06300b93          	li	s7,99
 b38:	06900c13          	li	s8,105
 b3c:	00044483          	lbu	s1,0(s0)
 b40:	02049a63          	bnez	s1,b74 <neorv32_uart0_printf+0xa8>
 b44:	03c12083          	lw	ra,60(sp)
 b48:	03812403          	lw	s0,56(sp)
 b4c:	03412483          	lw	s1,52(sp)
 b50:	03012903          	lw	s2,48(sp)
 b54:	02c12983          	lw	s3,44(sp)
 b58:	02812a03          	lw	s4,40(sp)
 b5c:	02412a83          	lw	s5,36(sp)
 b60:	02012b03          	lw	s6,32(sp)
 b64:	01c12b83          	lw	s7,28(sp)
 b68:	01812c03          	lw	s8,24(sp)
 b6c:	06010113          	addi	sp,sp,96
 b70:	00008067          	ret
 b74:	0d349663          	bne	s1,s3,c40 <neorv32_uart0_printf+0x174>
 b78:	00144483          	lbu	s1,1(s0)
 b7c:	05248263          	beq	s1,s2,bc0 <neorv32_uart0_printf+0xf4>
 b80:	00996e63          	bltu	s2,s1,b9c <neorv32_uart0_printf+0xd0>
 b84:	05748c63          	beq	s1,s7,bdc <neorv32_uart0_printf+0x110>
 b88:	07848663          	beq	s1,s8,bf4 <neorv32_uart0_printf+0x128>
 b8c:	02500513          	li	a0,37
 b90:	ecdff0ef          	jal	ra,a5c <neorv32_uart0_putc>
 b94:	00048513          	mv	a0,s1
 b98:	0540006f          	j	bec <neorv32_uart0_printf+0x120>
 b9c:	09548663          	beq	s1,s5,c28 <neorv32_uart0_printf+0x15c>
 ba0:	ff6496e3          	bne	s1,s6,b8c <neorv32_uart0_printf+0xc0>
 ba4:	00012783          	lw	a5,0(sp)
 ba8:	00410593          	addi	a1,sp,4
 bac:	0007a503          	lw	a0,0(a5)
 bb0:	00478713          	addi	a4,a5,4
 bb4:	00e12023          	sw	a4,0(sp)
 bb8:	dadff0ef          	jal	ra,964 <__neorv32_uart_tohex>
 bbc:	0640006f          	j	c20 <neorv32_uart0_printf+0x154>
 bc0:	00012783          	lw	a5,0(sp)
 bc4:	0007a503          	lw	a0,0(a5)
 bc8:	00478713          	addi	a4,a5,4
 bcc:	00e12023          	sw	a4,0(sp)
 bd0:	ea5ff0ef          	jal	ra,a74 <neorv32_uart0_print>
 bd4:	00240413          	addi	s0,s0,2
 bd8:	f65ff06f          	j	b3c <neorv32_uart0_printf+0x70>
 bdc:	00012783          	lw	a5,0(sp)
 be0:	0007c503          	lbu	a0,0(a5)
 be4:	00478713          	addi	a4,a5,4
 be8:	00e12023          	sw	a4,0(sp)
 bec:	e71ff0ef          	jal	ra,a5c <neorv32_uart0_putc>
 bf0:	fe5ff06f          	j	bd4 <neorv32_uart0_printf+0x108>
 bf4:	00012783          	lw	a5,0(sp)
 bf8:	0007a483          	lw	s1,0(a5)
 bfc:	00478713          	addi	a4,a5,4
 c00:	00e12023          	sw	a4,0(sp)
 c04:	0004d863          	bgez	s1,c14 <neorv32_uart0_printf+0x148>
 c08:	02d00513          	li	a0,45
 c0c:	409004b3          	neg	s1,s1
 c10:	e4dff0ef          	jal	ra,a5c <neorv32_uart0_putc>
 c14:	00410593          	addi	a1,sp,4
 c18:	00048513          	mv	a0,s1
 c1c:	c41ff0ef          	jal	ra,85c <__neorv32_uart_itoa>
 c20:	00410513          	addi	a0,sp,4
 c24:	fadff06f          	j	bd0 <neorv32_uart0_printf+0x104>
 c28:	00012783          	lw	a5,0(sp)
 c2c:	00410593          	addi	a1,sp,4
 c30:	00478713          	addi	a4,a5,4
 c34:	0007a503          	lw	a0,0(a5)
 c38:	00e12023          	sw	a4,0(sp)
 c3c:	fe1ff06f          	j	c1c <neorv32_uart0_printf+0x150>
 c40:	01449663          	bne	s1,s4,c4c <neorv32_uart0_printf+0x180>
 c44:	00d00513          	li	a0,13
 c48:	e15ff0ef          	jal	ra,a5c <neorv32_uart0_putc>
 c4c:	00048513          	mv	a0,s1
 c50:	00140413          	addi	s0,s0,1
 c54:	e09ff0ef          	jal	ra,a5c <neorv32_uart0_putc>
 c58:	ee5ff06f          	j	b3c <neorv32_uart0_printf+0x70>

00000c5c <__divsi3>:
 c5c:	06054063          	bltz	a0,cbc <__umodsi3+0x10>
 c60:	0605c663          	bltz	a1,ccc <__umodsi3+0x20>

00000c64 <__hidden___udivsi3>:
 c64:	00058613          	mv	a2,a1
 c68:	00050593          	mv	a1,a0
 c6c:	fff00513          	li	a0,-1
 c70:	02060c63          	beqz	a2,ca8 <__hidden___udivsi3+0x44>
 c74:	00100693          	li	a3,1
 c78:	00b67a63          	bgeu	a2,a1,c8c <__hidden___udivsi3+0x28>
 c7c:	00c05863          	blez	a2,c8c <__hidden___udivsi3+0x28>
 c80:	00161613          	slli	a2,a2,0x1
 c84:	00169693          	slli	a3,a3,0x1
 c88:	feb66ae3          	bltu	a2,a1,c7c <__hidden___udivsi3+0x18>
 c8c:	00000513          	li	a0,0
 c90:	00c5e663          	bltu	a1,a2,c9c <__hidden___udivsi3+0x38>
 c94:	40c585b3          	sub	a1,a1,a2
 c98:	00d56533          	or	a0,a0,a3
 c9c:	0016d693          	srli	a3,a3,0x1
 ca0:	00165613          	srli	a2,a2,0x1
 ca4:	fe0696e3          	bnez	a3,c90 <__hidden___udivsi3+0x2c>
 ca8:	00008067          	ret

00000cac <__umodsi3>:
 cac:	00008293          	mv	t0,ra
 cb0:	fb5ff0ef          	jal	ra,c64 <__hidden___udivsi3>
 cb4:	00058513          	mv	a0,a1
 cb8:	00028067          	jr	t0
 cbc:	40a00533          	neg	a0,a0
 cc0:	00b04863          	bgtz	a1,cd0 <__umodsi3+0x24>
 cc4:	40b005b3          	neg	a1,a1
 cc8:	f9dff06f          	j	c64 <__hidden___udivsi3>
 ccc:	40b005b3          	neg	a1,a1
 cd0:	00008293          	mv	t0,ra
 cd4:	f91ff0ef          	jal	ra,c64 <__hidden___udivsi3>
 cd8:	40a00533          	neg	a0,a0
 cdc:	00028067          	jr	t0

00000ce0 <__modsi3>:
 ce0:	00008293          	mv	t0,ra
 ce4:	0005ca63          	bltz	a1,cf8 <__modsi3+0x18>
 ce8:	00054c63          	bltz	a0,d00 <__modsi3+0x20>
 cec:	f79ff0ef          	jal	ra,c64 <__hidden___udivsi3>
 cf0:	00058513          	mv	a0,a1
 cf4:	00028067          	jr	t0
 cf8:	40b005b3          	neg	a1,a1
 cfc:	fe0558e3          	bgez	a0,cec <__modsi3+0xc>
 d00:	40a00533          	neg	a0,a0
 d04:	f61ff0ef          	jal	ra,c64 <__hidden___udivsi3>
 d08:	40b00533          	neg	a0,a1
 d0c:	00028067          	jr	t0

00000d10 <memcpy>:
 d10:	00b547b3          	xor	a5,a0,a1
 d14:	0037f793          	andi	a5,a5,3
 d18:	00c508b3          	add	a7,a0,a2
 d1c:	06079463          	bnez	a5,d84 <memcpy+0x74>
 d20:	00300793          	li	a5,3
 d24:	06c7f063          	bgeu	a5,a2,d84 <memcpy+0x74>
 d28:	00357793          	andi	a5,a0,3
 d2c:	00050713          	mv	a4,a0
 d30:	06079a63          	bnez	a5,da4 <memcpy+0x94>
 d34:	ffc8f613          	andi	a2,a7,-4
 d38:	40e606b3          	sub	a3,a2,a4
 d3c:	02000793          	li	a5,32
 d40:	08d7ce63          	blt	a5,a3,ddc <memcpy+0xcc>
 d44:	00058693          	mv	a3,a1
 d48:	00070793          	mv	a5,a4
 d4c:	02c77863          	bgeu	a4,a2,d7c <memcpy+0x6c>
 d50:	0006a803          	lw	a6,0(a3)
 d54:	00478793          	addi	a5,a5,4
 d58:	00468693          	addi	a3,a3,4
 d5c:	ff07ae23          	sw	a6,-4(a5)
 d60:	fec7e8e3          	bltu	a5,a2,d50 <memcpy+0x40>
 d64:	fff60793          	addi	a5,a2,-1
 d68:	40e787b3          	sub	a5,a5,a4
 d6c:	ffc7f793          	andi	a5,a5,-4
 d70:	00478793          	addi	a5,a5,4
 d74:	00f70733          	add	a4,a4,a5
 d78:	00f585b3          	add	a1,a1,a5
 d7c:	01176863          	bltu	a4,a7,d8c <memcpy+0x7c>
 d80:	00008067          	ret
 d84:	00050713          	mv	a4,a0
 d88:	05157863          	bgeu	a0,a7,dd8 <memcpy+0xc8>
 d8c:	0005c783          	lbu	a5,0(a1)
 d90:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ed99>
 d94:	00158593          	addi	a1,a1,1
 d98:	fef70fa3          	sb	a5,-1(a4)
 d9c:	fee898e3          	bne	a7,a4,d8c <memcpy+0x7c>
 da0:	00008067          	ret
 da4:	0005c683          	lbu	a3,0(a1)
 da8:	00170713          	addi	a4,a4,1
 dac:	00377793          	andi	a5,a4,3
 db0:	fed70fa3          	sb	a3,-1(a4)
 db4:	00158593          	addi	a1,a1,1
 db8:	f6078ee3          	beqz	a5,d34 <memcpy+0x24>
 dbc:	0005c683          	lbu	a3,0(a1)
 dc0:	00170713          	addi	a4,a4,1
 dc4:	00377793          	andi	a5,a4,3
 dc8:	fed70fa3          	sb	a3,-1(a4)
 dcc:	00158593          	addi	a1,a1,1
 dd0:	fc079ae3          	bnez	a5,da4 <memcpy+0x94>
 dd4:	f61ff06f          	j	d34 <memcpy+0x24>
 dd8:	00008067          	ret
 ddc:	ff010113          	addi	sp,sp,-16
 de0:	00812623          	sw	s0,12(sp)
 de4:	02000413          	li	s0,32
 de8:	0005a383          	lw	t2,0(a1)
 dec:	0045a283          	lw	t0,4(a1)
 df0:	0085af83          	lw	t6,8(a1)
 df4:	00c5af03          	lw	t5,12(a1)
 df8:	0105ae83          	lw	t4,16(a1)
 dfc:	0145ae03          	lw	t3,20(a1)
 e00:	0185a303          	lw	t1,24(a1)
 e04:	01c5a803          	lw	a6,28(a1)
 e08:	0205a683          	lw	a3,32(a1)
 e0c:	02470713          	addi	a4,a4,36
 e10:	40e607b3          	sub	a5,a2,a4
 e14:	fc772e23          	sw	t2,-36(a4)
 e18:	fe572023          	sw	t0,-32(a4)
 e1c:	fff72223          	sw	t6,-28(a4)
 e20:	ffe72423          	sw	t5,-24(a4)
 e24:	ffd72623          	sw	t4,-20(a4)
 e28:	ffc72823          	sw	t3,-16(a4)
 e2c:	fe672a23          	sw	t1,-12(a4)
 e30:	ff072c23          	sw	a6,-8(a4)
 e34:	fed72e23          	sw	a3,-4(a4)
 e38:	02458593          	addi	a1,a1,36
 e3c:	faf446e3          	blt	s0,a5,de8 <memcpy+0xd8>
 e40:	00058693          	mv	a3,a1
 e44:	00070793          	mv	a5,a4
 e48:	02c77863          	bgeu	a4,a2,e78 <memcpy+0x168>
 e4c:	0006a803          	lw	a6,0(a3)
 e50:	00478793          	addi	a5,a5,4
 e54:	00468693          	addi	a3,a3,4
 e58:	ff07ae23          	sw	a6,-4(a5)
 e5c:	fec7e8e3          	bltu	a5,a2,e4c <memcpy+0x13c>
 e60:	fff60793          	addi	a5,a2,-1
 e64:	40e787b3          	sub	a5,a5,a4
 e68:	ffc7f793          	andi	a5,a5,-4
 e6c:	00478793          	addi	a5,a5,4
 e70:	00f70733          	add	a4,a4,a5
 e74:	00f585b3          	add	a1,a1,a5
 e78:	01176863          	bltu	a4,a7,e88 <memcpy+0x178>
 e7c:	00c12403          	lw	s0,12(sp)
 e80:	01010113          	addi	sp,sp,16
 e84:	00008067          	ret
 e88:	0005c783          	lbu	a5,0(a1)
 e8c:	00170713          	addi	a4,a4,1
 e90:	00158593          	addi	a1,a1,1
 e94:	fef70fa3          	sb	a5,-1(a4)
 e98:	fee882e3          	beq	a7,a4,e7c <memcpy+0x16c>
 e9c:	0005c783          	lbu	a5,0(a1)
 ea0:	00170713          	addi	a4,a4,1
 ea4:	00158593          	addi	a1,a1,1
 ea8:	fef70fa3          	sb	a5,-1(a4)
 eac:	fce89ee3          	bne	a7,a4,e88 <memcpy+0x178>
 eb0:	fcdff06f          	j	e7c <memcpy+0x16c>
