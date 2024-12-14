
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
      e0:	41458593          	addi	a1,a1,1044 # 14f0 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3610>
     194:	00112623          	sw	ra,12(sp)
     198:	1c9000ef          	jal	ra,b60 <neorv32_uart0_setup>
     19c:	2b0000ef          	jal	ra,44c <neorv32_gpio_available>
     1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
     1a4:	021000ef          	jal	ra,9c4 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	1d450513          	addi	a0,a0,468 # 11d4 <__etext+0x14c>
     1b0:	275000ef          	jal	ra,c24 <neorv32_uart0_print>
     1b4:	11c000ef          	jal	ra,2d0 <wb_calculadora>
     1b8:	ffdff06f          	j	1b4 <main+0x34>
     1bc:	00001537          	lui	a0,0x1
     1c0:	1b050513          	addi	a0,a0,432 # 11b0 <__etext+0x128>
     1c4:	261000ef          	jal	ra,c24 <neorv32_uart0_print>
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00100513          	li	a0,1
     1d0:	01010113          	addi	sp,sp,16
     1d4:	00008067          	ret

000001d8 <keyboard>:
     1d8:	f9010113          	addi	sp,sp,-112
     1dc:	000015b7          	lui	a1,0x1
     1e0:	04000613          	li	a2,64
     1e4:	1e858593          	addi	a1,a1,488 # 11e8 <__etext+0x160>
     1e8:	00010513          	mv	a0,sp
     1ec:	06112623          	sw	ra,108(sp)
     1f0:	05512a23          	sw	s5,84(sp)
     1f4:	05612823          	sw	s6,80(sp)
     1f8:	05712623          	sw	s7,76(sp)
     1fc:	06812423          	sw	s0,104(sp)
     200:	06912223          	sw	s1,100(sp)
     204:	07212023          	sw	s2,96(sp)
     208:	05312e23          	sw	s3,92(sp)
     20c:	05412c23          	sw	s4,88(sp)
     210:	4d5000ef          	jal	ra,ee4 <memcpy>
     214:	0ff00513          	li	a0,255
     218:	00000593          	li	a1,0
     21c:	2c8000ef          	jal	ra,4e4 <neorv32_gpio_port_set>
     220:	0ff00a93          	li	s5,255
     224:	00800b13          	li	s6,8
     228:	00400b93          	li	s7,4
     22c:	00010993          	mv	s3,sp
     230:	0ff00413          	li	s0,255
     234:	00000493          	li	s1,0
     238:	00048513          	mv	a0,s1
     23c:	250000ef          	jal	ra,48c <neorv32_gpio_pin_clr>
     240:	00098a13          	mv	s4,s3
     244:	00400913          	li	s2,4
     248:	00090513          	mv	a0,s2
     24c:	274000ef          	jal	ra,4c0 <neorv32_gpio_pin_get>
     250:	00051e63          	bnez	a0,26c <keyboard+0x94>
     254:	03ca2403          	lw	s0,60(s4)
     258:	01540a63          	beq	s0,s5,26c <keyboard+0x94>
     25c:	00441513          	slli	a0,s0,0x4
     260:	0f057513          	andi	a0,a0,240
     264:	00000593          	li	a1,0
     268:	27c000ef          	jal	ra,4e4 <neorv32_gpio_port_set>
     26c:	00190913          	addi	s2,s2,1
     270:	ff0a0a13          	addi	s4,s4,-16
     274:	fd691ae3          	bne	s2,s6,248 <keyboard+0x70>
     278:	00048513          	mv	a0,s1
     27c:	00148493          	addi	s1,s1,1
     280:	1dc000ef          	jal	ra,45c <neorv32_gpio_pin_set>
     284:	ffc98993          	addi	s3,s3,-4
     288:	fb7498e3          	bne	s1,s7,238 <keyboard+0x60>
     28c:	fb5400e3          	beq	s0,s5,22c <keyboard+0x54>
     290:	00001537          	lui	a0,0x1
     294:	00040593          	mv	a1,s0
     298:	08850513          	addi	a0,a0,136 # 1088 <__etext>
     29c:	1e1000ef          	jal	ra,c7c <neorv32_uart0_printf>
     2a0:	06c12083          	lw	ra,108(sp)
     2a4:	00040513          	mv	a0,s0
     2a8:	06812403          	lw	s0,104(sp)
     2ac:	06412483          	lw	s1,100(sp)
     2b0:	06012903          	lw	s2,96(sp)
     2b4:	05c12983          	lw	s3,92(sp)
     2b8:	05812a03          	lw	s4,88(sp)
     2bc:	05412a83          	lw	s5,84(sp)
     2c0:	05012b03          	lw	s6,80(sp)
     2c4:	04c12b83          	lw	s7,76(sp)
     2c8:	07010113          	addi	sp,sp,112
     2cc:	00008067          	ret

000002d0 <wb_calculadora>:
     2d0:	00001537          	lui	a0,0x1
     2d4:	ff010113          	addi	sp,sp,-16
     2d8:	09c50513          	addi	a0,a0,156 # 109c <__etext+0x14>
     2dc:	00112623          	sw	ra,12(sp)
     2e0:	00912223          	sw	s1,4(sp)
     2e4:	01212023          	sw	s2,0(sp)
     2e8:	00812423          	sw	s0,8(sp)
     2ec:	191000ef          	jal	ra,c7c <neorv32_uart0_printf>
     2f0:	00001537          	lui	a0,0x1
     2f4:	0ec50513          	addi	a0,a0,236 # 10ec <__etext+0x64>
     2f8:	185000ef          	jal	ra,c7c <neorv32_uart0_printf>
     2fc:	00000493          	li	s1,0
     300:	00900913          	li	s2,9
     304:	ed5ff0ef          	jal	ra,1d8 <keyboard>
     308:	00050413          	mv	s0,a0
     30c:	0aa97663          	bgeu	s2,a0,3b8 <wb_calculadora+0xe8>
     310:	00001537          	lui	a0,0x1
     314:	00048593          	mv	a1,s1
     318:	11050513          	addi	a0,a0,272 # 1110 <__etext+0x88>
     31c:	161000ef          	jal	ra,c7c <neorv32_uart0_printf>
     320:	90000937          	lui	s2,0x90000
     324:	00992023          	sw	s1,0(s2) # 90000000 <__ctr0_io_space_begin+0x90000200>
     328:	00001537          	lui	a0,0x1
     32c:	00040593          	mv	a1,s0
     330:	12450513          	addi	a0,a0,292 # 1124 <__etext+0x9c>
     334:	149000ef          	jal	ra,c7c <neorv32_uart0_printf>
     338:	00890913          	addi	s2,s2,8
     33c:	00892023          	sw	s0,0(s2)
     340:	00001537          	lui	a0,0x1
     344:	13450513          	addi	a0,a0,308 # 1134 <__etext+0xac>
     348:	135000ef          	jal	ra,c7c <neorv32_uart0_printf>
     34c:	00000413          	li	s0,0
     350:	00900493          	li	s1,9
     354:	e85ff0ef          	jal	ra,1d8 <keyboard>
     358:	06a4fa63          	bgeu	s1,a0,3cc <wb_calculadora+0xfc>
     35c:	00001537          	lui	a0,0x1
     360:	00040593          	mv	a1,s0
     364:	15450513          	addi	a0,a0,340 # 1154 <__etext+0xcc>
     368:	115000ef          	jal	ra,c7c <neorv32_uart0_printf>
     36c:	900007b7          	lui	a5,0x90000
     370:	00478693          	addi	a3,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     374:	0086a023          	sw	s0,0(a3)
     378:	0007a503          	lw	a0,0(a5)
     37c:	0006a683          	lw	a3,0(a3)
     380:	00878793          	addi	a5,a5,8
     384:	0007a783          	lw	a5,0(a5)
     388:	00c00713          	li	a4,12
     38c:	06e78663          	beq	a5,a4,3f8 <wb_calculadora+0x128>
     390:	04f76863          	bltu	a4,a5,3e0 <wb_calculadora+0x110>
     394:	00a00613          	li	a2,10
     398:	00a68733          	add	a4,a3,a0
     39c:	06c78663          	beq	a5,a2,408 <wb_calculadora+0x138>
     3a0:	00b00613          	li	a2,11
     3a4:	40d50733          	sub	a4,a0,a3
     3a8:	06c78063          	beq	a5,a2,408 <wb_calculadora+0x138>
     3ac:	00001537          	lui	a0,0x1
     3b0:	18450513          	addi	a0,a0,388 # 1184 <__etext+0xfc>
     3b4:	08c0006f          	j	440 <wb_calculadora+0x170>
     3b8:	00249793          	slli	a5,s1,0x2
     3bc:	009787b3          	add	a5,a5,s1
     3c0:	00179793          	slli	a5,a5,0x1
     3c4:	008784b3          	add	s1,a5,s0
     3c8:	f3dff06f          	j	304 <wb_calculadora+0x34>
     3cc:	00241793          	slli	a5,s0,0x2
     3d0:	008787b3          	add	a5,a5,s0
     3d4:	00179793          	slli	a5,a5,0x1
     3d8:	00a78433          	add	s0,a5,a0
     3dc:	f79ff06f          	j	354 <wb_calculadora+0x84>
     3e0:	00d00713          	li	a4,13
     3e4:	fce794e3          	bne	a5,a4,3ac <wb_calculadora+0xdc>
     3e8:	04068863          	beqz	a3,438 <wb_calculadora+0x168>
     3ec:	00068593          	mv	a1,a3
     3f0:	249000ef          	jal	ra,e38 <__hidden___udivsi3>
     3f4:	0100006f          	j	404 <wb_calculadora+0x134>
     3f8:	00050593          	mv	a1,a0
     3fc:	00068513          	mv	a0,a3
     400:	20d000ef          	jal	ra,e0c <__mulsi3>
     404:	00050713          	mv	a4,a0
     408:	900005b7          	lui	a1,0x90000
     40c:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     410:	00e5a023          	sw	a4,0(a1)
     414:	0005a583          	lw	a1,0(a1)
     418:	00812403          	lw	s0,8(sp)
     41c:	00c12083          	lw	ra,12(sp)
     420:	00412483          	lw	s1,4(sp)
     424:	00012903          	lw	s2,0(sp)
     428:	00001537          	lui	a0,0x1
     42c:	1a050513          	addi	a0,a0,416 # 11a0 <__etext+0x118>
     430:	01010113          	addi	sp,sp,16
     434:	0490006f          	j	c7c <neorv32_uart0_printf>
     438:	00001537          	lui	a0,0x1
     43c:	16850513          	addi	a0,a0,360 # 1168 <__etext+0xe0>
     440:	03d000ef          	jal	ra,c7c <neorv32_uart0_printf>
     444:	fff00713          	li	a4,-1
     448:	fc1ff06f          	j	408 <wb_calculadora+0x138>

0000044c <neorv32_gpio_available>:
     44c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     450:	01055513          	srli	a0,a0,0x10
     454:	00157513          	andi	a0,a0,1
     458:	00008067          	ret

0000045c <neorv32_gpio_pin_set>:
     45c:	00100793          	li	a5,1
     460:	01f00713          	li	a4,31
     464:	00a797b3          	sll	a5,a5,a0
     468:	00a74a63          	blt	a4,a0,47c <neorv32_gpio_pin_set+0x20>
     46c:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     470:	00f767b3          	or	a5,a4,a5
     474:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     478:	00008067          	ret
     47c:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     480:	00f767b3          	or	a5,a4,a5
     484:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     488:	00008067          	ret

0000048c <neorv32_gpio_pin_clr>:
     48c:	00100793          	li	a5,1
     490:	00a797b3          	sll	a5,a5,a0
     494:	01f00713          	li	a4,31
     498:	fff7c793          	not	a5,a5
     49c:	00a74a63          	blt	a4,a0,4b0 <neorv32_gpio_pin_clr+0x24>
     4a0:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     4a4:	00f777b3          	and	a5,a4,a5
     4a8:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     4ac:	00008067          	ret
     4b0:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     4b4:	00f777b3          	and	a5,a4,a5
     4b8:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     4bc:	00008067          	ret

000004c0 <neorv32_gpio_pin_get>:
     4c0:	00100793          	li	a5,1
     4c4:	01f00713          	li	a4,31
     4c8:	00a797b3          	sll	a5,a5,a0
     4cc:	00a74863          	blt	a4,a0,4dc <neorv32_gpio_pin_get+0x1c>
     4d0:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     4d4:	00f77533          	and	a0,a4,a5
     4d8:	00008067          	ret
     4dc:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     4e0:	ff5ff06f          	j	4d4 <neorv32_gpio_pin_get+0x14>

000004e4 <neorv32_gpio_port_set>:
     4e4:	fc000793          	li	a5,-64
     4e8:	00a7a423          	sw	a0,8(a5)
     4ec:	00b7a623          	sw	a1,12(a5)
     4f0:	00008067          	ret
     4f4:	0000                	.2byte	0x0
     4f6:	0000                	.2byte	0x0
     4f8:	0000                	.2byte	0x0
     4fa:	0000                	.2byte	0x0
     4fc:	0000                	.2byte	0x0
     4fe:	0000                	.2byte	0x0

00000500 <__neorv32_rte_core>:
     500:	fc010113          	addi	sp,sp,-64
     504:	02112e23          	sw	ra,60(sp)
     508:	02512c23          	sw	t0,56(sp)
     50c:	02612a23          	sw	t1,52(sp)
     510:	02712823          	sw	t2,48(sp)
     514:	02a12623          	sw	a0,44(sp)
     518:	02b12423          	sw	a1,40(sp)
     51c:	02c12223          	sw	a2,36(sp)
     520:	02d12023          	sw	a3,32(sp)
     524:	00e12e23          	sw	a4,28(sp)
     528:	00f12c23          	sw	a5,24(sp)
     52c:	01012a23          	sw	a6,20(sp)
     530:	01112823          	sw	a7,16(sp)
     534:	01c12623          	sw	t3,12(sp)
     538:	01d12423          	sw	t4,8(sp)
     53c:	01e12223          	sw	t5,4(sp)
     540:	01f12023          	sw	t6,0(sp)
     544:	34102773          	csrr	a4,mepc
     548:	34071073          	csrw	mscratch,a4
     54c:	342027f3          	csrr	a5,mcause
     550:	0807c863          	bltz	a5,5e0 <__neorv32_rte_core+0xe0>
     554:	00071683          	lh	a3,0(a4)
     558:	00300593          	li	a1,3
     55c:	0036f693          	andi	a3,a3,3
     560:	00270613          	addi	a2,a4,2
     564:	00b69463          	bne	a3,a1,56c <__neorv32_rte_core+0x6c>
     568:	00470613          	addi	a2,a4,4
     56c:	34161073          	csrw	mepc,a2
     570:	00b00713          	li	a4,11
     574:	04f77a63          	bgeu	a4,a5,5c8 <__neorv32_rte_core+0xc8>
     578:	7b000793          	li	a5,1968
     57c:	000780e7          	jalr	a5
     580:	03c12083          	lw	ra,60(sp)
     584:	03812283          	lw	t0,56(sp)
     588:	03412303          	lw	t1,52(sp)
     58c:	03012383          	lw	t2,48(sp)
     590:	02c12503          	lw	a0,44(sp)
     594:	02812583          	lw	a1,40(sp)
     598:	02412603          	lw	a2,36(sp)
     59c:	02012683          	lw	a3,32(sp)
     5a0:	01c12703          	lw	a4,28(sp)
     5a4:	01812783          	lw	a5,24(sp)
     5a8:	01412803          	lw	a6,20(sp)
     5ac:	01012883          	lw	a7,16(sp)
     5b0:	00c12e03          	lw	t3,12(sp)
     5b4:	00812e83          	lw	t4,8(sp)
     5b8:	00412f03          	lw	t5,4(sp)
     5bc:	00012f83          	lw	t6,0(sp)
     5c0:	04010113          	addi	sp,sp,64
     5c4:	30200073          	mret
     5c8:	00001737          	lui	a4,0x1
     5cc:	00279793          	slli	a5,a5,0x2
     5d0:	22870713          	addi	a4,a4,552 # 1228 <__etext+0x1a0>
     5d4:	00e787b3          	add	a5,a5,a4
     5d8:	0007a783          	lw	a5,0(a5)
     5dc:	00078067          	jr	a5
     5e0:	80000737          	lui	a4,0x80000
     5e4:	ffd74713          	xori	a4,a4,-3
     5e8:	00e787b3          	add	a5,a5,a4
     5ec:	01c00713          	li	a4,28
     5f0:	f8f764e3          	bltu	a4,a5,578 <__neorv32_rte_core+0x78>
     5f4:	00001737          	lui	a4,0x1
     5f8:	00279793          	slli	a5,a5,0x2
     5fc:	25870713          	addi	a4,a4,600 # 1258 <__etext+0x1d0>
     600:	00e787b3          	add	a5,a5,a4
     604:	0007a783          	lw	a5,0(a5)
     608:	00078067          	jr	a5
     60c:	800007b7          	lui	a5,0x80000
     610:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     614:	f69ff06f          	j	57c <__neorv32_rte_core+0x7c>
     618:	800007b7          	lui	a5,0x80000
     61c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     620:	f5dff06f          	j	57c <__neorv32_rte_core+0x7c>
     624:	800007b7          	lui	a5,0x80000
     628:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     62c:	f51ff06f          	j	57c <__neorv32_rte_core+0x7c>
     630:	800007b7          	lui	a5,0x80000
     634:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     638:	f45ff06f          	j	57c <__neorv32_rte_core+0x7c>
     63c:	800007b7          	lui	a5,0x80000
     640:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     644:	f39ff06f          	j	57c <__neorv32_rte_core+0x7c>
     648:	800007b7          	lui	a5,0x80000
     64c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     650:	f2dff06f          	j	57c <__neorv32_rte_core+0x7c>
     654:	800007b7          	lui	a5,0x80000
     658:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     65c:	f21ff06f          	j	57c <__neorv32_rte_core+0x7c>
     660:	800007b7          	lui	a5,0x80000
     664:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     668:	f15ff06f          	j	57c <__neorv32_rte_core+0x7c>
     66c:	800007b7          	lui	a5,0x80000
     670:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     674:	f09ff06f          	j	57c <__neorv32_rte_core+0x7c>
     678:	800007b7          	lui	a5,0x80000
     67c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     680:	efdff06f          	j	57c <__neorv32_rte_core+0x7c>
     684:	800007b7          	lui	a5,0x80000
     688:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     68c:	ef1ff06f          	j	57c <__neorv32_rte_core+0x7c>
     690:	800007b7          	lui	a5,0x80000
     694:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     698:	ee5ff06f          	j	57c <__neorv32_rte_core+0x7c>
     69c:	800007b7          	lui	a5,0x80000
     6a0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     6a4:	ed9ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6a8:	800007b7          	lui	a5,0x80000
     6ac:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     6b0:	ecdff06f          	j	57c <__neorv32_rte_core+0x7c>
     6b4:	800007b7          	lui	a5,0x80000
     6b8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     6bc:	ec1ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6c0:	800007b7          	lui	a5,0x80000
     6c4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     6c8:	eb5ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6cc:	800007b7          	lui	a5,0x80000
     6d0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     6d4:	ea9ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6d8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     6dc:	ea1ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6e0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     6e4:	e99ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6e8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     6ec:	e91ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6f0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     6f4:	e89ff06f          	j	57c <__neorv32_rte_core+0x7c>
     6f8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     6fc:	e81ff06f          	j	57c <__neorv32_rte_core+0x7c>
     700:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     704:	e79ff06f          	j	57c <__neorv32_rte_core+0x7c>
     708:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     70c:	e71ff06f          	j	57c <__neorv32_rte_core+0x7c>
     710:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     714:	e69ff06f          	j	57c <__neorv32_rte_core+0x7c>
     718:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     71c:	e61ff06f          	j	57c <__neorv32_rte_core+0x7c>
     720:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     724:	e59ff06f          	j	57c <__neorv32_rte_core+0x7c>
     728:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     72c:	e51ff06f          	j	57c <__neorv32_rte_core+0x7c>
     730:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     734:	e49ff06f          	j	57c <__neorv32_rte_core+0x7c>
     738:	0000                	.2byte	0x0
     73a:	0000                	.2byte	0x0
     73c:	0000                	.2byte	0x0
     73e:	0000                	.2byte	0x0

00000740 <__neorv32_rte_print_hex_word>:
     740:	fe010113          	addi	sp,sp,-32
     744:	01212823          	sw	s2,16(sp)
     748:	00050913          	mv	s2,a0
     74c:	00001537          	lui	a0,0x1
     750:	00912a23          	sw	s1,20(sp)
     754:	2cc50513          	addi	a0,a0,716 # 12cc <__etext+0x244>
     758:	000014b7          	lui	s1,0x1
     75c:	00812c23          	sw	s0,24(sp)
     760:	01312623          	sw	s3,12(sp)
     764:	00112e23          	sw	ra,28(sp)
     768:	01c00413          	li	s0,28
     76c:	4b8000ef          	jal	ra,c24 <neorv32_uart0_print>
     770:	4c048493          	addi	s1,s1,1216 # 14c0 <hex_symbols.0>
     774:	ffc00993          	li	s3,-4
     778:	008957b3          	srl	a5,s2,s0
     77c:	00f7f793          	andi	a5,a5,15
     780:	00f487b3          	add	a5,s1,a5
     784:	0007c503          	lbu	a0,0(a5)
     788:	ffc40413          	addi	s0,s0,-4
     78c:	480000ef          	jal	ra,c0c <neorv32_uart0_putc>
     790:	ff3414e3          	bne	s0,s3,778 <__neorv32_rte_print_hex_word+0x38>
     794:	01c12083          	lw	ra,28(sp)
     798:	01812403          	lw	s0,24(sp)
     79c:	01412483          	lw	s1,20(sp)
     7a0:	01012903          	lw	s2,16(sp)
     7a4:	00c12983          	lw	s3,12(sp)
     7a8:	02010113          	addi	sp,sp,32
     7ac:	00008067          	ret

000007b0 <__neorv32_rte_debug_exc_handler>:
     7b0:	ff010113          	addi	sp,sp,-16
     7b4:	00112623          	sw	ra,12(sp)
     7b8:	00812423          	sw	s0,8(sp)
     7bc:	00912223          	sw	s1,4(sp)
     7c0:	390000ef          	jal	ra,b50 <neorv32_uart0_available>
     7c4:	1a050e63          	beqz	a0,980 <__neorv32_rte_debug_exc_handler+0x1d0>
     7c8:	00001537          	lui	a0,0x1
     7cc:	2d050513          	addi	a0,a0,720 # 12d0 <__etext+0x248>
     7d0:	454000ef          	jal	ra,c24 <neorv32_uart0_print>
     7d4:	34202473          	csrr	s0,mcause
     7d8:	00900713          	li	a4,9
     7dc:	00f47793          	andi	a5,s0,15
     7e0:	03078493          	addi	s1,a5,48
     7e4:	00f77463          	bgeu	a4,a5,7ec <__neorv32_rte_debug_exc_handler+0x3c>
     7e8:	05778493          	addi	s1,a5,87
     7ec:	00b00793          	li	a5,11
     7f0:	0087ee63          	bltu	a5,s0,80c <__neorv32_rte_debug_exc_handler+0x5c>
     7f4:	00001737          	lui	a4,0x1
     7f8:	00241793          	slli	a5,s0,0x2
     7fc:	49070713          	addi	a4,a4,1168 # 1490 <__etext+0x408>
     800:	00e787b3          	add	a5,a5,a4
     804:	0007a783          	lw	a5,0(a5)
     808:	00078067          	jr	a5
     80c:	800007b7          	lui	a5,0x80000
     810:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     814:	14e40463          	beq	s0,a4,95c <__neorv32_rte_debug_exc_handler+0x1ac>
     818:	02876663          	bltu	a4,s0,844 <__neorv32_rte_debug_exc_handler+0x94>
     81c:	00378713          	addi	a4,a5,3
     820:	12e40263          	beq	s0,a4,944 <__neorv32_rte_debug_exc_handler+0x194>
     824:	00778793          	addi	a5,a5,7
     828:	12f40463          	beq	s0,a5,950 <__neorv32_rte_debug_exc_handler+0x1a0>
     82c:	00001537          	lui	a0,0x1
     830:	43050513          	addi	a0,a0,1072 # 1430 <__etext+0x3a8>
     834:	3f0000ef          	jal	ra,c24 <neorv32_uart0_print>
     838:	00040513          	mv	a0,s0
     83c:	f05ff0ef          	jal	ra,740 <__neorv32_rte_print_hex_word>
     840:	0280006f          	j	868 <__neorv32_rte_debug_exc_handler+0xb8>
     844:	ff07c793          	xori	a5,a5,-16
     848:	00f407b3          	add	a5,s0,a5
     84c:	00f00713          	li	a4,15
     850:	fcf76ee3          	bltu	a4,a5,82c <__neorv32_rte_debug_exc_handler+0x7c>
     854:	00001537          	lui	a0,0x1
     858:	42050513          	addi	a0,a0,1056 # 1420 <__etext+0x398>
     85c:	3c8000ef          	jal	ra,c24 <neorv32_uart0_print>
     860:	00048513          	mv	a0,s1
     864:	3a8000ef          	jal	ra,c0c <neorv32_uart0_putc>
     868:	00001537          	lui	a0,0x1
     86c:	47450513          	addi	a0,a0,1140 # 1474 <__etext+0x3ec>
     870:	3b4000ef          	jal	ra,c24 <neorv32_uart0_print>
     874:	34002573          	csrr	a0,mscratch
     878:	ec9ff0ef          	jal	ra,740 <__neorv32_rte_print_hex_word>
     87c:	00001537          	lui	a0,0x1
     880:	47c50513          	addi	a0,a0,1148 # 147c <__etext+0x3f4>
     884:	3a0000ef          	jal	ra,c24 <neorv32_uart0_print>
     888:	34302573          	csrr	a0,mtval
     88c:	eb5ff0ef          	jal	ra,740 <__neorv32_rte_print_hex_word>
     890:	00812403          	lw	s0,8(sp)
     894:	00c12083          	lw	ra,12(sp)
     898:	00412483          	lw	s1,4(sp)
     89c:	00001537          	lui	a0,0x1
     8a0:	48850513          	addi	a0,a0,1160 # 1488 <__etext+0x400>
     8a4:	01010113          	addi	sp,sp,16
     8a8:	37c0006f          	j	c24 <neorv32_uart0_print>
     8ac:	00001537          	lui	a0,0x1
     8b0:	2d850513          	addi	a0,a0,728 # 12d8 <__etext+0x250>
     8b4:	370000ef          	jal	ra,c24 <neorv32_uart0_print>
     8b8:	fb1ff06f          	j	868 <__neorv32_rte_debug_exc_handler+0xb8>
     8bc:	00001537          	lui	a0,0x1
     8c0:	2f850513          	addi	a0,a0,760 # 12f8 <__etext+0x270>
     8c4:	360000ef          	jal	ra,c24 <neorv32_uart0_print>
     8c8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     8cc:	0a07d463          	bgez	a5,974 <__neorv32_rte_debug_exc_handler+0x1c4>
     8d0:	0017f793          	andi	a5,a5,1
     8d4:	08078a63          	beqz	a5,968 <__neorv32_rte_debug_exc_handler+0x1b8>
     8d8:	00001537          	lui	a0,0x1
     8dc:	44850513          	addi	a0,a0,1096 # 1448 <__etext+0x3c0>
     8e0:	fd5ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     8e4:	00001537          	lui	a0,0x1
     8e8:	31450513          	addi	a0,a0,788 # 1314 <__etext+0x28c>
     8ec:	fc9ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     8f0:	00001537          	lui	a0,0x1
     8f4:	32850513          	addi	a0,a0,808 # 1328 <__etext+0x2a0>
     8f8:	fbdff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     8fc:	00001537          	lui	a0,0x1
     900:	33450513          	addi	a0,a0,820 # 1334 <__etext+0x2ac>
     904:	fb1ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     908:	00001537          	lui	a0,0x1
     90c:	34c50513          	addi	a0,a0,844 # 134c <__etext+0x2c4>
     910:	fb5ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x114>
     914:	00001537          	lui	a0,0x1
     918:	36050513          	addi	a0,a0,864 # 1360 <__etext+0x2d8>
     91c:	f99ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     920:	00001537          	lui	a0,0x1
     924:	37c50513          	addi	a0,a0,892 # 137c <__etext+0x2f4>
     928:	f9dff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x114>
     92c:	00001537          	lui	a0,0x1
     930:	39050513          	addi	a0,a0,912 # 1390 <__etext+0x308>
     934:	f81ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     938:	00001537          	lui	a0,0x1
     93c:	3b050513          	addi	a0,a0,944 # 13b0 <__etext+0x328>
     940:	f75ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     944:	00001537          	lui	a0,0x1
     948:	3d050513          	addi	a0,a0,976 # 13d0 <__etext+0x348>
     94c:	f69ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     950:	00001537          	lui	a0,0x1
     954:	3ec50513          	addi	a0,a0,1004 # 13ec <__etext+0x364>
     958:	f5dff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     95c:	00001537          	lui	a0,0x1
     960:	40450513          	addi	a0,a0,1028 # 1404 <__etext+0x37c>
     964:	f51ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     968:	00001537          	lui	a0,0x1
     96c:	45850513          	addi	a0,a0,1112 # 1458 <__etext+0x3d0>
     970:	f45ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     974:	00001537          	lui	a0,0x1
     978:	46850513          	addi	a0,a0,1128 # 1468 <__etext+0x3e0>
     97c:	f39ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0x104>
     980:	00c12083          	lw	ra,12(sp)
     984:	00812403          	lw	s0,8(sp)
     988:	00412483          	lw	s1,4(sp)
     98c:	01010113          	addi	sp,sp,16
     990:	00008067          	ret

00000994 <neorv32_rte_exception_uninstall>:
     994:	01f00793          	li	a5,31
     998:	02a7e263          	bltu	a5,a0,9bc <neorv32_rte_exception_uninstall+0x28>
     99c:	800007b7          	lui	a5,0x80000
     9a0:	00251513          	slli	a0,a0,0x2
     9a4:	00078793          	mv	a5,a5
     9a8:	00a787b3          	add	a5,a5,a0
     9ac:	7b000713          	li	a4,1968
     9b0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     9b4:	00000513          	li	a0,0
     9b8:	00008067          	ret
     9bc:	00100513          	li	a0,1
     9c0:	00008067          	ret

000009c4 <neorv32_rte_setup>:
     9c4:	ff010113          	addi	sp,sp,-16
     9c8:	00112623          	sw	ra,12(sp)
     9cc:	00812423          	sw	s0,8(sp)
     9d0:	00912223          	sw	s1,4(sp)
     9d4:	50000793          	li	a5,1280
     9d8:	30579073          	csrw	mtvec,a5
     9dc:	00000413          	li	s0,0
     9e0:	01d00493          	li	s1,29
     9e4:	00040513          	mv	a0,s0
     9e8:	00140413          	addi	s0,s0,1
     9ec:	0ff47413          	zext.b	s0,s0
     9f0:	fa5ff0ef          	jal	ra,994 <neorv32_rte_exception_uninstall>
     9f4:	fe9418e3          	bne	s0,s1,9e4 <neorv32_rte_setup+0x20>
     9f8:	00c12083          	lw	ra,12(sp)
     9fc:	00812403          	lw	s0,8(sp)
     a00:	00412483          	lw	s1,4(sp)
     a04:	01010113          	addi	sp,sp,16
     a08:	00008067          	ret

00000a0c <__neorv32_uart_itoa>:
     a0c:	fd010113          	addi	sp,sp,-48
     a10:	02812423          	sw	s0,40(sp)
     a14:	02912223          	sw	s1,36(sp)
     a18:	03212023          	sw	s2,32(sp)
     a1c:	01312e23          	sw	s3,28(sp)
     a20:	01412c23          	sw	s4,24(sp)
     a24:	02112623          	sw	ra,44(sp)
     a28:	01512a23          	sw	s5,20(sp)
     a2c:	00001a37          	lui	s4,0x1
     a30:	00050493          	mv	s1,a0
     a34:	00058413          	mv	s0,a1
     a38:	00058523          	sb	zero,10(a1)
     a3c:	00000993          	li	s3,0
     a40:	00410913          	addi	s2,sp,4
     a44:	4e4a0a13          	addi	s4,s4,1252 # 14e4 <numbers.1>
     a48:	00a00593          	li	a1,10
     a4c:	00048513          	mv	a0,s1
     a50:	430000ef          	jal	ra,e80 <__umodsi3>
     a54:	00aa0533          	add	a0,s4,a0
     a58:	00054783          	lbu	a5,0(a0)
     a5c:	01390ab3          	add	s5,s2,s3
     a60:	00048513          	mv	a0,s1
     a64:	00fa8023          	sb	a5,0(s5)
     a68:	00a00593          	li	a1,10
     a6c:	3cc000ef          	jal	ra,e38 <__hidden___udivsi3>
     a70:	00198993          	addi	s3,s3,1
     a74:	00a00793          	li	a5,10
     a78:	00050493          	mv	s1,a0
     a7c:	fcf996e3          	bne	s3,a5,a48 <__neorv32_uart_itoa+0x3c>
     a80:	00090693          	mv	a3,s2
     a84:	00900713          	li	a4,9
     a88:	03000613          	li	a2,48
     a8c:	0096c583          	lbu	a1,9(a3)
     a90:	00070793          	mv	a5,a4
     a94:	fff70713          	addi	a4,a4,-1
     a98:	01071713          	slli	a4,a4,0x10
     a9c:	01075713          	srli	a4,a4,0x10
     aa0:	00c59a63          	bne	a1,a2,ab4 <__neorv32_uart_itoa+0xa8>
     aa4:	000684a3          	sb	zero,9(a3)
     aa8:	fff68693          	addi	a3,a3,-1
     aac:	fe0710e3          	bnez	a4,a8c <__neorv32_uart_itoa+0x80>
     ab0:	00000793          	li	a5,0
     ab4:	00f907b3          	add	a5,s2,a5
     ab8:	00000713          	li	a4,0
     abc:	0007c683          	lbu	a3,0(a5)
     ac0:	00068c63          	beqz	a3,ad8 <__neorv32_uart_itoa+0xcc>
     ac4:	00170613          	addi	a2,a4,1
     ac8:	00e40733          	add	a4,s0,a4
     acc:	00d70023          	sb	a3,0(a4)
     ad0:	01061713          	slli	a4,a2,0x10
     ad4:	01075713          	srli	a4,a4,0x10
     ad8:	fff78693          	addi	a3,a5,-1
     adc:	02f91863          	bne	s2,a5,b0c <__neorv32_uart_itoa+0x100>
     ae0:	00e40433          	add	s0,s0,a4
     ae4:	00040023          	sb	zero,0(s0)
     ae8:	02c12083          	lw	ra,44(sp)
     aec:	02812403          	lw	s0,40(sp)
     af0:	02412483          	lw	s1,36(sp)
     af4:	02012903          	lw	s2,32(sp)
     af8:	01c12983          	lw	s3,28(sp)
     afc:	01812a03          	lw	s4,24(sp)
     b00:	01412a83          	lw	s5,20(sp)
     b04:	03010113          	addi	sp,sp,48
     b08:	00008067          	ret
     b0c:	00068793          	mv	a5,a3
     b10:	fadff06f          	j	abc <__neorv32_uart_itoa+0xb0>

00000b14 <__neorv32_uart_tohex>:
     b14:	00001637          	lui	a2,0x1
     b18:	00758693          	addi	a3,a1,7
     b1c:	00000713          	li	a4,0
     b20:	4d060613          	addi	a2,a2,1232 # 14d0 <symbols.0>
     b24:	02000813          	li	a6,32
     b28:	00e557b3          	srl	a5,a0,a4
     b2c:	00f7f793          	andi	a5,a5,15
     b30:	00f607b3          	add	a5,a2,a5
     b34:	0007c783          	lbu	a5,0(a5)
     b38:	00470713          	addi	a4,a4,4
     b3c:	fff68693          	addi	a3,a3,-1
     b40:	00f680a3          	sb	a5,1(a3)
     b44:	ff0712e3          	bne	a4,a6,b28 <__neorv32_uart_tohex+0x14>
     b48:	00058423          	sb	zero,8(a1)
     b4c:	00008067          	ret

00000b50 <neorv32_uart0_available>:
     b50:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     b54:	01255513          	srli	a0,a0,0x12
     b58:	00157513          	andi	a0,a0,1
     b5c:	00008067          	ret

00000b60 <neorv32_uart0_setup>:
     b60:	ff010113          	addi	sp,sp,-16
     b64:	00812423          	sw	s0,8(sp)
     b68:	00912223          	sw	s1,4(sp)
     b6c:	00112623          	sw	ra,12(sp)
     b70:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     b74:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     b78:	00058413          	mv	s0,a1
     b7c:	00151593          	slli	a1,a0,0x1
     b80:	00078513          	mv	a0,a5
     b84:	00060493          	mv	s1,a2
     b88:	2b0000ef          	jal	ra,e38 <__hidden___udivsi3>
     b8c:	01051513          	slli	a0,a0,0x10
     b90:	000017b7          	lui	a5,0x1
     b94:	01055513          	srli	a0,a0,0x10
     b98:	00000713          	li	a4,0
     b9c:	ffe78793          	addi	a5,a5,-2 # ffe <memcpy+0x11a>
     ba0:	04a7e463          	bltu	a5,a0,be8 <neorv32_uart0_setup+0x88>
     ba4:	0034f493          	andi	s1,s1,3
     ba8:	01449493          	slli	s1,s1,0x14
     bac:	00347413          	andi	s0,s0,3
     bb0:	fff50793          	addi	a5,a0,-1
     bb4:	0097e7b3          	or	a5,a5,s1
     bb8:	01641413          	slli	s0,s0,0x16
     bbc:	0087e7b3          	or	a5,a5,s0
     bc0:	01871713          	slli	a4,a4,0x18
     bc4:	00c12083          	lw	ra,12(sp)
     bc8:	00812403          	lw	s0,8(sp)
     bcc:	00e7e7b3          	or	a5,a5,a4
     bd0:	10000737          	lui	a4,0x10000
     bd4:	00e7e7b3          	or	a5,a5,a4
     bd8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     bdc:	00412483          	lw	s1,4(sp)
     be0:	01010113          	addi	sp,sp,16
     be4:	00008067          	ret
     be8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeb0e>
     bec:	0fd6f693          	andi	a3,a3,253
     bf0:	00069a63          	bnez	a3,c04 <neorv32_uart0_setup+0xa4>
     bf4:	00355513          	srli	a0,a0,0x3
     bf8:	00170713          	addi	a4,a4,1
     bfc:	0ff77713          	zext.b	a4,a4
     c00:	fa1ff06f          	j	ba0 <neorv32_uart0_setup+0x40>
     c04:	00155513          	srli	a0,a0,0x1
     c08:	ff1ff06f          	j	bf8 <neorv32_uart0_setup+0x98>

00000c0c <neorv32_uart0_putc>:
     c0c:	00040737          	lui	a4,0x40
     c10:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c14:	00e7f7b3          	and	a5,a5,a4
     c18:	fe079ce3          	bnez	a5,c10 <neorv32_uart0_putc+0x4>
     c1c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     c20:	00008067          	ret

00000c24 <neorv32_uart0_print>:
     c24:	ff010113          	addi	sp,sp,-16
     c28:	00812423          	sw	s0,8(sp)
     c2c:	01212023          	sw	s2,0(sp)
     c30:	00112623          	sw	ra,12(sp)
     c34:	00912223          	sw	s1,4(sp)
     c38:	00050413          	mv	s0,a0
     c3c:	00a00913          	li	s2,10
     c40:	00044483          	lbu	s1,0(s0)
     c44:	00140413          	addi	s0,s0,1
     c48:	00049e63          	bnez	s1,c64 <neorv32_uart0_print+0x40>
     c4c:	00c12083          	lw	ra,12(sp)
     c50:	00812403          	lw	s0,8(sp)
     c54:	00412483          	lw	s1,4(sp)
     c58:	00012903          	lw	s2,0(sp)
     c5c:	01010113          	addi	sp,sp,16
     c60:	00008067          	ret
     c64:	01249663          	bne	s1,s2,c70 <neorv32_uart0_print+0x4c>
     c68:	00d00513          	li	a0,13
     c6c:	fa1ff0ef          	jal	ra,c0c <neorv32_uart0_putc>
     c70:	00048513          	mv	a0,s1
     c74:	f99ff0ef          	jal	ra,c0c <neorv32_uart0_putc>
     c78:	fc9ff06f          	j	c40 <neorv32_uart0_print+0x1c>

00000c7c <neorv32_uart0_printf>:
     c7c:	fa010113          	addi	sp,sp,-96
     c80:	04f12a23          	sw	a5,84(sp)
     c84:	04410793          	addi	a5,sp,68
     c88:	02812c23          	sw	s0,56(sp)
     c8c:	03212823          	sw	s2,48(sp)
     c90:	03312623          	sw	s3,44(sp)
     c94:	03412423          	sw	s4,40(sp)
     c98:	03512223          	sw	s5,36(sp)
     c9c:	03612023          	sw	s6,32(sp)
     ca0:	01712e23          	sw	s7,28(sp)
     ca4:	01812c23          	sw	s8,24(sp)
     ca8:	02112e23          	sw	ra,60(sp)
     cac:	02912a23          	sw	s1,52(sp)
     cb0:	00050413          	mv	s0,a0
     cb4:	04b12223          	sw	a1,68(sp)
     cb8:	04c12423          	sw	a2,72(sp)
     cbc:	04d12623          	sw	a3,76(sp)
     cc0:	04e12823          	sw	a4,80(sp)
     cc4:	05012c23          	sw	a6,88(sp)
     cc8:	05112e23          	sw	a7,92(sp)
     ccc:	00f12023          	sw	a5,0(sp)
     cd0:	02500993          	li	s3,37
     cd4:	00a00a13          	li	s4,10
     cd8:	07300913          	li	s2,115
     cdc:	07500a93          	li	s5,117
     ce0:	07800b13          	li	s6,120
     ce4:	06300b93          	li	s7,99
     ce8:	06900c13          	li	s8,105
     cec:	00044483          	lbu	s1,0(s0)
     cf0:	02049a63          	bnez	s1,d24 <neorv32_uart0_printf+0xa8>
     cf4:	03c12083          	lw	ra,60(sp)
     cf8:	03812403          	lw	s0,56(sp)
     cfc:	03412483          	lw	s1,52(sp)
     d00:	03012903          	lw	s2,48(sp)
     d04:	02c12983          	lw	s3,44(sp)
     d08:	02812a03          	lw	s4,40(sp)
     d0c:	02412a83          	lw	s5,36(sp)
     d10:	02012b03          	lw	s6,32(sp)
     d14:	01c12b83          	lw	s7,28(sp)
     d18:	01812c03          	lw	s8,24(sp)
     d1c:	06010113          	addi	sp,sp,96
     d20:	00008067          	ret
     d24:	0d349663          	bne	s1,s3,df0 <neorv32_uart0_printf+0x174>
     d28:	00144483          	lbu	s1,1(s0)
     d2c:	05248263          	beq	s1,s2,d70 <neorv32_uart0_printf+0xf4>
     d30:	00996e63          	bltu	s2,s1,d4c <neorv32_uart0_printf+0xd0>
     d34:	05748c63          	beq	s1,s7,d8c <neorv32_uart0_printf+0x110>
     d38:	07848663          	beq	s1,s8,da4 <neorv32_uart0_printf+0x128>
     d3c:	02500513          	li	a0,37
     d40:	ecdff0ef          	jal	ra,c0c <neorv32_uart0_putc>
     d44:	00048513          	mv	a0,s1
     d48:	0540006f          	j	d9c <neorv32_uart0_printf+0x120>
     d4c:	09548663          	beq	s1,s5,dd8 <neorv32_uart0_printf+0x15c>
     d50:	ff6496e3          	bne	s1,s6,d3c <neorv32_uart0_printf+0xc0>
     d54:	00012783          	lw	a5,0(sp)
     d58:	00410593          	addi	a1,sp,4
     d5c:	0007a503          	lw	a0,0(a5)
     d60:	00478713          	addi	a4,a5,4
     d64:	00e12023          	sw	a4,0(sp)
     d68:	dadff0ef          	jal	ra,b14 <__neorv32_uart_tohex>
     d6c:	0640006f          	j	dd0 <neorv32_uart0_printf+0x154>
     d70:	00012783          	lw	a5,0(sp)
     d74:	0007a503          	lw	a0,0(a5)
     d78:	00478713          	addi	a4,a5,4
     d7c:	00e12023          	sw	a4,0(sp)
     d80:	ea5ff0ef          	jal	ra,c24 <neorv32_uart0_print>
     d84:	00240413          	addi	s0,s0,2
     d88:	f65ff06f          	j	cec <neorv32_uart0_printf+0x70>
     d8c:	00012783          	lw	a5,0(sp)
     d90:	0007c503          	lbu	a0,0(a5)
     d94:	00478713          	addi	a4,a5,4
     d98:	00e12023          	sw	a4,0(sp)
     d9c:	e71ff0ef          	jal	ra,c0c <neorv32_uart0_putc>
     da0:	fe5ff06f          	j	d84 <neorv32_uart0_printf+0x108>
     da4:	00012783          	lw	a5,0(sp)
     da8:	0007a483          	lw	s1,0(a5)
     dac:	00478713          	addi	a4,a5,4
     db0:	00e12023          	sw	a4,0(sp)
     db4:	0004d863          	bgez	s1,dc4 <neorv32_uart0_printf+0x148>
     db8:	02d00513          	li	a0,45
     dbc:	409004b3          	neg	s1,s1
     dc0:	e4dff0ef          	jal	ra,c0c <neorv32_uart0_putc>
     dc4:	00410593          	addi	a1,sp,4
     dc8:	00048513          	mv	a0,s1
     dcc:	c41ff0ef          	jal	ra,a0c <__neorv32_uart_itoa>
     dd0:	00410513          	addi	a0,sp,4
     dd4:	fadff06f          	j	d80 <neorv32_uart0_printf+0x104>
     dd8:	00012783          	lw	a5,0(sp)
     ddc:	00410593          	addi	a1,sp,4
     de0:	00478713          	addi	a4,a5,4
     de4:	0007a503          	lw	a0,0(a5)
     de8:	00e12023          	sw	a4,0(sp)
     dec:	fe1ff06f          	j	dcc <neorv32_uart0_printf+0x150>
     df0:	01449663          	bne	s1,s4,dfc <neorv32_uart0_printf+0x180>
     df4:	00d00513          	li	a0,13
     df8:	e15ff0ef          	jal	ra,c0c <neorv32_uart0_putc>
     dfc:	00048513          	mv	a0,s1
     e00:	00140413          	addi	s0,s0,1
     e04:	e09ff0ef          	jal	ra,c0c <neorv32_uart0_putc>
     e08:	ee5ff06f          	j	cec <neorv32_uart0_printf+0x70>

00000e0c <__mulsi3>:
     e0c:	00050613          	mv	a2,a0
     e10:	00000513          	li	a0,0
     e14:	0015f693          	andi	a3,a1,1
     e18:	00068463          	beqz	a3,e20 <__mulsi3+0x14>
     e1c:	00c50533          	add	a0,a0,a2
     e20:	0015d593          	srli	a1,a1,0x1
     e24:	00161613          	slli	a2,a2,0x1
     e28:	fe0596e3          	bnez	a1,e14 <__mulsi3+0x8>
     e2c:	00008067          	ret

00000e30 <__divsi3>:
     e30:	06054063          	bltz	a0,e90 <__umodsi3+0x10>
     e34:	0605c663          	bltz	a1,ea0 <__umodsi3+0x20>

00000e38 <__hidden___udivsi3>:
     e38:	00058613          	mv	a2,a1
     e3c:	00050593          	mv	a1,a0
     e40:	fff00513          	li	a0,-1
     e44:	02060c63          	beqz	a2,e7c <__hidden___udivsi3+0x44>
     e48:	00100693          	li	a3,1
     e4c:	00b67a63          	bgeu	a2,a1,e60 <__hidden___udivsi3+0x28>
     e50:	00c05863          	blez	a2,e60 <__hidden___udivsi3+0x28>
     e54:	00161613          	slli	a2,a2,0x1
     e58:	00169693          	slli	a3,a3,0x1
     e5c:	feb66ae3          	bltu	a2,a1,e50 <__hidden___udivsi3+0x18>
     e60:	00000513          	li	a0,0
     e64:	00c5e663          	bltu	a1,a2,e70 <__hidden___udivsi3+0x38>
     e68:	40c585b3          	sub	a1,a1,a2
     e6c:	00d56533          	or	a0,a0,a3
     e70:	0016d693          	srli	a3,a3,0x1
     e74:	00165613          	srli	a2,a2,0x1
     e78:	fe0696e3          	bnez	a3,e64 <__hidden___udivsi3+0x2c>
     e7c:	00008067          	ret

00000e80 <__umodsi3>:
     e80:	00008293          	mv	t0,ra
     e84:	fb5ff0ef          	jal	ra,e38 <__hidden___udivsi3>
     e88:	00058513          	mv	a0,a1
     e8c:	00028067          	jr	t0
     e90:	40a00533          	neg	a0,a0
     e94:	00b04863          	bgtz	a1,ea4 <__umodsi3+0x24>
     e98:	40b005b3          	neg	a1,a1
     e9c:	f9dff06f          	j	e38 <__hidden___udivsi3>
     ea0:	40b005b3          	neg	a1,a1
     ea4:	00008293          	mv	t0,ra
     ea8:	f91ff0ef          	jal	ra,e38 <__hidden___udivsi3>
     eac:	40a00533          	neg	a0,a0
     eb0:	00028067          	jr	t0

00000eb4 <__modsi3>:
     eb4:	00008293          	mv	t0,ra
     eb8:	0005ca63          	bltz	a1,ecc <__modsi3+0x18>
     ebc:	00054c63          	bltz	a0,ed4 <__modsi3+0x20>
     ec0:	f79ff0ef          	jal	ra,e38 <__hidden___udivsi3>
     ec4:	00058513          	mv	a0,a1
     ec8:	00028067          	jr	t0
     ecc:	40b005b3          	neg	a1,a1
     ed0:	fe0558e3          	bgez	a0,ec0 <__modsi3+0xc>
     ed4:	40a00533          	neg	a0,a0
     ed8:	f61ff0ef          	jal	ra,e38 <__hidden___udivsi3>
     edc:	40b00533          	neg	a0,a1
     ee0:	00028067          	jr	t0

00000ee4 <memcpy>:
     ee4:	00b547b3          	xor	a5,a0,a1
     ee8:	0037f793          	andi	a5,a5,3
     eec:	00c508b3          	add	a7,a0,a2
     ef0:	06079463          	bnez	a5,f58 <memcpy+0x74>
     ef4:	00300793          	li	a5,3
     ef8:	06c7f063          	bgeu	a5,a2,f58 <memcpy+0x74>
     efc:	00357793          	andi	a5,a0,3
     f00:	00050713          	mv	a4,a0
     f04:	06079a63          	bnez	a5,f78 <memcpy+0x94>
     f08:	ffc8f613          	andi	a2,a7,-4
     f0c:	40e606b3          	sub	a3,a2,a4
     f10:	02000793          	li	a5,32
     f14:	08d7ce63          	blt	a5,a3,fb0 <memcpy+0xcc>
     f18:	00058693          	mv	a3,a1
     f1c:	00070793          	mv	a5,a4
     f20:	02c77863          	bgeu	a4,a2,f50 <memcpy+0x6c>
     f24:	0006a803          	lw	a6,0(a3)
     f28:	00478793          	addi	a5,a5,4
     f2c:	00468693          	addi	a3,a3,4
     f30:	ff07ae23          	sw	a6,-4(a5)
     f34:	fec7e8e3          	bltu	a5,a2,f24 <memcpy+0x40>
     f38:	fff60793          	addi	a5,a2,-1
     f3c:	40e787b3          	sub	a5,a5,a4
     f40:	ffc7f793          	andi	a5,a5,-4
     f44:	00478793          	addi	a5,a5,4
     f48:	00f70733          	add	a4,a4,a5
     f4c:	00f585b3          	add	a1,a1,a5
     f50:	01176863          	bltu	a4,a7,f60 <memcpy+0x7c>
     f54:	00008067          	ret
     f58:	00050713          	mv	a4,a0
     f5c:	05157863          	bgeu	a0,a7,fac <memcpy+0xc8>
     f60:	0005c783          	lbu	a5,0(a1)
     f64:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3eb11>
     f68:	00158593          	addi	a1,a1,1
     f6c:	fef70fa3          	sb	a5,-1(a4)
     f70:	fee898e3          	bne	a7,a4,f60 <memcpy+0x7c>
     f74:	00008067          	ret
     f78:	0005c683          	lbu	a3,0(a1)
     f7c:	00170713          	addi	a4,a4,1
     f80:	00377793          	andi	a5,a4,3
     f84:	fed70fa3          	sb	a3,-1(a4)
     f88:	00158593          	addi	a1,a1,1
     f8c:	f6078ee3          	beqz	a5,f08 <memcpy+0x24>
     f90:	0005c683          	lbu	a3,0(a1)
     f94:	00170713          	addi	a4,a4,1
     f98:	00377793          	andi	a5,a4,3
     f9c:	fed70fa3          	sb	a3,-1(a4)
     fa0:	00158593          	addi	a1,a1,1
     fa4:	fc079ae3          	bnez	a5,f78 <memcpy+0x94>
     fa8:	f61ff06f          	j	f08 <memcpy+0x24>
     fac:	00008067          	ret
     fb0:	ff010113          	addi	sp,sp,-16
     fb4:	00812623          	sw	s0,12(sp)
     fb8:	02000413          	li	s0,32
     fbc:	0005a383          	lw	t2,0(a1)
     fc0:	0045a283          	lw	t0,4(a1)
     fc4:	0085af83          	lw	t6,8(a1)
     fc8:	00c5af03          	lw	t5,12(a1)
     fcc:	0105ae83          	lw	t4,16(a1)
     fd0:	0145ae03          	lw	t3,20(a1)
     fd4:	0185a303          	lw	t1,24(a1)
     fd8:	01c5a803          	lw	a6,28(a1)
     fdc:	0205a683          	lw	a3,32(a1)
     fe0:	02470713          	addi	a4,a4,36
     fe4:	40e607b3          	sub	a5,a2,a4
     fe8:	fc772e23          	sw	t2,-36(a4)
     fec:	fe572023          	sw	t0,-32(a4)
     ff0:	fff72223          	sw	t6,-28(a4)
     ff4:	ffe72423          	sw	t5,-24(a4)
     ff8:	ffd72623          	sw	t4,-20(a4)
     ffc:	ffc72823          	sw	t3,-16(a4)
    1000:	fe672a23          	sw	t1,-12(a4)
    1004:	ff072c23          	sw	a6,-8(a4)
    1008:	fed72e23          	sw	a3,-4(a4)
    100c:	02458593          	addi	a1,a1,36
    1010:	faf446e3          	blt	s0,a5,fbc <memcpy+0xd8>
    1014:	00058693          	mv	a3,a1
    1018:	00070793          	mv	a5,a4
    101c:	02c77863          	bgeu	a4,a2,104c <memcpy+0x168>
    1020:	0006a803          	lw	a6,0(a3)
    1024:	00478793          	addi	a5,a5,4
    1028:	00468693          	addi	a3,a3,4
    102c:	ff07ae23          	sw	a6,-4(a5)
    1030:	fec7e8e3          	bltu	a5,a2,1020 <memcpy+0x13c>
    1034:	fff60793          	addi	a5,a2,-1
    1038:	40e787b3          	sub	a5,a5,a4
    103c:	ffc7f793          	andi	a5,a5,-4
    1040:	00478793          	addi	a5,a5,4
    1044:	00f70733          	add	a4,a4,a5
    1048:	00f585b3          	add	a1,a1,a5
    104c:	01176863          	bltu	a4,a7,105c <memcpy+0x178>
    1050:	00c12403          	lw	s0,12(sp)
    1054:	01010113          	addi	sp,sp,16
    1058:	00008067          	ret
    105c:	0005c783          	lbu	a5,0(a1)
    1060:	00170713          	addi	a4,a4,1
    1064:	00158593          	addi	a1,a1,1
    1068:	fef70fa3          	sb	a5,-1(a4)
    106c:	fee882e3          	beq	a7,a4,1050 <memcpy+0x16c>
    1070:	0005c783          	lbu	a5,0(a1)
    1074:	00170713          	addi	a4,a4,1
    1078:	00158593          	addi	a1,a1,1
    107c:	fef70fa3          	sb	a5,-1(a4)
    1080:	fce89ee3          	bne	a7,a4,105c <memcpy+0x178>
    1084:	fcdff06f          	j	1050 <memcpy+0x16c>
