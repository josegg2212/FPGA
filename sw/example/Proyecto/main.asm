
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
  e0:	13c58593          	addi	a1,a1,316 # 1218 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x38e8>
 194:	00112623          	sw	ra,12(sp)
 198:	029000ef          	jal	ra,9c0 <neorv32_uart0_setup>
 19c:	118000ef          	jal	ra,2b4 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	680000ef          	jal	ra,824 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	efc50513          	addi	a0,a0,-260 # efc <__etext+0x38>
 1b0:	0d5000ef          	jal	ra,a84 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <keyboard>
 1b8:	00001537          	lui	a0,0x1
 1bc:	ed850513          	addi	a0,a0,-296 # ed8 <__etext+0x14>
 1c0:	0c5000ef          	jal	ra,a84 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <keyboard>:
 1d4:	f9010113          	addi	sp,sp,-112
 1d8:	000015b7          	lui	a1,0x1
 1dc:	04000613          	li	a2,64
 1e0:	f1058593          	addi	a1,a1,-240 # f10 <__etext+0x4c>
 1e4:	00010513          	mv	a0,sp
 1e8:	06112623          	sw	ra,108(sp)
 1ec:	05512a23          	sw	s5,84(sp)
 1f0:	05612823          	sw	s6,80(sp)
 1f4:	05712623          	sw	s7,76(sp)
 1f8:	05812423          	sw	s8,72(sp)
 1fc:	05912223          	sw	s9,68(sp)
 200:	06812423          	sw	s0,104(sp)
 204:	06912223          	sw	s1,100(sp)
 208:	07212023          	sw	s2,96(sp)
 20c:	05312e23          	sw	s3,92(sp)
 210:	05412c23          	sw	s4,88(sp)
 214:	30d000ef          	jal	ra,d20 <memcpy>
 218:	0ff00513          	li	a0,255
 21c:	00000593          	li	a1,0
 220:	12c000ef          	jal	ra,34c <neorv32_gpio_port_set>
 224:	0ff00b13          	li	s6,255
 228:	0ff00a93          	li	s5,255
 22c:	00800c13          	li	s8,8
 230:	00400c93          	li	s9,4
 234:	00001bb7          	lui	s7,0x1
 238:	00010993          	mv	s3,sp
 23c:	0ff00413          	li	s0,255
 240:	00000493          	li	s1,0
 244:	00048513          	mv	a0,s1
 248:	0ac000ef          	jal	ra,2f4 <neorv32_gpio_pin_clr>
 24c:	00098a13          	mv	s4,s3
 250:	00400913          	li	s2,4
 254:	00090513          	mv	a0,s2
 258:	0d0000ef          	jal	ra,328 <neorv32_gpio_pin_get>
 25c:	00051e63          	bnez	a0,278 <keyboard+0xa4>
 260:	03ca2403          	lw	s0,60(s4)
 264:	01540a63          	beq	s0,s5,278 <keyboard+0xa4>
 268:	00441513          	slli	a0,s0,0x4
 26c:	0f057513          	andi	a0,a0,240
 270:	00000593          	li	a1,0
 274:	0d8000ef          	jal	ra,34c <neorv32_gpio_port_set>
 278:	00190913          	addi	s2,s2,1
 27c:	ff0a0a13          	addi	s4,s4,-16
 280:	fd891ae3          	bne	s2,s8,254 <keyboard+0x80>
 284:	00048513          	mv	a0,s1
 288:	00148493          	addi	s1,s1,1
 28c:	038000ef          	jal	ra,2c4 <neorv32_gpio_pin_set>
 290:	ffc98993          	addi	s3,s3,-4
 294:	fb9498e3          	bne	s1,s9,244 <keyboard+0x70>
 298:	01540a63          	beq	s0,s5,2ac <keyboard+0xd8>
 29c:	01640863          	beq	s0,s6,2ac <keyboard+0xd8>
 2a0:	00040593          	mv	a1,s0
 2a4:	ec4b8513          	addi	a0,s7,-316 # ec4 <__etext>
 2a8:	035000ef          	jal	ra,adc <neorv32_uart0_printf>
 2ac:	00040b13          	mv	s6,s0
 2b0:	f89ff06f          	j	238 <keyboard+0x64>

000002b4 <neorv32_gpio_available>:
 2b4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2b8:	01055513          	srli	a0,a0,0x10
 2bc:	00157513          	andi	a0,a0,1
 2c0:	00008067          	ret

000002c4 <neorv32_gpio_pin_set>:
 2c4:	00100793          	li	a5,1
 2c8:	01f00713          	li	a4,31
 2cc:	00a797b3          	sll	a5,a5,a0
 2d0:	00a74a63          	blt	a4,a0,2e4 <neorv32_gpio_pin_set+0x20>
 2d4:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 2d8:	00f767b3          	or	a5,a4,a5
 2dc:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 2e0:	00008067          	ret
 2e4:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 2e8:	00f767b3          	or	a5,a4,a5
 2ec:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 2f0:	00008067          	ret

000002f4 <neorv32_gpio_pin_clr>:
 2f4:	00100793          	li	a5,1
 2f8:	00a797b3          	sll	a5,a5,a0
 2fc:	01f00713          	li	a4,31
 300:	fff7c793          	not	a5,a5
 304:	00a74a63          	blt	a4,a0,318 <neorv32_gpio_pin_clr+0x24>
 308:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 30c:	00f777b3          	and	a5,a4,a5
 310:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 314:	00008067          	ret
 318:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 31c:	00f777b3          	and	a5,a4,a5
 320:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 324:	00008067          	ret

00000328 <neorv32_gpio_pin_get>:
 328:	00100793          	li	a5,1
 32c:	01f00713          	li	a4,31
 330:	00a797b3          	sll	a5,a5,a0
 334:	00a74863          	blt	a4,a0,344 <neorv32_gpio_pin_get+0x1c>
 338:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 33c:	00f77533          	and	a0,a4,a5
 340:	00008067          	ret
 344:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 348:	ff5ff06f          	j	33c <neorv32_gpio_pin_get+0x14>

0000034c <neorv32_gpio_port_set>:
 34c:	fc000793          	li	a5,-64
 350:	00a7a423          	sw	a0,8(a5)
 354:	00b7a623          	sw	a1,12(a5)
 358:	00008067          	ret
 35c:	0000                	.2byte	0x0
 35e:	0000                	.2byte	0x0

00000360 <__neorv32_rte_core>:
 360:	fc010113          	addi	sp,sp,-64
 364:	02112e23          	sw	ra,60(sp)
 368:	02512c23          	sw	t0,56(sp)
 36c:	02612a23          	sw	t1,52(sp)
 370:	02712823          	sw	t2,48(sp)
 374:	02a12623          	sw	a0,44(sp)
 378:	02b12423          	sw	a1,40(sp)
 37c:	02c12223          	sw	a2,36(sp)
 380:	02d12023          	sw	a3,32(sp)
 384:	00e12e23          	sw	a4,28(sp)
 388:	00f12c23          	sw	a5,24(sp)
 38c:	01012a23          	sw	a6,20(sp)
 390:	01112823          	sw	a7,16(sp)
 394:	01c12623          	sw	t3,12(sp)
 398:	01d12423          	sw	t4,8(sp)
 39c:	01e12223          	sw	t5,4(sp)
 3a0:	01f12023          	sw	t6,0(sp)
 3a4:	34102773          	csrr	a4,mepc
 3a8:	34071073          	csrw	mscratch,a4
 3ac:	342027f3          	csrr	a5,mcause
 3b0:	0807c863          	bltz	a5,440 <__neorv32_rte_core+0xe0>
 3b4:	00071683          	lh	a3,0(a4)
 3b8:	00300593          	li	a1,3
 3bc:	0036f693          	andi	a3,a3,3
 3c0:	00270613          	addi	a2,a4,2
 3c4:	00b69463          	bne	a3,a1,3cc <__neorv32_rte_core+0x6c>
 3c8:	00470613          	addi	a2,a4,4
 3cc:	34161073          	csrw	mepc,a2
 3d0:	00b00713          	li	a4,11
 3d4:	04f77a63          	bgeu	a4,a5,428 <__neorv32_rte_core+0xc8>
 3d8:	61000793          	li	a5,1552
 3dc:	000780e7          	jalr	a5
 3e0:	03c12083          	lw	ra,60(sp)
 3e4:	03812283          	lw	t0,56(sp)
 3e8:	03412303          	lw	t1,52(sp)
 3ec:	03012383          	lw	t2,48(sp)
 3f0:	02c12503          	lw	a0,44(sp)
 3f4:	02812583          	lw	a1,40(sp)
 3f8:	02412603          	lw	a2,36(sp)
 3fc:	02012683          	lw	a3,32(sp)
 400:	01c12703          	lw	a4,28(sp)
 404:	01812783          	lw	a5,24(sp)
 408:	01412803          	lw	a6,20(sp)
 40c:	01012883          	lw	a7,16(sp)
 410:	00c12e03          	lw	t3,12(sp)
 414:	00812e83          	lw	t4,8(sp)
 418:	00412f03          	lw	t5,4(sp)
 41c:	00012f83          	lw	t6,0(sp)
 420:	04010113          	addi	sp,sp,64
 424:	30200073          	mret
 428:	00001737          	lui	a4,0x1
 42c:	00279793          	slli	a5,a5,0x2
 430:	f5070713          	addi	a4,a4,-176 # f50 <__etext+0x8c>
 434:	00e787b3          	add	a5,a5,a4
 438:	0007a783          	lw	a5,0(a5)
 43c:	00078067          	jr	a5
 440:	80000737          	lui	a4,0x80000
 444:	ffd74713          	xori	a4,a4,-3
 448:	00e787b3          	add	a5,a5,a4
 44c:	01c00713          	li	a4,28
 450:	f8f764e3          	bltu	a4,a5,3d8 <__neorv32_rte_core+0x78>
 454:	00001737          	lui	a4,0x1
 458:	00279793          	slli	a5,a5,0x2
 45c:	f8070713          	addi	a4,a4,-128 # f80 <__etext+0xbc>
 460:	00e787b3          	add	a5,a5,a4
 464:	0007a783          	lw	a5,0(a5)
 468:	00078067          	jr	a5
 46c:	800007b7          	lui	a5,0x80000
 470:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 474:	f69ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 478:	800007b7          	lui	a5,0x80000
 47c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 480:	f5dff06f          	j	3dc <__neorv32_rte_core+0x7c>
 484:	800007b7          	lui	a5,0x80000
 488:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 48c:	f51ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 490:	800007b7          	lui	a5,0x80000
 494:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 498:	f45ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 49c:	800007b7          	lui	a5,0x80000
 4a0:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
 4a4:	f39ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4a8:	800007b7          	lui	a5,0x80000
 4ac:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
 4b0:	f2dff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4b4:	800007b7          	lui	a5,0x80000
 4b8:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
 4bc:	f21ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4c0:	800007b7          	lui	a5,0x80000
 4c4:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
 4c8:	f15ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4cc:	800007b7          	lui	a5,0x80000
 4d0:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
 4d4:	f09ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4d8:	800007b7          	lui	a5,0x80000
 4dc:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
 4e0:	efdff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4e4:	800007b7          	lui	a5,0x80000
 4e8:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
 4ec:	ef1ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4f0:	800007b7          	lui	a5,0x80000
 4f4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
 4f8:	ee5ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 4fc:	800007b7          	lui	a5,0x80000
 500:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
 504:	ed9ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 508:	800007b7          	lui	a5,0x80000
 50c:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
 510:	ecdff06f          	j	3dc <__neorv32_rte_core+0x7c>
 514:	800007b7          	lui	a5,0x80000
 518:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
 51c:	ec1ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 520:	800007b7          	lui	a5,0x80000
 524:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
 528:	eb5ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 52c:	800007b7          	lui	a5,0x80000
 530:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
 534:	ea9ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 538:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 53c:	ea1ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 540:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 544:	e99ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 548:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 54c:	e91ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 550:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 554:	e89ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 558:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 55c:	e81ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 560:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 564:	e79ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 568:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 56c:	e71ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 570:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 574:	e69ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 578:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 57c:	e61ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 580:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 584:	e59ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 588:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 58c:	e51ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 590:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 594:	e49ff06f          	j	3dc <__neorv32_rte_core+0x7c>
 598:	0000                	.2byte	0x0
 59a:	0000                	.2byte	0x0
 59c:	0000                	.2byte	0x0
 59e:	0000                	.2byte	0x0

000005a0 <__neorv32_rte_print_hex_word>:
 5a0:	fe010113          	addi	sp,sp,-32
 5a4:	01212823          	sw	s2,16(sp)
 5a8:	00050913          	mv	s2,a0
 5ac:	00001537          	lui	a0,0x1
 5b0:	00912a23          	sw	s1,20(sp)
 5b4:	ff450513          	addi	a0,a0,-12 # ff4 <__etext+0x130>
 5b8:	000014b7          	lui	s1,0x1
 5bc:	00812c23          	sw	s0,24(sp)
 5c0:	01312623          	sw	s3,12(sp)
 5c4:	00112e23          	sw	ra,28(sp)
 5c8:	01c00413          	li	s0,28
 5cc:	4b8000ef          	jal	ra,a84 <neorv32_uart0_print>
 5d0:	1e848493          	addi	s1,s1,488 # 11e8 <hex_symbols.0>
 5d4:	ffc00993          	li	s3,-4
 5d8:	008957b3          	srl	a5,s2,s0
 5dc:	00f7f793          	andi	a5,a5,15
 5e0:	00f487b3          	add	a5,s1,a5
 5e4:	0007c503          	lbu	a0,0(a5)
 5e8:	ffc40413          	addi	s0,s0,-4
 5ec:	480000ef          	jal	ra,a6c <neorv32_uart0_putc>
 5f0:	ff3414e3          	bne	s0,s3,5d8 <__neorv32_rte_print_hex_word+0x38>
 5f4:	01c12083          	lw	ra,28(sp)
 5f8:	01812403          	lw	s0,24(sp)
 5fc:	01412483          	lw	s1,20(sp)
 600:	01012903          	lw	s2,16(sp)
 604:	00c12983          	lw	s3,12(sp)
 608:	02010113          	addi	sp,sp,32
 60c:	00008067          	ret

00000610 <__neorv32_rte_debug_exc_handler>:
 610:	ff010113          	addi	sp,sp,-16
 614:	00112623          	sw	ra,12(sp)
 618:	00812423          	sw	s0,8(sp)
 61c:	00912223          	sw	s1,4(sp)
 620:	390000ef          	jal	ra,9b0 <neorv32_uart0_available>
 624:	1a050e63          	beqz	a0,7e0 <__neorv32_rte_debug_exc_handler+0x1d0>
 628:	00001537          	lui	a0,0x1
 62c:	ff850513          	addi	a0,a0,-8 # ff8 <__etext+0x134>
 630:	454000ef          	jal	ra,a84 <neorv32_uart0_print>
 634:	34202473          	csrr	s0,mcause
 638:	00900713          	li	a4,9
 63c:	00f47793          	andi	a5,s0,15
 640:	03078493          	addi	s1,a5,48
 644:	00f77463          	bgeu	a4,a5,64c <__neorv32_rte_debug_exc_handler+0x3c>
 648:	05778493          	addi	s1,a5,87
 64c:	00b00793          	li	a5,11
 650:	0087ee63          	bltu	a5,s0,66c <__neorv32_rte_debug_exc_handler+0x5c>
 654:	00001737          	lui	a4,0x1
 658:	00241793          	slli	a5,s0,0x2
 65c:	1b870713          	addi	a4,a4,440 # 11b8 <__etext+0x2f4>
 660:	00e787b3          	add	a5,a5,a4
 664:	0007a783          	lw	a5,0(a5)
 668:	00078067          	jr	a5
 66c:	800007b7          	lui	a5,0x80000
 670:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 674:	14e40463          	beq	s0,a4,7bc <__neorv32_rte_debug_exc_handler+0x1ac>
 678:	02876663          	bltu	a4,s0,6a4 <__neorv32_rte_debug_exc_handler+0x94>
 67c:	00378713          	addi	a4,a5,3
 680:	12e40263          	beq	s0,a4,7a4 <__neorv32_rte_debug_exc_handler+0x194>
 684:	00778793          	addi	a5,a5,7
 688:	12f40463          	beq	s0,a5,7b0 <__neorv32_rte_debug_exc_handler+0x1a0>
 68c:	00001537          	lui	a0,0x1
 690:	15850513          	addi	a0,a0,344 # 1158 <__etext+0x294>
 694:	3f0000ef          	jal	ra,a84 <neorv32_uart0_print>
 698:	00040513          	mv	a0,s0
 69c:	f05ff0ef          	jal	ra,5a0 <__neorv32_rte_print_hex_word>
 6a0:	0280006f          	j	6c8 <__neorv32_rte_debug_exc_handler+0xb8>
 6a4:	ff07c793          	xori	a5,a5,-16
 6a8:	00f407b3          	add	a5,s0,a5
 6ac:	00f00713          	li	a4,15
 6b0:	fcf76ee3          	bltu	a4,a5,68c <__neorv32_rte_debug_exc_handler+0x7c>
 6b4:	00001537          	lui	a0,0x1
 6b8:	14850513          	addi	a0,a0,328 # 1148 <__etext+0x284>
 6bc:	3c8000ef          	jal	ra,a84 <neorv32_uart0_print>
 6c0:	00048513          	mv	a0,s1
 6c4:	3a8000ef          	jal	ra,a6c <neorv32_uart0_putc>
 6c8:	00001537          	lui	a0,0x1
 6cc:	19c50513          	addi	a0,a0,412 # 119c <__etext+0x2d8>
 6d0:	3b4000ef          	jal	ra,a84 <neorv32_uart0_print>
 6d4:	34002573          	csrr	a0,mscratch
 6d8:	ec9ff0ef          	jal	ra,5a0 <__neorv32_rte_print_hex_word>
 6dc:	00001537          	lui	a0,0x1
 6e0:	1a450513          	addi	a0,a0,420 # 11a4 <__etext+0x2e0>
 6e4:	3a0000ef          	jal	ra,a84 <neorv32_uart0_print>
 6e8:	34302573          	csrr	a0,mtval
 6ec:	eb5ff0ef          	jal	ra,5a0 <__neorv32_rte_print_hex_word>
 6f0:	00812403          	lw	s0,8(sp)
 6f4:	00c12083          	lw	ra,12(sp)
 6f8:	00412483          	lw	s1,4(sp)
 6fc:	00001537          	lui	a0,0x1
 700:	1b050513          	addi	a0,a0,432 # 11b0 <__etext+0x2ec>
 704:	01010113          	addi	sp,sp,16
 708:	37c0006f          	j	a84 <neorv32_uart0_print>
 70c:	00001537          	lui	a0,0x1
 710:	00050513          	mv	a0,a0
 714:	370000ef          	jal	ra,a84 <neorv32_uart0_print>
 718:	fb1ff06f          	j	6c8 <__neorv32_rte_debug_exc_handler+0xb8>
 71c:	00001537          	lui	a0,0x1
 720:	02050513          	addi	a0,a0,32 # 1020 <__etext+0x15c>
 724:	360000ef          	jal	ra,a84 <neorv32_uart0_print>
 728:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 72c:	0a07d463          	bgez	a5,7d4 <__neorv32_rte_debug_exc_handler+0x1c4>
 730:	0017f793          	andi	a5,a5,1
 734:	08078a63          	beqz	a5,7c8 <__neorv32_rte_debug_exc_handler+0x1b8>
 738:	00001537          	lui	a0,0x1
 73c:	17050513          	addi	a0,a0,368 # 1170 <__etext+0x2ac>
 740:	fd5ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 744:	00001537          	lui	a0,0x1
 748:	03c50513          	addi	a0,a0,60 # 103c <__etext+0x178>
 74c:	fc9ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 750:	00001537          	lui	a0,0x1
 754:	05050513          	addi	a0,a0,80 # 1050 <__etext+0x18c>
 758:	fbdff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 75c:	00001537          	lui	a0,0x1
 760:	05c50513          	addi	a0,a0,92 # 105c <__etext+0x198>
 764:	fb1ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 768:	00001537          	lui	a0,0x1
 76c:	07450513          	addi	a0,a0,116 # 1074 <__etext+0x1b0>
 770:	fb5ff06f          	j	724 <__neorv32_rte_debug_exc_handler+0x114>
 774:	00001537          	lui	a0,0x1
 778:	08850513          	addi	a0,a0,136 # 1088 <__etext+0x1c4>
 77c:	f99ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 780:	00001537          	lui	a0,0x1
 784:	0a450513          	addi	a0,a0,164 # 10a4 <__etext+0x1e0>
 788:	f9dff06f          	j	724 <__neorv32_rte_debug_exc_handler+0x114>
 78c:	00001537          	lui	a0,0x1
 790:	0b850513          	addi	a0,a0,184 # 10b8 <__etext+0x1f4>
 794:	f81ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 798:	00001537          	lui	a0,0x1
 79c:	0d850513          	addi	a0,a0,216 # 10d8 <__etext+0x214>
 7a0:	f75ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 7a4:	00001537          	lui	a0,0x1
 7a8:	0f850513          	addi	a0,a0,248 # 10f8 <__etext+0x234>
 7ac:	f69ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 7b0:	00001537          	lui	a0,0x1
 7b4:	11450513          	addi	a0,a0,276 # 1114 <__etext+0x250>
 7b8:	f5dff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 7bc:	00001537          	lui	a0,0x1
 7c0:	12c50513          	addi	a0,a0,300 # 112c <__etext+0x268>
 7c4:	f51ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 7c8:	00001537          	lui	a0,0x1
 7cc:	18050513          	addi	a0,a0,384 # 1180 <__etext+0x2bc>
 7d0:	f45ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 7d4:	00001537          	lui	a0,0x1
 7d8:	19050513          	addi	a0,a0,400 # 1190 <__etext+0x2cc>
 7dc:	f39ff06f          	j	714 <__neorv32_rte_debug_exc_handler+0x104>
 7e0:	00c12083          	lw	ra,12(sp)
 7e4:	00812403          	lw	s0,8(sp)
 7e8:	00412483          	lw	s1,4(sp)
 7ec:	01010113          	addi	sp,sp,16
 7f0:	00008067          	ret

000007f4 <neorv32_rte_exception_uninstall>:
 7f4:	01f00793          	li	a5,31
 7f8:	02a7e263          	bltu	a5,a0,81c <neorv32_rte_exception_uninstall+0x28>
 7fc:	800007b7          	lui	a5,0x80000
 800:	00251513          	slli	a0,a0,0x2
 804:	00078793          	mv	a5,a5
 808:	00a787b3          	add	a5,a5,a0
 80c:	61000713          	li	a4,1552
 810:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 814:	00000513          	li	a0,0
 818:	00008067          	ret
 81c:	00100513          	li	a0,1
 820:	00008067          	ret

00000824 <neorv32_rte_setup>:
 824:	ff010113          	addi	sp,sp,-16
 828:	00112623          	sw	ra,12(sp)
 82c:	00812423          	sw	s0,8(sp)
 830:	00912223          	sw	s1,4(sp)
 834:	36000793          	li	a5,864
 838:	30579073          	csrw	mtvec,a5
 83c:	00000413          	li	s0,0
 840:	01d00493          	li	s1,29
 844:	00040513          	mv	a0,s0
 848:	00140413          	addi	s0,s0,1
 84c:	0ff47413          	zext.b	s0,s0
 850:	fa5ff0ef          	jal	ra,7f4 <neorv32_rte_exception_uninstall>
 854:	fe9418e3          	bne	s0,s1,844 <neorv32_rte_setup+0x20>
 858:	00c12083          	lw	ra,12(sp)
 85c:	00812403          	lw	s0,8(sp)
 860:	00412483          	lw	s1,4(sp)
 864:	01010113          	addi	sp,sp,16
 868:	00008067          	ret

0000086c <__neorv32_uart_itoa>:
 86c:	fd010113          	addi	sp,sp,-48
 870:	02812423          	sw	s0,40(sp)
 874:	02912223          	sw	s1,36(sp)
 878:	03212023          	sw	s2,32(sp)
 87c:	01312e23          	sw	s3,28(sp)
 880:	01412c23          	sw	s4,24(sp)
 884:	02112623          	sw	ra,44(sp)
 888:	01512a23          	sw	s5,20(sp)
 88c:	00001a37          	lui	s4,0x1
 890:	00050493          	mv	s1,a0
 894:	00058413          	mv	s0,a1
 898:	00058523          	sb	zero,10(a1)
 89c:	00000993          	li	s3,0
 8a0:	00410913          	addi	s2,sp,4
 8a4:	20ca0a13          	addi	s4,s4,524 # 120c <numbers.1>
 8a8:	00a00593          	li	a1,10
 8ac:	00048513          	mv	a0,s1
 8b0:	40c000ef          	jal	ra,cbc <__umodsi3>
 8b4:	00aa0533          	add	a0,s4,a0
 8b8:	00054783          	lbu	a5,0(a0)
 8bc:	01390ab3          	add	s5,s2,s3
 8c0:	00048513          	mv	a0,s1
 8c4:	00fa8023          	sb	a5,0(s5)
 8c8:	00a00593          	li	a1,10
 8cc:	3a8000ef          	jal	ra,c74 <__hidden___udivsi3>
 8d0:	00198993          	addi	s3,s3,1
 8d4:	00a00793          	li	a5,10
 8d8:	00050493          	mv	s1,a0
 8dc:	fcf996e3          	bne	s3,a5,8a8 <__neorv32_uart_itoa+0x3c>
 8e0:	00090693          	mv	a3,s2
 8e4:	00900713          	li	a4,9
 8e8:	03000613          	li	a2,48
 8ec:	0096c583          	lbu	a1,9(a3)
 8f0:	00070793          	mv	a5,a4
 8f4:	fff70713          	addi	a4,a4,-1
 8f8:	01071713          	slli	a4,a4,0x10
 8fc:	01075713          	srli	a4,a4,0x10
 900:	00c59a63          	bne	a1,a2,914 <__neorv32_uart_itoa+0xa8>
 904:	000684a3          	sb	zero,9(a3)
 908:	fff68693          	addi	a3,a3,-1
 90c:	fe0710e3          	bnez	a4,8ec <__neorv32_uart_itoa+0x80>
 910:	00000793          	li	a5,0
 914:	00f907b3          	add	a5,s2,a5
 918:	00000713          	li	a4,0
 91c:	0007c683          	lbu	a3,0(a5)
 920:	00068c63          	beqz	a3,938 <__neorv32_uart_itoa+0xcc>
 924:	00170613          	addi	a2,a4,1
 928:	00e40733          	add	a4,s0,a4
 92c:	00d70023          	sb	a3,0(a4)
 930:	01061713          	slli	a4,a2,0x10
 934:	01075713          	srli	a4,a4,0x10
 938:	fff78693          	addi	a3,a5,-1
 93c:	02f91863          	bne	s2,a5,96c <__neorv32_uart_itoa+0x100>
 940:	00e40433          	add	s0,s0,a4
 944:	00040023          	sb	zero,0(s0)
 948:	02c12083          	lw	ra,44(sp)
 94c:	02812403          	lw	s0,40(sp)
 950:	02412483          	lw	s1,36(sp)
 954:	02012903          	lw	s2,32(sp)
 958:	01c12983          	lw	s3,28(sp)
 95c:	01812a03          	lw	s4,24(sp)
 960:	01412a83          	lw	s5,20(sp)
 964:	03010113          	addi	sp,sp,48
 968:	00008067          	ret
 96c:	00068793          	mv	a5,a3
 970:	fadff06f          	j	91c <__neorv32_uart_itoa+0xb0>

00000974 <__neorv32_uart_tohex>:
 974:	00001637          	lui	a2,0x1
 978:	00758693          	addi	a3,a1,7
 97c:	00000713          	li	a4,0
 980:	1f860613          	addi	a2,a2,504 # 11f8 <symbols.0>
 984:	02000813          	li	a6,32
 988:	00e557b3          	srl	a5,a0,a4
 98c:	00f7f793          	andi	a5,a5,15
 990:	00f607b3          	add	a5,a2,a5
 994:	0007c783          	lbu	a5,0(a5)
 998:	00470713          	addi	a4,a4,4
 99c:	fff68693          	addi	a3,a3,-1
 9a0:	00f680a3          	sb	a5,1(a3)
 9a4:	ff0712e3          	bne	a4,a6,988 <__neorv32_uart_tohex+0x14>
 9a8:	00058423          	sb	zero,8(a1)
 9ac:	00008067          	ret

000009b0 <neorv32_uart0_available>:
 9b0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 9b4:	01255513          	srli	a0,a0,0x12
 9b8:	00157513          	andi	a0,a0,1
 9bc:	00008067          	ret

000009c0 <neorv32_uart0_setup>:
 9c0:	ff010113          	addi	sp,sp,-16
 9c4:	00812423          	sw	s0,8(sp)
 9c8:	00912223          	sw	s1,4(sp)
 9cc:	00112623          	sw	ra,12(sp)
 9d0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 9d4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 9d8:	00058413          	mv	s0,a1
 9dc:	00151593          	slli	a1,a0,0x1
 9e0:	00078513          	mv	a0,a5
 9e4:	00060493          	mv	s1,a2
 9e8:	28c000ef          	jal	ra,c74 <__hidden___udivsi3>
 9ec:	01051513          	slli	a0,a0,0x10
 9f0:	000017b7          	lui	a5,0x1
 9f4:	01055513          	srli	a0,a0,0x10
 9f8:	00000713          	li	a4,0
 9fc:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x13a>
 a00:	04a7e463          	bltu	a5,a0,a48 <neorv32_uart0_setup+0x88>
 a04:	0034f493          	andi	s1,s1,3
 a08:	01449493          	slli	s1,s1,0x14
 a0c:	00347413          	andi	s0,s0,3
 a10:	fff50793          	addi	a5,a0,-1
 a14:	0097e7b3          	or	a5,a5,s1
 a18:	01641413          	slli	s0,s0,0x16
 a1c:	0087e7b3          	or	a5,a5,s0
 a20:	01871713          	slli	a4,a4,0x18
 a24:	00c12083          	lw	ra,12(sp)
 a28:	00812403          	lw	s0,8(sp)
 a2c:	00e7e7b3          	or	a5,a5,a4
 a30:	10000737          	lui	a4,0x10000
 a34:	00e7e7b3          	or	a5,a5,a4
 a38:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a3c:	00412483          	lw	s1,4(sp)
 a40:	01010113          	addi	sp,sp,16
 a44:	00008067          	ret
 a48:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffede6>
 a4c:	0fd6f693          	andi	a3,a3,253
 a50:	00069a63          	bnez	a3,a64 <neorv32_uart0_setup+0xa4>
 a54:	00355513          	srli	a0,a0,0x3
 a58:	00170713          	addi	a4,a4,1
 a5c:	0ff77713          	zext.b	a4,a4
 a60:	fa1ff06f          	j	a00 <neorv32_uart0_setup+0x40>
 a64:	00155513          	srli	a0,a0,0x1
 a68:	ff1ff06f          	j	a58 <neorv32_uart0_setup+0x98>

00000a6c <neorv32_uart0_putc>:
 a6c:	00040737          	lui	a4,0x40
 a70:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a74:	00e7f7b3          	and	a5,a5,a4
 a78:	fe079ce3          	bnez	a5,a70 <neorv32_uart0_putc+0x4>
 a7c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 a80:	00008067          	ret

00000a84 <neorv32_uart0_print>:
 a84:	ff010113          	addi	sp,sp,-16
 a88:	00812423          	sw	s0,8(sp)
 a8c:	01212023          	sw	s2,0(sp)
 a90:	00112623          	sw	ra,12(sp)
 a94:	00912223          	sw	s1,4(sp)
 a98:	00050413          	mv	s0,a0
 a9c:	00a00913          	li	s2,10
 aa0:	00044483          	lbu	s1,0(s0)
 aa4:	00140413          	addi	s0,s0,1
 aa8:	00049e63          	bnez	s1,ac4 <neorv32_uart0_print+0x40>
 aac:	00c12083          	lw	ra,12(sp)
 ab0:	00812403          	lw	s0,8(sp)
 ab4:	00412483          	lw	s1,4(sp)
 ab8:	00012903          	lw	s2,0(sp)
 abc:	01010113          	addi	sp,sp,16
 ac0:	00008067          	ret
 ac4:	01249663          	bne	s1,s2,ad0 <neorv32_uart0_print+0x4c>
 ac8:	00d00513          	li	a0,13
 acc:	fa1ff0ef          	jal	ra,a6c <neorv32_uart0_putc>
 ad0:	00048513          	mv	a0,s1
 ad4:	f99ff0ef          	jal	ra,a6c <neorv32_uart0_putc>
 ad8:	fc9ff06f          	j	aa0 <neorv32_uart0_print+0x1c>

00000adc <neorv32_uart0_printf>:
 adc:	fa010113          	addi	sp,sp,-96
 ae0:	04f12a23          	sw	a5,84(sp)
 ae4:	04410793          	addi	a5,sp,68
 ae8:	02812c23          	sw	s0,56(sp)
 aec:	03212823          	sw	s2,48(sp)
 af0:	03312623          	sw	s3,44(sp)
 af4:	03412423          	sw	s4,40(sp)
 af8:	03512223          	sw	s5,36(sp)
 afc:	03612023          	sw	s6,32(sp)
 b00:	01712e23          	sw	s7,28(sp)
 b04:	01812c23          	sw	s8,24(sp)
 b08:	02112e23          	sw	ra,60(sp)
 b0c:	02912a23          	sw	s1,52(sp)
 b10:	00050413          	mv	s0,a0
 b14:	04b12223          	sw	a1,68(sp)
 b18:	04c12423          	sw	a2,72(sp)
 b1c:	04d12623          	sw	a3,76(sp)
 b20:	04e12823          	sw	a4,80(sp)
 b24:	05012c23          	sw	a6,88(sp)
 b28:	05112e23          	sw	a7,92(sp)
 b2c:	00f12023          	sw	a5,0(sp)
 b30:	02500993          	li	s3,37
 b34:	00a00a13          	li	s4,10
 b38:	07300913          	li	s2,115
 b3c:	07500a93          	li	s5,117
 b40:	07800b13          	li	s6,120
 b44:	06300b93          	li	s7,99
 b48:	06900c13          	li	s8,105
 b4c:	00044483          	lbu	s1,0(s0)
 b50:	02049a63          	bnez	s1,b84 <neorv32_uart0_printf+0xa8>
 b54:	03c12083          	lw	ra,60(sp)
 b58:	03812403          	lw	s0,56(sp)
 b5c:	03412483          	lw	s1,52(sp)
 b60:	03012903          	lw	s2,48(sp)
 b64:	02c12983          	lw	s3,44(sp)
 b68:	02812a03          	lw	s4,40(sp)
 b6c:	02412a83          	lw	s5,36(sp)
 b70:	02012b03          	lw	s6,32(sp)
 b74:	01c12b83          	lw	s7,28(sp)
 b78:	01812c03          	lw	s8,24(sp)
 b7c:	06010113          	addi	sp,sp,96
 b80:	00008067          	ret
 b84:	0d349663          	bne	s1,s3,c50 <neorv32_uart0_printf+0x174>
 b88:	00144483          	lbu	s1,1(s0)
 b8c:	05248263          	beq	s1,s2,bd0 <neorv32_uart0_printf+0xf4>
 b90:	00996e63          	bltu	s2,s1,bac <neorv32_uart0_printf+0xd0>
 b94:	05748c63          	beq	s1,s7,bec <neorv32_uart0_printf+0x110>
 b98:	07848663          	beq	s1,s8,c04 <neorv32_uart0_printf+0x128>
 b9c:	02500513          	li	a0,37
 ba0:	ecdff0ef          	jal	ra,a6c <neorv32_uart0_putc>
 ba4:	00048513          	mv	a0,s1
 ba8:	0540006f          	j	bfc <neorv32_uart0_printf+0x120>
 bac:	09548663          	beq	s1,s5,c38 <neorv32_uart0_printf+0x15c>
 bb0:	ff6496e3          	bne	s1,s6,b9c <neorv32_uart0_printf+0xc0>
 bb4:	00012783          	lw	a5,0(sp)
 bb8:	00410593          	addi	a1,sp,4
 bbc:	0007a503          	lw	a0,0(a5)
 bc0:	00478713          	addi	a4,a5,4
 bc4:	00e12023          	sw	a4,0(sp)
 bc8:	dadff0ef          	jal	ra,974 <__neorv32_uart_tohex>
 bcc:	0640006f          	j	c30 <neorv32_uart0_printf+0x154>
 bd0:	00012783          	lw	a5,0(sp)
 bd4:	0007a503          	lw	a0,0(a5)
 bd8:	00478713          	addi	a4,a5,4
 bdc:	00e12023          	sw	a4,0(sp)
 be0:	ea5ff0ef          	jal	ra,a84 <neorv32_uart0_print>
 be4:	00240413          	addi	s0,s0,2
 be8:	f65ff06f          	j	b4c <neorv32_uart0_printf+0x70>
 bec:	00012783          	lw	a5,0(sp)
 bf0:	0007c503          	lbu	a0,0(a5)
 bf4:	00478713          	addi	a4,a5,4
 bf8:	00e12023          	sw	a4,0(sp)
 bfc:	e71ff0ef          	jal	ra,a6c <neorv32_uart0_putc>
 c00:	fe5ff06f          	j	be4 <neorv32_uart0_printf+0x108>
 c04:	00012783          	lw	a5,0(sp)
 c08:	0007a483          	lw	s1,0(a5)
 c0c:	00478713          	addi	a4,a5,4
 c10:	00e12023          	sw	a4,0(sp)
 c14:	0004d863          	bgez	s1,c24 <neorv32_uart0_printf+0x148>
 c18:	02d00513          	li	a0,45
 c1c:	409004b3          	neg	s1,s1
 c20:	e4dff0ef          	jal	ra,a6c <neorv32_uart0_putc>
 c24:	00410593          	addi	a1,sp,4
 c28:	00048513          	mv	a0,s1
 c2c:	c41ff0ef          	jal	ra,86c <__neorv32_uart_itoa>
 c30:	00410513          	addi	a0,sp,4
 c34:	fadff06f          	j	be0 <neorv32_uart0_printf+0x104>
 c38:	00012783          	lw	a5,0(sp)
 c3c:	00410593          	addi	a1,sp,4
 c40:	00478713          	addi	a4,a5,4
 c44:	0007a503          	lw	a0,0(a5)
 c48:	00e12023          	sw	a4,0(sp)
 c4c:	fe1ff06f          	j	c2c <neorv32_uart0_printf+0x150>
 c50:	01449663          	bne	s1,s4,c5c <neorv32_uart0_printf+0x180>
 c54:	00d00513          	li	a0,13
 c58:	e15ff0ef          	jal	ra,a6c <neorv32_uart0_putc>
 c5c:	00048513          	mv	a0,s1
 c60:	00140413          	addi	s0,s0,1
 c64:	e09ff0ef          	jal	ra,a6c <neorv32_uart0_putc>
 c68:	ee5ff06f          	j	b4c <neorv32_uart0_printf+0x70>

00000c6c <__divsi3>:
 c6c:	06054063          	bltz	a0,ccc <__umodsi3+0x10>
 c70:	0605c663          	bltz	a1,cdc <__umodsi3+0x20>

00000c74 <__hidden___udivsi3>:
 c74:	00058613          	mv	a2,a1
 c78:	00050593          	mv	a1,a0
 c7c:	fff00513          	li	a0,-1
 c80:	02060c63          	beqz	a2,cb8 <__hidden___udivsi3+0x44>
 c84:	00100693          	li	a3,1
 c88:	00b67a63          	bgeu	a2,a1,c9c <__hidden___udivsi3+0x28>
 c8c:	00c05863          	blez	a2,c9c <__hidden___udivsi3+0x28>
 c90:	00161613          	slli	a2,a2,0x1
 c94:	00169693          	slli	a3,a3,0x1
 c98:	feb66ae3          	bltu	a2,a1,c8c <__hidden___udivsi3+0x18>
 c9c:	00000513          	li	a0,0
 ca0:	00c5e663          	bltu	a1,a2,cac <__hidden___udivsi3+0x38>
 ca4:	40c585b3          	sub	a1,a1,a2
 ca8:	00d56533          	or	a0,a0,a3
 cac:	0016d693          	srli	a3,a3,0x1
 cb0:	00165613          	srli	a2,a2,0x1
 cb4:	fe0696e3          	bnez	a3,ca0 <__hidden___udivsi3+0x2c>
 cb8:	00008067          	ret

00000cbc <__umodsi3>:
 cbc:	00008293          	mv	t0,ra
 cc0:	fb5ff0ef          	jal	ra,c74 <__hidden___udivsi3>
 cc4:	00058513          	mv	a0,a1
 cc8:	00028067          	jr	t0
 ccc:	40a00533          	neg	a0,a0
 cd0:	00b04863          	bgtz	a1,ce0 <__umodsi3+0x24>
 cd4:	40b005b3          	neg	a1,a1
 cd8:	f9dff06f          	j	c74 <__hidden___udivsi3>
 cdc:	40b005b3          	neg	a1,a1
 ce0:	00008293          	mv	t0,ra
 ce4:	f91ff0ef          	jal	ra,c74 <__hidden___udivsi3>
 ce8:	40a00533          	neg	a0,a0
 cec:	00028067          	jr	t0

00000cf0 <__modsi3>:
 cf0:	00008293          	mv	t0,ra
 cf4:	0005ca63          	bltz	a1,d08 <__modsi3+0x18>
 cf8:	00054c63          	bltz	a0,d10 <__modsi3+0x20>
 cfc:	f79ff0ef          	jal	ra,c74 <__hidden___udivsi3>
 d00:	00058513          	mv	a0,a1
 d04:	00028067          	jr	t0
 d08:	40b005b3          	neg	a1,a1
 d0c:	fe0558e3          	bgez	a0,cfc <__modsi3+0xc>
 d10:	40a00533          	neg	a0,a0
 d14:	f61ff0ef          	jal	ra,c74 <__hidden___udivsi3>
 d18:	40b00533          	neg	a0,a1
 d1c:	00028067          	jr	t0

00000d20 <memcpy>:
 d20:	00b547b3          	xor	a5,a0,a1
 d24:	0037f793          	andi	a5,a5,3
 d28:	00c508b3          	add	a7,a0,a2
 d2c:	06079463          	bnez	a5,d94 <memcpy+0x74>
 d30:	00300793          	li	a5,3
 d34:	06c7f063          	bgeu	a5,a2,d94 <memcpy+0x74>
 d38:	00357793          	andi	a5,a0,3
 d3c:	00050713          	mv	a4,a0
 d40:	06079a63          	bnez	a5,db4 <memcpy+0x94>
 d44:	ffc8f613          	andi	a2,a7,-4
 d48:	40e606b3          	sub	a3,a2,a4
 d4c:	02000793          	li	a5,32
 d50:	08d7ce63          	blt	a5,a3,dec <memcpy+0xcc>
 d54:	00058693          	mv	a3,a1
 d58:	00070793          	mv	a5,a4
 d5c:	02c77863          	bgeu	a4,a2,d8c <memcpy+0x6c>
 d60:	0006a803          	lw	a6,0(a3)
 d64:	00478793          	addi	a5,a5,4
 d68:	00468693          	addi	a3,a3,4
 d6c:	ff07ae23          	sw	a6,-4(a5)
 d70:	fec7e8e3          	bltu	a5,a2,d60 <memcpy+0x40>
 d74:	fff60793          	addi	a5,a2,-1
 d78:	40e787b3          	sub	a5,a5,a4
 d7c:	ffc7f793          	andi	a5,a5,-4
 d80:	00478793          	addi	a5,a5,4
 d84:	00f70733          	add	a4,a4,a5
 d88:	00f585b3          	add	a1,a1,a5
 d8c:	01176863          	bltu	a4,a7,d9c <memcpy+0x7c>
 d90:	00008067          	ret
 d94:	00050713          	mv	a4,a0
 d98:	05157863          	bgeu	a0,a7,de8 <memcpy+0xc8>
 d9c:	0005c783          	lbu	a5,0(a1)
 da0:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ede9>
 da4:	00158593          	addi	a1,a1,1
 da8:	fef70fa3          	sb	a5,-1(a4)
 dac:	fee898e3          	bne	a7,a4,d9c <memcpy+0x7c>
 db0:	00008067          	ret
 db4:	0005c683          	lbu	a3,0(a1)
 db8:	00170713          	addi	a4,a4,1
 dbc:	00377793          	andi	a5,a4,3
 dc0:	fed70fa3          	sb	a3,-1(a4)
 dc4:	00158593          	addi	a1,a1,1
 dc8:	f6078ee3          	beqz	a5,d44 <memcpy+0x24>
 dcc:	0005c683          	lbu	a3,0(a1)
 dd0:	00170713          	addi	a4,a4,1
 dd4:	00377793          	andi	a5,a4,3
 dd8:	fed70fa3          	sb	a3,-1(a4)
 ddc:	00158593          	addi	a1,a1,1
 de0:	fc079ae3          	bnez	a5,db4 <memcpy+0x94>
 de4:	f61ff06f          	j	d44 <memcpy+0x24>
 de8:	00008067          	ret
 dec:	ff010113          	addi	sp,sp,-16
 df0:	00812623          	sw	s0,12(sp)
 df4:	02000413          	li	s0,32
 df8:	0005a383          	lw	t2,0(a1)
 dfc:	0045a283          	lw	t0,4(a1)
 e00:	0085af83          	lw	t6,8(a1)
 e04:	00c5af03          	lw	t5,12(a1)
 e08:	0105ae83          	lw	t4,16(a1)
 e0c:	0145ae03          	lw	t3,20(a1)
 e10:	0185a303          	lw	t1,24(a1)
 e14:	01c5a803          	lw	a6,28(a1)
 e18:	0205a683          	lw	a3,32(a1)
 e1c:	02470713          	addi	a4,a4,36
 e20:	40e607b3          	sub	a5,a2,a4
 e24:	fc772e23          	sw	t2,-36(a4)
 e28:	fe572023          	sw	t0,-32(a4)
 e2c:	fff72223          	sw	t6,-28(a4)
 e30:	ffe72423          	sw	t5,-24(a4)
 e34:	ffd72623          	sw	t4,-20(a4)
 e38:	ffc72823          	sw	t3,-16(a4)
 e3c:	fe672a23          	sw	t1,-12(a4)
 e40:	ff072c23          	sw	a6,-8(a4)
 e44:	fed72e23          	sw	a3,-4(a4)
 e48:	02458593          	addi	a1,a1,36
 e4c:	faf446e3          	blt	s0,a5,df8 <memcpy+0xd8>
 e50:	00058693          	mv	a3,a1
 e54:	00070793          	mv	a5,a4
 e58:	02c77863          	bgeu	a4,a2,e88 <memcpy+0x168>
 e5c:	0006a803          	lw	a6,0(a3)
 e60:	00478793          	addi	a5,a5,4
 e64:	00468693          	addi	a3,a3,4
 e68:	ff07ae23          	sw	a6,-4(a5)
 e6c:	fec7e8e3          	bltu	a5,a2,e5c <memcpy+0x13c>
 e70:	fff60793          	addi	a5,a2,-1
 e74:	40e787b3          	sub	a5,a5,a4
 e78:	ffc7f793          	andi	a5,a5,-4
 e7c:	00478793          	addi	a5,a5,4
 e80:	00f70733          	add	a4,a4,a5
 e84:	00f585b3          	add	a1,a1,a5
 e88:	01176863          	bltu	a4,a7,e98 <memcpy+0x178>
 e8c:	00c12403          	lw	s0,12(sp)
 e90:	01010113          	addi	sp,sp,16
 e94:	00008067          	ret
 e98:	0005c783          	lbu	a5,0(a1)
 e9c:	00170713          	addi	a4,a4,1
 ea0:	00158593          	addi	a1,a1,1
 ea4:	fef70fa3          	sb	a5,-1(a4)
 ea8:	fee882e3          	beq	a7,a4,e8c <memcpy+0x16c>
 eac:	0005c783          	lbu	a5,0(a1)
 eb0:	00170713          	addi	a4,a4,1
 eb4:	00158593          	addi	a1,a1,1
 eb8:	fef70fa3          	sb	a5,-1(a4)
 ebc:	fce89ee3          	bne	a7,a4,e98 <memcpy+0x178>
 ec0:	fcdff06f          	j	e8c <memcpy+0x16c>
