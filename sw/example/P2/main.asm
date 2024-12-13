
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
      e0:	29c58593          	addi	a1,a1,668 # 1378 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3788>
     194:	00112623          	sw	ra,12(sp)
     198:	109000ef          	jal	ra,aa0 <neorv32_uart0_setup>
     19c:	1f0000ef          	jal	ra,38c <neorv32_gpio_available>
     1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
     1a4:	760000ef          	jal	ra,904 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	08c50513          	addi	a0,a0,140 # 108c <__etext+0x38>
     1b0:	1b5000ef          	jal	ra,b64 <neorv32_uart0_print>
     1b4:	020000ef          	jal	ra,1d4 <keyboard>
     1b8:	00001537          	lui	a0,0x1
     1bc:	06850513          	addi	a0,a0,104 # 1068 <__etext+0x14>
     1c0:	1a5000ef          	jal	ra,b64 <neorv32_uart0_print>
     1c4:	00c12083          	lw	ra,12(sp)
     1c8:	00100513          	li	a0,1
     1cc:	01010113          	addi	sp,sp,16
     1d0:	00008067          	ret

000001d4 <keyboard>:
     1d4:	fc010113          	addi	sp,sp,-64
     1d8:	000015b7          	lui	a1,0x1
     1dc:	01000613          	li	a2,16
     1e0:	0a058593          	addi	a1,a1,160 # 10a0 <__etext+0x4c>
     1e4:	00010513          	mv	a0,sp
     1e8:	02112e23          	sw	ra,60(sp)
     1ec:	03412423          	sw	s4,40(sp)
     1f0:	03512223          	sw	s5,36(sp)
     1f4:	03612023          	sw	s6,32(sp)
     1f8:	01712e23          	sw	s7,28(sp)
     1fc:	01812c23          	sw	s8,24(sp)
     200:	01912a23          	sw	s9,20(sp)
     204:	02812c23          	sw	s0,56(sp)
     208:	02912a23          	sw	s1,52(sp)
     20c:	03212823          	sw	s2,48(sp)
     210:	03312623          	sw	s3,44(sp)
     214:	49d000ef          	jal	ra,eb0 <memcpy>
     218:	0ff00513          	li	a0,255
     21c:	00000593          	li	a1,0
     220:	204000ef          	jal	ra,424 <neorv32_gpio_port_set>
     224:	02d00a13          	li	s4,45
     228:	02d00c13          	li	s8,45
     22c:	00f10a93          	addi	s5,sp,15
     230:	00800b13          	li	s6,8
     234:	00400b93          	li	s7,4
     238:	00001cb7          	lui	s9,0x1
     23c:	02d00493          	li	s1,45
     240:	00000413          	li	s0,0
     244:	00040513          	mv	a0,s0
     248:	184000ef          	jal	ra,3cc <neorv32_gpio_pin_clr>
     24c:	408a89b3          	sub	s3,s5,s0
     250:	00400913          	li	s2,4
     254:	00090513          	mv	a0,s2
     258:	1a8000ef          	jal	ra,400 <neorv32_gpio_pin_get>
     25c:	00051463          	bnez	a0,264 <keyboard+0x90>
     260:	0009c483          	lbu	s1,0(s3)
     264:	00190913          	addi	s2,s2,1
     268:	ffc98993          	addi	s3,s3,-4
     26c:	ff6914e3          	bne	s2,s6,254 <keyboard+0x80>
     270:	00040513          	mv	a0,s0
     274:	00140413          	addi	s0,s0,1
     278:	124000ef          	jal	ra,39c <neorv32_gpio_pin_set>
     27c:	fd7414e3          	bne	s0,s7,244 <keyboard+0x70>
     280:	01848a63          	beq	s1,s8,294 <keyboard+0xc0>
     284:	01448863          	beq	s1,s4,294 <keyboard+0xc0>
     288:	00048593          	mv	a1,s1
     28c:	054c8513          	addi	a0,s9,84 # 1054 <__etext>
     290:	12d000ef          	jal	ra,bbc <neorv32_uart0_printf>
     294:	0c800513          	li	a0,200
     298:	038000ef          	jal	ra,2d0 <neorv32_cpu_delay_ms>
     29c:	00048a13          	mv	s4,s1
     2a0:	f9dff06f          	j	23c <keyboard+0x68>

000002a4 <neorv32_cpu_get_systime>:
     2a4:	ff010113          	addi	sp,sp,-16
     2a8:	c81026f3          	rdtimeh	a3
     2ac:	c0102773          	rdtime	a4
     2b0:	c81027f3          	rdtimeh	a5
     2b4:	fed79ae3          	bne	a5,a3,2a8 <neorv32_cpu_get_systime+0x4>
     2b8:	00e12023          	sw	a4,0(sp)
     2bc:	00f12223          	sw	a5,4(sp)
     2c0:	00012503          	lw	a0,0(sp)
     2c4:	00412583          	lw	a1,4(sp)
     2c8:	01010113          	addi	sp,sp,16
     2cc:	00008067          	ret

000002d0 <neorv32_cpu_delay_ms>:
     2d0:	fd010113          	addi	sp,sp,-48
     2d4:	00a12623          	sw	a0,12(sp)
     2d8:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     2dc:	3e800593          	li	a1,1000
     2e0:	02112623          	sw	ra,44(sp)
     2e4:	02812423          	sw	s0,40(sp)
     2e8:	02912223          	sw	s1,36(sp)
     2ec:	03212023          	sw	s2,32(sp)
     2f0:	01312e23          	sw	s3,28(sp)
     2f4:	311000ef          	jal	ra,e04 <__hidden___udivsi3>
     2f8:	00c12603          	lw	a2,12(sp)
     2fc:	00000693          	li	a3,0
     300:	00000593          	li	a1,0
     304:	26d000ef          	jal	ra,d70 <__muldi3>
     308:	00050413          	mv	s0,a0
     30c:	00058993          	mv	s3,a1
     310:	f95ff0ef          	jal	ra,2a4 <neorv32_cpu_get_systime>
     314:	00058913          	mv	s2,a1
     318:	00050493          	mv	s1,a0
     31c:	f89ff0ef          	jal	ra,2a4 <neorv32_cpu_get_systime>
     320:	00b96663          	bltu	s2,a1,32c <neorv32_cpu_delay_ms+0x5c>
     324:	05259263          	bne	a1,s2,368 <neorv32_cpu_delay_ms+0x98>
     328:	04a4f063          	bgeu	s1,a0,368 <neorv32_cpu_delay_ms+0x98>
     32c:	008484b3          	add	s1,s1,s0
     330:	0084b433          	sltu	s0,s1,s0
     334:	01390933          	add	s2,s2,s3
     338:	01240433          	add	s0,s0,s2
     33c:	f69ff0ef          	jal	ra,2a4 <neorv32_cpu_get_systime>
     340:	fe85eee3          	bltu	a1,s0,33c <neorv32_cpu_delay_ms+0x6c>
     344:	00b41463          	bne	s0,a1,34c <neorv32_cpu_delay_ms+0x7c>
     348:	fe956ae3          	bltu	a0,s1,33c <neorv32_cpu_delay_ms+0x6c>
     34c:	02c12083          	lw	ra,44(sp)
     350:	02812403          	lw	s0,40(sp)
     354:	02412483          	lw	s1,36(sp)
     358:	02012903          	lw	s2,32(sp)
     35c:	01c12983          	lw	s3,28(sp)
     360:	03010113          	addi	sp,sp,48
     364:	00008067          	ret
     368:	01c99993          	slli	s3,s3,0x1c
     36c:	00445413          	srli	s0,s0,0x4
     370:	0089e433          	or	s0,s3,s0

00000374 <__neorv32_cpu_delay_ms_start>:
     374:	00040a63          	beqz	s0,388 <__neorv32_cpu_delay_ms_end>
     378:	00040863          	beqz	s0,388 <__neorv32_cpu_delay_ms_end>
     37c:	fff40413          	addi	s0,s0,-1
     380:	00000013          	nop
     384:	ff1ff06f          	j	374 <__neorv32_cpu_delay_ms_start>

00000388 <__neorv32_cpu_delay_ms_end>:
     388:	fc5ff06f          	j	34c <neorv32_cpu_delay_ms+0x7c>

0000038c <neorv32_gpio_available>:
     38c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     390:	01055513          	srli	a0,a0,0x10
     394:	00157513          	andi	a0,a0,1
     398:	00008067          	ret

0000039c <neorv32_gpio_pin_set>:
     39c:	00100793          	li	a5,1
     3a0:	01f00713          	li	a4,31
     3a4:	00a797b3          	sll	a5,a5,a0
     3a8:	00a74a63          	blt	a4,a0,3bc <neorv32_gpio_pin_set+0x20>
     3ac:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3b0:	00f767b3          	or	a5,a4,a5
     3b4:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3b8:	00008067          	ret
     3bc:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3c0:	00f767b3          	or	a5,a4,a5
     3c4:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3c8:	00008067          	ret

000003cc <neorv32_gpio_pin_clr>:
     3cc:	00100793          	li	a5,1
     3d0:	00a797b3          	sll	a5,a5,a0
     3d4:	01f00713          	li	a4,31
     3d8:	fff7c793          	not	a5,a5
     3dc:	00a74a63          	blt	a4,a0,3f0 <neorv32_gpio_pin_clr+0x24>
     3e0:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3e4:	00f777b3          	and	a5,a4,a5
     3e8:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3ec:	00008067          	ret
     3f0:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3f4:	00f777b3          	and	a5,a4,a5
     3f8:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3fc:	00008067          	ret

00000400 <neorv32_gpio_pin_get>:
     400:	00100793          	li	a5,1
     404:	01f00713          	li	a4,31
     408:	00a797b3          	sll	a5,a5,a0
     40c:	00a74863          	blt	a4,a0,41c <neorv32_gpio_pin_get+0x1c>
     410:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     414:	00f77533          	and	a0,a4,a5
     418:	00008067          	ret
     41c:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     420:	ff5ff06f          	j	414 <neorv32_gpio_pin_get+0x14>

00000424 <neorv32_gpio_port_set>:
     424:	fc000793          	li	a5,-64
     428:	00a7a423          	sw	a0,8(a5)
     42c:	00b7a623          	sw	a1,12(a5)
     430:	00008067          	ret
     434:	0000                	.2byte	0x0
     436:	0000                	.2byte	0x0
     438:	0000                	.2byte	0x0
     43a:	0000                	.2byte	0x0
     43c:	0000                	.2byte	0x0
     43e:	0000                	.2byte	0x0

00000440 <__neorv32_rte_core>:
     440:	fc010113          	addi	sp,sp,-64
     444:	02112e23          	sw	ra,60(sp)
     448:	02512c23          	sw	t0,56(sp)
     44c:	02612a23          	sw	t1,52(sp)
     450:	02712823          	sw	t2,48(sp)
     454:	02a12623          	sw	a0,44(sp)
     458:	02b12423          	sw	a1,40(sp)
     45c:	02c12223          	sw	a2,36(sp)
     460:	02d12023          	sw	a3,32(sp)
     464:	00e12e23          	sw	a4,28(sp)
     468:	00f12c23          	sw	a5,24(sp)
     46c:	01012a23          	sw	a6,20(sp)
     470:	01112823          	sw	a7,16(sp)
     474:	01c12623          	sw	t3,12(sp)
     478:	01d12423          	sw	t4,8(sp)
     47c:	01e12223          	sw	t5,4(sp)
     480:	01f12023          	sw	t6,0(sp)
     484:	34102773          	csrr	a4,mepc
     488:	34071073          	csrw	mscratch,a4
     48c:	342027f3          	csrr	a5,mcause
     490:	0807c863          	bltz	a5,520 <__neorv32_rte_core+0xe0>
     494:	00071683          	lh	a3,0(a4)
     498:	00300593          	li	a1,3
     49c:	0036f693          	andi	a3,a3,3
     4a0:	00270613          	addi	a2,a4,2
     4a4:	00b69463          	bne	a3,a1,4ac <__neorv32_rte_core+0x6c>
     4a8:	00470613          	addi	a2,a4,4
     4ac:	34161073          	csrw	mepc,a2
     4b0:	00b00713          	li	a4,11
     4b4:	04f77a63          	bgeu	a4,a5,508 <__neorv32_rte_core+0xc8>
     4b8:	6f000793          	li	a5,1776
     4bc:	000780e7          	jalr	a5
     4c0:	03c12083          	lw	ra,60(sp)
     4c4:	03812283          	lw	t0,56(sp)
     4c8:	03412303          	lw	t1,52(sp)
     4cc:	03012383          	lw	t2,48(sp)
     4d0:	02c12503          	lw	a0,44(sp)
     4d4:	02812583          	lw	a1,40(sp)
     4d8:	02412603          	lw	a2,36(sp)
     4dc:	02012683          	lw	a3,32(sp)
     4e0:	01c12703          	lw	a4,28(sp)
     4e4:	01812783          	lw	a5,24(sp)
     4e8:	01412803          	lw	a6,20(sp)
     4ec:	01012883          	lw	a7,16(sp)
     4f0:	00c12e03          	lw	t3,12(sp)
     4f4:	00812e83          	lw	t4,8(sp)
     4f8:	00412f03          	lw	t5,4(sp)
     4fc:	00012f83          	lw	t6,0(sp)
     500:	04010113          	addi	sp,sp,64
     504:	30200073          	mret
     508:	00001737          	lui	a4,0x1
     50c:	00279793          	slli	a5,a5,0x2
     510:	0b070713          	addi	a4,a4,176 # 10b0 <__etext+0x5c>
     514:	00e787b3          	add	a5,a5,a4
     518:	0007a783          	lw	a5,0(a5)
     51c:	00078067          	jr	a5
     520:	80000737          	lui	a4,0x80000
     524:	ffd74713          	xori	a4,a4,-3
     528:	00e787b3          	add	a5,a5,a4
     52c:	01c00713          	li	a4,28
     530:	f8f764e3          	bltu	a4,a5,4b8 <__neorv32_rte_core+0x78>
     534:	00001737          	lui	a4,0x1
     538:	00279793          	slli	a5,a5,0x2
     53c:	0e070713          	addi	a4,a4,224 # 10e0 <__etext+0x8c>
     540:	00e787b3          	add	a5,a5,a4
     544:	0007a783          	lw	a5,0(a5)
     548:	00078067          	jr	a5
     54c:	800007b7          	lui	a5,0x80000
     550:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     554:	f69ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     558:	800007b7          	lui	a5,0x80000
     55c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     560:	f5dff06f          	j	4bc <__neorv32_rte_core+0x7c>
     564:	800007b7          	lui	a5,0x80000
     568:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     56c:	f51ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     570:	800007b7          	lui	a5,0x80000
     574:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     578:	f45ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     57c:	800007b7          	lui	a5,0x80000
     580:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     584:	f39ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     588:	800007b7          	lui	a5,0x80000
     58c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     590:	f2dff06f          	j	4bc <__neorv32_rte_core+0x7c>
     594:	800007b7          	lui	a5,0x80000
     598:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     59c:	f21ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5a0:	800007b7          	lui	a5,0x80000
     5a4:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     5a8:	f15ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5ac:	800007b7          	lui	a5,0x80000
     5b0:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     5b4:	f09ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5b8:	800007b7          	lui	a5,0x80000
     5bc:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     5c0:	efdff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5c4:	800007b7          	lui	a5,0x80000
     5c8:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     5cc:	ef1ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5d0:	800007b7          	lui	a5,0x80000
     5d4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     5d8:	ee5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5dc:	800007b7          	lui	a5,0x80000
     5e0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     5e4:	ed9ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5e8:	800007b7          	lui	a5,0x80000
     5ec:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     5f0:	ecdff06f          	j	4bc <__neorv32_rte_core+0x7c>
     5f4:	800007b7          	lui	a5,0x80000
     5f8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     5fc:	ec1ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     600:	800007b7          	lui	a5,0x80000
     604:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     608:	eb5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     60c:	800007b7          	lui	a5,0x80000
     610:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     614:	ea9ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     618:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     61c:	ea1ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     620:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     624:	e99ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     628:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     62c:	e91ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     630:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     634:	e89ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     638:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     63c:	e81ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     640:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     644:	e79ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     648:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     64c:	e71ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     650:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     654:	e69ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     658:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     65c:	e61ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     660:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     664:	e59ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     668:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     66c:	e51ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     670:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     674:	e49ff06f          	j	4bc <__neorv32_rte_core+0x7c>
     678:	0000                	.2byte	0x0
     67a:	0000                	.2byte	0x0
     67c:	0000                	.2byte	0x0
     67e:	0000                	.2byte	0x0

00000680 <__neorv32_rte_print_hex_word>:
     680:	fe010113          	addi	sp,sp,-32
     684:	01212823          	sw	s2,16(sp)
     688:	00050913          	mv	s2,a0
     68c:	00001537          	lui	a0,0x1
     690:	00912a23          	sw	s1,20(sp)
     694:	15450513          	addi	a0,a0,340 # 1154 <__etext+0x100>
     698:	000014b7          	lui	s1,0x1
     69c:	00812c23          	sw	s0,24(sp)
     6a0:	01312623          	sw	s3,12(sp)
     6a4:	00112e23          	sw	ra,28(sp)
     6a8:	01c00413          	li	s0,28
     6ac:	4b8000ef          	jal	ra,b64 <neorv32_uart0_print>
     6b0:	34848493          	addi	s1,s1,840 # 1348 <hex_symbols.0>
     6b4:	ffc00993          	li	s3,-4
     6b8:	008957b3          	srl	a5,s2,s0
     6bc:	00f7f793          	andi	a5,a5,15
     6c0:	00f487b3          	add	a5,s1,a5
     6c4:	0007c503          	lbu	a0,0(a5)
     6c8:	ffc40413          	addi	s0,s0,-4
     6cc:	480000ef          	jal	ra,b4c <neorv32_uart0_putc>
     6d0:	ff3414e3          	bne	s0,s3,6b8 <__neorv32_rte_print_hex_word+0x38>
     6d4:	01c12083          	lw	ra,28(sp)
     6d8:	01812403          	lw	s0,24(sp)
     6dc:	01412483          	lw	s1,20(sp)
     6e0:	01012903          	lw	s2,16(sp)
     6e4:	00c12983          	lw	s3,12(sp)
     6e8:	02010113          	addi	sp,sp,32
     6ec:	00008067          	ret

000006f0 <__neorv32_rte_debug_exc_handler>:
     6f0:	ff010113          	addi	sp,sp,-16
     6f4:	00112623          	sw	ra,12(sp)
     6f8:	00812423          	sw	s0,8(sp)
     6fc:	00912223          	sw	s1,4(sp)
     700:	390000ef          	jal	ra,a90 <neorv32_uart0_available>
     704:	1a050e63          	beqz	a0,8c0 <__neorv32_rte_debug_exc_handler+0x1d0>
     708:	00001537          	lui	a0,0x1
     70c:	15850513          	addi	a0,a0,344 # 1158 <__etext+0x104>
     710:	454000ef          	jal	ra,b64 <neorv32_uart0_print>
     714:	34202473          	csrr	s0,mcause
     718:	00900713          	li	a4,9
     71c:	00f47793          	andi	a5,s0,15
     720:	03078493          	addi	s1,a5,48
     724:	00f77463          	bgeu	a4,a5,72c <__neorv32_rte_debug_exc_handler+0x3c>
     728:	05778493          	addi	s1,a5,87
     72c:	00b00793          	li	a5,11
     730:	0087ee63          	bltu	a5,s0,74c <__neorv32_rte_debug_exc_handler+0x5c>
     734:	00001737          	lui	a4,0x1
     738:	00241793          	slli	a5,s0,0x2
     73c:	31870713          	addi	a4,a4,792 # 1318 <__etext+0x2c4>
     740:	00e787b3          	add	a5,a5,a4
     744:	0007a783          	lw	a5,0(a5)
     748:	00078067          	jr	a5
     74c:	800007b7          	lui	a5,0x80000
     750:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     754:	14e40463          	beq	s0,a4,89c <__neorv32_rte_debug_exc_handler+0x1ac>
     758:	02876663          	bltu	a4,s0,784 <__neorv32_rte_debug_exc_handler+0x94>
     75c:	00378713          	addi	a4,a5,3
     760:	12e40263          	beq	s0,a4,884 <__neorv32_rte_debug_exc_handler+0x194>
     764:	00778793          	addi	a5,a5,7
     768:	12f40463          	beq	s0,a5,890 <__neorv32_rte_debug_exc_handler+0x1a0>
     76c:	00001537          	lui	a0,0x1
     770:	2b850513          	addi	a0,a0,696 # 12b8 <__etext+0x264>
     774:	3f0000ef          	jal	ra,b64 <neorv32_uart0_print>
     778:	00040513          	mv	a0,s0
     77c:	f05ff0ef          	jal	ra,680 <__neorv32_rte_print_hex_word>
     780:	0280006f          	j	7a8 <__neorv32_rte_debug_exc_handler+0xb8>
     784:	ff07c793          	xori	a5,a5,-16
     788:	00f407b3          	add	a5,s0,a5
     78c:	00f00713          	li	a4,15
     790:	fcf76ee3          	bltu	a4,a5,76c <__neorv32_rte_debug_exc_handler+0x7c>
     794:	00001537          	lui	a0,0x1
     798:	2a850513          	addi	a0,a0,680 # 12a8 <__etext+0x254>
     79c:	3c8000ef          	jal	ra,b64 <neorv32_uart0_print>
     7a0:	00048513          	mv	a0,s1
     7a4:	3a8000ef          	jal	ra,b4c <neorv32_uart0_putc>
     7a8:	00001537          	lui	a0,0x1
     7ac:	2fc50513          	addi	a0,a0,764 # 12fc <__etext+0x2a8>
     7b0:	3b4000ef          	jal	ra,b64 <neorv32_uart0_print>
     7b4:	34002573          	csrr	a0,mscratch
     7b8:	ec9ff0ef          	jal	ra,680 <__neorv32_rte_print_hex_word>
     7bc:	00001537          	lui	a0,0x1
     7c0:	30450513          	addi	a0,a0,772 # 1304 <__etext+0x2b0>
     7c4:	3a0000ef          	jal	ra,b64 <neorv32_uart0_print>
     7c8:	34302573          	csrr	a0,mtval
     7cc:	eb5ff0ef          	jal	ra,680 <__neorv32_rte_print_hex_word>
     7d0:	00812403          	lw	s0,8(sp)
     7d4:	00c12083          	lw	ra,12(sp)
     7d8:	00412483          	lw	s1,4(sp)
     7dc:	00001537          	lui	a0,0x1
     7e0:	31050513          	addi	a0,a0,784 # 1310 <__etext+0x2bc>
     7e4:	01010113          	addi	sp,sp,16
     7e8:	37c0006f          	j	b64 <neorv32_uart0_print>
     7ec:	00001537          	lui	a0,0x1
     7f0:	16050513          	addi	a0,a0,352 # 1160 <__etext+0x10c>
     7f4:	370000ef          	jal	ra,b64 <neorv32_uart0_print>
     7f8:	fb1ff06f          	j	7a8 <__neorv32_rte_debug_exc_handler+0xb8>
     7fc:	00001537          	lui	a0,0x1
     800:	18050513          	addi	a0,a0,384 # 1180 <__etext+0x12c>
     804:	360000ef          	jal	ra,b64 <neorv32_uart0_print>
     808:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     80c:	0a07d463          	bgez	a5,8b4 <__neorv32_rte_debug_exc_handler+0x1c4>
     810:	0017f793          	andi	a5,a5,1
     814:	08078a63          	beqz	a5,8a8 <__neorv32_rte_debug_exc_handler+0x1b8>
     818:	00001537          	lui	a0,0x1
     81c:	2d050513          	addi	a0,a0,720 # 12d0 <__etext+0x27c>
     820:	fd5ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     824:	00001537          	lui	a0,0x1
     828:	19c50513          	addi	a0,a0,412 # 119c <__etext+0x148>
     82c:	fc9ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     830:	00001537          	lui	a0,0x1
     834:	1b050513          	addi	a0,a0,432 # 11b0 <__etext+0x15c>
     838:	fbdff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     83c:	00001537          	lui	a0,0x1
     840:	1bc50513          	addi	a0,a0,444 # 11bc <__etext+0x168>
     844:	fb1ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     848:	00001537          	lui	a0,0x1
     84c:	1d450513          	addi	a0,a0,468 # 11d4 <__etext+0x180>
     850:	fb5ff06f          	j	804 <__neorv32_rte_debug_exc_handler+0x114>
     854:	00001537          	lui	a0,0x1
     858:	1e850513          	addi	a0,a0,488 # 11e8 <__etext+0x194>
     85c:	f99ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     860:	00001537          	lui	a0,0x1
     864:	20450513          	addi	a0,a0,516 # 1204 <__etext+0x1b0>
     868:	f9dff06f          	j	804 <__neorv32_rte_debug_exc_handler+0x114>
     86c:	00001537          	lui	a0,0x1
     870:	21850513          	addi	a0,a0,536 # 1218 <__etext+0x1c4>
     874:	f81ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     878:	00001537          	lui	a0,0x1
     87c:	23850513          	addi	a0,a0,568 # 1238 <__etext+0x1e4>
     880:	f75ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     884:	00001537          	lui	a0,0x1
     888:	25850513          	addi	a0,a0,600 # 1258 <__etext+0x204>
     88c:	f69ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     890:	00001537          	lui	a0,0x1
     894:	27450513          	addi	a0,a0,628 # 1274 <__etext+0x220>
     898:	f5dff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     89c:	00001537          	lui	a0,0x1
     8a0:	28c50513          	addi	a0,a0,652 # 128c <__etext+0x238>
     8a4:	f51ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     8a8:	00001537          	lui	a0,0x1
     8ac:	2e050513          	addi	a0,a0,736 # 12e0 <__etext+0x28c>
     8b0:	f45ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     8b4:	00001537          	lui	a0,0x1
     8b8:	2f050513          	addi	a0,a0,752 # 12f0 <__etext+0x29c>
     8bc:	f39ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x104>
     8c0:	00c12083          	lw	ra,12(sp)
     8c4:	00812403          	lw	s0,8(sp)
     8c8:	00412483          	lw	s1,4(sp)
     8cc:	01010113          	addi	sp,sp,16
     8d0:	00008067          	ret

000008d4 <neorv32_rte_exception_uninstall>:
     8d4:	01f00793          	li	a5,31
     8d8:	02a7e263          	bltu	a5,a0,8fc <neorv32_rte_exception_uninstall+0x28>
     8dc:	800007b7          	lui	a5,0x80000
     8e0:	00251513          	slli	a0,a0,0x2
     8e4:	00078793          	mv	a5,a5
     8e8:	00a787b3          	add	a5,a5,a0
     8ec:	6f000713          	li	a4,1776
     8f0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     8f4:	00000513          	li	a0,0
     8f8:	00008067          	ret
     8fc:	00100513          	li	a0,1
     900:	00008067          	ret

00000904 <neorv32_rte_setup>:
     904:	ff010113          	addi	sp,sp,-16
     908:	00112623          	sw	ra,12(sp)
     90c:	00812423          	sw	s0,8(sp)
     910:	00912223          	sw	s1,4(sp)
     914:	44000793          	li	a5,1088
     918:	30579073          	csrw	mtvec,a5
     91c:	00000413          	li	s0,0
     920:	01d00493          	li	s1,29
     924:	00040513          	mv	a0,s0
     928:	00140413          	addi	s0,s0,1
     92c:	0ff47413          	zext.b	s0,s0
     930:	fa5ff0ef          	jal	ra,8d4 <neorv32_rte_exception_uninstall>
     934:	fe9418e3          	bne	s0,s1,924 <neorv32_rte_setup+0x20>
     938:	00c12083          	lw	ra,12(sp)
     93c:	00812403          	lw	s0,8(sp)
     940:	00412483          	lw	s1,4(sp)
     944:	01010113          	addi	sp,sp,16
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
     984:	36ca0a13          	addi	s4,s4,876 # 136c <numbers.1>
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
     a60:	35860613          	addi	a2,a2,856 # 1358 <symbols.0>
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
     adc:	ffe78793          	addi	a5,a5,-2 # ffe <memcpy+0x14e>
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
     b28:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffec86>
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

00000eb0 <memcpy>:
     eb0:	00b547b3          	xor	a5,a0,a1
     eb4:	0037f793          	andi	a5,a5,3
     eb8:	00c508b3          	add	a7,a0,a2
     ebc:	06079463          	bnez	a5,f24 <memcpy+0x74>
     ec0:	00300793          	li	a5,3
     ec4:	06c7f063          	bgeu	a5,a2,f24 <memcpy+0x74>
     ec8:	00357793          	andi	a5,a0,3
     ecc:	00050713          	mv	a4,a0
     ed0:	06079a63          	bnez	a5,f44 <memcpy+0x94>
     ed4:	ffc8f613          	andi	a2,a7,-4
     ed8:	40e606b3          	sub	a3,a2,a4
     edc:	02000793          	li	a5,32
     ee0:	08d7ce63          	blt	a5,a3,f7c <memcpy+0xcc>
     ee4:	00058693          	mv	a3,a1
     ee8:	00070793          	mv	a5,a4
     eec:	02c77863          	bgeu	a4,a2,f1c <memcpy+0x6c>
     ef0:	0006a803          	lw	a6,0(a3)
     ef4:	00478793          	addi	a5,a5,4
     ef8:	00468693          	addi	a3,a3,4
     efc:	ff07ae23          	sw	a6,-4(a5)
     f00:	fec7e8e3          	bltu	a5,a2,ef0 <memcpy+0x40>
     f04:	fff60793          	addi	a5,a2,-1
     f08:	40e787b3          	sub	a5,a5,a4
     f0c:	ffc7f793          	andi	a5,a5,-4
     f10:	00478793          	addi	a5,a5,4
     f14:	00f70733          	add	a4,a4,a5
     f18:	00f585b3          	add	a1,a1,a5
     f1c:	01176863          	bltu	a4,a7,f2c <memcpy+0x7c>
     f20:	00008067          	ret
     f24:	00050713          	mv	a4,a0
     f28:	05157863          	bgeu	a0,a7,f78 <memcpy+0xc8>
     f2c:	0005c783          	lbu	a5,0(a1)
     f30:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ec89>
     f34:	00158593          	addi	a1,a1,1
     f38:	fef70fa3          	sb	a5,-1(a4)
     f3c:	fee898e3          	bne	a7,a4,f2c <memcpy+0x7c>
     f40:	00008067          	ret
     f44:	0005c683          	lbu	a3,0(a1)
     f48:	00170713          	addi	a4,a4,1
     f4c:	00377793          	andi	a5,a4,3
     f50:	fed70fa3          	sb	a3,-1(a4)
     f54:	00158593          	addi	a1,a1,1
     f58:	f6078ee3          	beqz	a5,ed4 <memcpy+0x24>
     f5c:	0005c683          	lbu	a3,0(a1)
     f60:	00170713          	addi	a4,a4,1
     f64:	00377793          	andi	a5,a4,3
     f68:	fed70fa3          	sb	a3,-1(a4)
     f6c:	00158593          	addi	a1,a1,1
     f70:	fc079ae3          	bnez	a5,f44 <memcpy+0x94>
     f74:	f61ff06f          	j	ed4 <memcpy+0x24>
     f78:	00008067          	ret
     f7c:	ff010113          	addi	sp,sp,-16
     f80:	00812623          	sw	s0,12(sp)
     f84:	02000413          	li	s0,32
     f88:	0005a383          	lw	t2,0(a1)
     f8c:	0045a283          	lw	t0,4(a1)
     f90:	0085af83          	lw	t6,8(a1)
     f94:	00c5af03          	lw	t5,12(a1)
     f98:	0105ae83          	lw	t4,16(a1)
     f9c:	0145ae03          	lw	t3,20(a1)
     fa0:	0185a303          	lw	t1,24(a1)
     fa4:	01c5a803          	lw	a6,28(a1)
     fa8:	0205a683          	lw	a3,32(a1)
     fac:	02470713          	addi	a4,a4,36
     fb0:	40e607b3          	sub	a5,a2,a4
     fb4:	fc772e23          	sw	t2,-36(a4)
     fb8:	fe572023          	sw	t0,-32(a4)
     fbc:	fff72223          	sw	t6,-28(a4)
     fc0:	ffe72423          	sw	t5,-24(a4)
     fc4:	ffd72623          	sw	t4,-20(a4)
     fc8:	ffc72823          	sw	t3,-16(a4)
     fcc:	fe672a23          	sw	t1,-12(a4)
     fd0:	ff072c23          	sw	a6,-8(a4)
     fd4:	fed72e23          	sw	a3,-4(a4)
     fd8:	02458593          	addi	a1,a1,36
     fdc:	faf446e3          	blt	s0,a5,f88 <memcpy+0xd8>
     fe0:	00058693          	mv	a3,a1
     fe4:	00070793          	mv	a5,a4
     fe8:	02c77863          	bgeu	a4,a2,1018 <memcpy+0x168>
     fec:	0006a803          	lw	a6,0(a3)
     ff0:	00478793          	addi	a5,a5,4
     ff4:	00468693          	addi	a3,a3,4
     ff8:	ff07ae23          	sw	a6,-4(a5)
     ffc:	fec7e8e3          	bltu	a5,a2,fec <memcpy+0x13c>
    1000:	fff60793          	addi	a5,a2,-1
    1004:	40e787b3          	sub	a5,a5,a4
    1008:	ffc7f793          	andi	a5,a5,-4
    100c:	00478793          	addi	a5,a5,4
    1010:	00f70733          	add	a4,a4,a5
    1014:	00f585b3          	add	a1,a1,a5
    1018:	01176863          	bltu	a4,a7,1028 <memcpy+0x178>
    101c:	00c12403          	lw	s0,12(sp)
    1020:	01010113          	addi	sp,sp,16
    1024:	00008067          	ret
    1028:	0005c783          	lbu	a5,0(a1)
    102c:	00170713          	addi	a4,a4,1
    1030:	00158593          	addi	a1,a1,1
    1034:	fef70fa3          	sb	a5,-1(a4)
    1038:	fee882e3          	beq	a7,a4,101c <memcpy+0x16c>
    103c:	0005c783          	lbu	a5,0(a1)
    1040:	00170713          	addi	a4,a4,1
    1044:	00158593          	addi	a1,a1,1
    1048:	fef70fa3          	sb	a5,-1(a4)
    104c:	fce89ee3          	bne	a7,a4,1028 <memcpy+0x178>
    1050:	fcdff06f          	j	101c <memcpy+0x16c>
