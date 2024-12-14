
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
      e0:	42458593          	addi	a1,a1,1060 # 1500 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3600>
     194:	00112623          	sw	ra,12(sp)
     198:	1d9000ef          	jal	ra,b70 <neorv32_uart0_setup>
     19c:	2c4000ef          	jal	ra,460 <neorv32_gpio_available>
     1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
     1a4:	031000ef          	jal	ra,9d4 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	1e450513          	addi	a0,a0,484 # 11e4 <__etext+0x14c>
     1b0:	285000ef          	jal	ra,c34 <neorv32_uart0_print>
     1b4:	11c000ef          	jal	ra,2d0 <wb_calculadora>
     1b8:	ffdff06f          	j	1b4 <main+0x34>
     1bc:	00001537          	lui	a0,0x1
     1c0:	1c050513          	addi	a0,a0,448 # 11c0 <__etext+0x128>
     1c4:	271000ef          	jal	ra,c34 <neorv32_uart0_print>
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00100513          	li	a0,1
     1d0:	01010113          	addi	sp,sp,16
     1d4:	00008067          	ret

000001d8 <keyboard>:
     1d8:	f9010113          	addi	sp,sp,-112
     1dc:	000015b7          	lui	a1,0x1
     1e0:	04000613          	li	a2,64
     1e4:	1f858593          	addi	a1,a1,504 # 11f8 <__etext+0x160>
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
     210:	4e5000ef          	jal	ra,ef4 <memcpy>
     214:	0ff00513          	li	a0,255
     218:	00000593          	li	a1,0
     21c:	2dc000ef          	jal	ra,4f8 <neorv32_gpio_port_set>
     220:	0ff00a93          	li	s5,255
     224:	00800b13          	li	s6,8
     228:	00400b93          	li	s7,4
     22c:	00010993          	mv	s3,sp
     230:	0ff00413          	li	s0,255
     234:	00000493          	li	s1,0
     238:	00048513          	mv	a0,s1
     23c:	264000ef          	jal	ra,4a0 <neorv32_gpio_pin_clr>
     240:	00098a13          	mv	s4,s3
     244:	00400913          	li	s2,4
     248:	00090513          	mv	a0,s2
     24c:	288000ef          	jal	ra,4d4 <neorv32_gpio_pin_get>
     250:	00051e63          	bnez	a0,26c <keyboard+0x94>
     254:	03ca2403          	lw	s0,60(s4)
     258:	01540a63          	beq	s0,s5,26c <keyboard+0x94>
     25c:	00441513          	slli	a0,s0,0x4
     260:	0f057513          	andi	a0,a0,240
     264:	00000593          	li	a1,0
     268:	290000ef          	jal	ra,4f8 <neorv32_gpio_port_set>
     26c:	00190913          	addi	s2,s2,1
     270:	ff0a0a13          	addi	s4,s4,-16
     274:	fd691ae3          	bne	s2,s6,248 <keyboard+0x70>
     278:	00048513          	mv	a0,s1
     27c:	00148493          	addi	s1,s1,1
     280:	1f0000ef          	jal	ra,470 <neorv32_gpio_pin_set>
     284:	ffc98993          	addi	s3,s3,-4
     288:	fb7498e3          	bne	s1,s7,238 <keyboard+0x60>
     28c:	fb5400e3          	beq	s0,s5,22c <keyboard+0x54>
     290:	00001537          	lui	a0,0x1
     294:	00040593          	mv	a1,s0
     298:	09850513          	addi	a0,a0,152 # 1098 <__etext>
     29c:	1f1000ef          	jal	ra,c8c <neorv32_uart0_printf>
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
     2d4:	fe010113          	addi	sp,sp,-32
     2d8:	0ac50513          	addi	a0,a0,172 # 10ac <__etext+0x14>
     2dc:	00112e23          	sw	ra,28(sp)
     2e0:	00912a23          	sw	s1,20(sp)
     2e4:	01212823          	sw	s2,16(sp)
     2e8:	01312623          	sw	s3,12(sp)
     2ec:	00812c23          	sw	s0,24(sp)
     2f0:	19d000ef          	jal	ra,c8c <neorv32_uart0_printf>
     2f4:	00001537          	lui	a0,0x1
     2f8:	0fc50513          	addi	a0,a0,252 # 10fc <__etext+0x64>
     2fc:	191000ef          	jal	ra,c8c <neorv32_uart0_printf>
     300:	01000913          	li	s2,16
     304:	00000493          	li	s1,0
     308:	00900993          	li	s3,9
     30c:	ecdff0ef          	jal	ra,1d8 <keyboard>
     310:	00050413          	mv	s0,a0
     314:	0aa9f663          	bgeu	s3,a0,3c0 <wb_calculadora+0xf0>
     318:	00001537          	lui	a0,0x1
     31c:	00048593          	mv	a1,s1
     320:	12050513          	addi	a0,a0,288 # 1120 <__etext+0x88>
     324:	169000ef          	jal	ra,c8c <neorv32_uart0_printf>
     328:	90000937          	lui	s2,0x90000
     32c:	00992023          	sw	s1,0(s2) # 90000000 <__ctr0_io_space_begin+0x90000200>
     330:	00001537          	lui	a0,0x1
     334:	00040593          	mv	a1,s0
     338:	13450513          	addi	a0,a0,308 # 1134 <__etext+0x9c>
     33c:	151000ef          	jal	ra,c8c <neorv32_uart0_printf>
     340:	00890913          	addi	s2,s2,8
     344:	00892023          	sw	s0,0(s2)
     348:	00001537          	lui	a0,0x1
     34c:	14450513          	addi	a0,a0,324 # 1144 <__etext+0xac>
     350:	13d000ef          	jal	ra,c8c <neorv32_uart0_printf>
     354:	00000413          	li	s0,0
     358:	00900493          	li	s1,9
     35c:	e7dff0ef          	jal	ra,1d8 <keyboard>
     360:	06a4fe63          	bgeu	s1,a0,3dc <wb_calculadora+0x10c>
     364:	00001537          	lui	a0,0x1
     368:	00040593          	mv	a1,s0
     36c:	16450513          	addi	a0,a0,356 # 1164 <__etext+0xcc>
     370:	11d000ef          	jal	ra,c8c <neorv32_uart0_printf>
     374:	900007b7          	lui	a5,0x90000
     378:	00478693          	addi	a3,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     37c:	0086a023          	sw	s0,0(a3)
     380:	0007a503          	lw	a0,0(a5)
     384:	0006a683          	lw	a3,0(a3)
     388:	00878793          	addi	a5,a5,8
     38c:	0007a783          	lw	a5,0(a5)
     390:	00c00713          	li	a4,12
     394:	06e78a63          	beq	a5,a4,408 <wb_calculadora+0x138>
     398:	04f76c63          	bltu	a4,a5,3f0 <wb_calculadora+0x120>
     39c:	00a00613          	li	a2,10
     3a0:	00a68733          	add	a4,a3,a0
     3a4:	06c78a63          	beq	a5,a2,418 <wb_calculadora+0x148>
     3a8:	00b00613          	li	a2,11
     3ac:	40d50733          	sub	a4,a0,a3
     3b0:	06c78463          	beq	a5,a2,418 <wb_calculadora+0x148>
     3b4:	00001537          	lui	a0,0x1
     3b8:	19450513          	addi	a0,a0,404 # 1194 <__etext+0xfc>
     3bc:	0980006f          	j	454 <wb_calculadora+0x184>
     3c0:	00890a63          	beq	s2,s0,3d4 <wb_calculadora+0x104>
     3c4:	00249793          	slli	a5,s1,0x2
     3c8:	009787b3          	add	a5,a5,s1
     3cc:	00179793          	slli	a5,a5,0x1
     3d0:	008784b3          	add	s1,a5,s0
     3d4:	00040913          	mv	s2,s0
     3d8:	f35ff06f          	j	30c <wb_calculadora+0x3c>
     3dc:	00241793          	slli	a5,s0,0x2
     3e0:	008787b3          	add	a5,a5,s0
     3e4:	00179793          	slli	a5,a5,0x1
     3e8:	00a78433          	add	s0,a5,a0
     3ec:	f71ff06f          	j	35c <wb_calculadora+0x8c>
     3f0:	00d00713          	li	a4,13
     3f4:	fce790e3          	bne	a5,a4,3b4 <wb_calculadora+0xe4>
     3f8:	04068a63          	beqz	a3,44c <wb_calculadora+0x17c>
     3fc:	00068593          	mv	a1,a3
     400:	249000ef          	jal	ra,e48 <__hidden___udivsi3>
     404:	0100006f          	j	414 <wb_calculadora+0x144>
     408:	00050593          	mv	a1,a0
     40c:	00068513          	mv	a0,a3
     410:	20d000ef          	jal	ra,e1c <__mulsi3>
     414:	00050713          	mv	a4,a0
     418:	900005b7          	lui	a1,0x90000
     41c:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     420:	00e5a023          	sw	a4,0(a1)
     424:	0005a583          	lw	a1,0(a1)
     428:	01812403          	lw	s0,24(sp)
     42c:	01c12083          	lw	ra,28(sp)
     430:	01412483          	lw	s1,20(sp)
     434:	01012903          	lw	s2,16(sp)
     438:	00c12983          	lw	s3,12(sp)
     43c:	00001537          	lui	a0,0x1
     440:	1b050513          	addi	a0,a0,432 # 11b0 <__etext+0x118>
     444:	02010113          	addi	sp,sp,32
     448:	0450006f          	j	c8c <neorv32_uart0_printf>
     44c:	00001537          	lui	a0,0x1
     450:	17850513          	addi	a0,a0,376 # 1178 <__etext+0xe0>
     454:	039000ef          	jal	ra,c8c <neorv32_uart0_printf>
     458:	fff00713          	li	a4,-1
     45c:	fbdff06f          	j	418 <wb_calculadora+0x148>

00000460 <neorv32_gpio_available>:
     460:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     464:	01055513          	srli	a0,a0,0x10
     468:	00157513          	andi	a0,a0,1
     46c:	00008067          	ret

00000470 <neorv32_gpio_pin_set>:
     470:	00100793          	li	a5,1
     474:	01f00713          	li	a4,31
     478:	00a797b3          	sll	a5,a5,a0
     47c:	00a74a63          	blt	a4,a0,490 <neorv32_gpio_pin_set+0x20>
     480:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     484:	00f767b3          	or	a5,a4,a5
     488:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     48c:	00008067          	ret
     490:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     494:	00f767b3          	or	a5,a4,a5
     498:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     49c:	00008067          	ret

000004a0 <neorv32_gpio_pin_clr>:
     4a0:	00100793          	li	a5,1
     4a4:	00a797b3          	sll	a5,a5,a0
     4a8:	01f00713          	li	a4,31
     4ac:	fff7c793          	not	a5,a5
     4b0:	00a74a63          	blt	a4,a0,4c4 <neorv32_gpio_pin_clr+0x24>
     4b4:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     4b8:	00f777b3          	and	a5,a4,a5
     4bc:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     4c0:	00008067          	ret
     4c4:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     4c8:	00f777b3          	and	a5,a4,a5
     4cc:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     4d0:	00008067          	ret

000004d4 <neorv32_gpio_pin_get>:
     4d4:	00100793          	li	a5,1
     4d8:	01f00713          	li	a4,31
     4dc:	00a797b3          	sll	a5,a5,a0
     4e0:	00a74863          	blt	a4,a0,4f0 <neorv32_gpio_pin_get+0x1c>
     4e4:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     4e8:	00f77533          	and	a0,a4,a5
     4ec:	00008067          	ret
     4f0:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     4f4:	ff5ff06f          	j	4e8 <neorv32_gpio_pin_get+0x14>

000004f8 <neorv32_gpio_port_set>:
     4f8:	fc000793          	li	a5,-64
     4fc:	00a7a423          	sw	a0,8(a5)
     500:	00b7a623          	sw	a1,12(a5)
     504:	00008067          	ret
     508:	0000                	.2byte	0x0
     50a:	0000                	.2byte	0x0
     50c:	0000                	.2byte	0x0
     50e:	0000                	.2byte	0x0

00000510 <__neorv32_rte_core>:
     510:	fc010113          	addi	sp,sp,-64
     514:	02112e23          	sw	ra,60(sp)
     518:	02512c23          	sw	t0,56(sp)
     51c:	02612a23          	sw	t1,52(sp)
     520:	02712823          	sw	t2,48(sp)
     524:	02a12623          	sw	a0,44(sp)
     528:	02b12423          	sw	a1,40(sp)
     52c:	02c12223          	sw	a2,36(sp)
     530:	02d12023          	sw	a3,32(sp)
     534:	00e12e23          	sw	a4,28(sp)
     538:	00f12c23          	sw	a5,24(sp)
     53c:	01012a23          	sw	a6,20(sp)
     540:	01112823          	sw	a7,16(sp)
     544:	01c12623          	sw	t3,12(sp)
     548:	01d12423          	sw	t4,8(sp)
     54c:	01e12223          	sw	t5,4(sp)
     550:	01f12023          	sw	t6,0(sp)
     554:	34102773          	csrr	a4,mepc
     558:	34071073          	csrw	mscratch,a4
     55c:	342027f3          	csrr	a5,mcause
     560:	0807c863          	bltz	a5,5f0 <__neorv32_rte_core+0xe0>
     564:	00071683          	lh	a3,0(a4)
     568:	00300593          	li	a1,3
     56c:	0036f693          	andi	a3,a3,3
     570:	00270613          	addi	a2,a4,2
     574:	00b69463          	bne	a3,a1,57c <__neorv32_rte_core+0x6c>
     578:	00470613          	addi	a2,a4,4
     57c:	34161073          	csrw	mepc,a2
     580:	00b00713          	li	a4,11
     584:	04f77a63          	bgeu	a4,a5,5d8 <__neorv32_rte_core+0xc8>
     588:	7c000793          	li	a5,1984
     58c:	000780e7          	jalr	a5
     590:	03c12083          	lw	ra,60(sp)
     594:	03812283          	lw	t0,56(sp)
     598:	03412303          	lw	t1,52(sp)
     59c:	03012383          	lw	t2,48(sp)
     5a0:	02c12503          	lw	a0,44(sp)
     5a4:	02812583          	lw	a1,40(sp)
     5a8:	02412603          	lw	a2,36(sp)
     5ac:	02012683          	lw	a3,32(sp)
     5b0:	01c12703          	lw	a4,28(sp)
     5b4:	01812783          	lw	a5,24(sp)
     5b8:	01412803          	lw	a6,20(sp)
     5bc:	01012883          	lw	a7,16(sp)
     5c0:	00c12e03          	lw	t3,12(sp)
     5c4:	00812e83          	lw	t4,8(sp)
     5c8:	00412f03          	lw	t5,4(sp)
     5cc:	00012f83          	lw	t6,0(sp)
     5d0:	04010113          	addi	sp,sp,64
     5d4:	30200073          	mret
     5d8:	00001737          	lui	a4,0x1
     5dc:	00279793          	slli	a5,a5,0x2
     5e0:	23870713          	addi	a4,a4,568 # 1238 <__etext+0x1a0>
     5e4:	00e787b3          	add	a5,a5,a4
     5e8:	0007a783          	lw	a5,0(a5)
     5ec:	00078067          	jr	a5
     5f0:	80000737          	lui	a4,0x80000
     5f4:	ffd74713          	xori	a4,a4,-3
     5f8:	00e787b3          	add	a5,a5,a4
     5fc:	01c00713          	li	a4,28
     600:	f8f764e3          	bltu	a4,a5,588 <__neorv32_rte_core+0x78>
     604:	00001737          	lui	a4,0x1
     608:	00279793          	slli	a5,a5,0x2
     60c:	26870713          	addi	a4,a4,616 # 1268 <__etext+0x1d0>
     610:	00e787b3          	add	a5,a5,a4
     614:	0007a783          	lw	a5,0(a5)
     618:	00078067          	jr	a5
     61c:	800007b7          	lui	a5,0x80000
     620:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     624:	f69ff06f          	j	58c <__neorv32_rte_core+0x7c>
     628:	800007b7          	lui	a5,0x80000
     62c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     630:	f5dff06f          	j	58c <__neorv32_rte_core+0x7c>
     634:	800007b7          	lui	a5,0x80000
     638:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     63c:	f51ff06f          	j	58c <__neorv32_rte_core+0x7c>
     640:	800007b7          	lui	a5,0x80000
     644:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     648:	f45ff06f          	j	58c <__neorv32_rte_core+0x7c>
     64c:	800007b7          	lui	a5,0x80000
     650:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     654:	f39ff06f          	j	58c <__neorv32_rte_core+0x7c>
     658:	800007b7          	lui	a5,0x80000
     65c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     660:	f2dff06f          	j	58c <__neorv32_rte_core+0x7c>
     664:	800007b7          	lui	a5,0x80000
     668:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     66c:	f21ff06f          	j	58c <__neorv32_rte_core+0x7c>
     670:	800007b7          	lui	a5,0x80000
     674:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     678:	f15ff06f          	j	58c <__neorv32_rte_core+0x7c>
     67c:	800007b7          	lui	a5,0x80000
     680:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     684:	f09ff06f          	j	58c <__neorv32_rte_core+0x7c>
     688:	800007b7          	lui	a5,0x80000
     68c:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     690:	efdff06f          	j	58c <__neorv32_rte_core+0x7c>
     694:	800007b7          	lui	a5,0x80000
     698:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     69c:	ef1ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6a0:	800007b7          	lui	a5,0x80000
     6a4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     6a8:	ee5ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6ac:	800007b7          	lui	a5,0x80000
     6b0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     6b4:	ed9ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6b8:	800007b7          	lui	a5,0x80000
     6bc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     6c0:	ecdff06f          	j	58c <__neorv32_rte_core+0x7c>
     6c4:	800007b7          	lui	a5,0x80000
     6c8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     6cc:	ec1ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6d0:	800007b7          	lui	a5,0x80000
     6d4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     6d8:	eb5ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6dc:	800007b7          	lui	a5,0x80000
     6e0:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     6e4:	ea9ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6e8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     6ec:	ea1ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6f0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     6f4:	e99ff06f          	j	58c <__neorv32_rte_core+0x7c>
     6f8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     6fc:	e91ff06f          	j	58c <__neorv32_rte_core+0x7c>
     700:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     704:	e89ff06f          	j	58c <__neorv32_rte_core+0x7c>
     708:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     70c:	e81ff06f          	j	58c <__neorv32_rte_core+0x7c>
     710:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     714:	e79ff06f          	j	58c <__neorv32_rte_core+0x7c>
     718:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     71c:	e71ff06f          	j	58c <__neorv32_rte_core+0x7c>
     720:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     724:	e69ff06f          	j	58c <__neorv32_rte_core+0x7c>
     728:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     72c:	e61ff06f          	j	58c <__neorv32_rte_core+0x7c>
     730:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     734:	e59ff06f          	j	58c <__neorv32_rte_core+0x7c>
     738:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     73c:	e51ff06f          	j	58c <__neorv32_rte_core+0x7c>
     740:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     744:	e49ff06f          	j	58c <__neorv32_rte_core+0x7c>
     748:	0000                	.2byte	0x0
     74a:	0000                	.2byte	0x0
     74c:	0000                	.2byte	0x0
     74e:	0000                	.2byte	0x0

00000750 <__neorv32_rte_print_hex_word>:
     750:	fe010113          	addi	sp,sp,-32
     754:	01212823          	sw	s2,16(sp)
     758:	00050913          	mv	s2,a0
     75c:	00001537          	lui	a0,0x1
     760:	00912a23          	sw	s1,20(sp)
     764:	2dc50513          	addi	a0,a0,732 # 12dc <__etext+0x244>
     768:	000014b7          	lui	s1,0x1
     76c:	00812c23          	sw	s0,24(sp)
     770:	01312623          	sw	s3,12(sp)
     774:	00112e23          	sw	ra,28(sp)
     778:	01c00413          	li	s0,28
     77c:	4b8000ef          	jal	ra,c34 <neorv32_uart0_print>
     780:	4d048493          	addi	s1,s1,1232 # 14d0 <hex_symbols.0>
     784:	ffc00993          	li	s3,-4
     788:	008957b3          	srl	a5,s2,s0
     78c:	00f7f793          	andi	a5,a5,15
     790:	00f487b3          	add	a5,s1,a5
     794:	0007c503          	lbu	a0,0(a5)
     798:	ffc40413          	addi	s0,s0,-4
     79c:	480000ef          	jal	ra,c1c <neorv32_uart0_putc>
     7a0:	ff3414e3          	bne	s0,s3,788 <__neorv32_rte_print_hex_word+0x38>
     7a4:	01c12083          	lw	ra,28(sp)
     7a8:	01812403          	lw	s0,24(sp)
     7ac:	01412483          	lw	s1,20(sp)
     7b0:	01012903          	lw	s2,16(sp)
     7b4:	00c12983          	lw	s3,12(sp)
     7b8:	02010113          	addi	sp,sp,32
     7bc:	00008067          	ret

000007c0 <__neorv32_rte_debug_exc_handler>:
     7c0:	ff010113          	addi	sp,sp,-16
     7c4:	00112623          	sw	ra,12(sp)
     7c8:	00812423          	sw	s0,8(sp)
     7cc:	00912223          	sw	s1,4(sp)
     7d0:	390000ef          	jal	ra,b60 <neorv32_uart0_available>
     7d4:	1a050e63          	beqz	a0,990 <__neorv32_rte_debug_exc_handler+0x1d0>
     7d8:	00001537          	lui	a0,0x1
     7dc:	2e050513          	addi	a0,a0,736 # 12e0 <__etext+0x248>
     7e0:	454000ef          	jal	ra,c34 <neorv32_uart0_print>
     7e4:	34202473          	csrr	s0,mcause
     7e8:	00900713          	li	a4,9
     7ec:	00f47793          	andi	a5,s0,15
     7f0:	03078493          	addi	s1,a5,48
     7f4:	00f77463          	bgeu	a4,a5,7fc <__neorv32_rte_debug_exc_handler+0x3c>
     7f8:	05778493          	addi	s1,a5,87
     7fc:	00b00793          	li	a5,11
     800:	0087ee63          	bltu	a5,s0,81c <__neorv32_rte_debug_exc_handler+0x5c>
     804:	00001737          	lui	a4,0x1
     808:	00241793          	slli	a5,s0,0x2
     80c:	4a070713          	addi	a4,a4,1184 # 14a0 <__etext+0x408>
     810:	00e787b3          	add	a5,a5,a4
     814:	0007a783          	lw	a5,0(a5)
     818:	00078067          	jr	a5
     81c:	800007b7          	lui	a5,0x80000
     820:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     824:	14e40463          	beq	s0,a4,96c <__neorv32_rte_debug_exc_handler+0x1ac>
     828:	02876663          	bltu	a4,s0,854 <__neorv32_rte_debug_exc_handler+0x94>
     82c:	00378713          	addi	a4,a5,3
     830:	12e40263          	beq	s0,a4,954 <__neorv32_rte_debug_exc_handler+0x194>
     834:	00778793          	addi	a5,a5,7
     838:	12f40463          	beq	s0,a5,960 <__neorv32_rte_debug_exc_handler+0x1a0>
     83c:	00001537          	lui	a0,0x1
     840:	44050513          	addi	a0,a0,1088 # 1440 <__etext+0x3a8>
     844:	3f0000ef          	jal	ra,c34 <neorv32_uart0_print>
     848:	00040513          	mv	a0,s0
     84c:	f05ff0ef          	jal	ra,750 <__neorv32_rte_print_hex_word>
     850:	0280006f          	j	878 <__neorv32_rte_debug_exc_handler+0xb8>
     854:	ff07c793          	xori	a5,a5,-16
     858:	00f407b3          	add	a5,s0,a5
     85c:	00f00713          	li	a4,15
     860:	fcf76ee3          	bltu	a4,a5,83c <__neorv32_rte_debug_exc_handler+0x7c>
     864:	00001537          	lui	a0,0x1
     868:	43050513          	addi	a0,a0,1072 # 1430 <__etext+0x398>
     86c:	3c8000ef          	jal	ra,c34 <neorv32_uart0_print>
     870:	00048513          	mv	a0,s1
     874:	3a8000ef          	jal	ra,c1c <neorv32_uart0_putc>
     878:	00001537          	lui	a0,0x1
     87c:	48450513          	addi	a0,a0,1156 # 1484 <__etext+0x3ec>
     880:	3b4000ef          	jal	ra,c34 <neorv32_uart0_print>
     884:	34002573          	csrr	a0,mscratch
     888:	ec9ff0ef          	jal	ra,750 <__neorv32_rte_print_hex_word>
     88c:	00001537          	lui	a0,0x1
     890:	48c50513          	addi	a0,a0,1164 # 148c <__etext+0x3f4>
     894:	3a0000ef          	jal	ra,c34 <neorv32_uart0_print>
     898:	34302573          	csrr	a0,mtval
     89c:	eb5ff0ef          	jal	ra,750 <__neorv32_rte_print_hex_word>
     8a0:	00812403          	lw	s0,8(sp)
     8a4:	00c12083          	lw	ra,12(sp)
     8a8:	00412483          	lw	s1,4(sp)
     8ac:	00001537          	lui	a0,0x1
     8b0:	49850513          	addi	a0,a0,1176 # 1498 <__etext+0x400>
     8b4:	01010113          	addi	sp,sp,16
     8b8:	37c0006f          	j	c34 <neorv32_uart0_print>
     8bc:	00001537          	lui	a0,0x1
     8c0:	2e850513          	addi	a0,a0,744 # 12e8 <__etext+0x250>
     8c4:	370000ef          	jal	ra,c34 <neorv32_uart0_print>
     8c8:	fb1ff06f          	j	878 <__neorv32_rte_debug_exc_handler+0xb8>
     8cc:	00001537          	lui	a0,0x1
     8d0:	30850513          	addi	a0,a0,776 # 1308 <__etext+0x270>
     8d4:	360000ef          	jal	ra,c34 <neorv32_uart0_print>
     8d8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     8dc:	0a07d463          	bgez	a5,984 <__neorv32_rte_debug_exc_handler+0x1c4>
     8e0:	0017f793          	andi	a5,a5,1
     8e4:	08078a63          	beqz	a5,978 <__neorv32_rte_debug_exc_handler+0x1b8>
     8e8:	00001537          	lui	a0,0x1
     8ec:	45850513          	addi	a0,a0,1112 # 1458 <__etext+0x3c0>
     8f0:	fd5ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     8f4:	00001537          	lui	a0,0x1
     8f8:	32450513          	addi	a0,a0,804 # 1324 <__etext+0x28c>
     8fc:	fc9ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     900:	00001537          	lui	a0,0x1
     904:	33850513          	addi	a0,a0,824 # 1338 <__etext+0x2a0>
     908:	fbdff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     90c:	00001537          	lui	a0,0x1
     910:	34450513          	addi	a0,a0,836 # 1344 <__etext+0x2ac>
     914:	fb1ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     918:	00001537          	lui	a0,0x1
     91c:	35c50513          	addi	a0,a0,860 # 135c <__etext+0x2c4>
     920:	fb5ff06f          	j	8d4 <__neorv32_rte_debug_exc_handler+0x114>
     924:	00001537          	lui	a0,0x1
     928:	37050513          	addi	a0,a0,880 # 1370 <__etext+0x2d8>
     92c:	f99ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     930:	00001537          	lui	a0,0x1
     934:	38c50513          	addi	a0,a0,908 # 138c <__etext+0x2f4>
     938:	f9dff06f          	j	8d4 <__neorv32_rte_debug_exc_handler+0x114>
     93c:	00001537          	lui	a0,0x1
     940:	3a050513          	addi	a0,a0,928 # 13a0 <__etext+0x308>
     944:	f81ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     948:	00001537          	lui	a0,0x1
     94c:	3c050513          	addi	a0,a0,960 # 13c0 <__etext+0x328>
     950:	f75ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     954:	00001537          	lui	a0,0x1
     958:	3e050513          	addi	a0,a0,992 # 13e0 <__etext+0x348>
     95c:	f69ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     960:	00001537          	lui	a0,0x1
     964:	3fc50513          	addi	a0,a0,1020 # 13fc <__etext+0x364>
     968:	f5dff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     96c:	00001537          	lui	a0,0x1
     970:	41450513          	addi	a0,a0,1044 # 1414 <__etext+0x37c>
     974:	f51ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     978:	00001537          	lui	a0,0x1
     97c:	46850513          	addi	a0,a0,1128 # 1468 <__etext+0x3d0>
     980:	f45ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     984:	00001537          	lui	a0,0x1
     988:	47850513          	addi	a0,a0,1144 # 1478 <__etext+0x3e0>
     98c:	f39ff06f          	j	8c4 <__neorv32_rte_debug_exc_handler+0x104>
     990:	00c12083          	lw	ra,12(sp)
     994:	00812403          	lw	s0,8(sp)
     998:	00412483          	lw	s1,4(sp)
     99c:	01010113          	addi	sp,sp,16
     9a0:	00008067          	ret

000009a4 <neorv32_rte_exception_uninstall>:
     9a4:	01f00793          	li	a5,31
     9a8:	02a7e263          	bltu	a5,a0,9cc <neorv32_rte_exception_uninstall+0x28>
     9ac:	800007b7          	lui	a5,0x80000
     9b0:	00251513          	slli	a0,a0,0x2
     9b4:	00078793          	mv	a5,a5
     9b8:	00a787b3          	add	a5,a5,a0
     9bc:	7c000713          	li	a4,1984
     9c0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     9c4:	00000513          	li	a0,0
     9c8:	00008067          	ret
     9cc:	00100513          	li	a0,1
     9d0:	00008067          	ret

000009d4 <neorv32_rte_setup>:
     9d4:	ff010113          	addi	sp,sp,-16
     9d8:	00112623          	sw	ra,12(sp)
     9dc:	00812423          	sw	s0,8(sp)
     9e0:	00912223          	sw	s1,4(sp)
     9e4:	51000793          	li	a5,1296
     9e8:	30579073          	csrw	mtvec,a5
     9ec:	00000413          	li	s0,0
     9f0:	01d00493          	li	s1,29
     9f4:	00040513          	mv	a0,s0
     9f8:	00140413          	addi	s0,s0,1
     9fc:	0ff47413          	zext.b	s0,s0
     a00:	fa5ff0ef          	jal	ra,9a4 <neorv32_rte_exception_uninstall>
     a04:	fe9418e3          	bne	s0,s1,9f4 <neorv32_rte_setup+0x20>
     a08:	00c12083          	lw	ra,12(sp)
     a0c:	00812403          	lw	s0,8(sp)
     a10:	00412483          	lw	s1,4(sp)
     a14:	01010113          	addi	sp,sp,16
     a18:	00008067          	ret

00000a1c <__neorv32_uart_itoa>:
     a1c:	fd010113          	addi	sp,sp,-48
     a20:	02812423          	sw	s0,40(sp)
     a24:	02912223          	sw	s1,36(sp)
     a28:	03212023          	sw	s2,32(sp)
     a2c:	01312e23          	sw	s3,28(sp)
     a30:	01412c23          	sw	s4,24(sp)
     a34:	02112623          	sw	ra,44(sp)
     a38:	01512a23          	sw	s5,20(sp)
     a3c:	00001a37          	lui	s4,0x1
     a40:	00050493          	mv	s1,a0
     a44:	00058413          	mv	s0,a1
     a48:	00058523          	sb	zero,10(a1)
     a4c:	00000993          	li	s3,0
     a50:	00410913          	addi	s2,sp,4
     a54:	4f4a0a13          	addi	s4,s4,1268 # 14f4 <numbers.1>
     a58:	00a00593          	li	a1,10
     a5c:	00048513          	mv	a0,s1
     a60:	430000ef          	jal	ra,e90 <__umodsi3>
     a64:	00aa0533          	add	a0,s4,a0
     a68:	00054783          	lbu	a5,0(a0)
     a6c:	01390ab3          	add	s5,s2,s3
     a70:	00048513          	mv	a0,s1
     a74:	00fa8023          	sb	a5,0(s5)
     a78:	00a00593          	li	a1,10
     a7c:	3cc000ef          	jal	ra,e48 <__hidden___udivsi3>
     a80:	00198993          	addi	s3,s3,1
     a84:	00a00793          	li	a5,10
     a88:	00050493          	mv	s1,a0
     a8c:	fcf996e3          	bne	s3,a5,a58 <__neorv32_uart_itoa+0x3c>
     a90:	00090693          	mv	a3,s2
     a94:	00900713          	li	a4,9
     a98:	03000613          	li	a2,48
     a9c:	0096c583          	lbu	a1,9(a3)
     aa0:	00070793          	mv	a5,a4
     aa4:	fff70713          	addi	a4,a4,-1
     aa8:	01071713          	slli	a4,a4,0x10
     aac:	01075713          	srli	a4,a4,0x10
     ab0:	00c59a63          	bne	a1,a2,ac4 <__neorv32_uart_itoa+0xa8>
     ab4:	000684a3          	sb	zero,9(a3)
     ab8:	fff68693          	addi	a3,a3,-1
     abc:	fe0710e3          	bnez	a4,a9c <__neorv32_uart_itoa+0x80>
     ac0:	00000793          	li	a5,0
     ac4:	00f907b3          	add	a5,s2,a5
     ac8:	00000713          	li	a4,0
     acc:	0007c683          	lbu	a3,0(a5)
     ad0:	00068c63          	beqz	a3,ae8 <__neorv32_uart_itoa+0xcc>
     ad4:	00170613          	addi	a2,a4,1
     ad8:	00e40733          	add	a4,s0,a4
     adc:	00d70023          	sb	a3,0(a4)
     ae0:	01061713          	slli	a4,a2,0x10
     ae4:	01075713          	srli	a4,a4,0x10
     ae8:	fff78693          	addi	a3,a5,-1
     aec:	02f91863          	bne	s2,a5,b1c <__neorv32_uart_itoa+0x100>
     af0:	00e40433          	add	s0,s0,a4
     af4:	00040023          	sb	zero,0(s0)
     af8:	02c12083          	lw	ra,44(sp)
     afc:	02812403          	lw	s0,40(sp)
     b00:	02412483          	lw	s1,36(sp)
     b04:	02012903          	lw	s2,32(sp)
     b08:	01c12983          	lw	s3,28(sp)
     b0c:	01812a03          	lw	s4,24(sp)
     b10:	01412a83          	lw	s5,20(sp)
     b14:	03010113          	addi	sp,sp,48
     b18:	00008067          	ret
     b1c:	00068793          	mv	a5,a3
     b20:	fadff06f          	j	acc <__neorv32_uart_itoa+0xb0>

00000b24 <__neorv32_uart_tohex>:
     b24:	00001637          	lui	a2,0x1
     b28:	00758693          	addi	a3,a1,7
     b2c:	00000713          	li	a4,0
     b30:	4e060613          	addi	a2,a2,1248 # 14e0 <symbols.0>
     b34:	02000813          	li	a6,32
     b38:	00e557b3          	srl	a5,a0,a4
     b3c:	00f7f793          	andi	a5,a5,15
     b40:	00f607b3          	add	a5,a2,a5
     b44:	0007c783          	lbu	a5,0(a5)
     b48:	00470713          	addi	a4,a4,4
     b4c:	fff68693          	addi	a3,a3,-1
     b50:	00f680a3          	sb	a5,1(a3)
     b54:	ff0712e3          	bne	a4,a6,b38 <__neorv32_uart_tohex+0x14>
     b58:	00058423          	sb	zero,8(a1)
     b5c:	00008067          	ret

00000b60 <neorv32_uart0_available>:
     b60:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     b64:	01255513          	srli	a0,a0,0x12
     b68:	00157513          	andi	a0,a0,1
     b6c:	00008067          	ret

00000b70 <neorv32_uart0_setup>:
     b70:	ff010113          	addi	sp,sp,-16
     b74:	00812423          	sw	s0,8(sp)
     b78:	00912223          	sw	s1,4(sp)
     b7c:	00112623          	sw	ra,12(sp)
     b80:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     b84:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     b88:	00058413          	mv	s0,a1
     b8c:	00151593          	slli	a1,a0,0x1
     b90:	00078513          	mv	a0,a5
     b94:	00060493          	mv	s1,a2
     b98:	2b0000ef          	jal	ra,e48 <__hidden___udivsi3>
     b9c:	01051513          	slli	a0,a0,0x10
     ba0:	000017b7          	lui	a5,0x1
     ba4:	01055513          	srli	a0,a0,0x10
     ba8:	00000713          	li	a4,0
     bac:	ffe78793          	addi	a5,a5,-2 # ffe <memcpy+0x10a>
     bb0:	04a7e463          	bltu	a5,a0,bf8 <neorv32_uart0_setup+0x88>
     bb4:	0034f493          	andi	s1,s1,3
     bb8:	01449493          	slli	s1,s1,0x14
     bbc:	00347413          	andi	s0,s0,3
     bc0:	fff50793          	addi	a5,a0,-1
     bc4:	0097e7b3          	or	a5,a5,s1
     bc8:	01641413          	slli	s0,s0,0x16
     bcc:	0087e7b3          	or	a5,a5,s0
     bd0:	01871713          	slli	a4,a4,0x18
     bd4:	00c12083          	lw	ra,12(sp)
     bd8:	00812403          	lw	s0,8(sp)
     bdc:	00e7e7b3          	or	a5,a5,a4
     be0:	10000737          	lui	a4,0x10000
     be4:	00e7e7b3          	or	a5,a5,a4
     be8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     bec:	00412483          	lw	s1,4(sp)
     bf0:	01010113          	addi	sp,sp,16
     bf4:	00008067          	ret
     bf8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeafe>
     bfc:	0fd6f693          	andi	a3,a3,253
     c00:	00069a63          	bnez	a3,c14 <neorv32_uart0_setup+0xa4>
     c04:	00355513          	srli	a0,a0,0x3
     c08:	00170713          	addi	a4,a4,1
     c0c:	0ff77713          	zext.b	a4,a4
     c10:	fa1ff06f          	j	bb0 <neorv32_uart0_setup+0x40>
     c14:	00155513          	srli	a0,a0,0x1
     c18:	ff1ff06f          	j	c08 <neorv32_uart0_setup+0x98>

00000c1c <neorv32_uart0_putc>:
     c1c:	00040737          	lui	a4,0x40
     c20:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c24:	00e7f7b3          	and	a5,a5,a4
     c28:	fe079ce3          	bnez	a5,c20 <neorv32_uart0_putc+0x4>
     c2c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     c30:	00008067          	ret

00000c34 <neorv32_uart0_print>:
     c34:	ff010113          	addi	sp,sp,-16
     c38:	00812423          	sw	s0,8(sp)
     c3c:	01212023          	sw	s2,0(sp)
     c40:	00112623          	sw	ra,12(sp)
     c44:	00912223          	sw	s1,4(sp)
     c48:	00050413          	mv	s0,a0
     c4c:	00a00913          	li	s2,10
     c50:	00044483          	lbu	s1,0(s0)
     c54:	00140413          	addi	s0,s0,1
     c58:	00049e63          	bnez	s1,c74 <neorv32_uart0_print+0x40>
     c5c:	00c12083          	lw	ra,12(sp)
     c60:	00812403          	lw	s0,8(sp)
     c64:	00412483          	lw	s1,4(sp)
     c68:	00012903          	lw	s2,0(sp)
     c6c:	01010113          	addi	sp,sp,16
     c70:	00008067          	ret
     c74:	01249663          	bne	s1,s2,c80 <neorv32_uart0_print+0x4c>
     c78:	00d00513          	li	a0,13
     c7c:	fa1ff0ef          	jal	ra,c1c <neorv32_uart0_putc>
     c80:	00048513          	mv	a0,s1
     c84:	f99ff0ef          	jal	ra,c1c <neorv32_uart0_putc>
     c88:	fc9ff06f          	j	c50 <neorv32_uart0_print+0x1c>

00000c8c <neorv32_uart0_printf>:
     c8c:	fa010113          	addi	sp,sp,-96
     c90:	04f12a23          	sw	a5,84(sp)
     c94:	04410793          	addi	a5,sp,68
     c98:	02812c23          	sw	s0,56(sp)
     c9c:	03212823          	sw	s2,48(sp)
     ca0:	03312623          	sw	s3,44(sp)
     ca4:	03412423          	sw	s4,40(sp)
     ca8:	03512223          	sw	s5,36(sp)
     cac:	03612023          	sw	s6,32(sp)
     cb0:	01712e23          	sw	s7,28(sp)
     cb4:	01812c23          	sw	s8,24(sp)
     cb8:	02112e23          	sw	ra,60(sp)
     cbc:	02912a23          	sw	s1,52(sp)
     cc0:	00050413          	mv	s0,a0
     cc4:	04b12223          	sw	a1,68(sp)
     cc8:	04c12423          	sw	a2,72(sp)
     ccc:	04d12623          	sw	a3,76(sp)
     cd0:	04e12823          	sw	a4,80(sp)
     cd4:	05012c23          	sw	a6,88(sp)
     cd8:	05112e23          	sw	a7,92(sp)
     cdc:	00f12023          	sw	a5,0(sp)
     ce0:	02500993          	li	s3,37
     ce4:	00a00a13          	li	s4,10
     ce8:	07300913          	li	s2,115
     cec:	07500a93          	li	s5,117
     cf0:	07800b13          	li	s6,120
     cf4:	06300b93          	li	s7,99
     cf8:	06900c13          	li	s8,105
     cfc:	00044483          	lbu	s1,0(s0)
     d00:	02049a63          	bnez	s1,d34 <neorv32_uart0_printf+0xa8>
     d04:	03c12083          	lw	ra,60(sp)
     d08:	03812403          	lw	s0,56(sp)
     d0c:	03412483          	lw	s1,52(sp)
     d10:	03012903          	lw	s2,48(sp)
     d14:	02c12983          	lw	s3,44(sp)
     d18:	02812a03          	lw	s4,40(sp)
     d1c:	02412a83          	lw	s5,36(sp)
     d20:	02012b03          	lw	s6,32(sp)
     d24:	01c12b83          	lw	s7,28(sp)
     d28:	01812c03          	lw	s8,24(sp)
     d2c:	06010113          	addi	sp,sp,96
     d30:	00008067          	ret
     d34:	0d349663          	bne	s1,s3,e00 <neorv32_uart0_printf+0x174>
     d38:	00144483          	lbu	s1,1(s0)
     d3c:	05248263          	beq	s1,s2,d80 <neorv32_uart0_printf+0xf4>
     d40:	00996e63          	bltu	s2,s1,d5c <neorv32_uart0_printf+0xd0>
     d44:	05748c63          	beq	s1,s7,d9c <neorv32_uart0_printf+0x110>
     d48:	07848663          	beq	s1,s8,db4 <neorv32_uart0_printf+0x128>
     d4c:	02500513          	li	a0,37
     d50:	ecdff0ef          	jal	ra,c1c <neorv32_uart0_putc>
     d54:	00048513          	mv	a0,s1
     d58:	0540006f          	j	dac <neorv32_uart0_printf+0x120>
     d5c:	09548663          	beq	s1,s5,de8 <neorv32_uart0_printf+0x15c>
     d60:	ff6496e3          	bne	s1,s6,d4c <neorv32_uart0_printf+0xc0>
     d64:	00012783          	lw	a5,0(sp)
     d68:	00410593          	addi	a1,sp,4
     d6c:	0007a503          	lw	a0,0(a5)
     d70:	00478713          	addi	a4,a5,4
     d74:	00e12023          	sw	a4,0(sp)
     d78:	dadff0ef          	jal	ra,b24 <__neorv32_uart_tohex>
     d7c:	0640006f          	j	de0 <neorv32_uart0_printf+0x154>
     d80:	00012783          	lw	a5,0(sp)
     d84:	0007a503          	lw	a0,0(a5)
     d88:	00478713          	addi	a4,a5,4
     d8c:	00e12023          	sw	a4,0(sp)
     d90:	ea5ff0ef          	jal	ra,c34 <neorv32_uart0_print>
     d94:	00240413          	addi	s0,s0,2
     d98:	f65ff06f          	j	cfc <neorv32_uart0_printf+0x70>
     d9c:	00012783          	lw	a5,0(sp)
     da0:	0007c503          	lbu	a0,0(a5)
     da4:	00478713          	addi	a4,a5,4
     da8:	00e12023          	sw	a4,0(sp)
     dac:	e71ff0ef          	jal	ra,c1c <neorv32_uart0_putc>
     db0:	fe5ff06f          	j	d94 <neorv32_uart0_printf+0x108>
     db4:	00012783          	lw	a5,0(sp)
     db8:	0007a483          	lw	s1,0(a5)
     dbc:	00478713          	addi	a4,a5,4
     dc0:	00e12023          	sw	a4,0(sp)
     dc4:	0004d863          	bgez	s1,dd4 <neorv32_uart0_printf+0x148>
     dc8:	02d00513          	li	a0,45
     dcc:	409004b3          	neg	s1,s1
     dd0:	e4dff0ef          	jal	ra,c1c <neorv32_uart0_putc>
     dd4:	00410593          	addi	a1,sp,4
     dd8:	00048513          	mv	a0,s1
     ddc:	c41ff0ef          	jal	ra,a1c <__neorv32_uart_itoa>
     de0:	00410513          	addi	a0,sp,4
     de4:	fadff06f          	j	d90 <neorv32_uart0_printf+0x104>
     de8:	00012783          	lw	a5,0(sp)
     dec:	00410593          	addi	a1,sp,4
     df0:	00478713          	addi	a4,a5,4
     df4:	0007a503          	lw	a0,0(a5)
     df8:	00e12023          	sw	a4,0(sp)
     dfc:	fe1ff06f          	j	ddc <neorv32_uart0_printf+0x150>
     e00:	01449663          	bne	s1,s4,e0c <neorv32_uart0_printf+0x180>
     e04:	00d00513          	li	a0,13
     e08:	e15ff0ef          	jal	ra,c1c <neorv32_uart0_putc>
     e0c:	00048513          	mv	a0,s1
     e10:	00140413          	addi	s0,s0,1
     e14:	e09ff0ef          	jal	ra,c1c <neorv32_uart0_putc>
     e18:	ee5ff06f          	j	cfc <neorv32_uart0_printf+0x70>

00000e1c <__mulsi3>:
     e1c:	00050613          	mv	a2,a0
     e20:	00000513          	li	a0,0
     e24:	0015f693          	andi	a3,a1,1
     e28:	00068463          	beqz	a3,e30 <__mulsi3+0x14>
     e2c:	00c50533          	add	a0,a0,a2
     e30:	0015d593          	srli	a1,a1,0x1
     e34:	00161613          	slli	a2,a2,0x1
     e38:	fe0596e3          	bnez	a1,e24 <__mulsi3+0x8>
     e3c:	00008067          	ret

00000e40 <__divsi3>:
     e40:	06054063          	bltz	a0,ea0 <__umodsi3+0x10>
     e44:	0605c663          	bltz	a1,eb0 <__umodsi3+0x20>

00000e48 <__hidden___udivsi3>:
     e48:	00058613          	mv	a2,a1
     e4c:	00050593          	mv	a1,a0
     e50:	fff00513          	li	a0,-1
     e54:	02060c63          	beqz	a2,e8c <__hidden___udivsi3+0x44>
     e58:	00100693          	li	a3,1
     e5c:	00b67a63          	bgeu	a2,a1,e70 <__hidden___udivsi3+0x28>
     e60:	00c05863          	blez	a2,e70 <__hidden___udivsi3+0x28>
     e64:	00161613          	slli	a2,a2,0x1
     e68:	00169693          	slli	a3,a3,0x1
     e6c:	feb66ae3          	bltu	a2,a1,e60 <__hidden___udivsi3+0x18>
     e70:	00000513          	li	a0,0
     e74:	00c5e663          	bltu	a1,a2,e80 <__hidden___udivsi3+0x38>
     e78:	40c585b3          	sub	a1,a1,a2
     e7c:	00d56533          	or	a0,a0,a3
     e80:	0016d693          	srli	a3,a3,0x1
     e84:	00165613          	srli	a2,a2,0x1
     e88:	fe0696e3          	bnez	a3,e74 <__hidden___udivsi3+0x2c>
     e8c:	00008067          	ret

00000e90 <__umodsi3>:
     e90:	00008293          	mv	t0,ra
     e94:	fb5ff0ef          	jal	ra,e48 <__hidden___udivsi3>
     e98:	00058513          	mv	a0,a1
     e9c:	00028067          	jr	t0
     ea0:	40a00533          	neg	a0,a0
     ea4:	00b04863          	bgtz	a1,eb4 <__umodsi3+0x24>
     ea8:	40b005b3          	neg	a1,a1
     eac:	f9dff06f          	j	e48 <__hidden___udivsi3>
     eb0:	40b005b3          	neg	a1,a1
     eb4:	00008293          	mv	t0,ra
     eb8:	f91ff0ef          	jal	ra,e48 <__hidden___udivsi3>
     ebc:	40a00533          	neg	a0,a0
     ec0:	00028067          	jr	t0

00000ec4 <__modsi3>:
     ec4:	00008293          	mv	t0,ra
     ec8:	0005ca63          	bltz	a1,edc <__modsi3+0x18>
     ecc:	00054c63          	bltz	a0,ee4 <__modsi3+0x20>
     ed0:	f79ff0ef          	jal	ra,e48 <__hidden___udivsi3>
     ed4:	00058513          	mv	a0,a1
     ed8:	00028067          	jr	t0
     edc:	40b005b3          	neg	a1,a1
     ee0:	fe0558e3          	bgez	a0,ed0 <__modsi3+0xc>
     ee4:	40a00533          	neg	a0,a0
     ee8:	f61ff0ef          	jal	ra,e48 <__hidden___udivsi3>
     eec:	40b00533          	neg	a0,a1
     ef0:	00028067          	jr	t0

00000ef4 <memcpy>:
     ef4:	00b547b3          	xor	a5,a0,a1
     ef8:	0037f793          	andi	a5,a5,3
     efc:	00c508b3          	add	a7,a0,a2
     f00:	06079463          	bnez	a5,f68 <memcpy+0x74>
     f04:	00300793          	li	a5,3
     f08:	06c7f063          	bgeu	a5,a2,f68 <memcpy+0x74>
     f0c:	00357793          	andi	a5,a0,3
     f10:	00050713          	mv	a4,a0
     f14:	06079a63          	bnez	a5,f88 <memcpy+0x94>
     f18:	ffc8f613          	andi	a2,a7,-4
     f1c:	40e606b3          	sub	a3,a2,a4
     f20:	02000793          	li	a5,32
     f24:	08d7ce63          	blt	a5,a3,fc0 <memcpy+0xcc>
     f28:	00058693          	mv	a3,a1
     f2c:	00070793          	mv	a5,a4
     f30:	02c77863          	bgeu	a4,a2,f60 <memcpy+0x6c>
     f34:	0006a803          	lw	a6,0(a3)
     f38:	00478793          	addi	a5,a5,4
     f3c:	00468693          	addi	a3,a3,4
     f40:	ff07ae23          	sw	a6,-4(a5)
     f44:	fec7e8e3          	bltu	a5,a2,f34 <memcpy+0x40>
     f48:	fff60793          	addi	a5,a2,-1
     f4c:	40e787b3          	sub	a5,a5,a4
     f50:	ffc7f793          	andi	a5,a5,-4
     f54:	00478793          	addi	a5,a5,4
     f58:	00f70733          	add	a4,a4,a5
     f5c:	00f585b3          	add	a1,a1,a5
     f60:	01176863          	bltu	a4,a7,f70 <memcpy+0x7c>
     f64:	00008067          	ret
     f68:	00050713          	mv	a4,a0
     f6c:	05157863          	bgeu	a0,a7,fbc <memcpy+0xc8>
     f70:	0005c783          	lbu	a5,0(a1)
     f74:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3eb01>
     f78:	00158593          	addi	a1,a1,1
     f7c:	fef70fa3          	sb	a5,-1(a4)
     f80:	fee898e3          	bne	a7,a4,f70 <memcpy+0x7c>
     f84:	00008067          	ret
     f88:	0005c683          	lbu	a3,0(a1)
     f8c:	00170713          	addi	a4,a4,1
     f90:	00377793          	andi	a5,a4,3
     f94:	fed70fa3          	sb	a3,-1(a4)
     f98:	00158593          	addi	a1,a1,1
     f9c:	f6078ee3          	beqz	a5,f18 <memcpy+0x24>
     fa0:	0005c683          	lbu	a3,0(a1)
     fa4:	00170713          	addi	a4,a4,1
     fa8:	00377793          	andi	a5,a4,3
     fac:	fed70fa3          	sb	a3,-1(a4)
     fb0:	00158593          	addi	a1,a1,1
     fb4:	fc079ae3          	bnez	a5,f88 <memcpy+0x94>
     fb8:	f61ff06f          	j	f18 <memcpy+0x24>
     fbc:	00008067          	ret
     fc0:	ff010113          	addi	sp,sp,-16
     fc4:	00812623          	sw	s0,12(sp)
     fc8:	02000413          	li	s0,32
     fcc:	0005a383          	lw	t2,0(a1)
     fd0:	0045a283          	lw	t0,4(a1)
     fd4:	0085af83          	lw	t6,8(a1)
     fd8:	00c5af03          	lw	t5,12(a1)
     fdc:	0105ae83          	lw	t4,16(a1)
     fe0:	0145ae03          	lw	t3,20(a1)
     fe4:	0185a303          	lw	t1,24(a1)
     fe8:	01c5a803          	lw	a6,28(a1)
     fec:	0205a683          	lw	a3,32(a1)
     ff0:	02470713          	addi	a4,a4,36
     ff4:	40e607b3          	sub	a5,a2,a4
     ff8:	fc772e23          	sw	t2,-36(a4)
     ffc:	fe572023          	sw	t0,-32(a4)
    1000:	fff72223          	sw	t6,-28(a4)
    1004:	ffe72423          	sw	t5,-24(a4)
    1008:	ffd72623          	sw	t4,-20(a4)
    100c:	ffc72823          	sw	t3,-16(a4)
    1010:	fe672a23          	sw	t1,-12(a4)
    1014:	ff072c23          	sw	a6,-8(a4)
    1018:	fed72e23          	sw	a3,-4(a4)
    101c:	02458593          	addi	a1,a1,36
    1020:	faf446e3          	blt	s0,a5,fcc <memcpy+0xd8>
    1024:	00058693          	mv	a3,a1
    1028:	00070793          	mv	a5,a4
    102c:	02c77863          	bgeu	a4,a2,105c <memcpy+0x168>
    1030:	0006a803          	lw	a6,0(a3)
    1034:	00478793          	addi	a5,a5,4
    1038:	00468693          	addi	a3,a3,4
    103c:	ff07ae23          	sw	a6,-4(a5)
    1040:	fec7e8e3          	bltu	a5,a2,1030 <memcpy+0x13c>
    1044:	fff60793          	addi	a5,a2,-1
    1048:	40e787b3          	sub	a5,a5,a4
    104c:	ffc7f793          	andi	a5,a5,-4
    1050:	00478793          	addi	a5,a5,4
    1054:	00f70733          	add	a4,a4,a5
    1058:	00f585b3          	add	a1,a1,a5
    105c:	01176863          	bltu	a4,a7,106c <memcpy+0x178>
    1060:	00c12403          	lw	s0,12(sp)
    1064:	01010113          	addi	sp,sp,16
    1068:	00008067          	ret
    106c:	0005c783          	lbu	a5,0(a1)
    1070:	00170713          	addi	a4,a4,1
    1074:	00158593          	addi	a1,a1,1
    1078:	fef70fa3          	sb	a5,-1(a4)
    107c:	fee882e3          	beq	a7,a4,1060 <memcpy+0x16c>
    1080:	0005c783          	lbu	a5,0(a1)
    1084:	00170713          	addi	a4,a4,1
    1088:	00158593          	addi	a1,a1,1
    108c:	fef70fa3          	sb	a5,-1(a4)
    1090:	fce89ee3          	bne	a7,a4,106c <memcpy+0x178>
    1094:	fcdff06f          	j	1060 <memcpy+0x16c>
