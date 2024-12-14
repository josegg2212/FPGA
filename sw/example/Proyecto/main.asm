
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
      e0:	33858593          	addi	a1,a1,824 # 1414 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x36ec>
     194:	00112623          	sw	ra,12(sp)
     198:	179000ef          	jal	ra,b10 <neorv32_uart0_setup>
     19c:	268000ef          	jal	ra,404 <neorv32_gpio_available>
     1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
     1a4:	7d0000ef          	jal	ra,974 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	0f850513          	addi	a0,a0,248 # 10f8 <__etext+0xc0>
     1b0:	225000ef          	jal	ra,bd4 <neorv32_uart0_print>
     1b4:	11c000ef          	jal	ra,2d0 <wb_calculadora>
     1b8:	ffdff06f          	j	1b4 <main+0x34>
     1bc:	00001537          	lui	a0,0x1
     1c0:	0d450513          	addi	a0,a0,212 # 10d4 <__etext+0x9c>
     1c4:	211000ef          	jal	ra,bd4 <neorv32_uart0_print>
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00100513          	li	a0,1
     1d0:	01010113          	addi	sp,sp,16
     1d4:	00008067          	ret

000001d8 <keyboard>:
     1d8:	f9010113          	addi	sp,sp,-112
     1dc:	000015b7          	lui	a1,0x1
     1e0:	04000613          	li	a2,64
     1e4:	10c58593          	addi	a1,a1,268 # 110c <__etext+0xd4>
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
     210:	485000ef          	jal	ra,e94 <memcpy>
     214:	0ff00513          	li	a0,255
     218:	00000593          	li	a1,0
     21c:	280000ef          	jal	ra,49c <neorv32_gpio_port_set>
     220:	0ff00a93          	li	s5,255
     224:	00800b13          	li	s6,8
     228:	00400b93          	li	s7,4
     22c:	00010993          	mv	s3,sp
     230:	0ff00413          	li	s0,255
     234:	00000493          	li	s1,0
     238:	00048513          	mv	a0,s1
     23c:	208000ef          	jal	ra,444 <neorv32_gpio_pin_clr>
     240:	00098a13          	mv	s4,s3
     244:	00400913          	li	s2,4
     248:	00090513          	mv	a0,s2
     24c:	22c000ef          	jal	ra,478 <neorv32_gpio_pin_get>
     250:	00051e63          	bnez	a0,26c <keyboard+0x94>
     254:	03ca2403          	lw	s0,60(s4)
     258:	01540a63          	beq	s0,s5,26c <keyboard+0x94>
     25c:	00441513          	slli	a0,s0,0x4
     260:	0f057513          	andi	a0,a0,240
     264:	00000593          	li	a1,0
     268:	234000ef          	jal	ra,49c <neorv32_gpio_port_set>
     26c:	00190913          	addi	s2,s2,1
     270:	ff0a0a13          	addi	s4,s4,-16
     274:	fd691ae3          	bne	s2,s6,248 <keyboard+0x70>
     278:	00048513          	mv	a0,s1
     27c:	00148493          	addi	s1,s1,1
     280:	194000ef          	jal	ra,414 <neorv32_gpio_pin_set>
     284:	ffc98993          	addi	s3,s3,-4
     288:	fb7498e3          	bne	s1,s7,238 <keyboard+0x60>
     28c:	fb5400e3          	beq	s0,s5,22c <keyboard+0x54>
     290:	00001537          	lui	a0,0x1
     294:	00040593          	mv	a1,s0
     298:	03850513          	addi	a0,a0,56 # 1038 <__etext>
     29c:	191000ef          	jal	ra,c2c <neorv32_uart0_printf>
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
     2d8:	04c50513          	addi	a0,a0,76 # 104c <__etext+0x14>
     2dc:	00812423          	sw	s0,8(sp)
     2e0:	00912223          	sw	s1,4(sp)
     2e4:	00112623          	sw	ra,12(sp)
     2e8:	00000413          	li	s0,0
     2ec:	141000ef          	jal	ra,c2c <neorv32_uart0_printf>
     2f0:	00900493          	li	s1,9
     2f4:	ee5ff0ef          	jal	ra,1d8 <keyboard>
     2f8:	06a4fe63          	bgeu	s1,a0,374 <wb_calculadora+0xa4>
     2fc:	900007b7          	lui	a5,0x90000
     300:	0087a023          	sw	s0,0(a5) # 90000000 <__ctr0_io_space_begin+0x90000200>
     304:	00878793          	addi	a5,a5,8
     308:	00a7a023          	sw	a0,0(a5)
     30c:	00001537          	lui	a0,0x1
     310:	06c50513          	addi	a0,a0,108 # 106c <__etext+0x34>
     314:	119000ef          	jal	ra,c2c <neorv32_uart0_printf>
     318:	00000413          	li	s0,0
     31c:	00900493          	li	s1,9
     320:	eb9ff0ef          	jal	ra,1d8 <keyboard>
     324:	06a4f263          	bgeu	s1,a0,388 <wb_calculadora+0xb8>
     328:	900007b7          	lui	a5,0x90000
     32c:	00478693          	addi	a3,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     330:	0086a023          	sw	s0,0(a3)
     334:	0007a503          	lw	a0,0(a5)
     338:	0006a683          	lw	a3,0(a3)
     33c:	00878793          	addi	a5,a5,8
     340:	0007a783          	lw	a5,0(a5)
     344:	00c00713          	li	a4,12
     348:	06e78663          	beq	a5,a4,3b4 <wb_calculadora+0xe4>
     34c:	04f76863          	bltu	a4,a5,39c <wb_calculadora+0xcc>
     350:	00a00613          	li	a2,10
     354:	00a68733          	add	a4,a3,a0
     358:	06c78663          	beq	a5,a2,3c4 <wb_calculadora+0xf4>
     35c:	00b00613          	li	a2,11
     360:	40d50733          	sub	a4,a0,a3
     364:	06c78063          	beq	a5,a2,3c4 <wb_calculadora+0xf4>
     368:	00001537          	lui	a0,0x1
     36c:	0a850513          	addi	a0,a0,168 # 10a8 <__etext+0x70>
     370:	0880006f          	j	3f8 <wb_calculadora+0x128>
     374:	00241793          	slli	a5,s0,0x2
     378:	008787b3          	add	a5,a5,s0
     37c:	00179793          	slli	a5,a5,0x1
     380:	00a78433          	add	s0,a5,a0
     384:	f71ff06f          	j	2f4 <wb_calculadora+0x24>
     388:	00241793          	slli	a5,s0,0x2
     38c:	008787b3          	add	a5,a5,s0
     390:	00179793          	slli	a5,a5,0x1
     394:	00a78433          	add	s0,a5,a0
     398:	f89ff06f          	j	320 <wb_calculadora+0x50>
     39c:	00d00713          	li	a4,13
     3a0:	fce794e3          	bne	a5,a4,368 <wb_calculadora+0x98>
     3a4:	04068663          	beqz	a3,3f0 <wb_calculadora+0x120>
     3a8:	00068593          	mv	a1,a3
     3ac:	23d000ef          	jal	ra,de8 <__hidden___udivsi3>
     3b0:	0100006f          	j	3c0 <wb_calculadora+0xf0>
     3b4:	00050593          	mv	a1,a0
     3b8:	00068513          	mv	a0,a3
     3bc:	201000ef          	jal	ra,dbc <__mulsi3>
     3c0:	00050713          	mv	a4,a0
     3c4:	900005b7          	lui	a1,0x90000
     3c8:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     3cc:	00e5a023          	sw	a4,0(a1)
     3d0:	0005a583          	lw	a1,0(a1)
     3d4:	00812403          	lw	s0,8(sp)
     3d8:	00c12083          	lw	ra,12(sp)
     3dc:	00412483          	lw	s1,4(sp)
     3e0:	00001537          	lui	a0,0x1
     3e4:	0c450513          	addi	a0,a0,196 # 10c4 <__etext+0x8c>
     3e8:	01010113          	addi	sp,sp,16
     3ec:	0410006f          	j	c2c <neorv32_uart0_printf>
     3f0:	00001537          	lui	a0,0x1
     3f4:	08c50513          	addi	a0,a0,140 # 108c <__etext+0x54>
     3f8:	035000ef          	jal	ra,c2c <neorv32_uart0_printf>
     3fc:	fff00713          	li	a4,-1
     400:	fc5ff06f          	j	3c4 <wb_calculadora+0xf4>

00000404 <neorv32_gpio_available>:
     404:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     408:	01055513          	srli	a0,a0,0x10
     40c:	00157513          	andi	a0,a0,1
     410:	00008067          	ret

00000414 <neorv32_gpio_pin_set>:
     414:	00100793          	li	a5,1
     418:	01f00713          	li	a4,31
     41c:	00a797b3          	sll	a5,a5,a0
     420:	00a74a63          	blt	a4,a0,434 <neorv32_gpio_pin_set+0x20>
     424:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     428:	00f767b3          	or	a5,a4,a5
     42c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     430:	00008067          	ret
     434:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     438:	00f767b3          	or	a5,a4,a5
     43c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     440:	00008067          	ret

00000444 <neorv32_gpio_pin_clr>:
     444:	00100793          	li	a5,1
     448:	00a797b3          	sll	a5,a5,a0
     44c:	01f00713          	li	a4,31
     450:	fff7c793          	not	a5,a5
     454:	00a74a63          	blt	a4,a0,468 <neorv32_gpio_pin_clr+0x24>
     458:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     45c:	00f777b3          	and	a5,a4,a5
     460:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     464:	00008067          	ret
     468:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     46c:	00f777b3          	and	a5,a4,a5
     470:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     474:	00008067          	ret

00000478 <neorv32_gpio_pin_get>:
     478:	00100793          	li	a5,1
     47c:	01f00713          	li	a4,31
     480:	00a797b3          	sll	a5,a5,a0
     484:	00a74863          	blt	a4,a0,494 <neorv32_gpio_pin_get+0x1c>
     488:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     48c:	00f77533          	and	a0,a4,a5
     490:	00008067          	ret
     494:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     498:	ff5ff06f          	j	48c <neorv32_gpio_pin_get+0x14>

0000049c <neorv32_gpio_port_set>:
     49c:	fc000793          	li	a5,-64
     4a0:	00a7a423          	sw	a0,8(a5)
     4a4:	00b7a623          	sw	a1,12(a5)
     4a8:	00008067          	ret
     4ac:	0000                	.2byte	0x0
     4ae:	0000                	.2byte	0x0

000004b0 <__neorv32_rte_core>:
     4b0:	fc010113          	addi	sp,sp,-64
     4b4:	02112e23          	sw	ra,60(sp)
     4b8:	02512c23          	sw	t0,56(sp)
     4bc:	02612a23          	sw	t1,52(sp)
     4c0:	02712823          	sw	t2,48(sp)
     4c4:	02a12623          	sw	a0,44(sp)
     4c8:	02b12423          	sw	a1,40(sp)
     4cc:	02c12223          	sw	a2,36(sp)
     4d0:	02d12023          	sw	a3,32(sp)
     4d4:	00e12e23          	sw	a4,28(sp)
     4d8:	00f12c23          	sw	a5,24(sp)
     4dc:	01012a23          	sw	a6,20(sp)
     4e0:	01112823          	sw	a7,16(sp)
     4e4:	01c12623          	sw	t3,12(sp)
     4e8:	01d12423          	sw	t4,8(sp)
     4ec:	01e12223          	sw	t5,4(sp)
     4f0:	01f12023          	sw	t6,0(sp)
     4f4:	34102773          	csrr	a4,mepc
     4f8:	34071073          	csrw	mscratch,a4
     4fc:	342027f3          	csrr	a5,mcause
     500:	0807c863          	bltz	a5,590 <__neorv32_rte_core+0xe0>
     504:	00071683          	lh	a3,0(a4)
     508:	00300593          	li	a1,3
     50c:	0036f693          	andi	a3,a3,3
     510:	00270613          	addi	a2,a4,2
     514:	00b69463          	bne	a3,a1,51c <__neorv32_rte_core+0x6c>
     518:	00470613          	addi	a2,a4,4
     51c:	34161073          	csrw	mepc,a2
     520:	00b00713          	li	a4,11
     524:	04f77a63          	bgeu	a4,a5,578 <__neorv32_rte_core+0xc8>
     528:	76000793          	li	a5,1888
     52c:	000780e7          	jalr	a5
     530:	03c12083          	lw	ra,60(sp)
     534:	03812283          	lw	t0,56(sp)
     538:	03412303          	lw	t1,52(sp)
     53c:	03012383          	lw	t2,48(sp)
     540:	02c12503          	lw	a0,44(sp)
     544:	02812583          	lw	a1,40(sp)
     548:	02412603          	lw	a2,36(sp)
     54c:	02012683          	lw	a3,32(sp)
     550:	01c12703          	lw	a4,28(sp)
     554:	01812783          	lw	a5,24(sp)
     558:	01412803          	lw	a6,20(sp)
     55c:	01012883          	lw	a7,16(sp)
     560:	00c12e03          	lw	t3,12(sp)
     564:	00812e83          	lw	t4,8(sp)
     568:	00412f03          	lw	t5,4(sp)
     56c:	00012f83          	lw	t6,0(sp)
     570:	04010113          	addi	sp,sp,64
     574:	30200073          	mret
     578:	00001737          	lui	a4,0x1
     57c:	00279793          	slli	a5,a5,0x2
     580:	14c70713          	addi	a4,a4,332 # 114c <__etext+0x114>
     584:	00e787b3          	add	a5,a5,a4
     588:	0007a783          	lw	a5,0(a5)
     58c:	00078067          	jr	a5
     590:	80000737          	lui	a4,0x80000
     594:	ffd74713          	xori	a4,a4,-3
     598:	00e787b3          	add	a5,a5,a4
     59c:	01c00713          	li	a4,28
     5a0:	f8f764e3          	bltu	a4,a5,528 <__neorv32_rte_core+0x78>
     5a4:	00001737          	lui	a4,0x1
     5a8:	00279793          	slli	a5,a5,0x2
     5ac:	17c70713          	addi	a4,a4,380 # 117c <__etext+0x144>
     5b0:	00e787b3          	add	a5,a5,a4
     5b4:	0007a783          	lw	a5,0(a5)
     5b8:	00078067          	jr	a5
     5bc:	800007b7          	lui	a5,0x80000
     5c0:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     5c4:	f69ff06f          	j	52c <__neorv32_rte_core+0x7c>
     5c8:	800007b7          	lui	a5,0x80000
     5cc:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     5d0:	f5dff06f          	j	52c <__neorv32_rte_core+0x7c>
     5d4:	800007b7          	lui	a5,0x80000
     5d8:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     5dc:	f51ff06f          	j	52c <__neorv32_rte_core+0x7c>
     5e0:	800007b7          	lui	a5,0x80000
     5e4:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     5e8:	f45ff06f          	j	52c <__neorv32_rte_core+0x7c>
     5ec:	800007b7          	lui	a5,0x80000
     5f0:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     5f4:	f39ff06f          	j	52c <__neorv32_rte_core+0x7c>
     5f8:	800007b7          	lui	a5,0x80000
     5fc:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     600:	f2dff06f          	j	52c <__neorv32_rte_core+0x7c>
     604:	800007b7          	lui	a5,0x80000
     608:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     60c:	f21ff06f          	j	52c <__neorv32_rte_core+0x7c>
     610:	800007b7          	lui	a5,0x80000
     614:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     618:	f15ff06f          	j	52c <__neorv32_rte_core+0x7c>
     61c:	800007b7          	lui	a5,0x80000
     620:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     624:	f09ff06f          	j	52c <__neorv32_rte_core+0x7c>
     628:	800007b7          	lui	a5,0x80000
     62c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     630:	efdff06f          	j	52c <__neorv32_rte_core+0x7c>
     634:	800007b7          	lui	a5,0x80000
     638:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     63c:	ef1ff06f          	j	52c <__neorv32_rte_core+0x7c>
     640:	800007b7          	lui	a5,0x80000
     644:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     648:	ee5ff06f          	j	52c <__neorv32_rte_core+0x7c>
     64c:	800007b7          	lui	a5,0x80000
     650:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     654:	ed9ff06f          	j	52c <__neorv32_rte_core+0x7c>
     658:	800007b7          	lui	a5,0x80000
     65c:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     660:	ecdff06f          	j	52c <__neorv32_rte_core+0x7c>
     664:	800007b7          	lui	a5,0x80000
     668:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     66c:	ec1ff06f          	j	52c <__neorv32_rte_core+0x7c>
     670:	800007b7          	lui	a5,0x80000
     674:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     678:	eb5ff06f          	j	52c <__neorv32_rte_core+0x7c>
     67c:	800007b7          	lui	a5,0x80000
     680:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     684:	ea9ff06f          	j	52c <__neorv32_rte_core+0x7c>
     688:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     68c:	ea1ff06f          	j	52c <__neorv32_rte_core+0x7c>
     690:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     694:	e99ff06f          	j	52c <__neorv32_rte_core+0x7c>
     698:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     69c:	e91ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6a0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     6a4:	e89ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6a8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     6ac:	e81ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6b0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     6b4:	e79ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6b8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     6bc:	e71ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6c0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     6c4:	e69ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6c8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     6cc:	e61ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6d0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     6d4:	e59ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6d8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     6dc:	e51ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6e0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     6e4:	e49ff06f          	j	52c <__neorv32_rte_core+0x7c>
     6e8:	0000                	.2byte	0x0
     6ea:	0000                	.2byte	0x0
     6ec:	0000                	.2byte	0x0
     6ee:	0000                	.2byte	0x0

000006f0 <__neorv32_rte_print_hex_word>:
     6f0:	fe010113          	addi	sp,sp,-32
     6f4:	01212823          	sw	s2,16(sp)
     6f8:	00050913          	mv	s2,a0
     6fc:	00001537          	lui	a0,0x1
     700:	00912a23          	sw	s1,20(sp)
     704:	1f050513          	addi	a0,a0,496 # 11f0 <__etext+0x1b8>
     708:	000014b7          	lui	s1,0x1
     70c:	00812c23          	sw	s0,24(sp)
     710:	01312623          	sw	s3,12(sp)
     714:	00112e23          	sw	ra,28(sp)
     718:	01c00413          	li	s0,28
     71c:	4b8000ef          	jal	ra,bd4 <neorv32_uart0_print>
     720:	3e448493          	addi	s1,s1,996 # 13e4 <hex_symbols.0>
     724:	ffc00993          	li	s3,-4
     728:	008957b3          	srl	a5,s2,s0
     72c:	00f7f793          	andi	a5,a5,15
     730:	00f487b3          	add	a5,s1,a5
     734:	0007c503          	lbu	a0,0(a5)
     738:	ffc40413          	addi	s0,s0,-4
     73c:	480000ef          	jal	ra,bbc <neorv32_uart0_putc>
     740:	ff3414e3          	bne	s0,s3,728 <__neorv32_rte_print_hex_word+0x38>
     744:	01c12083          	lw	ra,28(sp)
     748:	01812403          	lw	s0,24(sp)
     74c:	01412483          	lw	s1,20(sp)
     750:	01012903          	lw	s2,16(sp)
     754:	00c12983          	lw	s3,12(sp)
     758:	02010113          	addi	sp,sp,32
     75c:	00008067          	ret

00000760 <__neorv32_rte_debug_exc_handler>:
     760:	ff010113          	addi	sp,sp,-16
     764:	00112623          	sw	ra,12(sp)
     768:	00812423          	sw	s0,8(sp)
     76c:	00912223          	sw	s1,4(sp)
     770:	390000ef          	jal	ra,b00 <neorv32_uart0_available>
     774:	1a050e63          	beqz	a0,930 <__neorv32_rte_debug_exc_handler+0x1d0>
     778:	00001537          	lui	a0,0x1
     77c:	1f450513          	addi	a0,a0,500 # 11f4 <__etext+0x1bc>
     780:	454000ef          	jal	ra,bd4 <neorv32_uart0_print>
     784:	34202473          	csrr	s0,mcause
     788:	00900713          	li	a4,9
     78c:	00f47793          	andi	a5,s0,15
     790:	03078493          	addi	s1,a5,48
     794:	00f77463          	bgeu	a4,a5,79c <__neorv32_rte_debug_exc_handler+0x3c>
     798:	05778493          	addi	s1,a5,87
     79c:	00b00793          	li	a5,11
     7a0:	0087ee63          	bltu	a5,s0,7bc <__neorv32_rte_debug_exc_handler+0x5c>
     7a4:	00001737          	lui	a4,0x1
     7a8:	00241793          	slli	a5,s0,0x2
     7ac:	3b470713          	addi	a4,a4,948 # 13b4 <__etext+0x37c>
     7b0:	00e787b3          	add	a5,a5,a4
     7b4:	0007a783          	lw	a5,0(a5)
     7b8:	00078067          	jr	a5
     7bc:	800007b7          	lui	a5,0x80000
     7c0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     7c4:	14e40463          	beq	s0,a4,90c <__neorv32_rte_debug_exc_handler+0x1ac>
     7c8:	02876663          	bltu	a4,s0,7f4 <__neorv32_rte_debug_exc_handler+0x94>
     7cc:	00378713          	addi	a4,a5,3
     7d0:	12e40263          	beq	s0,a4,8f4 <__neorv32_rte_debug_exc_handler+0x194>
     7d4:	00778793          	addi	a5,a5,7
     7d8:	12f40463          	beq	s0,a5,900 <__neorv32_rte_debug_exc_handler+0x1a0>
     7dc:	00001537          	lui	a0,0x1
     7e0:	35450513          	addi	a0,a0,852 # 1354 <__etext+0x31c>
     7e4:	3f0000ef          	jal	ra,bd4 <neorv32_uart0_print>
     7e8:	00040513          	mv	a0,s0
     7ec:	f05ff0ef          	jal	ra,6f0 <__neorv32_rte_print_hex_word>
     7f0:	0280006f          	j	818 <__neorv32_rte_debug_exc_handler+0xb8>
     7f4:	ff07c793          	xori	a5,a5,-16
     7f8:	00f407b3          	add	a5,s0,a5
     7fc:	00f00713          	li	a4,15
     800:	fcf76ee3          	bltu	a4,a5,7dc <__neorv32_rte_debug_exc_handler+0x7c>
     804:	00001537          	lui	a0,0x1
     808:	34450513          	addi	a0,a0,836 # 1344 <__etext+0x30c>
     80c:	3c8000ef          	jal	ra,bd4 <neorv32_uart0_print>
     810:	00048513          	mv	a0,s1
     814:	3a8000ef          	jal	ra,bbc <neorv32_uart0_putc>
     818:	00001537          	lui	a0,0x1
     81c:	39850513          	addi	a0,a0,920 # 1398 <__etext+0x360>
     820:	3b4000ef          	jal	ra,bd4 <neorv32_uart0_print>
     824:	34002573          	csrr	a0,mscratch
     828:	ec9ff0ef          	jal	ra,6f0 <__neorv32_rte_print_hex_word>
     82c:	00001537          	lui	a0,0x1
     830:	3a050513          	addi	a0,a0,928 # 13a0 <__etext+0x368>
     834:	3a0000ef          	jal	ra,bd4 <neorv32_uart0_print>
     838:	34302573          	csrr	a0,mtval
     83c:	eb5ff0ef          	jal	ra,6f0 <__neorv32_rte_print_hex_word>
     840:	00812403          	lw	s0,8(sp)
     844:	00c12083          	lw	ra,12(sp)
     848:	00412483          	lw	s1,4(sp)
     84c:	00001537          	lui	a0,0x1
     850:	3ac50513          	addi	a0,a0,940 # 13ac <__etext+0x374>
     854:	01010113          	addi	sp,sp,16
     858:	37c0006f          	j	bd4 <neorv32_uart0_print>
     85c:	00001537          	lui	a0,0x1
     860:	1fc50513          	addi	a0,a0,508 # 11fc <__etext+0x1c4>
     864:	370000ef          	jal	ra,bd4 <neorv32_uart0_print>
     868:	fb1ff06f          	j	818 <__neorv32_rte_debug_exc_handler+0xb8>
     86c:	00001537          	lui	a0,0x1
     870:	21c50513          	addi	a0,a0,540 # 121c <__etext+0x1e4>
     874:	360000ef          	jal	ra,bd4 <neorv32_uart0_print>
     878:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     87c:	0a07d463          	bgez	a5,924 <__neorv32_rte_debug_exc_handler+0x1c4>
     880:	0017f793          	andi	a5,a5,1
     884:	08078a63          	beqz	a5,918 <__neorv32_rte_debug_exc_handler+0x1b8>
     888:	00001537          	lui	a0,0x1
     88c:	36c50513          	addi	a0,a0,876 # 136c <__etext+0x334>
     890:	fd5ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     894:	00001537          	lui	a0,0x1
     898:	23850513          	addi	a0,a0,568 # 1238 <__etext+0x200>
     89c:	fc9ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     8a0:	00001537          	lui	a0,0x1
     8a4:	24c50513          	addi	a0,a0,588 # 124c <__etext+0x214>
     8a8:	fbdff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     8ac:	00001537          	lui	a0,0x1
     8b0:	25850513          	addi	a0,a0,600 # 1258 <__etext+0x220>
     8b4:	fb1ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     8b8:	00001537          	lui	a0,0x1
     8bc:	27050513          	addi	a0,a0,624 # 1270 <__etext+0x238>
     8c0:	fb5ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x114>
     8c4:	00001537          	lui	a0,0x1
     8c8:	28450513          	addi	a0,a0,644 # 1284 <__etext+0x24c>
     8cc:	f99ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     8d0:	00001537          	lui	a0,0x1
     8d4:	2a050513          	addi	a0,a0,672 # 12a0 <__etext+0x268>
     8d8:	f9dff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x114>
     8dc:	00001537          	lui	a0,0x1
     8e0:	2b450513          	addi	a0,a0,692 # 12b4 <__etext+0x27c>
     8e4:	f81ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     8e8:	00001537          	lui	a0,0x1
     8ec:	2d450513          	addi	a0,a0,724 # 12d4 <__etext+0x29c>
     8f0:	f75ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     8f4:	00001537          	lui	a0,0x1
     8f8:	2f450513          	addi	a0,a0,756 # 12f4 <__etext+0x2bc>
     8fc:	f69ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     900:	00001537          	lui	a0,0x1
     904:	31050513          	addi	a0,a0,784 # 1310 <__etext+0x2d8>
     908:	f5dff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     90c:	00001537          	lui	a0,0x1
     910:	32850513          	addi	a0,a0,808 # 1328 <__etext+0x2f0>
     914:	f51ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     918:	00001537          	lui	a0,0x1
     91c:	37c50513          	addi	a0,a0,892 # 137c <__etext+0x344>
     920:	f45ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     924:	00001537          	lui	a0,0x1
     928:	38c50513          	addi	a0,a0,908 # 138c <__etext+0x354>
     92c:	f39ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x104>
     930:	00c12083          	lw	ra,12(sp)
     934:	00812403          	lw	s0,8(sp)
     938:	00412483          	lw	s1,4(sp)
     93c:	01010113          	addi	sp,sp,16
     940:	00008067          	ret

00000944 <neorv32_rte_exception_uninstall>:
     944:	01f00793          	li	a5,31
     948:	02a7e263          	bltu	a5,a0,96c <neorv32_rte_exception_uninstall+0x28>
     94c:	800007b7          	lui	a5,0x80000
     950:	00251513          	slli	a0,a0,0x2
     954:	00078793          	mv	a5,a5
     958:	00a787b3          	add	a5,a5,a0
     95c:	76000713          	li	a4,1888
     960:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     964:	00000513          	li	a0,0
     968:	00008067          	ret
     96c:	00100513          	li	a0,1
     970:	00008067          	ret

00000974 <neorv32_rte_setup>:
     974:	ff010113          	addi	sp,sp,-16
     978:	00112623          	sw	ra,12(sp)
     97c:	00812423          	sw	s0,8(sp)
     980:	00912223          	sw	s1,4(sp)
     984:	4b000793          	li	a5,1200
     988:	30579073          	csrw	mtvec,a5
     98c:	00000413          	li	s0,0
     990:	01d00493          	li	s1,29
     994:	00040513          	mv	a0,s0
     998:	00140413          	addi	s0,s0,1
     99c:	0ff47413          	zext.b	s0,s0
     9a0:	fa5ff0ef          	jal	ra,944 <neorv32_rte_exception_uninstall>
     9a4:	fe9418e3          	bne	s0,s1,994 <neorv32_rte_setup+0x20>
     9a8:	00c12083          	lw	ra,12(sp)
     9ac:	00812403          	lw	s0,8(sp)
     9b0:	00412483          	lw	s1,4(sp)
     9b4:	01010113          	addi	sp,sp,16
     9b8:	00008067          	ret

000009bc <__neorv32_uart_itoa>:
     9bc:	fd010113          	addi	sp,sp,-48
     9c0:	02812423          	sw	s0,40(sp)
     9c4:	02912223          	sw	s1,36(sp)
     9c8:	03212023          	sw	s2,32(sp)
     9cc:	01312e23          	sw	s3,28(sp)
     9d0:	01412c23          	sw	s4,24(sp)
     9d4:	02112623          	sw	ra,44(sp)
     9d8:	01512a23          	sw	s5,20(sp)
     9dc:	00001a37          	lui	s4,0x1
     9e0:	00050493          	mv	s1,a0
     9e4:	00058413          	mv	s0,a1
     9e8:	00058523          	sb	zero,10(a1)
     9ec:	00000993          	li	s3,0
     9f0:	00410913          	addi	s2,sp,4
     9f4:	408a0a13          	addi	s4,s4,1032 # 1408 <numbers.1>
     9f8:	00a00593          	li	a1,10
     9fc:	00048513          	mv	a0,s1
     a00:	430000ef          	jal	ra,e30 <__umodsi3>
     a04:	00aa0533          	add	a0,s4,a0
     a08:	00054783          	lbu	a5,0(a0)
     a0c:	01390ab3          	add	s5,s2,s3
     a10:	00048513          	mv	a0,s1
     a14:	00fa8023          	sb	a5,0(s5)
     a18:	00a00593          	li	a1,10
     a1c:	3cc000ef          	jal	ra,de8 <__hidden___udivsi3>
     a20:	00198993          	addi	s3,s3,1
     a24:	00a00793          	li	a5,10
     a28:	00050493          	mv	s1,a0
     a2c:	fcf996e3          	bne	s3,a5,9f8 <__neorv32_uart_itoa+0x3c>
     a30:	00090693          	mv	a3,s2
     a34:	00900713          	li	a4,9
     a38:	03000613          	li	a2,48
     a3c:	0096c583          	lbu	a1,9(a3)
     a40:	00070793          	mv	a5,a4
     a44:	fff70713          	addi	a4,a4,-1
     a48:	01071713          	slli	a4,a4,0x10
     a4c:	01075713          	srli	a4,a4,0x10
     a50:	00c59a63          	bne	a1,a2,a64 <__neorv32_uart_itoa+0xa8>
     a54:	000684a3          	sb	zero,9(a3)
     a58:	fff68693          	addi	a3,a3,-1
     a5c:	fe0710e3          	bnez	a4,a3c <__neorv32_uart_itoa+0x80>
     a60:	00000793          	li	a5,0
     a64:	00f907b3          	add	a5,s2,a5
     a68:	00000713          	li	a4,0
     a6c:	0007c683          	lbu	a3,0(a5)
     a70:	00068c63          	beqz	a3,a88 <__neorv32_uart_itoa+0xcc>
     a74:	00170613          	addi	a2,a4,1
     a78:	00e40733          	add	a4,s0,a4
     a7c:	00d70023          	sb	a3,0(a4)
     a80:	01061713          	slli	a4,a2,0x10
     a84:	01075713          	srli	a4,a4,0x10
     a88:	fff78693          	addi	a3,a5,-1
     a8c:	02f91863          	bne	s2,a5,abc <__neorv32_uart_itoa+0x100>
     a90:	00e40433          	add	s0,s0,a4
     a94:	00040023          	sb	zero,0(s0)
     a98:	02c12083          	lw	ra,44(sp)
     a9c:	02812403          	lw	s0,40(sp)
     aa0:	02412483          	lw	s1,36(sp)
     aa4:	02012903          	lw	s2,32(sp)
     aa8:	01c12983          	lw	s3,28(sp)
     aac:	01812a03          	lw	s4,24(sp)
     ab0:	01412a83          	lw	s5,20(sp)
     ab4:	03010113          	addi	sp,sp,48
     ab8:	00008067          	ret
     abc:	00068793          	mv	a5,a3
     ac0:	fadff06f          	j	a6c <__neorv32_uart_itoa+0xb0>

00000ac4 <__neorv32_uart_tohex>:
     ac4:	00001637          	lui	a2,0x1
     ac8:	00758693          	addi	a3,a1,7
     acc:	00000713          	li	a4,0
     ad0:	3f460613          	addi	a2,a2,1012 # 13f4 <symbols.0>
     ad4:	02000813          	li	a6,32
     ad8:	00e557b3          	srl	a5,a0,a4
     adc:	00f7f793          	andi	a5,a5,15
     ae0:	00f607b3          	add	a5,a2,a5
     ae4:	0007c783          	lbu	a5,0(a5)
     ae8:	00470713          	addi	a4,a4,4
     aec:	fff68693          	addi	a3,a3,-1
     af0:	00f680a3          	sb	a5,1(a3)
     af4:	ff0712e3          	bne	a4,a6,ad8 <__neorv32_uart_tohex+0x14>
     af8:	00058423          	sb	zero,8(a1)
     afc:	00008067          	ret

00000b00 <neorv32_uart0_available>:
     b00:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     b04:	01255513          	srli	a0,a0,0x12
     b08:	00157513          	andi	a0,a0,1
     b0c:	00008067          	ret

00000b10 <neorv32_uart0_setup>:
     b10:	ff010113          	addi	sp,sp,-16
     b14:	00812423          	sw	s0,8(sp)
     b18:	00912223          	sw	s1,4(sp)
     b1c:	00112623          	sw	ra,12(sp)
     b20:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     b24:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     b28:	00058413          	mv	s0,a1
     b2c:	00151593          	slli	a1,a0,0x1
     b30:	00078513          	mv	a0,a5
     b34:	00060493          	mv	s1,a2
     b38:	2b0000ef          	jal	ra,de8 <__hidden___udivsi3>
     b3c:	01051513          	slli	a0,a0,0x10
     b40:	000017b7          	lui	a5,0x1
     b44:	01055513          	srli	a0,a0,0x10
     b48:	00000713          	li	a4,0
     b4c:	ffe78793          	addi	a5,a5,-2 # ffe <memcpy+0x16a>
     b50:	04a7e463          	bltu	a5,a0,b98 <neorv32_uart0_setup+0x88>
     b54:	0034f493          	andi	s1,s1,3
     b58:	01449493          	slli	s1,s1,0x14
     b5c:	00347413          	andi	s0,s0,3
     b60:	fff50793          	addi	a5,a0,-1
     b64:	0097e7b3          	or	a5,a5,s1
     b68:	01641413          	slli	s0,s0,0x16
     b6c:	0087e7b3          	or	a5,a5,s0
     b70:	01871713          	slli	a4,a4,0x18
     b74:	00c12083          	lw	ra,12(sp)
     b78:	00812403          	lw	s0,8(sp)
     b7c:	00e7e7b3          	or	a5,a5,a4
     b80:	10000737          	lui	a4,0x10000
     b84:	00e7e7b3          	or	a5,a5,a4
     b88:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     b8c:	00412483          	lw	s1,4(sp)
     b90:	01010113          	addi	sp,sp,16
     b94:	00008067          	ret
     b98:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffebea>
     b9c:	0fd6f693          	andi	a3,a3,253
     ba0:	00069a63          	bnez	a3,bb4 <neorv32_uart0_setup+0xa4>
     ba4:	00355513          	srli	a0,a0,0x3
     ba8:	00170713          	addi	a4,a4,1
     bac:	0ff77713          	zext.b	a4,a4
     bb0:	fa1ff06f          	j	b50 <neorv32_uart0_setup+0x40>
     bb4:	00155513          	srli	a0,a0,0x1
     bb8:	ff1ff06f          	j	ba8 <neorv32_uart0_setup+0x98>

00000bbc <neorv32_uart0_putc>:
     bbc:	00040737          	lui	a4,0x40
     bc0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     bc4:	00e7f7b3          	and	a5,a5,a4
     bc8:	fe079ce3          	bnez	a5,bc0 <neorv32_uart0_putc+0x4>
     bcc:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     bd0:	00008067          	ret

00000bd4 <neorv32_uart0_print>:
     bd4:	ff010113          	addi	sp,sp,-16
     bd8:	00812423          	sw	s0,8(sp)
     bdc:	01212023          	sw	s2,0(sp)
     be0:	00112623          	sw	ra,12(sp)
     be4:	00912223          	sw	s1,4(sp)
     be8:	00050413          	mv	s0,a0
     bec:	00a00913          	li	s2,10
     bf0:	00044483          	lbu	s1,0(s0)
     bf4:	00140413          	addi	s0,s0,1
     bf8:	00049e63          	bnez	s1,c14 <neorv32_uart0_print+0x40>
     bfc:	00c12083          	lw	ra,12(sp)
     c00:	00812403          	lw	s0,8(sp)
     c04:	00412483          	lw	s1,4(sp)
     c08:	00012903          	lw	s2,0(sp)
     c0c:	01010113          	addi	sp,sp,16
     c10:	00008067          	ret
     c14:	01249663          	bne	s1,s2,c20 <neorv32_uart0_print+0x4c>
     c18:	00d00513          	li	a0,13
     c1c:	fa1ff0ef          	jal	ra,bbc <neorv32_uart0_putc>
     c20:	00048513          	mv	a0,s1
     c24:	f99ff0ef          	jal	ra,bbc <neorv32_uart0_putc>
     c28:	fc9ff06f          	j	bf0 <neorv32_uart0_print+0x1c>

00000c2c <neorv32_uart0_printf>:
     c2c:	fa010113          	addi	sp,sp,-96
     c30:	04f12a23          	sw	a5,84(sp)
     c34:	04410793          	addi	a5,sp,68
     c38:	02812c23          	sw	s0,56(sp)
     c3c:	03212823          	sw	s2,48(sp)
     c40:	03312623          	sw	s3,44(sp)
     c44:	03412423          	sw	s4,40(sp)
     c48:	03512223          	sw	s5,36(sp)
     c4c:	03612023          	sw	s6,32(sp)
     c50:	01712e23          	sw	s7,28(sp)
     c54:	01812c23          	sw	s8,24(sp)
     c58:	02112e23          	sw	ra,60(sp)
     c5c:	02912a23          	sw	s1,52(sp)
     c60:	00050413          	mv	s0,a0
     c64:	04b12223          	sw	a1,68(sp)
     c68:	04c12423          	sw	a2,72(sp)
     c6c:	04d12623          	sw	a3,76(sp)
     c70:	04e12823          	sw	a4,80(sp)
     c74:	05012c23          	sw	a6,88(sp)
     c78:	05112e23          	sw	a7,92(sp)
     c7c:	00f12023          	sw	a5,0(sp)
     c80:	02500993          	li	s3,37
     c84:	00a00a13          	li	s4,10
     c88:	07300913          	li	s2,115
     c8c:	07500a93          	li	s5,117
     c90:	07800b13          	li	s6,120
     c94:	06300b93          	li	s7,99
     c98:	06900c13          	li	s8,105
     c9c:	00044483          	lbu	s1,0(s0)
     ca0:	02049a63          	bnez	s1,cd4 <neorv32_uart0_printf+0xa8>
     ca4:	03c12083          	lw	ra,60(sp)
     ca8:	03812403          	lw	s0,56(sp)
     cac:	03412483          	lw	s1,52(sp)
     cb0:	03012903          	lw	s2,48(sp)
     cb4:	02c12983          	lw	s3,44(sp)
     cb8:	02812a03          	lw	s4,40(sp)
     cbc:	02412a83          	lw	s5,36(sp)
     cc0:	02012b03          	lw	s6,32(sp)
     cc4:	01c12b83          	lw	s7,28(sp)
     cc8:	01812c03          	lw	s8,24(sp)
     ccc:	06010113          	addi	sp,sp,96
     cd0:	00008067          	ret
     cd4:	0d349663          	bne	s1,s3,da0 <neorv32_uart0_printf+0x174>
     cd8:	00144483          	lbu	s1,1(s0)
     cdc:	05248263          	beq	s1,s2,d20 <neorv32_uart0_printf+0xf4>
     ce0:	00996e63          	bltu	s2,s1,cfc <neorv32_uart0_printf+0xd0>
     ce4:	05748c63          	beq	s1,s7,d3c <neorv32_uart0_printf+0x110>
     ce8:	07848663          	beq	s1,s8,d54 <neorv32_uart0_printf+0x128>
     cec:	02500513          	li	a0,37
     cf0:	ecdff0ef          	jal	ra,bbc <neorv32_uart0_putc>
     cf4:	00048513          	mv	a0,s1
     cf8:	0540006f          	j	d4c <neorv32_uart0_printf+0x120>
     cfc:	09548663          	beq	s1,s5,d88 <neorv32_uart0_printf+0x15c>
     d00:	ff6496e3          	bne	s1,s6,cec <neorv32_uart0_printf+0xc0>
     d04:	00012783          	lw	a5,0(sp)
     d08:	00410593          	addi	a1,sp,4
     d0c:	0007a503          	lw	a0,0(a5)
     d10:	00478713          	addi	a4,a5,4
     d14:	00e12023          	sw	a4,0(sp)
     d18:	dadff0ef          	jal	ra,ac4 <__neorv32_uart_tohex>
     d1c:	0640006f          	j	d80 <neorv32_uart0_printf+0x154>
     d20:	00012783          	lw	a5,0(sp)
     d24:	0007a503          	lw	a0,0(a5)
     d28:	00478713          	addi	a4,a5,4
     d2c:	00e12023          	sw	a4,0(sp)
     d30:	ea5ff0ef          	jal	ra,bd4 <neorv32_uart0_print>
     d34:	00240413          	addi	s0,s0,2
     d38:	f65ff06f          	j	c9c <neorv32_uart0_printf+0x70>
     d3c:	00012783          	lw	a5,0(sp)
     d40:	0007c503          	lbu	a0,0(a5)
     d44:	00478713          	addi	a4,a5,4
     d48:	00e12023          	sw	a4,0(sp)
     d4c:	e71ff0ef          	jal	ra,bbc <neorv32_uart0_putc>
     d50:	fe5ff06f          	j	d34 <neorv32_uart0_printf+0x108>
     d54:	00012783          	lw	a5,0(sp)
     d58:	0007a483          	lw	s1,0(a5)
     d5c:	00478713          	addi	a4,a5,4
     d60:	00e12023          	sw	a4,0(sp)
     d64:	0004d863          	bgez	s1,d74 <neorv32_uart0_printf+0x148>
     d68:	02d00513          	li	a0,45
     d6c:	409004b3          	neg	s1,s1
     d70:	e4dff0ef          	jal	ra,bbc <neorv32_uart0_putc>
     d74:	00410593          	addi	a1,sp,4
     d78:	00048513          	mv	a0,s1
     d7c:	c41ff0ef          	jal	ra,9bc <__neorv32_uart_itoa>
     d80:	00410513          	addi	a0,sp,4
     d84:	fadff06f          	j	d30 <neorv32_uart0_printf+0x104>
     d88:	00012783          	lw	a5,0(sp)
     d8c:	00410593          	addi	a1,sp,4
     d90:	00478713          	addi	a4,a5,4
     d94:	0007a503          	lw	a0,0(a5)
     d98:	00e12023          	sw	a4,0(sp)
     d9c:	fe1ff06f          	j	d7c <neorv32_uart0_printf+0x150>
     da0:	01449663          	bne	s1,s4,dac <neorv32_uart0_printf+0x180>
     da4:	00d00513          	li	a0,13
     da8:	e15ff0ef          	jal	ra,bbc <neorv32_uart0_putc>
     dac:	00048513          	mv	a0,s1
     db0:	00140413          	addi	s0,s0,1
     db4:	e09ff0ef          	jal	ra,bbc <neorv32_uart0_putc>
     db8:	ee5ff06f          	j	c9c <neorv32_uart0_printf+0x70>

00000dbc <__mulsi3>:
     dbc:	00050613          	mv	a2,a0
     dc0:	00000513          	li	a0,0
     dc4:	0015f693          	andi	a3,a1,1
     dc8:	00068463          	beqz	a3,dd0 <__mulsi3+0x14>
     dcc:	00c50533          	add	a0,a0,a2
     dd0:	0015d593          	srli	a1,a1,0x1
     dd4:	00161613          	slli	a2,a2,0x1
     dd8:	fe0596e3          	bnez	a1,dc4 <__mulsi3+0x8>
     ddc:	00008067          	ret

00000de0 <__divsi3>:
     de0:	06054063          	bltz	a0,e40 <__umodsi3+0x10>
     de4:	0605c663          	bltz	a1,e50 <__umodsi3+0x20>

00000de8 <__hidden___udivsi3>:
     de8:	00058613          	mv	a2,a1
     dec:	00050593          	mv	a1,a0
     df0:	fff00513          	li	a0,-1
     df4:	02060c63          	beqz	a2,e2c <__hidden___udivsi3+0x44>
     df8:	00100693          	li	a3,1
     dfc:	00b67a63          	bgeu	a2,a1,e10 <__hidden___udivsi3+0x28>
     e00:	00c05863          	blez	a2,e10 <__hidden___udivsi3+0x28>
     e04:	00161613          	slli	a2,a2,0x1
     e08:	00169693          	slli	a3,a3,0x1
     e0c:	feb66ae3          	bltu	a2,a1,e00 <__hidden___udivsi3+0x18>
     e10:	00000513          	li	a0,0
     e14:	00c5e663          	bltu	a1,a2,e20 <__hidden___udivsi3+0x38>
     e18:	40c585b3          	sub	a1,a1,a2
     e1c:	00d56533          	or	a0,a0,a3
     e20:	0016d693          	srli	a3,a3,0x1
     e24:	00165613          	srli	a2,a2,0x1
     e28:	fe0696e3          	bnez	a3,e14 <__hidden___udivsi3+0x2c>
     e2c:	00008067          	ret

00000e30 <__umodsi3>:
     e30:	00008293          	mv	t0,ra
     e34:	fb5ff0ef          	jal	ra,de8 <__hidden___udivsi3>
     e38:	00058513          	mv	a0,a1
     e3c:	00028067          	jr	t0
     e40:	40a00533          	neg	a0,a0
     e44:	00b04863          	bgtz	a1,e54 <__umodsi3+0x24>
     e48:	40b005b3          	neg	a1,a1
     e4c:	f9dff06f          	j	de8 <__hidden___udivsi3>
     e50:	40b005b3          	neg	a1,a1
     e54:	00008293          	mv	t0,ra
     e58:	f91ff0ef          	jal	ra,de8 <__hidden___udivsi3>
     e5c:	40a00533          	neg	a0,a0
     e60:	00028067          	jr	t0

00000e64 <__modsi3>:
     e64:	00008293          	mv	t0,ra
     e68:	0005ca63          	bltz	a1,e7c <__modsi3+0x18>
     e6c:	00054c63          	bltz	a0,e84 <__modsi3+0x20>
     e70:	f79ff0ef          	jal	ra,de8 <__hidden___udivsi3>
     e74:	00058513          	mv	a0,a1
     e78:	00028067          	jr	t0
     e7c:	40b005b3          	neg	a1,a1
     e80:	fe0558e3          	bgez	a0,e70 <__modsi3+0xc>
     e84:	40a00533          	neg	a0,a0
     e88:	f61ff0ef          	jal	ra,de8 <__hidden___udivsi3>
     e8c:	40b00533          	neg	a0,a1
     e90:	00028067          	jr	t0

00000e94 <memcpy>:
     e94:	00b547b3          	xor	a5,a0,a1
     e98:	0037f793          	andi	a5,a5,3
     e9c:	00c508b3          	add	a7,a0,a2
     ea0:	06079463          	bnez	a5,f08 <memcpy+0x74>
     ea4:	00300793          	li	a5,3
     ea8:	06c7f063          	bgeu	a5,a2,f08 <memcpy+0x74>
     eac:	00357793          	andi	a5,a0,3
     eb0:	00050713          	mv	a4,a0
     eb4:	06079a63          	bnez	a5,f28 <memcpy+0x94>
     eb8:	ffc8f613          	andi	a2,a7,-4
     ebc:	40e606b3          	sub	a3,a2,a4
     ec0:	02000793          	li	a5,32
     ec4:	08d7ce63          	blt	a5,a3,f60 <memcpy+0xcc>
     ec8:	00058693          	mv	a3,a1
     ecc:	00070793          	mv	a5,a4
     ed0:	02c77863          	bgeu	a4,a2,f00 <memcpy+0x6c>
     ed4:	0006a803          	lw	a6,0(a3)
     ed8:	00478793          	addi	a5,a5,4
     edc:	00468693          	addi	a3,a3,4
     ee0:	ff07ae23          	sw	a6,-4(a5)
     ee4:	fec7e8e3          	bltu	a5,a2,ed4 <memcpy+0x40>
     ee8:	fff60793          	addi	a5,a2,-1
     eec:	40e787b3          	sub	a5,a5,a4
     ef0:	ffc7f793          	andi	a5,a5,-4
     ef4:	00478793          	addi	a5,a5,4
     ef8:	00f70733          	add	a4,a4,a5
     efc:	00f585b3          	add	a1,a1,a5
     f00:	01176863          	bltu	a4,a7,f10 <memcpy+0x7c>
     f04:	00008067          	ret
     f08:	00050713          	mv	a4,a0
     f0c:	05157863          	bgeu	a0,a7,f5c <memcpy+0xc8>
     f10:	0005c783          	lbu	a5,0(a1)
     f14:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ebed>
     f18:	00158593          	addi	a1,a1,1
     f1c:	fef70fa3          	sb	a5,-1(a4)
     f20:	fee898e3          	bne	a7,a4,f10 <memcpy+0x7c>
     f24:	00008067          	ret
     f28:	0005c683          	lbu	a3,0(a1)
     f2c:	00170713          	addi	a4,a4,1
     f30:	00377793          	andi	a5,a4,3
     f34:	fed70fa3          	sb	a3,-1(a4)
     f38:	00158593          	addi	a1,a1,1
     f3c:	f6078ee3          	beqz	a5,eb8 <memcpy+0x24>
     f40:	0005c683          	lbu	a3,0(a1)
     f44:	00170713          	addi	a4,a4,1
     f48:	00377793          	andi	a5,a4,3
     f4c:	fed70fa3          	sb	a3,-1(a4)
     f50:	00158593          	addi	a1,a1,1
     f54:	fc079ae3          	bnez	a5,f28 <memcpy+0x94>
     f58:	f61ff06f          	j	eb8 <memcpy+0x24>
     f5c:	00008067          	ret
     f60:	ff010113          	addi	sp,sp,-16
     f64:	00812623          	sw	s0,12(sp)
     f68:	02000413          	li	s0,32
     f6c:	0005a383          	lw	t2,0(a1)
     f70:	0045a283          	lw	t0,4(a1)
     f74:	0085af83          	lw	t6,8(a1)
     f78:	00c5af03          	lw	t5,12(a1)
     f7c:	0105ae83          	lw	t4,16(a1)
     f80:	0145ae03          	lw	t3,20(a1)
     f84:	0185a303          	lw	t1,24(a1)
     f88:	01c5a803          	lw	a6,28(a1)
     f8c:	0205a683          	lw	a3,32(a1)
     f90:	02470713          	addi	a4,a4,36
     f94:	40e607b3          	sub	a5,a2,a4
     f98:	fc772e23          	sw	t2,-36(a4)
     f9c:	fe572023          	sw	t0,-32(a4)
     fa0:	fff72223          	sw	t6,-28(a4)
     fa4:	ffe72423          	sw	t5,-24(a4)
     fa8:	ffd72623          	sw	t4,-20(a4)
     fac:	ffc72823          	sw	t3,-16(a4)
     fb0:	fe672a23          	sw	t1,-12(a4)
     fb4:	ff072c23          	sw	a6,-8(a4)
     fb8:	fed72e23          	sw	a3,-4(a4)
     fbc:	02458593          	addi	a1,a1,36
     fc0:	faf446e3          	blt	s0,a5,f6c <memcpy+0xd8>
     fc4:	00058693          	mv	a3,a1
     fc8:	00070793          	mv	a5,a4
     fcc:	02c77863          	bgeu	a4,a2,ffc <memcpy+0x168>
     fd0:	0006a803          	lw	a6,0(a3)
     fd4:	00478793          	addi	a5,a5,4
     fd8:	00468693          	addi	a3,a3,4
     fdc:	ff07ae23          	sw	a6,-4(a5)
     fe0:	fec7e8e3          	bltu	a5,a2,fd0 <memcpy+0x13c>
     fe4:	fff60793          	addi	a5,a2,-1
     fe8:	40e787b3          	sub	a5,a5,a4
     fec:	ffc7f793          	andi	a5,a5,-4
     ff0:	00478793          	addi	a5,a5,4
     ff4:	00f70733          	add	a4,a4,a5
     ff8:	00f585b3          	add	a1,a1,a5
     ffc:	01176863          	bltu	a4,a7,100c <memcpy+0x178>
    1000:	00c12403          	lw	s0,12(sp)
    1004:	01010113          	addi	sp,sp,16
    1008:	00008067          	ret
    100c:	0005c783          	lbu	a5,0(a1)
    1010:	00170713          	addi	a4,a4,1
    1014:	00158593          	addi	a1,a1,1
    1018:	fef70fa3          	sb	a5,-1(a4)
    101c:	fee882e3          	beq	a7,a4,1000 <memcpy+0x16c>
    1020:	0005c783          	lbu	a5,0(a1)
    1024:	00170713          	addi	a4,a4,1
    1028:	00158593          	addi	a1,a1,1
    102c:	fef70fa3          	sb	a5,-1(a4)
    1030:	fce89ee3          	bne	a7,a4,100c <memcpy+0x178>
    1034:	fcdff06f          	j	1000 <memcpy+0x16c>
