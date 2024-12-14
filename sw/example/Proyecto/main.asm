
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
      e0:	4bc58593          	addi	a1,a1,1212 # 1598 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3568>
     194:	00112623          	sw	ra,12(sp)
     198:	271000ef          	jal	ra,c08 <neorv32_uart0_setup>
     19c:	358000ef          	jal	ra,4f4 <neorv32_gpio_available>
     1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
     1a4:	0c9000ef          	jal	ra,a6c <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	27c50513          	addi	a0,a0,636 # 127c <__etext+0x14c>
     1b0:	31d000ef          	jal	ra,ccc <neorv32_uart0_print>
     1b4:	11c000ef          	jal	ra,2d0 <wb_calculadora>
     1b8:	ffdff06f          	j	1b4 <main+0x34>
     1bc:	00001537          	lui	a0,0x1
     1c0:	25850513          	addi	a0,a0,600 # 1258 <__etext+0x128>
     1c4:	309000ef          	jal	ra,ccc <neorv32_uart0_print>
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00100513          	li	a0,1
     1d0:	01010113          	addi	sp,sp,16
     1d4:	00008067          	ret

000001d8 <keyboard>:
     1d8:	f9010113          	addi	sp,sp,-112
     1dc:	000015b7          	lui	a1,0x1
     1e0:	04000613          	li	a2,64
     1e4:	29058593          	addi	a1,a1,656 # 1290 <__etext+0x160>
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
     210:	57d000ef          	jal	ra,f8c <memcpy>
     214:	0ff00513          	li	a0,255
     218:	00000593          	li	a1,0
     21c:	370000ef          	jal	ra,58c <neorv32_gpio_port_set>
     220:	0ff00a93          	li	s5,255
     224:	00800b13          	li	s6,8
     228:	00400b93          	li	s7,4
     22c:	00010993          	mv	s3,sp
     230:	0ff00413          	li	s0,255
     234:	00000493          	li	s1,0
     238:	00048513          	mv	a0,s1
     23c:	2f8000ef          	jal	ra,534 <neorv32_gpio_pin_clr>
     240:	00098a13          	mv	s4,s3
     244:	00400913          	li	s2,4
     248:	00090513          	mv	a0,s2
     24c:	31c000ef          	jal	ra,568 <neorv32_gpio_pin_get>
     250:	00051e63          	bnez	a0,26c <keyboard+0x94>
     254:	03ca2403          	lw	s0,60(s4)
     258:	01540a63          	beq	s0,s5,26c <keyboard+0x94>
     25c:	00441513          	slli	a0,s0,0x4
     260:	0f057513          	andi	a0,a0,240
     264:	00000593          	li	a1,0
     268:	324000ef          	jal	ra,58c <neorv32_gpio_port_set>
     26c:	00190913          	addi	s2,s2,1
     270:	ff0a0a13          	addi	s4,s4,-16
     274:	fd691ae3          	bne	s2,s6,248 <keyboard+0x70>
     278:	00048513          	mv	a0,s1
     27c:	00148493          	addi	s1,s1,1
     280:	284000ef          	jal	ra,504 <neorv32_gpio_pin_set>
     284:	ffc98993          	addi	s3,s3,-4
     288:	fb7498e3          	bne	s1,s7,238 <keyboard+0x60>
     28c:	fb5400e3          	beq	s0,s5,22c <keyboard+0x54>
     290:	00001537          	lui	a0,0x1
     294:	00040593          	mv	a1,s0
     298:	13050513          	addi	a0,a0,304 # 1130 <__etext>
     29c:	289000ef          	jal	ra,d24 <neorv32_uart0_printf>
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
     2d8:	14450513          	addi	a0,a0,324 # 1144 <__etext+0x14>
     2dc:	00112e23          	sw	ra,28(sp)
     2e0:	00912a23          	sw	s1,20(sp)
     2e4:	01412423          	sw	s4,8(sp)
     2e8:	01512223          	sw	s5,4(sp)
     2ec:	01612023          	sw	s6,0(sp)
     2f0:	00812c23          	sw	s0,24(sp)
     2f4:	01212823          	sw	s2,16(sp)
     2f8:	01312623          	sw	s3,12(sp)
     2fc:	229000ef          	jal	ra,d24 <neorv32_uart0_printf>
     300:	00001537          	lui	a0,0x1
     304:	19450513          	addi	a0,a0,404 # 1194 <__etext+0x64>
     308:	21d000ef          	jal	ra,d24 <neorv32_uart0_printf>
     30c:	00000493          	li	s1,0
     310:	00900a13          	li	s4,9
     314:	00800a93          	li	s5,8
     318:	00400b13          	li	s6,4
     31c:	ebdff0ef          	jal	ra,1d8 <keyboard>
     320:	00050413          	mv	s0,a0
     324:	0aaa7a63          	bgeu	s4,a0,3d8 <wb_calculadora+0x108>
     328:	00001537          	lui	a0,0x1
     32c:	00048593          	mv	a1,s1
     330:	1b850513          	addi	a0,a0,440 # 11b8 <__etext+0x88>
     334:	1f1000ef          	jal	ra,d24 <neorv32_uart0_printf>
     338:	90000937          	lui	s2,0x90000
     33c:	00992023          	sw	s1,0(s2) # 90000000 <__ctr0_io_space_begin+0x90000200>
     340:	00001537          	lui	a0,0x1
     344:	00040593          	mv	a1,s0
     348:	1cc50513          	addi	a0,a0,460 # 11cc <__etext+0x9c>
     34c:	1d9000ef          	jal	ra,d24 <neorv32_uart0_printf>
     350:	00890913          	addi	s2,s2,8
     354:	00892023          	sw	s0,0(s2)
     358:	00001537          	lui	a0,0x1
     35c:	1dc50513          	addi	a0,a0,476 # 11dc <__etext+0xac>
     360:	1c5000ef          	jal	ra,d24 <neorv32_uart0_printf>
     364:	00000413          	li	s0,0
     368:	00900a13          	li	s4,9
     36c:	00800a93          	li	s5,8
     370:	00400b13          	li	s6,4
     374:	e65ff0ef          	jal	ra,1d8 <keyboard>
     378:	0aaa7863          	bgeu	s4,a0,428 <wb_calculadora+0x158>
     37c:	00001537          	lui	a0,0x1
     380:	00040593          	mv	a1,s0
     384:	1fc50513          	addi	a0,a0,508 # 11fc <__etext+0xcc>
     388:	19d000ef          	jal	ra,d24 <neorv32_uart0_printf>
     38c:	900007b7          	lui	a5,0x90000
     390:	00478693          	addi	a3,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     394:	0086a023          	sw	s0,0(a3)
     398:	0007a503          	lw	a0,0(a5)
     39c:	0006a683          	lw	a3,0(a3)
     3a0:	00878793          	addi	a5,a5,8
     3a4:	0007a783          	lw	a5,0(a5)
     3a8:	00c00713          	li	a4,12
     3ac:	0ee78263          	beq	a5,a4,490 <wb_calculadora+0x1c0>
     3b0:	0cf76463          	bltu	a4,a5,478 <wb_calculadora+0x1a8>
     3b4:	00a00613          	li	a2,10
     3b8:	00a68733          	add	a4,a3,a0
     3bc:	0ec78263          	beq	a5,a2,4a0 <wb_calculadora+0x1d0>
     3c0:	00b00613          	li	a2,11
     3c4:	40d50733          	sub	a4,a0,a3
     3c8:	0cc78c63          	beq	a5,a2,4a0 <wb_calculadora+0x1d0>
     3cc:	00001537          	lui	a0,0x1
     3d0:	22c50513          	addi	a0,a0,556 # 122c <__etext+0xfc>
     3d4:	1140006f          	j	4e8 <wb_calculadora+0x218>
     3d8:	00249793          	slli	a5,s1,0x2
     3dc:	009787b3          	add	a5,a5,s1
     3e0:	00179793          	slli	a5,a5,0x1
     3e4:	008784b3          	add	s1,a5,s0
     3e8:	00000993          	li	s3,0
     3ec:	00000413          	li	s0,0
     3f0:	00040513          	mv	a0,s0
     3f4:	140000ef          	jal	ra,534 <neorv32_gpio_pin_clr>
     3f8:	00400913          	li	s2,4
     3fc:	00090513          	mv	a0,s2
     400:	168000ef          	jal	ra,568 <neorv32_gpio_pin_get>
     404:	00190913          	addi	s2,s2,1
     408:	00a989b3          	add	s3,s3,a0
     40c:	ff5918e3          	bne	s2,s5,3fc <wb_calculadora+0x12c>
     410:	00040513          	mv	a0,s0
     414:	00140413          	addi	s0,s0,1
     418:	0ec000ef          	jal	ra,504 <neorv32_gpio_pin_set>
     41c:	fd641ae3          	bne	s0,s6,3f0 <wb_calculadora+0x120>
     420:	fc0994e3          	bnez	s3,3e8 <wb_calculadora+0x118>
     424:	ef9ff06f          	j	31c <wb_calculadora+0x4c>
     428:	00241793          	slli	a5,s0,0x2
     42c:	008787b3          	add	a5,a5,s0
     430:	00179793          	slli	a5,a5,0x1
     434:	00a78433          	add	s0,a5,a0
     438:	00000993          	li	s3,0
     43c:	00000493          	li	s1,0
     440:	00048513          	mv	a0,s1
     444:	0f0000ef          	jal	ra,534 <neorv32_gpio_pin_clr>
     448:	00400913          	li	s2,4
     44c:	00090513          	mv	a0,s2
     450:	118000ef          	jal	ra,568 <neorv32_gpio_pin_get>
     454:	00190913          	addi	s2,s2,1
     458:	00a989b3          	add	s3,s3,a0
     45c:	ff5918e3          	bne	s2,s5,44c <wb_calculadora+0x17c>
     460:	00048513          	mv	a0,s1
     464:	00148493          	addi	s1,s1,1
     468:	09c000ef          	jal	ra,504 <neorv32_gpio_pin_set>
     46c:	fd649ae3          	bne	s1,s6,440 <wb_calculadora+0x170>
     470:	fc0994e3          	bnez	s3,438 <wb_calculadora+0x168>
     474:	f01ff06f          	j	374 <wb_calculadora+0xa4>
     478:	00d00713          	li	a4,13
     47c:	f4e798e3          	bne	a5,a4,3cc <wb_calculadora+0xfc>
     480:	06068063          	beqz	a3,4e0 <wb_calculadora+0x210>
     484:	00068593          	mv	a1,a3
     488:	259000ef          	jal	ra,ee0 <__hidden___udivsi3>
     48c:	0100006f          	j	49c <wb_calculadora+0x1cc>
     490:	00050593          	mv	a1,a0
     494:	00068513          	mv	a0,a3
     498:	21d000ef          	jal	ra,eb4 <__mulsi3>
     49c:	00050713          	mv	a4,a0
     4a0:	900005b7          	lui	a1,0x90000
     4a4:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     4a8:	00e5a023          	sw	a4,0(a1)
     4ac:	0005a583          	lw	a1,0(a1)
     4b0:	01812403          	lw	s0,24(sp)
     4b4:	01c12083          	lw	ra,28(sp)
     4b8:	01412483          	lw	s1,20(sp)
     4bc:	01012903          	lw	s2,16(sp)
     4c0:	00c12983          	lw	s3,12(sp)
     4c4:	00812a03          	lw	s4,8(sp)
     4c8:	00412a83          	lw	s5,4(sp)
     4cc:	00012b03          	lw	s6,0(sp)
     4d0:	00001537          	lui	a0,0x1
     4d4:	24850513          	addi	a0,a0,584 # 1248 <__etext+0x118>
     4d8:	02010113          	addi	sp,sp,32
     4dc:	0490006f          	j	d24 <neorv32_uart0_printf>
     4e0:	00001537          	lui	a0,0x1
     4e4:	21050513          	addi	a0,a0,528 # 1210 <__etext+0xe0>
     4e8:	03d000ef          	jal	ra,d24 <neorv32_uart0_printf>
     4ec:	fff00713          	li	a4,-1
     4f0:	fb1ff06f          	j	4a0 <wb_calculadora+0x1d0>

000004f4 <neorv32_gpio_available>:
     4f4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     4f8:	01055513          	srli	a0,a0,0x10
     4fc:	00157513          	andi	a0,a0,1
     500:	00008067          	ret

00000504 <neorv32_gpio_pin_set>:
     504:	00100793          	li	a5,1
     508:	01f00713          	li	a4,31
     50c:	00a797b3          	sll	a5,a5,a0
     510:	00a74a63          	blt	a4,a0,524 <neorv32_gpio_pin_set+0x20>
     514:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     518:	00f767b3          	or	a5,a4,a5
     51c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     520:	00008067          	ret
     524:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     528:	00f767b3          	or	a5,a4,a5
     52c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     530:	00008067          	ret

00000534 <neorv32_gpio_pin_clr>:
     534:	00100793          	li	a5,1
     538:	00a797b3          	sll	a5,a5,a0
     53c:	01f00713          	li	a4,31
     540:	fff7c793          	not	a5,a5
     544:	00a74a63          	blt	a4,a0,558 <neorv32_gpio_pin_clr+0x24>
     548:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     54c:	00f777b3          	and	a5,a4,a5
     550:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     554:	00008067          	ret
     558:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     55c:	00f777b3          	and	a5,a4,a5
     560:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     564:	00008067          	ret

00000568 <neorv32_gpio_pin_get>:
     568:	00100793          	li	a5,1
     56c:	01f00713          	li	a4,31
     570:	00a797b3          	sll	a5,a5,a0
     574:	00a74863          	blt	a4,a0,584 <neorv32_gpio_pin_get+0x1c>
     578:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     57c:	00f77533          	and	a0,a4,a5
     580:	00008067          	ret
     584:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     588:	ff5ff06f          	j	57c <neorv32_gpio_pin_get+0x14>

0000058c <neorv32_gpio_port_set>:
     58c:	fc000793          	li	a5,-64
     590:	00a7a423          	sw	a0,8(a5)
     594:	00b7a623          	sw	a1,12(a5)
     598:	00008067          	ret
     59c:	0000                	.2byte	0x0
     59e:	0000                	.2byte	0x0

000005a0 <__neorv32_rte_core>:
     5a0:	fc010113          	addi	sp,sp,-64
     5a4:	02112e23          	sw	ra,60(sp)
     5a8:	02512c23          	sw	t0,56(sp)
     5ac:	02612a23          	sw	t1,52(sp)
     5b0:	02712823          	sw	t2,48(sp)
     5b4:	02a12623          	sw	a0,44(sp)
     5b8:	02b12423          	sw	a1,40(sp)
     5bc:	02c12223          	sw	a2,36(sp)
     5c0:	02d12023          	sw	a3,32(sp)
     5c4:	00e12e23          	sw	a4,28(sp)
     5c8:	00f12c23          	sw	a5,24(sp)
     5cc:	01012a23          	sw	a6,20(sp)
     5d0:	01112823          	sw	a7,16(sp)
     5d4:	01c12623          	sw	t3,12(sp)
     5d8:	01d12423          	sw	t4,8(sp)
     5dc:	01e12223          	sw	t5,4(sp)
     5e0:	01f12023          	sw	t6,0(sp)
     5e4:	34102773          	csrr	a4,mepc
     5e8:	34071073          	csrw	mscratch,a4
     5ec:	342027f3          	csrr	a5,mcause
     5f0:	0807ca63          	bltz	a5,684 <__neorv32_rte_core+0xe4>
     5f4:	00071683          	lh	a3,0(a4)
     5f8:	00300593          	li	a1,3
     5fc:	0036f693          	andi	a3,a3,3
     600:	00270613          	addi	a2,a4,2
     604:	00b69463          	bne	a3,a1,60c <__neorv32_rte_core+0x6c>
     608:	00470613          	addi	a2,a4,4
     60c:	34161073          	csrw	mepc,a2
     610:	00b00713          	li	a4,11
     614:	04f77c63          	bgeu	a4,a5,66c <__neorv32_rte_core+0xcc>
     618:	000017b7          	lui	a5,0x1
     61c:	85478793          	addi	a5,a5,-1964 # 854 <__neorv32_rte_debug_exc_handler>
     620:	000780e7          	jalr	a5
     624:	03c12083          	lw	ra,60(sp)
     628:	03812283          	lw	t0,56(sp)
     62c:	03412303          	lw	t1,52(sp)
     630:	03012383          	lw	t2,48(sp)
     634:	02c12503          	lw	a0,44(sp)
     638:	02812583          	lw	a1,40(sp)
     63c:	02412603          	lw	a2,36(sp)
     640:	02012683          	lw	a3,32(sp)
     644:	01c12703          	lw	a4,28(sp)
     648:	01812783          	lw	a5,24(sp)
     64c:	01412803          	lw	a6,20(sp)
     650:	01012883          	lw	a7,16(sp)
     654:	00c12e03          	lw	t3,12(sp)
     658:	00812e83          	lw	t4,8(sp)
     65c:	00412f03          	lw	t5,4(sp)
     660:	00012f83          	lw	t6,0(sp)
     664:	04010113          	addi	sp,sp,64
     668:	30200073          	mret
     66c:	00001737          	lui	a4,0x1
     670:	00279793          	slli	a5,a5,0x2
     674:	2d070713          	addi	a4,a4,720 # 12d0 <__etext+0x1a0>
     678:	00e787b3          	add	a5,a5,a4
     67c:	0007a783          	lw	a5,0(a5)
     680:	00078067          	jr	a5
     684:	80000737          	lui	a4,0x80000
     688:	ffd74713          	xori	a4,a4,-3
     68c:	00e787b3          	add	a5,a5,a4
     690:	01c00713          	li	a4,28
     694:	f8f762e3          	bltu	a4,a5,618 <__neorv32_rte_core+0x78>
     698:	00001737          	lui	a4,0x1
     69c:	00279793          	slli	a5,a5,0x2
     6a0:	30070713          	addi	a4,a4,768 # 1300 <__etext+0x1d0>
     6a4:	00e787b3          	add	a5,a5,a4
     6a8:	0007a783          	lw	a5,0(a5)
     6ac:	00078067          	jr	a5
     6b0:	800007b7          	lui	a5,0x80000
     6b4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     6b8:	f69ff06f          	j	620 <__neorv32_rte_core+0x80>
     6bc:	800007b7          	lui	a5,0x80000
     6c0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     6c4:	f5dff06f          	j	620 <__neorv32_rte_core+0x80>
     6c8:	800007b7          	lui	a5,0x80000
     6cc:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     6d0:	f51ff06f          	j	620 <__neorv32_rte_core+0x80>
     6d4:	800007b7          	lui	a5,0x80000
     6d8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     6dc:	f45ff06f          	j	620 <__neorv32_rte_core+0x80>
     6e0:	800007b7          	lui	a5,0x80000
     6e4:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     6e8:	f39ff06f          	j	620 <__neorv32_rte_core+0x80>
     6ec:	800007b7          	lui	a5,0x80000
     6f0:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     6f4:	f2dff06f          	j	620 <__neorv32_rte_core+0x80>
     6f8:	800007b7          	lui	a5,0x80000
     6fc:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     700:	f21ff06f          	j	620 <__neorv32_rte_core+0x80>
     704:	800007b7          	lui	a5,0x80000
     708:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     70c:	f15ff06f          	j	620 <__neorv32_rte_core+0x80>
     710:	800007b7          	lui	a5,0x80000
     714:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     718:	f09ff06f          	j	620 <__neorv32_rte_core+0x80>
     71c:	800007b7          	lui	a5,0x80000
     720:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     724:	efdff06f          	j	620 <__neorv32_rte_core+0x80>
     728:	800007b7          	lui	a5,0x80000
     72c:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     730:	ef1ff06f          	j	620 <__neorv32_rte_core+0x80>
     734:	800007b7          	lui	a5,0x80000
     738:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     73c:	ee5ff06f          	j	620 <__neorv32_rte_core+0x80>
     740:	800007b7          	lui	a5,0x80000
     744:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     748:	ed9ff06f          	j	620 <__neorv32_rte_core+0x80>
     74c:	800007b7          	lui	a5,0x80000
     750:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     754:	ecdff06f          	j	620 <__neorv32_rte_core+0x80>
     758:	800007b7          	lui	a5,0x80000
     75c:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     760:	ec1ff06f          	j	620 <__neorv32_rte_core+0x80>
     764:	800007b7          	lui	a5,0x80000
     768:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     76c:	eb5ff06f          	j	620 <__neorv32_rte_core+0x80>
     770:	800007b7          	lui	a5,0x80000
     774:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     778:	ea9ff06f          	j	620 <__neorv32_rte_core+0x80>
     77c:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     780:	ea1ff06f          	j	620 <__neorv32_rte_core+0x80>
     784:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     788:	e99ff06f          	j	620 <__neorv32_rte_core+0x80>
     78c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     790:	e91ff06f          	j	620 <__neorv32_rte_core+0x80>
     794:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     798:	e89ff06f          	j	620 <__neorv32_rte_core+0x80>
     79c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     7a0:	e81ff06f          	j	620 <__neorv32_rte_core+0x80>
     7a4:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     7a8:	e79ff06f          	j	620 <__neorv32_rte_core+0x80>
     7ac:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     7b0:	e71ff06f          	j	620 <__neorv32_rte_core+0x80>
     7b4:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     7b8:	e69ff06f          	j	620 <__neorv32_rte_core+0x80>
     7bc:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     7c0:	e61ff06f          	j	620 <__neorv32_rte_core+0x80>
     7c4:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     7c8:	e59ff06f          	j	620 <__neorv32_rte_core+0x80>
     7cc:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     7d0:	e51ff06f          	j	620 <__neorv32_rte_core+0x80>
     7d4:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     7d8:	e49ff06f          	j	620 <__neorv32_rte_core+0x80>
     7dc:	0000                	.2byte	0x0
     7de:	0000                	.2byte	0x0
     7e0:	0000                	.2byte	0x0
     7e2:	0000                	.2byte	0x0

000007e4 <__neorv32_rte_print_hex_word>:
     7e4:	fe010113          	addi	sp,sp,-32
     7e8:	01212823          	sw	s2,16(sp)
     7ec:	00050913          	mv	s2,a0
     7f0:	00001537          	lui	a0,0x1
     7f4:	00912a23          	sw	s1,20(sp)
     7f8:	37450513          	addi	a0,a0,884 # 1374 <__etext+0x244>
     7fc:	000014b7          	lui	s1,0x1
     800:	00812c23          	sw	s0,24(sp)
     804:	01312623          	sw	s3,12(sp)
     808:	00112e23          	sw	ra,28(sp)
     80c:	01c00413          	li	s0,28
     810:	4bc000ef          	jal	ra,ccc <neorv32_uart0_print>
     814:	56848493          	addi	s1,s1,1384 # 1568 <hex_symbols.0>
     818:	ffc00993          	li	s3,-4
     81c:	008957b3          	srl	a5,s2,s0
     820:	00f7f793          	andi	a5,a5,15
     824:	00f487b3          	add	a5,s1,a5
     828:	0007c503          	lbu	a0,0(a5)
     82c:	ffc40413          	addi	s0,s0,-4
     830:	484000ef          	jal	ra,cb4 <neorv32_uart0_putc>
     834:	ff3414e3          	bne	s0,s3,81c <__neorv32_rte_print_hex_word+0x38>
     838:	01c12083          	lw	ra,28(sp)
     83c:	01812403          	lw	s0,24(sp)
     840:	01412483          	lw	s1,20(sp)
     844:	01012903          	lw	s2,16(sp)
     848:	00c12983          	lw	s3,12(sp)
     84c:	02010113          	addi	sp,sp,32
     850:	00008067          	ret

00000854 <__neorv32_rte_debug_exc_handler>:
     854:	ff010113          	addi	sp,sp,-16
     858:	00112623          	sw	ra,12(sp)
     85c:	00812423          	sw	s0,8(sp)
     860:	00912223          	sw	s1,4(sp)
     864:	394000ef          	jal	ra,bf8 <neorv32_uart0_available>
     868:	1a050e63          	beqz	a0,a24 <__neorv32_rte_debug_exc_handler+0x1d0>
     86c:	00001537          	lui	a0,0x1
     870:	37850513          	addi	a0,a0,888 # 1378 <__etext+0x248>
     874:	458000ef          	jal	ra,ccc <neorv32_uart0_print>
     878:	34202473          	csrr	s0,mcause
     87c:	00900713          	li	a4,9
     880:	00f47793          	andi	a5,s0,15
     884:	03078493          	addi	s1,a5,48
     888:	00f77463          	bgeu	a4,a5,890 <__neorv32_rte_debug_exc_handler+0x3c>
     88c:	05778493          	addi	s1,a5,87
     890:	00b00793          	li	a5,11
     894:	0087ee63          	bltu	a5,s0,8b0 <__neorv32_rte_debug_exc_handler+0x5c>
     898:	00001737          	lui	a4,0x1
     89c:	00241793          	slli	a5,s0,0x2
     8a0:	53870713          	addi	a4,a4,1336 # 1538 <__etext+0x408>
     8a4:	00e787b3          	add	a5,a5,a4
     8a8:	0007a783          	lw	a5,0(a5)
     8ac:	00078067          	jr	a5
     8b0:	800007b7          	lui	a5,0x80000
     8b4:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     8b8:	14e40463          	beq	s0,a4,a00 <__neorv32_rte_debug_exc_handler+0x1ac>
     8bc:	02876663          	bltu	a4,s0,8e8 <__neorv32_rte_debug_exc_handler+0x94>
     8c0:	00378713          	addi	a4,a5,3
     8c4:	12e40263          	beq	s0,a4,9e8 <__neorv32_rte_debug_exc_handler+0x194>
     8c8:	00778793          	addi	a5,a5,7
     8cc:	12f40463          	beq	s0,a5,9f4 <__neorv32_rte_debug_exc_handler+0x1a0>
     8d0:	00001537          	lui	a0,0x1
     8d4:	4d850513          	addi	a0,a0,1240 # 14d8 <__etext+0x3a8>
     8d8:	3f4000ef          	jal	ra,ccc <neorv32_uart0_print>
     8dc:	00040513          	mv	a0,s0
     8e0:	f05ff0ef          	jal	ra,7e4 <__neorv32_rte_print_hex_word>
     8e4:	0280006f          	j	90c <__neorv32_rte_debug_exc_handler+0xb8>
     8e8:	ff07c793          	xori	a5,a5,-16
     8ec:	00f407b3          	add	a5,s0,a5
     8f0:	00f00713          	li	a4,15
     8f4:	fcf76ee3          	bltu	a4,a5,8d0 <__neorv32_rte_debug_exc_handler+0x7c>
     8f8:	00001537          	lui	a0,0x1
     8fc:	4c850513          	addi	a0,a0,1224 # 14c8 <__etext+0x398>
     900:	3cc000ef          	jal	ra,ccc <neorv32_uart0_print>
     904:	00048513          	mv	a0,s1
     908:	3ac000ef          	jal	ra,cb4 <neorv32_uart0_putc>
     90c:	00001537          	lui	a0,0x1
     910:	51c50513          	addi	a0,a0,1308 # 151c <__etext+0x3ec>
     914:	3b8000ef          	jal	ra,ccc <neorv32_uart0_print>
     918:	34002573          	csrr	a0,mscratch
     91c:	ec9ff0ef          	jal	ra,7e4 <__neorv32_rte_print_hex_word>
     920:	00001537          	lui	a0,0x1
     924:	52450513          	addi	a0,a0,1316 # 1524 <__etext+0x3f4>
     928:	3a4000ef          	jal	ra,ccc <neorv32_uart0_print>
     92c:	34302573          	csrr	a0,mtval
     930:	eb5ff0ef          	jal	ra,7e4 <__neorv32_rte_print_hex_word>
     934:	00812403          	lw	s0,8(sp)
     938:	00c12083          	lw	ra,12(sp)
     93c:	00412483          	lw	s1,4(sp)
     940:	00001537          	lui	a0,0x1
     944:	53050513          	addi	a0,a0,1328 # 1530 <__etext+0x400>
     948:	01010113          	addi	sp,sp,16
     94c:	3800006f          	j	ccc <neorv32_uart0_print>
     950:	00001537          	lui	a0,0x1
     954:	38050513          	addi	a0,a0,896 # 1380 <__etext+0x250>
     958:	374000ef          	jal	ra,ccc <neorv32_uart0_print>
     95c:	fb1ff06f          	j	90c <__neorv32_rte_debug_exc_handler+0xb8>
     960:	00001537          	lui	a0,0x1
     964:	3a050513          	addi	a0,a0,928 # 13a0 <__etext+0x270>
     968:	364000ef          	jal	ra,ccc <neorv32_uart0_print>
     96c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     970:	0a07d463          	bgez	a5,a18 <__neorv32_rte_debug_exc_handler+0x1c4>
     974:	0017f793          	andi	a5,a5,1
     978:	08078a63          	beqz	a5,a0c <__neorv32_rte_debug_exc_handler+0x1b8>
     97c:	00001537          	lui	a0,0x1
     980:	4f050513          	addi	a0,a0,1264 # 14f0 <__etext+0x3c0>
     984:	fd5ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     988:	00001537          	lui	a0,0x1
     98c:	3bc50513          	addi	a0,a0,956 # 13bc <__etext+0x28c>
     990:	fc9ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     994:	00001537          	lui	a0,0x1
     998:	3d050513          	addi	a0,a0,976 # 13d0 <__etext+0x2a0>
     99c:	fbdff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     9a0:	00001537          	lui	a0,0x1
     9a4:	3dc50513          	addi	a0,a0,988 # 13dc <__etext+0x2ac>
     9a8:	fb1ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     9ac:	00001537          	lui	a0,0x1
     9b0:	3f450513          	addi	a0,a0,1012 # 13f4 <__etext+0x2c4>
     9b4:	fb5ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x114>
     9b8:	00001537          	lui	a0,0x1
     9bc:	40850513          	addi	a0,a0,1032 # 1408 <__etext+0x2d8>
     9c0:	f99ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     9c4:	00001537          	lui	a0,0x1
     9c8:	42450513          	addi	a0,a0,1060 # 1424 <__etext+0x2f4>
     9cc:	f9dff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x114>
     9d0:	00001537          	lui	a0,0x1
     9d4:	43850513          	addi	a0,a0,1080 # 1438 <__etext+0x308>
     9d8:	f81ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     9dc:	00001537          	lui	a0,0x1
     9e0:	45850513          	addi	a0,a0,1112 # 1458 <__etext+0x328>
     9e4:	f75ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     9e8:	00001537          	lui	a0,0x1
     9ec:	47850513          	addi	a0,a0,1144 # 1478 <__etext+0x348>
     9f0:	f69ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     9f4:	00001537          	lui	a0,0x1
     9f8:	49450513          	addi	a0,a0,1172 # 1494 <__etext+0x364>
     9fc:	f5dff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     a00:	00001537          	lui	a0,0x1
     a04:	4ac50513          	addi	a0,a0,1196 # 14ac <__etext+0x37c>
     a08:	f51ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     a0c:	00001537          	lui	a0,0x1
     a10:	50050513          	addi	a0,a0,1280 # 1500 <__etext+0x3d0>
     a14:	f45ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     a18:	00001537          	lui	a0,0x1
     a1c:	51050513          	addi	a0,a0,1296 # 1510 <__etext+0x3e0>
     a20:	f39ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0x104>
     a24:	00c12083          	lw	ra,12(sp)
     a28:	00812403          	lw	s0,8(sp)
     a2c:	00412483          	lw	s1,4(sp)
     a30:	01010113          	addi	sp,sp,16
     a34:	00008067          	ret

00000a38 <neorv32_rte_exception_uninstall>:
     a38:	01f00793          	li	a5,31
     a3c:	02a7e463          	bltu	a5,a0,a64 <neorv32_rte_exception_uninstall+0x2c>
     a40:	800007b7          	lui	a5,0x80000
     a44:	00251513          	slli	a0,a0,0x2
     a48:	00078793          	mv	a5,a5
     a4c:	00001737          	lui	a4,0x1
     a50:	00a787b3          	add	a5,a5,a0
     a54:	85470713          	addi	a4,a4,-1964 # 854 <__neorv32_rte_debug_exc_handler>
     a58:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     a5c:	00000513          	li	a0,0
     a60:	00008067          	ret
     a64:	00100513          	li	a0,1
     a68:	00008067          	ret

00000a6c <neorv32_rte_setup>:
     a6c:	ff010113          	addi	sp,sp,-16
     a70:	00112623          	sw	ra,12(sp)
     a74:	00812423          	sw	s0,8(sp)
     a78:	00912223          	sw	s1,4(sp)
     a7c:	5a000793          	li	a5,1440
     a80:	30579073          	csrw	mtvec,a5
     a84:	00000413          	li	s0,0
     a88:	01d00493          	li	s1,29
     a8c:	00040513          	mv	a0,s0
     a90:	00140413          	addi	s0,s0,1
     a94:	0ff47413          	zext.b	s0,s0
     a98:	fa1ff0ef          	jal	ra,a38 <neorv32_rte_exception_uninstall>
     a9c:	fe9418e3          	bne	s0,s1,a8c <neorv32_rte_setup+0x20>
     aa0:	00c12083          	lw	ra,12(sp)
     aa4:	00812403          	lw	s0,8(sp)
     aa8:	00412483          	lw	s1,4(sp)
     aac:	01010113          	addi	sp,sp,16
     ab0:	00008067          	ret

00000ab4 <__neorv32_uart_itoa>:
     ab4:	fd010113          	addi	sp,sp,-48
     ab8:	02812423          	sw	s0,40(sp)
     abc:	02912223          	sw	s1,36(sp)
     ac0:	03212023          	sw	s2,32(sp)
     ac4:	01312e23          	sw	s3,28(sp)
     ac8:	01412c23          	sw	s4,24(sp)
     acc:	02112623          	sw	ra,44(sp)
     ad0:	01512a23          	sw	s5,20(sp)
     ad4:	00001a37          	lui	s4,0x1
     ad8:	00050493          	mv	s1,a0
     adc:	00058413          	mv	s0,a1
     ae0:	00058523          	sb	zero,10(a1)
     ae4:	00000993          	li	s3,0
     ae8:	00410913          	addi	s2,sp,4
     aec:	58ca0a13          	addi	s4,s4,1420 # 158c <numbers.1>
     af0:	00a00593          	li	a1,10
     af4:	00048513          	mv	a0,s1
     af8:	430000ef          	jal	ra,f28 <__umodsi3>
     afc:	00aa0533          	add	a0,s4,a0
     b00:	00054783          	lbu	a5,0(a0)
     b04:	01390ab3          	add	s5,s2,s3
     b08:	00048513          	mv	a0,s1
     b0c:	00fa8023          	sb	a5,0(s5)
     b10:	00a00593          	li	a1,10
     b14:	3cc000ef          	jal	ra,ee0 <__hidden___udivsi3>
     b18:	00198993          	addi	s3,s3,1
     b1c:	00a00793          	li	a5,10
     b20:	00050493          	mv	s1,a0
     b24:	fcf996e3          	bne	s3,a5,af0 <__neorv32_uart_itoa+0x3c>
     b28:	00090693          	mv	a3,s2
     b2c:	00900713          	li	a4,9
     b30:	03000613          	li	a2,48
     b34:	0096c583          	lbu	a1,9(a3)
     b38:	00070793          	mv	a5,a4
     b3c:	fff70713          	addi	a4,a4,-1
     b40:	01071713          	slli	a4,a4,0x10
     b44:	01075713          	srli	a4,a4,0x10
     b48:	00c59a63          	bne	a1,a2,b5c <__neorv32_uart_itoa+0xa8>
     b4c:	000684a3          	sb	zero,9(a3)
     b50:	fff68693          	addi	a3,a3,-1
     b54:	fe0710e3          	bnez	a4,b34 <__neorv32_uart_itoa+0x80>
     b58:	00000793          	li	a5,0
     b5c:	00f907b3          	add	a5,s2,a5
     b60:	00000713          	li	a4,0
     b64:	0007c683          	lbu	a3,0(a5)
     b68:	00068c63          	beqz	a3,b80 <__neorv32_uart_itoa+0xcc>
     b6c:	00170613          	addi	a2,a4,1
     b70:	00e40733          	add	a4,s0,a4
     b74:	00d70023          	sb	a3,0(a4)
     b78:	01061713          	slli	a4,a2,0x10
     b7c:	01075713          	srli	a4,a4,0x10
     b80:	fff78693          	addi	a3,a5,-1
     b84:	02f91863          	bne	s2,a5,bb4 <__neorv32_uart_itoa+0x100>
     b88:	00e40433          	add	s0,s0,a4
     b8c:	00040023          	sb	zero,0(s0)
     b90:	02c12083          	lw	ra,44(sp)
     b94:	02812403          	lw	s0,40(sp)
     b98:	02412483          	lw	s1,36(sp)
     b9c:	02012903          	lw	s2,32(sp)
     ba0:	01c12983          	lw	s3,28(sp)
     ba4:	01812a03          	lw	s4,24(sp)
     ba8:	01412a83          	lw	s5,20(sp)
     bac:	03010113          	addi	sp,sp,48
     bb0:	00008067          	ret
     bb4:	00068793          	mv	a5,a3
     bb8:	fadff06f          	j	b64 <__neorv32_uart_itoa+0xb0>

00000bbc <__neorv32_uart_tohex>:
     bbc:	00001637          	lui	a2,0x1
     bc0:	00758693          	addi	a3,a1,7
     bc4:	00000713          	li	a4,0
     bc8:	57860613          	addi	a2,a2,1400 # 1578 <symbols.0>
     bcc:	02000813          	li	a6,32
     bd0:	00e557b3          	srl	a5,a0,a4
     bd4:	00f7f793          	andi	a5,a5,15
     bd8:	00f607b3          	add	a5,a2,a5
     bdc:	0007c783          	lbu	a5,0(a5)
     be0:	00470713          	addi	a4,a4,4
     be4:	fff68693          	addi	a3,a3,-1
     be8:	00f680a3          	sb	a5,1(a3)
     bec:	ff0712e3          	bne	a4,a6,bd0 <__neorv32_uart_tohex+0x14>
     bf0:	00058423          	sb	zero,8(a1)
     bf4:	00008067          	ret

00000bf8 <neorv32_uart0_available>:
     bf8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     bfc:	01255513          	srli	a0,a0,0x12
     c00:	00157513          	andi	a0,a0,1
     c04:	00008067          	ret

00000c08 <neorv32_uart0_setup>:
     c08:	ff010113          	addi	sp,sp,-16
     c0c:	00812423          	sw	s0,8(sp)
     c10:	00912223          	sw	s1,4(sp)
     c14:	00112623          	sw	ra,12(sp)
     c18:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c1c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     c20:	00058413          	mv	s0,a1
     c24:	00151593          	slli	a1,a0,0x1
     c28:	00078513          	mv	a0,a5
     c2c:	00060493          	mv	s1,a2
     c30:	2b0000ef          	jal	ra,ee0 <__hidden___udivsi3>
     c34:	01051513          	slli	a0,a0,0x10
     c38:	000017b7          	lui	a5,0x1
     c3c:	01055513          	srli	a0,a0,0x10
     c40:	00000713          	li	a4,0
     c44:	ffe78793          	addi	a5,a5,-2 # ffe <memcpy+0x72>
     c48:	04a7e463          	bltu	a5,a0,c90 <neorv32_uart0_setup+0x88>
     c4c:	0034f493          	andi	s1,s1,3
     c50:	01449493          	slli	s1,s1,0x14
     c54:	00347413          	andi	s0,s0,3
     c58:	fff50793          	addi	a5,a0,-1
     c5c:	0097e7b3          	or	a5,a5,s1
     c60:	01641413          	slli	s0,s0,0x16
     c64:	0087e7b3          	or	a5,a5,s0
     c68:	01871713          	slli	a4,a4,0x18
     c6c:	00c12083          	lw	ra,12(sp)
     c70:	00812403          	lw	s0,8(sp)
     c74:	00e7e7b3          	or	a5,a5,a4
     c78:	10000737          	lui	a4,0x10000
     c7c:	00e7e7b3          	or	a5,a5,a4
     c80:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c84:	00412483          	lw	s1,4(sp)
     c88:	01010113          	addi	sp,sp,16
     c8c:	00008067          	ret
     c90:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffea66>
     c94:	0fd6f693          	andi	a3,a3,253
     c98:	00069a63          	bnez	a3,cac <neorv32_uart0_setup+0xa4>
     c9c:	00355513          	srli	a0,a0,0x3
     ca0:	00170713          	addi	a4,a4,1
     ca4:	0ff77713          	zext.b	a4,a4
     ca8:	fa1ff06f          	j	c48 <neorv32_uart0_setup+0x40>
     cac:	00155513          	srli	a0,a0,0x1
     cb0:	ff1ff06f          	j	ca0 <neorv32_uart0_setup+0x98>

00000cb4 <neorv32_uart0_putc>:
     cb4:	00040737          	lui	a4,0x40
     cb8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     cbc:	00e7f7b3          	and	a5,a5,a4
     cc0:	fe079ce3          	bnez	a5,cb8 <neorv32_uart0_putc+0x4>
     cc4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     cc8:	00008067          	ret

00000ccc <neorv32_uart0_print>:
     ccc:	ff010113          	addi	sp,sp,-16
     cd0:	00812423          	sw	s0,8(sp)
     cd4:	01212023          	sw	s2,0(sp)
     cd8:	00112623          	sw	ra,12(sp)
     cdc:	00912223          	sw	s1,4(sp)
     ce0:	00050413          	mv	s0,a0
     ce4:	00a00913          	li	s2,10
     ce8:	00044483          	lbu	s1,0(s0)
     cec:	00140413          	addi	s0,s0,1
     cf0:	00049e63          	bnez	s1,d0c <neorv32_uart0_print+0x40>
     cf4:	00c12083          	lw	ra,12(sp)
     cf8:	00812403          	lw	s0,8(sp)
     cfc:	00412483          	lw	s1,4(sp)
     d00:	00012903          	lw	s2,0(sp)
     d04:	01010113          	addi	sp,sp,16
     d08:	00008067          	ret
     d0c:	01249663          	bne	s1,s2,d18 <neorv32_uart0_print+0x4c>
     d10:	00d00513          	li	a0,13
     d14:	fa1ff0ef          	jal	ra,cb4 <neorv32_uart0_putc>
     d18:	00048513          	mv	a0,s1
     d1c:	f99ff0ef          	jal	ra,cb4 <neorv32_uart0_putc>
     d20:	fc9ff06f          	j	ce8 <neorv32_uart0_print+0x1c>

00000d24 <neorv32_uart0_printf>:
     d24:	fa010113          	addi	sp,sp,-96
     d28:	04f12a23          	sw	a5,84(sp)
     d2c:	04410793          	addi	a5,sp,68
     d30:	02812c23          	sw	s0,56(sp)
     d34:	03212823          	sw	s2,48(sp)
     d38:	03312623          	sw	s3,44(sp)
     d3c:	03412423          	sw	s4,40(sp)
     d40:	03512223          	sw	s5,36(sp)
     d44:	03612023          	sw	s6,32(sp)
     d48:	01712e23          	sw	s7,28(sp)
     d4c:	01812c23          	sw	s8,24(sp)
     d50:	02112e23          	sw	ra,60(sp)
     d54:	02912a23          	sw	s1,52(sp)
     d58:	00050413          	mv	s0,a0
     d5c:	04b12223          	sw	a1,68(sp)
     d60:	04c12423          	sw	a2,72(sp)
     d64:	04d12623          	sw	a3,76(sp)
     d68:	04e12823          	sw	a4,80(sp)
     d6c:	05012c23          	sw	a6,88(sp)
     d70:	05112e23          	sw	a7,92(sp)
     d74:	00f12023          	sw	a5,0(sp)
     d78:	02500993          	li	s3,37
     d7c:	00a00a13          	li	s4,10
     d80:	07300913          	li	s2,115
     d84:	07500a93          	li	s5,117
     d88:	07800b13          	li	s6,120
     d8c:	06300b93          	li	s7,99
     d90:	06900c13          	li	s8,105
     d94:	00044483          	lbu	s1,0(s0)
     d98:	02049a63          	bnez	s1,dcc <neorv32_uart0_printf+0xa8>
     d9c:	03c12083          	lw	ra,60(sp)
     da0:	03812403          	lw	s0,56(sp)
     da4:	03412483          	lw	s1,52(sp)
     da8:	03012903          	lw	s2,48(sp)
     dac:	02c12983          	lw	s3,44(sp)
     db0:	02812a03          	lw	s4,40(sp)
     db4:	02412a83          	lw	s5,36(sp)
     db8:	02012b03          	lw	s6,32(sp)
     dbc:	01c12b83          	lw	s7,28(sp)
     dc0:	01812c03          	lw	s8,24(sp)
     dc4:	06010113          	addi	sp,sp,96
     dc8:	00008067          	ret
     dcc:	0d349663          	bne	s1,s3,e98 <neorv32_uart0_printf+0x174>
     dd0:	00144483          	lbu	s1,1(s0)
     dd4:	05248263          	beq	s1,s2,e18 <neorv32_uart0_printf+0xf4>
     dd8:	00996e63          	bltu	s2,s1,df4 <neorv32_uart0_printf+0xd0>
     ddc:	05748c63          	beq	s1,s7,e34 <neorv32_uart0_printf+0x110>
     de0:	07848663          	beq	s1,s8,e4c <neorv32_uart0_printf+0x128>
     de4:	02500513          	li	a0,37
     de8:	ecdff0ef          	jal	ra,cb4 <neorv32_uart0_putc>
     dec:	00048513          	mv	a0,s1
     df0:	0540006f          	j	e44 <neorv32_uart0_printf+0x120>
     df4:	09548663          	beq	s1,s5,e80 <neorv32_uart0_printf+0x15c>
     df8:	ff6496e3          	bne	s1,s6,de4 <neorv32_uart0_printf+0xc0>
     dfc:	00012783          	lw	a5,0(sp)
     e00:	00410593          	addi	a1,sp,4
     e04:	0007a503          	lw	a0,0(a5)
     e08:	00478713          	addi	a4,a5,4
     e0c:	00e12023          	sw	a4,0(sp)
     e10:	dadff0ef          	jal	ra,bbc <__neorv32_uart_tohex>
     e14:	0640006f          	j	e78 <neorv32_uart0_printf+0x154>
     e18:	00012783          	lw	a5,0(sp)
     e1c:	0007a503          	lw	a0,0(a5)
     e20:	00478713          	addi	a4,a5,4
     e24:	00e12023          	sw	a4,0(sp)
     e28:	ea5ff0ef          	jal	ra,ccc <neorv32_uart0_print>
     e2c:	00240413          	addi	s0,s0,2
     e30:	f65ff06f          	j	d94 <neorv32_uart0_printf+0x70>
     e34:	00012783          	lw	a5,0(sp)
     e38:	0007c503          	lbu	a0,0(a5)
     e3c:	00478713          	addi	a4,a5,4
     e40:	00e12023          	sw	a4,0(sp)
     e44:	e71ff0ef          	jal	ra,cb4 <neorv32_uart0_putc>
     e48:	fe5ff06f          	j	e2c <neorv32_uart0_printf+0x108>
     e4c:	00012783          	lw	a5,0(sp)
     e50:	0007a483          	lw	s1,0(a5)
     e54:	00478713          	addi	a4,a5,4
     e58:	00e12023          	sw	a4,0(sp)
     e5c:	0004d863          	bgez	s1,e6c <neorv32_uart0_printf+0x148>
     e60:	02d00513          	li	a0,45
     e64:	409004b3          	neg	s1,s1
     e68:	e4dff0ef          	jal	ra,cb4 <neorv32_uart0_putc>
     e6c:	00410593          	addi	a1,sp,4
     e70:	00048513          	mv	a0,s1
     e74:	c41ff0ef          	jal	ra,ab4 <__neorv32_uart_itoa>
     e78:	00410513          	addi	a0,sp,4
     e7c:	fadff06f          	j	e28 <neorv32_uart0_printf+0x104>
     e80:	00012783          	lw	a5,0(sp)
     e84:	00410593          	addi	a1,sp,4
     e88:	00478713          	addi	a4,a5,4
     e8c:	0007a503          	lw	a0,0(a5)
     e90:	00e12023          	sw	a4,0(sp)
     e94:	fe1ff06f          	j	e74 <neorv32_uart0_printf+0x150>
     e98:	01449663          	bne	s1,s4,ea4 <neorv32_uart0_printf+0x180>
     e9c:	00d00513          	li	a0,13
     ea0:	e15ff0ef          	jal	ra,cb4 <neorv32_uart0_putc>
     ea4:	00048513          	mv	a0,s1
     ea8:	00140413          	addi	s0,s0,1
     eac:	e09ff0ef          	jal	ra,cb4 <neorv32_uart0_putc>
     eb0:	ee5ff06f          	j	d94 <neorv32_uart0_printf+0x70>

00000eb4 <__mulsi3>:
     eb4:	00050613          	mv	a2,a0
     eb8:	00000513          	li	a0,0
     ebc:	0015f693          	andi	a3,a1,1
     ec0:	00068463          	beqz	a3,ec8 <__mulsi3+0x14>
     ec4:	00c50533          	add	a0,a0,a2
     ec8:	0015d593          	srli	a1,a1,0x1
     ecc:	00161613          	slli	a2,a2,0x1
     ed0:	fe0596e3          	bnez	a1,ebc <__mulsi3+0x8>
     ed4:	00008067          	ret

00000ed8 <__divsi3>:
     ed8:	06054063          	bltz	a0,f38 <__umodsi3+0x10>
     edc:	0605c663          	bltz	a1,f48 <__umodsi3+0x20>

00000ee0 <__hidden___udivsi3>:
     ee0:	00058613          	mv	a2,a1
     ee4:	00050593          	mv	a1,a0
     ee8:	fff00513          	li	a0,-1
     eec:	02060c63          	beqz	a2,f24 <__hidden___udivsi3+0x44>
     ef0:	00100693          	li	a3,1
     ef4:	00b67a63          	bgeu	a2,a1,f08 <__hidden___udivsi3+0x28>
     ef8:	00c05863          	blez	a2,f08 <__hidden___udivsi3+0x28>
     efc:	00161613          	slli	a2,a2,0x1
     f00:	00169693          	slli	a3,a3,0x1
     f04:	feb66ae3          	bltu	a2,a1,ef8 <__hidden___udivsi3+0x18>
     f08:	00000513          	li	a0,0
     f0c:	00c5e663          	bltu	a1,a2,f18 <__hidden___udivsi3+0x38>
     f10:	40c585b3          	sub	a1,a1,a2
     f14:	00d56533          	or	a0,a0,a3
     f18:	0016d693          	srli	a3,a3,0x1
     f1c:	00165613          	srli	a2,a2,0x1
     f20:	fe0696e3          	bnez	a3,f0c <__hidden___udivsi3+0x2c>
     f24:	00008067          	ret

00000f28 <__umodsi3>:
     f28:	00008293          	mv	t0,ra
     f2c:	fb5ff0ef          	jal	ra,ee0 <__hidden___udivsi3>
     f30:	00058513          	mv	a0,a1
     f34:	00028067          	jr	t0
     f38:	40a00533          	neg	a0,a0
     f3c:	00b04863          	bgtz	a1,f4c <__umodsi3+0x24>
     f40:	40b005b3          	neg	a1,a1
     f44:	f9dff06f          	j	ee0 <__hidden___udivsi3>
     f48:	40b005b3          	neg	a1,a1
     f4c:	00008293          	mv	t0,ra
     f50:	f91ff0ef          	jal	ra,ee0 <__hidden___udivsi3>
     f54:	40a00533          	neg	a0,a0
     f58:	00028067          	jr	t0

00000f5c <__modsi3>:
     f5c:	00008293          	mv	t0,ra
     f60:	0005ca63          	bltz	a1,f74 <__modsi3+0x18>
     f64:	00054c63          	bltz	a0,f7c <__modsi3+0x20>
     f68:	f79ff0ef          	jal	ra,ee0 <__hidden___udivsi3>
     f6c:	00058513          	mv	a0,a1
     f70:	00028067          	jr	t0
     f74:	40b005b3          	neg	a1,a1
     f78:	fe0558e3          	bgez	a0,f68 <__modsi3+0xc>
     f7c:	40a00533          	neg	a0,a0
     f80:	f61ff0ef          	jal	ra,ee0 <__hidden___udivsi3>
     f84:	40b00533          	neg	a0,a1
     f88:	00028067          	jr	t0

00000f8c <memcpy>:
     f8c:	00b547b3          	xor	a5,a0,a1
     f90:	0037f793          	andi	a5,a5,3
     f94:	00c508b3          	add	a7,a0,a2
     f98:	06079463          	bnez	a5,1000 <memcpy+0x74>
     f9c:	00300793          	li	a5,3
     fa0:	06c7f063          	bgeu	a5,a2,1000 <memcpy+0x74>
     fa4:	00357793          	andi	a5,a0,3
     fa8:	00050713          	mv	a4,a0
     fac:	06079a63          	bnez	a5,1020 <memcpy+0x94>
     fb0:	ffc8f613          	andi	a2,a7,-4
     fb4:	40e606b3          	sub	a3,a2,a4
     fb8:	02000793          	li	a5,32
     fbc:	08d7ce63          	blt	a5,a3,1058 <memcpy+0xcc>
     fc0:	00058693          	mv	a3,a1
     fc4:	00070793          	mv	a5,a4
     fc8:	02c77863          	bgeu	a4,a2,ff8 <memcpy+0x6c>
     fcc:	0006a803          	lw	a6,0(a3)
     fd0:	00478793          	addi	a5,a5,4
     fd4:	00468693          	addi	a3,a3,4
     fd8:	ff07ae23          	sw	a6,-4(a5)
     fdc:	fec7e8e3          	bltu	a5,a2,fcc <memcpy+0x40>
     fe0:	fff60793          	addi	a5,a2,-1
     fe4:	40e787b3          	sub	a5,a5,a4
     fe8:	ffc7f793          	andi	a5,a5,-4
     fec:	00478793          	addi	a5,a5,4
     ff0:	00f70733          	add	a4,a4,a5
     ff4:	00f585b3          	add	a1,a1,a5
     ff8:	01176863          	bltu	a4,a7,1008 <memcpy+0x7c>
     ffc:	00008067          	ret
    1000:	00050713          	mv	a4,a0
    1004:	05157863          	bgeu	a0,a7,1054 <memcpy+0xc8>
    1008:	0005c783          	lbu	a5,0(a1)
    100c:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ea69>
    1010:	00158593          	addi	a1,a1,1
    1014:	fef70fa3          	sb	a5,-1(a4)
    1018:	fee898e3          	bne	a7,a4,1008 <memcpy+0x7c>
    101c:	00008067          	ret
    1020:	0005c683          	lbu	a3,0(a1)
    1024:	00170713          	addi	a4,a4,1
    1028:	00377793          	andi	a5,a4,3
    102c:	fed70fa3          	sb	a3,-1(a4)
    1030:	00158593          	addi	a1,a1,1
    1034:	f6078ee3          	beqz	a5,fb0 <memcpy+0x24>
    1038:	0005c683          	lbu	a3,0(a1)
    103c:	00170713          	addi	a4,a4,1
    1040:	00377793          	andi	a5,a4,3
    1044:	fed70fa3          	sb	a3,-1(a4)
    1048:	00158593          	addi	a1,a1,1
    104c:	fc079ae3          	bnez	a5,1020 <memcpy+0x94>
    1050:	f61ff06f          	j	fb0 <memcpy+0x24>
    1054:	00008067          	ret
    1058:	ff010113          	addi	sp,sp,-16
    105c:	00812623          	sw	s0,12(sp)
    1060:	02000413          	li	s0,32
    1064:	0005a383          	lw	t2,0(a1)
    1068:	0045a283          	lw	t0,4(a1)
    106c:	0085af83          	lw	t6,8(a1)
    1070:	00c5af03          	lw	t5,12(a1)
    1074:	0105ae83          	lw	t4,16(a1)
    1078:	0145ae03          	lw	t3,20(a1)
    107c:	0185a303          	lw	t1,24(a1)
    1080:	01c5a803          	lw	a6,28(a1)
    1084:	0205a683          	lw	a3,32(a1)
    1088:	02470713          	addi	a4,a4,36
    108c:	40e607b3          	sub	a5,a2,a4
    1090:	fc772e23          	sw	t2,-36(a4)
    1094:	fe572023          	sw	t0,-32(a4)
    1098:	fff72223          	sw	t6,-28(a4)
    109c:	ffe72423          	sw	t5,-24(a4)
    10a0:	ffd72623          	sw	t4,-20(a4)
    10a4:	ffc72823          	sw	t3,-16(a4)
    10a8:	fe672a23          	sw	t1,-12(a4)
    10ac:	ff072c23          	sw	a6,-8(a4)
    10b0:	fed72e23          	sw	a3,-4(a4)
    10b4:	02458593          	addi	a1,a1,36
    10b8:	faf446e3          	blt	s0,a5,1064 <memcpy+0xd8>
    10bc:	00058693          	mv	a3,a1
    10c0:	00070793          	mv	a5,a4
    10c4:	02c77863          	bgeu	a4,a2,10f4 <memcpy+0x168>
    10c8:	0006a803          	lw	a6,0(a3)
    10cc:	00478793          	addi	a5,a5,4
    10d0:	00468693          	addi	a3,a3,4
    10d4:	ff07ae23          	sw	a6,-4(a5)
    10d8:	fec7e8e3          	bltu	a5,a2,10c8 <memcpy+0x13c>
    10dc:	fff60793          	addi	a5,a2,-1
    10e0:	40e787b3          	sub	a5,a5,a4
    10e4:	ffc7f793          	andi	a5,a5,-4
    10e8:	00478793          	addi	a5,a5,4
    10ec:	00f70733          	add	a4,a4,a5
    10f0:	00f585b3          	add	a1,a1,a5
    10f4:	01176863          	bltu	a4,a7,1104 <memcpy+0x178>
    10f8:	00c12403          	lw	s0,12(sp)
    10fc:	01010113          	addi	sp,sp,16
    1100:	00008067          	ret
    1104:	0005c783          	lbu	a5,0(a1)
    1108:	00170713          	addi	a4,a4,1
    110c:	00158593          	addi	a1,a1,1
    1110:	fef70fa3          	sb	a5,-1(a4)
    1114:	fee882e3          	beq	a7,a4,10f8 <memcpy+0x16c>
    1118:	0005c783          	lbu	a5,0(a1)
    111c:	00170713          	addi	a4,a4,1
    1120:	00158593          	addi	a1,a1,1
    1124:	fef70fa3          	sb	a5,-1(a4)
    1128:	fce89ee3          	bne	a7,a4,1104 <memcpy+0x178>
    112c:	fcdff06f          	j	10f8 <memcpy+0x16c>
