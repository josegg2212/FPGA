
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
      e0:	64458593          	addi	a1,a1,1604 # 1720 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x33e0>
     194:	00112623          	sw	ra,12(sp)
     198:	381000ef          	jal	ra,d18 <neorv32_uart0_setup>
     19c:	418000ef          	jal	ra,5b4 <neorv32_gpio_available>
     1a0:	04050a63          	beqz	a0,1f4 <main+0x74>
     1a4:	1d9000ef          	jal	ra,b7c <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	40450513          	addi	a0,a0,1028 # 1404 <__etext+0x138>
     1b0:	42d000ef          	jal	ra,ddc <neorv32_uart0_print>
     1b4:	00000593          	li	a1,0
     1b8:	00000513          	li	a0,0
     1bc:	4bc000ef          	jal	ra,678 <neorv32_pwm_set>
     1c0:	00000593          	li	a1,0
     1c4:	00100513          	li	a0,1
     1c8:	4b0000ef          	jal	ra,678 <neorv32_pwm_set>
     1cc:	00000593          	li	a1,0
     1d0:	00200513          	li	a0,2
     1d4:	4a4000ef          	jal	ra,678 <neorv32_pwm_set>
     1d8:	00300513          	li	a0,3
     1dc:	00000593          	li	a1,0
     1e0:	498000ef          	jal	ra,678 <neorv32_pwm_set>
     1e4:	00300513          	li	a0,3
     1e8:	474000ef          	jal	ra,65c <neorv32_pwm_setup>
     1ec:	12c000ef          	jal	ra,318 <wb_calculadora>
     1f0:	ffdff06f          	j	1ec <main+0x6c>
     1f4:	00001537          	lui	a0,0x1
     1f8:	3e050513          	addi	a0,a0,992 # 13e0 <__etext+0x114>
     1fc:	3e1000ef          	jal	ra,ddc <neorv32_uart0_print>
     200:	00c12083          	lw	ra,12(sp)
     204:	00100513          	li	a0,1
     208:	01010113          	addi	sp,sp,16
     20c:	00008067          	ret

00000210 <keyboard>:
     210:	f9010113          	addi	sp,sp,-112
     214:	000015b7          	lui	a1,0x1
     218:	04000613          	li	a2,64
     21c:	41858593          	addi	a1,a1,1048 # 1418 <__etext+0x14c>
     220:	00010513          	mv	a0,sp
     224:	06112623          	sw	ra,108(sp)
     228:	05312e23          	sw	s3,92(sp)
     22c:	05612823          	sw	s6,80(sp)
     230:	05712623          	sw	s7,76(sp)
     234:	05812423          	sw	s8,72(sp)
     238:	06812423          	sw	s0,104(sp)
     23c:	06912223          	sw	s1,100(sp)
     240:	07212023          	sw	s2,96(sp)
     244:	05412c23          	sw	s4,88(sp)
     248:	05512a23          	sw	s5,84(sp)
     24c:	6dd000ef          	jal	ra,1128 <memcpy>
     250:	0ff00513          	li	a0,255
     254:	00000593          	li	a1,0
     258:	3f4000ef          	jal	ra,64c <neorv32_gpio_port_set>
     25c:	0ff00993          	li	s3,255
     260:	0ff00b13          	li	s6,255
     264:	00800b93          	li	s7,8
     268:	00400c13          	li	s8,4
     26c:	00010a13          	mv	s4,sp
     270:	00000493          	li	s1,0
     274:	0ff00413          	li	s0,255
     278:	00048513          	mv	a0,s1
     27c:	378000ef          	jal	ra,5f4 <neorv32_gpio_pin_clr>
     280:	000a0a93          	mv	s5,s4
     284:	00400913          	li	s2,4
     288:	00090513          	mv	a0,s2
     28c:	39c000ef          	jal	ra,628 <neorv32_gpio_pin_get>
     290:	00051e63          	bnez	a0,2ac <keyboard+0x9c>
     294:	03caa403          	lw	s0,60(s5)
     298:	01640a63          	beq	s0,s6,2ac <keyboard+0x9c>
     29c:	00441513          	slli	a0,s0,0x4
     2a0:	0f057513          	andi	a0,a0,240
     2a4:	00000593          	li	a1,0
     2a8:	3a4000ef          	jal	ra,64c <neorv32_gpio_port_set>
     2ac:	00190913          	addi	s2,s2,1
     2b0:	ff0a8a93          	addi	s5,s5,-16
     2b4:	fd791ae3          	bne	s2,s7,288 <keyboard+0x78>
     2b8:	00048513          	mv	a0,s1
     2bc:	00148493          	addi	s1,s1,1
     2c0:	304000ef          	jal	ra,5c4 <neorv32_gpio_pin_set>
     2c4:	ffca0a13          	addi	s4,s4,-4
     2c8:	fb8498e3          	bne	s1,s8,278 <keyboard+0x68>
     2cc:	05641263          	bne	s0,s6,310 <keyboard+0x100>
     2d0:	04898063          	beq	s3,s0,310 <keyboard+0x100>
     2d4:	03200513          	li	a0,50
     2d8:	220000ef          	jal	ra,4f8 <neorv32_cpu_delay_ms>
     2dc:	06c12083          	lw	ra,108(sp)
     2e0:	06812403          	lw	s0,104(sp)
     2e4:	06412483          	lw	s1,100(sp)
     2e8:	06012903          	lw	s2,96(sp)
     2ec:	05812a03          	lw	s4,88(sp)
     2f0:	05412a83          	lw	s5,84(sp)
     2f4:	05012b03          	lw	s6,80(sp)
     2f8:	04c12b83          	lw	s7,76(sp)
     2fc:	04812c03          	lw	s8,72(sp)
     300:	00098513          	mv	a0,s3
     304:	05c12983          	lw	s3,92(sp)
     308:	07010113          	addi	sp,sp,112
     30c:	00008067          	ret
     310:	00040993          	mv	s3,s0
     314:	f59ff06f          	j	26c <keyboard+0x5c>

00000318 <wb_calculadora>:
     318:	00001537          	lui	a0,0x1
     31c:	ff010113          	addi	sp,sp,-16
     320:	2cc50513          	addi	a0,a0,716 # 12cc <__etext>
     324:	00112623          	sw	ra,12(sp)
     328:	00912223          	sw	s1,4(sp)
     32c:	01212023          	sw	s2,0(sp)
     330:	00812423          	sw	s0,8(sp)
     334:	301000ef          	jal	ra,e34 <neorv32_uart0_printf>
     338:	00001537          	lui	a0,0x1
     33c:	31c50513          	addi	a0,a0,796 # 131c <__etext+0x50>
     340:	2f5000ef          	jal	ra,e34 <neorv32_uart0_printf>
     344:	00000493          	li	s1,0
     348:	00900913          	li	s2,9
     34c:	ec5ff0ef          	jal	ra,210 <keyboard>
     350:	00050413          	mv	s0,a0
     354:	0aa97663          	bgeu	s2,a0,400 <wb_calculadora+0xe8>
     358:	00001537          	lui	a0,0x1
     35c:	00048593          	mv	a1,s1
     360:	34050513          	addi	a0,a0,832 # 1340 <__etext+0x74>
     364:	2d1000ef          	jal	ra,e34 <neorv32_uart0_printf>
     368:	90000937          	lui	s2,0x90000
     36c:	00992023          	sw	s1,0(s2) # 90000000 <__ctr0_io_space_begin+0x90000200>
     370:	00001537          	lui	a0,0x1
     374:	00040593          	mv	a1,s0
     378:	35450513          	addi	a0,a0,852 # 1354 <__etext+0x88>
     37c:	2b9000ef          	jal	ra,e34 <neorv32_uart0_printf>
     380:	00890913          	addi	s2,s2,8
     384:	00892023          	sw	s0,0(s2)
     388:	00001537          	lui	a0,0x1
     38c:	36450513          	addi	a0,a0,868 # 1364 <__etext+0x98>
     390:	2a5000ef          	jal	ra,e34 <neorv32_uart0_printf>
     394:	00000493          	li	s1,0
     398:	00900413          	li	s0,9
     39c:	e75ff0ef          	jal	ra,210 <keyboard>
     3a0:	06a47a63          	bgeu	s0,a0,414 <wb_calculadora+0xfc>
     3a4:	00001537          	lui	a0,0x1
     3a8:	00048593          	mv	a1,s1
     3ac:	38450513          	addi	a0,a0,900 # 1384 <__etext+0xb8>
     3b0:	285000ef          	jal	ra,e34 <neorv32_uart0_printf>
     3b4:	900007b7          	lui	a5,0x90000
     3b8:	00478413          	addi	s0,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     3bc:	00942023          	sw	s1,0(s0)
     3c0:	0007a503          	lw	a0,0(a5)
     3c4:	00042403          	lw	s0,0(s0)
     3c8:	00878793          	addi	a5,a5,8
     3cc:	0007a783          	lw	a5,0(a5)
     3d0:	00c00713          	li	a4,12
     3d4:	08e78063          	beq	a5,a4,454 <wb_calculadora+0x13c>
     3d8:	04f76863          	bltu	a4,a5,428 <wb_calculadora+0x110>
     3dc:	00a00713          	li	a4,10
     3e0:	06e78463          	beq	a5,a4,448 <wb_calculadora+0x130>
     3e4:	00b00713          	li	a4,11
     3e8:	40850433          	sub	s0,a0,s0
     3ec:	00100493          	li	s1,1
     3f0:	06e78c63          	beq	a5,a4,468 <wb_calculadora+0x150>
     3f4:	00001537          	lui	a0,0x1
     3f8:	3b450513          	addi	a0,a0,948 # 13b4 <__etext+0xe8>
     3fc:	0c40006f          	j	4c0 <wb_calculadora+0x1a8>
     400:	00249793          	slli	a5,s1,0x2
     404:	009787b3          	add	a5,a5,s1
     408:	00179793          	slli	a5,a5,0x1
     40c:	008784b3          	add	s1,a5,s0
     410:	f3dff06f          	j	34c <wb_calculadora+0x34>
     414:	00249793          	slli	a5,s1,0x2
     418:	009787b3          	add	a5,a5,s1
     41c:	00179793          	slli	a5,a5,0x1
     420:	00a784b3          	add	s1,a5,a0
     424:	f79ff06f          	j	39c <wb_calculadora+0x84>
     428:	00d00713          	li	a4,13
     42c:	fce794e3          	bne	a5,a4,3f4 <wb_calculadora+0xdc>
     430:	08040463          	beqz	s0,4b8 <wb_calculadora+0x1a0>
     434:	00040593          	mv	a1,s0
     438:	445000ef          	jal	ra,107c <__hidden___udivsi3>
     43c:	00050413          	mv	s0,a0
     440:	00300493          	li	s1,3
     444:	0240006f          	j	468 <wb_calculadora+0x150>
     448:	00a40433          	add	s0,s0,a0
     44c:	00000493          	li	s1,0
     450:	0180006f          	j	468 <wb_calculadora+0x150>
     454:	00050593          	mv	a1,a0
     458:	00040513          	mv	a0,s0
     45c:	369000ef          	jal	ra,fc4 <__mulsi3>
     460:	00050413          	mv	s0,a0
     464:	00200493          	li	s1,2
     468:	06400593          	li	a1,100
     46c:	00048513          	mv	a0,s1
     470:	208000ef          	jal	ra,678 <neorv32_pwm_set>
     474:	3e800513          	li	a0,1000
     478:	080000ef          	jal	ra,4f8 <neorv32_cpu_delay_ms>
     47c:	00000593          	li	a1,0
     480:	00048513          	mv	a0,s1
     484:	1f4000ef          	jal	ra,678 <neorv32_pwm_set>
     488:	900005b7          	lui	a1,0x90000
     48c:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     490:	0085a023          	sw	s0,0(a1)
     494:	0005a583          	lw	a1,0(a1)
     498:	00812403          	lw	s0,8(sp)
     49c:	00c12083          	lw	ra,12(sp)
     4a0:	00412483          	lw	s1,4(sp)
     4a4:	00012903          	lw	s2,0(sp)
     4a8:	00001537          	lui	a0,0x1
     4ac:	3d050513          	addi	a0,a0,976 # 13d0 <__etext+0x104>
     4b0:	01010113          	addi	sp,sp,16
     4b4:	1810006f          	j	e34 <neorv32_uart0_printf>
     4b8:	00001537          	lui	a0,0x1
     4bc:	39850513          	addi	a0,a0,920 # 1398 <__etext+0xcc>
     4c0:	175000ef          	jal	ra,e34 <neorv32_uart0_printf>
     4c4:	fff00413          	li	s0,-1
     4c8:	f85ff06f          	j	44c <wb_calculadora+0x134>

000004cc <neorv32_cpu_get_systime>:
     4cc:	ff010113          	addi	sp,sp,-16
     4d0:	c81026f3          	rdtimeh	a3
     4d4:	c0102773          	rdtime	a4
     4d8:	c81027f3          	rdtimeh	a5
     4dc:	fed79ae3          	bne	a5,a3,4d0 <neorv32_cpu_get_systime+0x4>
     4e0:	00e12023          	sw	a4,0(sp)
     4e4:	00f12223          	sw	a5,4(sp)
     4e8:	00012503          	lw	a0,0(sp)
     4ec:	00412583          	lw	a1,4(sp)
     4f0:	01010113          	addi	sp,sp,16
     4f4:	00008067          	ret

000004f8 <neorv32_cpu_delay_ms>:
     4f8:	fd010113          	addi	sp,sp,-48
     4fc:	00a12623          	sw	a0,12(sp)
     500:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     504:	3e800593          	li	a1,1000
     508:	02112623          	sw	ra,44(sp)
     50c:	02812423          	sw	s0,40(sp)
     510:	02912223          	sw	s1,36(sp)
     514:	03212023          	sw	s2,32(sp)
     518:	01312e23          	sw	s3,28(sp)
     51c:	361000ef          	jal	ra,107c <__hidden___udivsi3>
     520:	00c12603          	lw	a2,12(sp)
     524:	00000693          	li	a3,0
     528:	00000593          	li	a1,0
     52c:	2bd000ef          	jal	ra,fe8 <__muldi3>
     530:	00050413          	mv	s0,a0
     534:	00058993          	mv	s3,a1
     538:	f95ff0ef          	jal	ra,4cc <neorv32_cpu_get_systime>
     53c:	00058913          	mv	s2,a1
     540:	00050493          	mv	s1,a0
     544:	f89ff0ef          	jal	ra,4cc <neorv32_cpu_get_systime>
     548:	00b96663          	bltu	s2,a1,554 <neorv32_cpu_delay_ms+0x5c>
     54c:	05259263          	bne	a1,s2,590 <neorv32_cpu_delay_ms+0x98>
     550:	04a4f063          	bgeu	s1,a0,590 <neorv32_cpu_delay_ms+0x98>
     554:	008484b3          	add	s1,s1,s0
     558:	0084b433          	sltu	s0,s1,s0
     55c:	01390933          	add	s2,s2,s3
     560:	01240433          	add	s0,s0,s2
     564:	f69ff0ef          	jal	ra,4cc <neorv32_cpu_get_systime>
     568:	fe85eee3          	bltu	a1,s0,564 <neorv32_cpu_delay_ms+0x6c>
     56c:	00b41463          	bne	s0,a1,574 <neorv32_cpu_delay_ms+0x7c>
     570:	fe956ae3          	bltu	a0,s1,564 <neorv32_cpu_delay_ms+0x6c>
     574:	02c12083          	lw	ra,44(sp)
     578:	02812403          	lw	s0,40(sp)
     57c:	02412483          	lw	s1,36(sp)
     580:	02012903          	lw	s2,32(sp)
     584:	01c12983          	lw	s3,28(sp)
     588:	03010113          	addi	sp,sp,48
     58c:	00008067          	ret
     590:	01c99993          	slli	s3,s3,0x1c
     594:	00445413          	srli	s0,s0,0x4
     598:	0089e433          	or	s0,s3,s0

0000059c <__neorv32_cpu_delay_ms_start>:
     59c:	00040a63          	beqz	s0,5b0 <__neorv32_cpu_delay_ms_end>
     5a0:	00040863          	beqz	s0,5b0 <__neorv32_cpu_delay_ms_end>
     5a4:	fff40413          	addi	s0,s0,-1
     5a8:	00000013          	nop
     5ac:	ff1ff06f          	j	59c <__neorv32_cpu_delay_ms_start>

000005b0 <__neorv32_cpu_delay_ms_end>:
     5b0:	fc5ff06f          	j	574 <neorv32_cpu_delay_ms+0x7c>

000005b4 <neorv32_gpio_available>:
     5b4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     5b8:	01055513          	srli	a0,a0,0x10
     5bc:	00157513          	andi	a0,a0,1
     5c0:	00008067          	ret

000005c4 <neorv32_gpio_pin_set>:
     5c4:	00100793          	li	a5,1
     5c8:	01f00713          	li	a4,31
     5cc:	00a797b3          	sll	a5,a5,a0
     5d0:	00a74a63          	blt	a4,a0,5e4 <neorv32_gpio_pin_set+0x20>
     5d4:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5d8:	00f767b3          	or	a5,a4,a5
     5dc:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5e0:	00008067          	ret
     5e4:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5e8:	00f767b3          	or	a5,a4,a5
     5ec:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5f0:	00008067          	ret

000005f4 <neorv32_gpio_pin_clr>:
     5f4:	00100793          	li	a5,1
     5f8:	00a797b3          	sll	a5,a5,a0
     5fc:	01f00713          	li	a4,31
     600:	fff7c793          	not	a5,a5
     604:	00a74a63          	blt	a4,a0,618 <neorv32_gpio_pin_clr+0x24>
     608:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     60c:	00f777b3          	and	a5,a4,a5
     610:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     614:	00008067          	ret
     618:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     61c:	00f777b3          	and	a5,a4,a5
     620:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     624:	00008067          	ret

00000628 <neorv32_gpio_pin_get>:
     628:	00100793          	li	a5,1
     62c:	01f00713          	li	a4,31
     630:	00a797b3          	sll	a5,a5,a0
     634:	00a74863          	blt	a4,a0,644 <neorv32_gpio_pin_get+0x1c>
     638:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     63c:	00f77533          	and	a0,a4,a5
     640:	00008067          	ret
     644:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     648:	ff5ff06f          	j	63c <neorv32_gpio_pin_get+0x14>

0000064c <neorv32_gpio_port_set>:
     64c:	fc000793          	li	a5,-64
     650:	00a7a423          	sw	a0,8(a5)
     654:	00b7a623          	sw	a1,12(a5)
     658:	00008067          	ret

0000065c <neorv32_pwm_setup>:
     65c:	00757513          	andi	a0,a0,7
     660:	e8000793          	li	a5,-384
     664:	00151513          	slli	a0,a0,0x1
     668:	0007a023          	sw	zero,0(a5)
     66c:	00156513          	ori	a0,a0,1
     670:	00a7a023          	sw	a0,0(a5)
     674:	00008067          	ret

00000678 <neorv32_pwm_set>:
     678:	03b00793          	li	a5,59
     67c:	02a7e863          	bltu	a5,a0,6ac <neorv32_pwm_set+0x34>
     680:	00357713          	andi	a4,a0,3
     684:	0fc57513          	andi	a0,a0,252
     688:	e8452683          	lw	a3,-380(a0)
     68c:	00371713          	slli	a4,a4,0x3
     690:	0ff00793          	li	a5,255
     694:	00e797b3          	sll	a5,a5,a4
     698:	fff7c793          	not	a5,a5
     69c:	00d7f7b3          	and	a5,a5,a3
     6a0:	00e595b3          	sll	a1,a1,a4
     6a4:	00f5e5b3          	or	a1,a1,a5
     6a8:	e8b52223          	sw	a1,-380(a0)
     6ac:	00008067          	ret

000006b0 <__neorv32_rte_core>:
     6b0:	fc010113          	addi	sp,sp,-64
     6b4:	02112e23          	sw	ra,60(sp)
     6b8:	02512c23          	sw	t0,56(sp)
     6bc:	02612a23          	sw	t1,52(sp)
     6c0:	02712823          	sw	t2,48(sp)
     6c4:	02a12623          	sw	a0,44(sp)
     6c8:	02b12423          	sw	a1,40(sp)
     6cc:	02c12223          	sw	a2,36(sp)
     6d0:	02d12023          	sw	a3,32(sp)
     6d4:	00e12e23          	sw	a4,28(sp)
     6d8:	00f12c23          	sw	a5,24(sp)
     6dc:	01012a23          	sw	a6,20(sp)
     6e0:	01112823          	sw	a7,16(sp)
     6e4:	01c12623          	sw	t3,12(sp)
     6e8:	01d12423          	sw	t4,8(sp)
     6ec:	01e12223          	sw	t5,4(sp)
     6f0:	01f12023          	sw	t6,0(sp)
     6f4:	34102773          	csrr	a4,mepc
     6f8:	34071073          	csrw	mscratch,a4
     6fc:	342027f3          	csrr	a5,mcause
     700:	0807ca63          	bltz	a5,794 <__neorv32_rte_core+0xe4>
     704:	00071683          	lh	a3,0(a4)
     708:	00300593          	li	a1,3
     70c:	0036f693          	andi	a3,a3,3
     710:	00270613          	addi	a2,a4,2
     714:	00b69463          	bne	a3,a1,71c <__neorv32_rte_core+0x6c>
     718:	00470613          	addi	a2,a4,4
     71c:	34161073          	csrw	mepc,a2
     720:	00b00713          	li	a4,11
     724:	04f77c63          	bgeu	a4,a5,77c <__neorv32_rte_core+0xcc>
     728:	000017b7          	lui	a5,0x1
     72c:	96478793          	addi	a5,a5,-1692 # 964 <__neorv32_rte_debug_exc_handler>
     730:	000780e7          	jalr	a5
     734:	03c12083          	lw	ra,60(sp)
     738:	03812283          	lw	t0,56(sp)
     73c:	03412303          	lw	t1,52(sp)
     740:	03012383          	lw	t2,48(sp)
     744:	02c12503          	lw	a0,44(sp)
     748:	02812583          	lw	a1,40(sp)
     74c:	02412603          	lw	a2,36(sp)
     750:	02012683          	lw	a3,32(sp)
     754:	01c12703          	lw	a4,28(sp)
     758:	01812783          	lw	a5,24(sp)
     75c:	01412803          	lw	a6,20(sp)
     760:	01012883          	lw	a7,16(sp)
     764:	00c12e03          	lw	t3,12(sp)
     768:	00812e83          	lw	t4,8(sp)
     76c:	00412f03          	lw	t5,4(sp)
     770:	00012f83          	lw	t6,0(sp)
     774:	04010113          	addi	sp,sp,64
     778:	30200073          	mret
     77c:	00001737          	lui	a4,0x1
     780:	00279793          	slli	a5,a5,0x2
     784:	45870713          	addi	a4,a4,1112 # 1458 <__etext+0x18c>
     788:	00e787b3          	add	a5,a5,a4
     78c:	0007a783          	lw	a5,0(a5)
     790:	00078067          	jr	a5
     794:	80000737          	lui	a4,0x80000
     798:	ffd74713          	xori	a4,a4,-3
     79c:	00e787b3          	add	a5,a5,a4
     7a0:	01c00713          	li	a4,28
     7a4:	f8f762e3          	bltu	a4,a5,728 <__neorv32_rte_core+0x78>
     7a8:	00001737          	lui	a4,0x1
     7ac:	00279793          	slli	a5,a5,0x2
     7b0:	48870713          	addi	a4,a4,1160 # 1488 <__etext+0x1bc>
     7b4:	00e787b3          	add	a5,a5,a4
     7b8:	0007a783          	lw	a5,0(a5)
     7bc:	00078067          	jr	a5
     7c0:	800007b7          	lui	a5,0x80000
     7c4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     7c8:	f69ff06f          	j	730 <__neorv32_rte_core+0x80>
     7cc:	800007b7          	lui	a5,0x80000
     7d0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     7d4:	f5dff06f          	j	730 <__neorv32_rte_core+0x80>
     7d8:	800007b7          	lui	a5,0x80000
     7dc:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     7e0:	f51ff06f          	j	730 <__neorv32_rte_core+0x80>
     7e4:	800007b7          	lui	a5,0x80000
     7e8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     7ec:	f45ff06f          	j	730 <__neorv32_rte_core+0x80>
     7f0:	800007b7          	lui	a5,0x80000
     7f4:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     7f8:	f39ff06f          	j	730 <__neorv32_rte_core+0x80>
     7fc:	800007b7          	lui	a5,0x80000
     800:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     804:	f2dff06f          	j	730 <__neorv32_rte_core+0x80>
     808:	800007b7          	lui	a5,0x80000
     80c:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     810:	f21ff06f          	j	730 <__neorv32_rte_core+0x80>
     814:	800007b7          	lui	a5,0x80000
     818:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     81c:	f15ff06f          	j	730 <__neorv32_rte_core+0x80>
     820:	800007b7          	lui	a5,0x80000
     824:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     828:	f09ff06f          	j	730 <__neorv32_rte_core+0x80>
     82c:	800007b7          	lui	a5,0x80000
     830:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     834:	efdff06f          	j	730 <__neorv32_rte_core+0x80>
     838:	800007b7          	lui	a5,0x80000
     83c:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     840:	ef1ff06f          	j	730 <__neorv32_rte_core+0x80>
     844:	800007b7          	lui	a5,0x80000
     848:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     84c:	ee5ff06f          	j	730 <__neorv32_rte_core+0x80>
     850:	800007b7          	lui	a5,0x80000
     854:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     858:	ed9ff06f          	j	730 <__neorv32_rte_core+0x80>
     85c:	800007b7          	lui	a5,0x80000
     860:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     864:	ecdff06f          	j	730 <__neorv32_rte_core+0x80>
     868:	800007b7          	lui	a5,0x80000
     86c:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     870:	ec1ff06f          	j	730 <__neorv32_rte_core+0x80>
     874:	800007b7          	lui	a5,0x80000
     878:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     87c:	eb5ff06f          	j	730 <__neorv32_rte_core+0x80>
     880:	800007b7          	lui	a5,0x80000
     884:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     888:	ea9ff06f          	j	730 <__neorv32_rte_core+0x80>
     88c:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     890:	ea1ff06f          	j	730 <__neorv32_rte_core+0x80>
     894:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     898:	e99ff06f          	j	730 <__neorv32_rte_core+0x80>
     89c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     8a0:	e91ff06f          	j	730 <__neorv32_rte_core+0x80>
     8a4:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     8a8:	e89ff06f          	j	730 <__neorv32_rte_core+0x80>
     8ac:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     8b0:	e81ff06f          	j	730 <__neorv32_rte_core+0x80>
     8b4:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     8b8:	e79ff06f          	j	730 <__neorv32_rte_core+0x80>
     8bc:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     8c0:	e71ff06f          	j	730 <__neorv32_rte_core+0x80>
     8c4:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     8c8:	e69ff06f          	j	730 <__neorv32_rte_core+0x80>
     8cc:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     8d0:	e61ff06f          	j	730 <__neorv32_rte_core+0x80>
     8d4:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     8d8:	e59ff06f          	j	730 <__neorv32_rte_core+0x80>
     8dc:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     8e0:	e51ff06f          	j	730 <__neorv32_rte_core+0x80>
     8e4:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     8e8:	e49ff06f          	j	730 <__neorv32_rte_core+0x80>
     8ec:	0000                	.2byte	0x0
     8ee:	0000                	.2byte	0x0
     8f0:	0000                	.2byte	0x0
     8f2:	0000                	.2byte	0x0

000008f4 <__neorv32_rte_print_hex_word>:
     8f4:	fe010113          	addi	sp,sp,-32
     8f8:	01212823          	sw	s2,16(sp)
     8fc:	00050913          	mv	s2,a0
     900:	00001537          	lui	a0,0x1
     904:	00912a23          	sw	s1,20(sp)
     908:	4fc50513          	addi	a0,a0,1276 # 14fc <__etext+0x230>
     90c:	000014b7          	lui	s1,0x1
     910:	00812c23          	sw	s0,24(sp)
     914:	01312623          	sw	s3,12(sp)
     918:	00112e23          	sw	ra,28(sp)
     91c:	01c00413          	li	s0,28
     920:	4bc000ef          	jal	ra,ddc <neorv32_uart0_print>
     924:	6f048493          	addi	s1,s1,1776 # 16f0 <hex_symbols.0>
     928:	ffc00993          	li	s3,-4
     92c:	008957b3          	srl	a5,s2,s0
     930:	00f7f793          	andi	a5,a5,15
     934:	00f487b3          	add	a5,s1,a5
     938:	0007c503          	lbu	a0,0(a5)
     93c:	ffc40413          	addi	s0,s0,-4
     940:	484000ef          	jal	ra,dc4 <neorv32_uart0_putc>
     944:	ff3414e3          	bne	s0,s3,92c <__neorv32_rte_print_hex_word+0x38>
     948:	01c12083          	lw	ra,28(sp)
     94c:	01812403          	lw	s0,24(sp)
     950:	01412483          	lw	s1,20(sp)
     954:	01012903          	lw	s2,16(sp)
     958:	00c12983          	lw	s3,12(sp)
     95c:	02010113          	addi	sp,sp,32
     960:	00008067          	ret

00000964 <__neorv32_rte_debug_exc_handler>:
     964:	ff010113          	addi	sp,sp,-16
     968:	00112623          	sw	ra,12(sp)
     96c:	00812423          	sw	s0,8(sp)
     970:	00912223          	sw	s1,4(sp)
     974:	394000ef          	jal	ra,d08 <neorv32_uart0_available>
     978:	1a050e63          	beqz	a0,b34 <__neorv32_rte_debug_exc_handler+0x1d0>
     97c:	00001537          	lui	a0,0x1
     980:	50050513          	addi	a0,a0,1280 # 1500 <__etext+0x234>
     984:	458000ef          	jal	ra,ddc <neorv32_uart0_print>
     988:	34202473          	csrr	s0,mcause
     98c:	00900713          	li	a4,9
     990:	00f47793          	andi	a5,s0,15
     994:	03078493          	addi	s1,a5,48
     998:	00f77463          	bgeu	a4,a5,9a0 <__neorv32_rte_debug_exc_handler+0x3c>
     99c:	05778493          	addi	s1,a5,87
     9a0:	00b00793          	li	a5,11
     9a4:	0087ee63          	bltu	a5,s0,9c0 <__neorv32_rte_debug_exc_handler+0x5c>
     9a8:	00001737          	lui	a4,0x1
     9ac:	00241793          	slli	a5,s0,0x2
     9b0:	6c070713          	addi	a4,a4,1728 # 16c0 <__etext+0x3f4>
     9b4:	00e787b3          	add	a5,a5,a4
     9b8:	0007a783          	lw	a5,0(a5)
     9bc:	00078067          	jr	a5
     9c0:	800007b7          	lui	a5,0x80000
     9c4:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     9c8:	14e40463          	beq	s0,a4,b10 <__neorv32_rte_debug_exc_handler+0x1ac>
     9cc:	02876663          	bltu	a4,s0,9f8 <__neorv32_rte_debug_exc_handler+0x94>
     9d0:	00378713          	addi	a4,a5,3
     9d4:	12e40263          	beq	s0,a4,af8 <__neorv32_rte_debug_exc_handler+0x194>
     9d8:	00778793          	addi	a5,a5,7
     9dc:	12f40463          	beq	s0,a5,b04 <__neorv32_rte_debug_exc_handler+0x1a0>
     9e0:	00001537          	lui	a0,0x1
     9e4:	66050513          	addi	a0,a0,1632 # 1660 <__etext+0x394>
     9e8:	3f4000ef          	jal	ra,ddc <neorv32_uart0_print>
     9ec:	00040513          	mv	a0,s0
     9f0:	f05ff0ef          	jal	ra,8f4 <__neorv32_rte_print_hex_word>
     9f4:	0280006f          	j	a1c <__neorv32_rte_debug_exc_handler+0xb8>
     9f8:	ff07c793          	xori	a5,a5,-16
     9fc:	00f407b3          	add	a5,s0,a5
     a00:	00f00713          	li	a4,15
     a04:	fcf76ee3          	bltu	a4,a5,9e0 <__neorv32_rte_debug_exc_handler+0x7c>
     a08:	00001537          	lui	a0,0x1
     a0c:	65050513          	addi	a0,a0,1616 # 1650 <__etext+0x384>
     a10:	3cc000ef          	jal	ra,ddc <neorv32_uart0_print>
     a14:	00048513          	mv	a0,s1
     a18:	3ac000ef          	jal	ra,dc4 <neorv32_uart0_putc>
     a1c:	00001537          	lui	a0,0x1
     a20:	6a450513          	addi	a0,a0,1700 # 16a4 <__etext+0x3d8>
     a24:	3b8000ef          	jal	ra,ddc <neorv32_uart0_print>
     a28:	34002573          	csrr	a0,mscratch
     a2c:	ec9ff0ef          	jal	ra,8f4 <__neorv32_rte_print_hex_word>
     a30:	00001537          	lui	a0,0x1
     a34:	6ac50513          	addi	a0,a0,1708 # 16ac <__etext+0x3e0>
     a38:	3a4000ef          	jal	ra,ddc <neorv32_uart0_print>
     a3c:	34302573          	csrr	a0,mtval
     a40:	eb5ff0ef          	jal	ra,8f4 <__neorv32_rte_print_hex_word>
     a44:	00812403          	lw	s0,8(sp)
     a48:	00c12083          	lw	ra,12(sp)
     a4c:	00412483          	lw	s1,4(sp)
     a50:	00001537          	lui	a0,0x1
     a54:	6b850513          	addi	a0,a0,1720 # 16b8 <__etext+0x3ec>
     a58:	01010113          	addi	sp,sp,16
     a5c:	3800006f          	j	ddc <neorv32_uart0_print>
     a60:	00001537          	lui	a0,0x1
     a64:	50850513          	addi	a0,a0,1288 # 1508 <__etext+0x23c>
     a68:	374000ef          	jal	ra,ddc <neorv32_uart0_print>
     a6c:	fb1ff06f          	j	a1c <__neorv32_rte_debug_exc_handler+0xb8>
     a70:	00001537          	lui	a0,0x1
     a74:	52850513          	addi	a0,a0,1320 # 1528 <__etext+0x25c>
     a78:	364000ef          	jal	ra,ddc <neorv32_uart0_print>
     a7c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     a80:	0a07d463          	bgez	a5,b28 <__neorv32_rte_debug_exc_handler+0x1c4>
     a84:	0017f793          	andi	a5,a5,1
     a88:	08078a63          	beqz	a5,b1c <__neorv32_rte_debug_exc_handler+0x1b8>
     a8c:	00001537          	lui	a0,0x1
     a90:	67850513          	addi	a0,a0,1656 # 1678 <__etext+0x3ac>
     a94:	fd5ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     a98:	00001537          	lui	a0,0x1
     a9c:	54450513          	addi	a0,a0,1348 # 1544 <__etext+0x278>
     aa0:	fc9ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     aa4:	00001537          	lui	a0,0x1
     aa8:	55850513          	addi	a0,a0,1368 # 1558 <__etext+0x28c>
     aac:	fbdff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     ab0:	00001537          	lui	a0,0x1
     ab4:	56450513          	addi	a0,a0,1380 # 1564 <__etext+0x298>
     ab8:	fb1ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     abc:	00001537          	lui	a0,0x1
     ac0:	57c50513          	addi	a0,a0,1404 # 157c <__etext+0x2b0>
     ac4:	fb5ff06f          	j	a78 <__neorv32_rte_debug_exc_handler+0x114>
     ac8:	00001537          	lui	a0,0x1
     acc:	59050513          	addi	a0,a0,1424 # 1590 <__etext+0x2c4>
     ad0:	f99ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     ad4:	00001537          	lui	a0,0x1
     ad8:	5ac50513          	addi	a0,a0,1452 # 15ac <__etext+0x2e0>
     adc:	f9dff06f          	j	a78 <__neorv32_rte_debug_exc_handler+0x114>
     ae0:	00001537          	lui	a0,0x1
     ae4:	5c050513          	addi	a0,a0,1472 # 15c0 <__etext+0x2f4>
     ae8:	f81ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     aec:	00001537          	lui	a0,0x1
     af0:	5e050513          	addi	a0,a0,1504 # 15e0 <__etext+0x314>
     af4:	f75ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     af8:	00001537          	lui	a0,0x1
     afc:	60050513          	addi	a0,a0,1536 # 1600 <__etext+0x334>
     b00:	f69ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     b04:	00001537          	lui	a0,0x1
     b08:	61c50513          	addi	a0,a0,1564 # 161c <__etext+0x350>
     b0c:	f5dff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     b10:	00001537          	lui	a0,0x1
     b14:	63450513          	addi	a0,a0,1588 # 1634 <__etext+0x368>
     b18:	f51ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     b1c:	00001537          	lui	a0,0x1
     b20:	68850513          	addi	a0,a0,1672 # 1688 <__etext+0x3bc>
     b24:	f45ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     b28:	00001537          	lui	a0,0x1
     b2c:	69850513          	addi	a0,a0,1688 # 1698 <__etext+0x3cc>
     b30:	f39ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x104>
     b34:	00c12083          	lw	ra,12(sp)
     b38:	00812403          	lw	s0,8(sp)
     b3c:	00412483          	lw	s1,4(sp)
     b40:	01010113          	addi	sp,sp,16
     b44:	00008067          	ret

00000b48 <neorv32_rte_exception_uninstall>:
     b48:	01f00793          	li	a5,31
     b4c:	02a7e463          	bltu	a5,a0,b74 <neorv32_rte_exception_uninstall+0x2c>
     b50:	800007b7          	lui	a5,0x80000
     b54:	00251513          	slli	a0,a0,0x2
     b58:	00078793          	mv	a5,a5
     b5c:	00001737          	lui	a4,0x1
     b60:	00a787b3          	add	a5,a5,a0
     b64:	96470713          	addi	a4,a4,-1692 # 964 <__neorv32_rte_debug_exc_handler>
     b68:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     b6c:	00000513          	li	a0,0
     b70:	00008067          	ret
     b74:	00100513          	li	a0,1
     b78:	00008067          	ret

00000b7c <neorv32_rte_setup>:
     b7c:	ff010113          	addi	sp,sp,-16
     b80:	00112623          	sw	ra,12(sp)
     b84:	00812423          	sw	s0,8(sp)
     b88:	00912223          	sw	s1,4(sp)
     b8c:	6b000793          	li	a5,1712
     b90:	30579073          	csrw	mtvec,a5
     b94:	00000413          	li	s0,0
     b98:	01d00493          	li	s1,29
     b9c:	00040513          	mv	a0,s0
     ba0:	00140413          	addi	s0,s0,1
     ba4:	0ff47413          	zext.b	s0,s0
     ba8:	fa1ff0ef          	jal	ra,b48 <neorv32_rte_exception_uninstall>
     bac:	fe9418e3          	bne	s0,s1,b9c <neorv32_rte_setup+0x20>
     bb0:	00c12083          	lw	ra,12(sp)
     bb4:	00812403          	lw	s0,8(sp)
     bb8:	00412483          	lw	s1,4(sp)
     bbc:	01010113          	addi	sp,sp,16
     bc0:	00008067          	ret

00000bc4 <__neorv32_uart_itoa>:
     bc4:	fd010113          	addi	sp,sp,-48
     bc8:	02812423          	sw	s0,40(sp)
     bcc:	02912223          	sw	s1,36(sp)
     bd0:	03212023          	sw	s2,32(sp)
     bd4:	01312e23          	sw	s3,28(sp)
     bd8:	01412c23          	sw	s4,24(sp)
     bdc:	02112623          	sw	ra,44(sp)
     be0:	01512a23          	sw	s5,20(sp)
     be4:	00001a37          	lui	s4,0x1
     be8:	00050493          	mv	s1,a0
     bec:	00058413          	mv	s0,a1
     bf0:	00058523          	sb	zero,10(a1)
     bf4:	00000993          	li	s3,0
     bf8:	00410913          	addi	s2,sp,4
     bfc:	714a0a13          	addi	s4,s4,1812 # 1714 <numbers.1>
     c00:	00a00593          	li	a1,10
     c04:	00048513          	mv	a0,s1
     c08:	4bc000ef          	jal	ra,10c4 <__umodsi3>
     c0c:	00aa0533          	add	a0,s4,a0
     c10:	00054783          	lbu	a5,0(a0)
     c14:	01390ab3          	add	s5,s2,s3
     c18:	00048513          	mv	a0,s1
     c1c:	00fa8023          	sb	a5,0(s5)
     c20:	00a00593          	li	a1,10
     c24:	458000ef          	jal	ra,107c <__hidden___udivsi3>
     c28:	00198993          	addi	s3,s3,1
     c2c:	00a00793          	li	a5,10
     c30:	00050493          	mv	s1,a0
     c34:	fcf996e3          	bne	s3,a5,c00 <__neorv32_uart_itoa+0x3c>
     c38:	00090693          	mv	a3,s2
     c3c:	00900713          	li	a4,9
     c40:	03000613          	li	a2,48
     c44:	0096c583          	lbu	a1,9(a3)
     c48:	00070793          	mv	a5,a4
     c4c:	fff70713          	addi	a4,a4,-1
     c50:	01071713          	slli	a4,a4,0x10
     c54:	01075713          	srli	a4,a4,0x10
     c58:	00c59a63          	bne	a1,a2,c6c <__neorv32_uart_itoa+0xa8>
     c5c:	000684a3          	sb	zero,9(a3)
     c60:	fff68693          	addi	a3,a3,-1
     c64:	fe0710e3          	bnez	a4,c44 <__neorv32_uart_itoa+0x80>
     c68:	00000793          	li	a5,0
     c6c:	00f907b3          	add	a5,s2,a5
     c70:	00000713          	li	a4,0
     c74:	0007c683          	lbu	a3,0(a5)
     c78:	00068c63          	beqz	a3,c90 <__neorv32_uart_itoa+0xcc>
     c7c:	00170613          	addi	a2,a4,1
     c80:	00e40733          	add	a4,s0,a4
     c84:	00d70023          	sb	a3,0(a4)
     c88:	01061713          	slli	a4,a2,0x10
     c8c:	01075713          	srli	a4,a4,0x10
     c90:	fff78693          	addi	a3,a5,-1
     c94:	02f91863          	bne	s2,a5,cc4 <__neorv32_uart_itoa+0x100>
     c98:	00e40433          	add	s0,s0,a4
     c9c:	00040023          	sb	zero,0(s0)
     ca0:	02c12083          	lw	ra,44(sp)
     ca4:	02812403          	lw	s0,40(sp)
     ca8:	02412483          	lw	s1,36(sp)
     cac:	02012903          	lw	s2,32(sp)
     cb0:	01c12983          	lw	s3,28(sp)
     cb4:	01812a03          	lw	s4,24(sp)
     cb8:	01412a83          	lw	s5,20(sp)
     cbc:	03010113          	addi	sp,sp,48
     cc0:	00008067          	ret
     cc4:	00068793          	mv	a5,a3
     cc8:	fadff06f          	j	c74 <__neorv32_uart_itoa+0xb0>

00000ccc <__neorv32_uart_tohex>:
     ccc:	00001637          	lui	a2,0x1
     cd0:	00758693          	addi	a3,a1,7
     cd4:	00000713          	li	a4,0
     cd8:	70060613          	addi	a2,a2,1792 # 1700 <symbols.0>
     cdc:	02000813          	li	a6,32
     ce0:	00e557b3          	srl	a5,a0,a4
     ce4:	00f7f793          	andi	a5,a5,15
     ce8:	00f607b3          	add	a5,a2,a5
     cec:	0007c783          	lbu	a5,0(a5)
     cf0:	00470713          	addi	a4,a4,4
     cf4:	fff68693          	addi	a3,a3,-1
     cf8:	00f680a3          	sb	a5,1(a3)
     cfc:	ff0712e3          	bne	a4,a6,ce0 <__neorv32_uart_tohex+0x14>
     d00:	00058423          	sb	zero,8(a1)
     d04:	00008067          	ret

00000d08 <neorv32_uart0_available>:
     d08:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     d0c:	01255513          	srli	a0,a0,0x12
     d10:	00157513          	andi	a0,a0,1
     d14:	00008067          	ret

00000d18 <neorv32_uart0_setup>:
     d18:	ff010113          	addi	sp,sp,-16
     d1c:	00812423          	sw	s0,8(sp)
     d20:	00912223          	sw	s1,4(sp)
     d24:	00112623          	sw	ra,12(sp)
     d28:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d2c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     d30:	00058413          	mv	s0,a1
     d34:	00151593          	slli	a1,a0,0x1
     d38:	00078513          	mv	a0,a5
     d3c:	00060493          	mv	s1,a2
     d40:	33c000ef          	jal	ra,107c <__hidden___udivsi3>
     d44:	01051513          	slli	a0,a0,0x10
     d48:	000017b7          	lui	a5,0x1
     d4c:	01055513          	srli	a0,a0,0x10
     d50:	00000713          	li	a4,0
     d54:	ffe78793          	addi	a5,a5,-2 # ffe <__muldi3+0x16>
     d58:	04a7e463          	bltu	a5,a0,da0 <neorv32_uart0_setup+0x88>
     d5c:	0034f493          	andi	s1,s1,3
     d60:	01449493          	slli	s1,s1,0x14
     d64:	00347413          	andi	s0,s0,3
     d68:	fff50793          	addi	a5,a0,-1
     d6c:	0097e7b3          	or	a5,a5,s1
     d70:	01641413          	slli	s0,s0,0x16
     d74:	0087e7b3          	or	a5,a5,s0
     d78:	01871713          	slli	a4,a4,0x18
     d7c:	00c12083          	lw	ra,12(sp)
     d80:	00812403          	lw	s0,8(sp)
     d84:	00e7e7b3          	or	a5,a5,a4
     d88:	10000737          	lui	a4,0x10000
     d8c:	00e7e7b3          	or	a5,a5,a4
     d90:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d94:	00412483          	lw	s1,4(sp)
     d98:	01010113          	addi	sp,sp,16
     d9c:	00008067          	ret
     da0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe8de>
     da4:	0fd6f693          	andi	a3,a3,253
     da8:	00069a63          	bnez	a3,dbc <neorv32_uart0_setup+0xa4>
     dac:	00355513          	srli	a0,a0,0x3
     db0:	00170713          	addi	a4,a4,1
     db4:	0ff77713          	zext.b	a4,a4
     db8:	fa1ff06f          	j	d58 <neorv32_uart0_setup+0x40>
     dbc:	00155513          	srli	a0,a0,0x1
     dc0:	ff1ff06f          	j	db0 <neorv32_uart0_setup+0x98>

00000dc4 <neorv32_uart0_putc>:
     dc4:	00040737          	lui	a4,0x40
     dc8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     dcc:	00e7f7b3          	and	a5,a5,a4
     dd0:	fe079ce3          	bnez	a5,dc8 <neorv32_uart0_putc+0x4>
     dd4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     dd8:	00008067          	ret

00000ddc <neorv32_uart0_print>:
     ddc:	ff010113          	addi	sp,sp,-16
     de0:	00812423          	sw	s0,8(sp)
     de4:	01212023          	sw	s2,0(sp)
     de8:	00112623          	sw	ra,12(sp)
     dec:	00912223          	sw	s1,4(sp)
     df0:	00050413          	mv	s0,a0
     df4:	00a00913          	li	s2,10
     df8:	00044483          	lbu	s1,0(s0)
     dfc:	00140413          	addi	s0,s0,1
     e00:	00049e63          	bnez	s1,e1c <neorv32_uart0_print+0x40>
     e04:	00c12083          	lw	ra,12(sp)
     e08:	00812403          	lw	s0,8(sp)
     e0c:	00412483          	lw	s1,4(sp)
     e10:	00012903          	lw	s2,0(sp)
     e14:	01010113          	addi	sp,sp,16
     e18:	00008067          	ret
     e1c:	01249663          	bne	s1,s2,e28 <neorv32_uart0_print+0x4c>
     e20:	00d00513          	li	a0,13
     e24:	fa1ff0ef          	jal	ra,dc4 <neorv32_uart0_putc>
     e28:	00048513          	mv	a0,s1
     e2c:	f99ff0ef          	jal	ra,dc4 <neorv32_uart0_putc>
     e30:	fc9ff06f          	j	df8 <neorv32_uart0_print+0x1c>

00000e34 <neorv32_uart0_printf>:
     e34:	fa010113          	addi	sp,sp,-96
     e38:	04f12a23          	sw	a5,84(sp)
     e3c:	04410793          	addi	a5,sp,68
     e40:	02812c23          	sw	s0,56(sp)
     e44:	03212823          	sw	s2,48(sp)
     e48:	03312623          	sw	s3,44(sp)
     e4c:	03412423          	sw	s4,40(sp)
     e50:	03512223          	sw	s5,36(sp)
     e54:	03612023          	sw	s6,32(sp)
     e58:	01712e23          	sw	s7,28(sp)
     e5c:	01812c23          	sw	s8,24(sp)
     e60:	02112e23          	sw	ra,60(sp)
     e64:	02912a23          	sw	s1,52(sp)
     e68:	00050413          	mv	s0,a0
     e6c:	04b12223          	sw	a1,68(sp)
     e70:	04c12423          	sw	a2,72(sp)
     e74:	04d12623          	sw	a3,76(sp)
     e78:	04e12823          	sw	a4,80(sp)
     e7c:	05012c23          	sw	a6,88(sp)
     e80:	05112e23          	sw	a7,92(sp)
     e84:	00f12023          	sw	a5,0(sp)
     e88:	02500993          	li	s3,37
     e8c:	00a00a13          	li	s4,10
     e90:	07300913          	li	s2,115
     e94:	07500a93          	li	s5,117
     e98:	07800b13          	li	s6,120
     e9c:	06300b93          	li	s7,99
     ea0:	06900c13          	li	s8,105
     ea4:	00044483          	lbu	s1,0(s0)
     ea8:	02049a63          	bnez	s1,edc <neorv32_uart0_printf+0xa8>
     eac:	03c12083          	lw	ra,60(sp)
     eb0:	03812403          	lw	s0,56(sp)
     eb4:	03412483          	lw	s1,52(sp)
     eb8:	03012903          	lw	s2,48(sp)
     ebc:	02c12983          	lw	s3,44(sp)
     ec0:	02812a03          	lw	s4,40(sp)
     ec4:	02412a83          	lw	s5,36(sp)
     ec8:	02012b03          	lw	s6,32(sp)
     ecc:	01c12b83          	lw	s7,28(sp)
     ed0:	01812c03          	lw	s8,24(sp)
     ed4:	06010113          	addi	sp,sp,96
     ed8:	00008067          	ret
     edc:	0d349663          	bne	s1,s3,fa8 <neorv32_uart0_printf+0x174>
     ee0:	00144483          	lbu	s1,1(s0)
     ee4:	05248263          	beq	s1,s2,f28 <neorv32_uart0_printf+0xf4>
     ee8:	00996e63          	bltu	s2,s1,f04 <neorv32_uart0_printf+0xd0>
     eec:	05748c63          	beq	s1,s7,f44 <neorv32_uart0_printf+0x110>
     ef0:	07848663          	beq	s1,s8,f5c <neorv32_uart0_printf+0x128>
     ef4:	02500513          	li	a0,37
     ef8:	ecdff0ef          	jal	ra,dc4 <neorv32_uart0_putc>
     efc:	00048513          	mv	a0,s1
     f00:	0540006f          	j	f54 <neorv32_uart0_printf+0x120>
     f04:	09548663          	beq	s1,s5,f90 <neorv32_uart0_printf+0x15c>
     f08:	ff6496e3          	bne	s1,s6,ef4 <neorv32_uart0_printf+0xc0>
     f0c:	00012783          	lw	a5,0(sp)
     f10:	00410593          	addi	a1,sp,4
     f14:	0007a503          	lw	a0,0(a5)
     f18:	00478713          	addi	a4,a5,4
     f1c:	00e12023          	sw	a4,0(sp)
     f20:	dadff0ef          	jal	ra,ccc <__neorv32_uart_tohex>
     f24:	0640006f          	j	f88 <neorv32_uart0_printf+0x154>
     f28:	00012783          	lw	a5,0(sp)
     f2c:	0007a503          	lw	a0,0(a5)
     f30:	00478713          	addi	a4,a5,4
     f34:	00e12023          	sw	a4,0(sp)
     f38:	ea5ff0ef          	jal	ra,ddc <neorv32_uart0_print>
     f3c:	00240413          	addi	s0,s0,2
     f40:	f65ff06f          	j	ea4 <neorv32_uart0_printf+0x70>
     f44:	00012783          	lw	a5,0(sp)
     f48:	0007c503          	lbu	a0,0(a5)
     f4c:	00478713          	addi	a4,a5,4
     f50:	00e12023          	sw	a4,0(sp)
     f54:	e71ff0ef          	jal	ra,dc4 <neorv32_uart0_putc>
     f58:	fe5ff06f          	j	f3c <neorv32_uart0_printf+0x108>
     f5c:	00012783          	lw	a5,0(sp)
     f60:	0007a483          	lw	s1,0(a5)
     f64:	00478713          	addi	a4,a5,4
     f68:	00e12023          	sw	a4,0(sp)
     f6c:	0004d863          	bgez	s1,f7c <neorv32_uart0_printf+0x148>
     f70:	02d00513          	li	a0,45
     f74:	409004b3          	neg	s1,s1
     f78:	e4dff0ef          	jal	ra,dc4 <neorv32_uart0_putc>
     f7c:	00410593          	addi	a1,sp,4
     f80:	00048513          	mv	a0,s1
     f84:	c41ff0ef          	jal	ra,bc4 <__neorv32_uart_itoa>
     f88:	00410513          	addi	a0,sp,4
     f8c:	fadff06f          	j	f38 <neorv32_uart0_printf+0x104>
     f90:	00012783          	lw	a5,0(sp)
     f94:	00410593          	addi	a1,sp,4
     f98:	00478713          	addi	a4,a5,4
     f9c:	0007a503          	lw	a0,0(a5)
     fa0:	00e12023          	sw	a4,0(sp)
     fa4:	fe1ff06f          	j	f84 <neorv32_uart0_printf+0x150>
     fa8:	01449663          	bne	s1,s4,fb4 <neorv32_uart0_printf+0x180>
     fac:	00d00513          	li	a0,13
     fb0:	e15ff0ef          	jal	ra,dc4 <neorv32_uart0_putc>
     fb4:	00048513          	mv	a0,s1
     fb8:	00140413          	addi	s0,s0,1
     fbc:	e09ff0ef          	jal	ra,dc4 <neorv32_uart0_putc>
     fc0:	ee5ff06f          	j	ea4 <neorv32_uart0_printf+0x70>

00000fc4 <__mulsi3>:
     fc4:	00050613          	mv	a2,a0
     fc8:	00000513          	li	a0,0
     fcc:	0015f693          	andi	a3,a1,1
     fd0:	00068463          	beqz	a3,fd8 <__mulsi3+0x14>
     fd4:	00c50533          	add	a0,a0,a2
     fd8:	0015d593          	srli	a1,a1,0x1
     fdc:	00161613          	slli	a2,a2,0x1
     fe0:	fe0596e3          	bnez	a1,fcc <__mulsi3+0x8>
     fe4:	00008067          	ret

00000fe8 <__muldi3>:
     fe8:	00050e13          	mv	t3,a0
     fec:	ff010113          	addi	sp,sp,-16
     ff0:	00068313          	mv	t1,a3
     ff4:	00112623          	sw	ra,12(sp)
     ff8:	00060513          	mv	a0,a2
     ffc:	000e0893          	mv	a7,t3
    1000:	00060693          	mv	a3,a2
    1004:	00000713          	li	a4,0
    1008:	00000793          	li	a5,0
    100c:	00000813          	li	a6,0
    1010:	0016fe93          	andi	t4,a3,1
    1014:	00171613          	slli	a2,a4,0x1
    1018:	000e8a63          	beqz	t4,102c <__muldi3+0x44>
    101c:	01088833          	add	a6,a7,a6
    1020:	00e787b3          	add	a5,a5,a4
    1024:	01183733          	sltu	a4,a6,a7
    1028:	00f707b3          	add	a5,a4,a5
    102c:	01f8d713          	srli	a4,a7,0x1f
    1030:	0016d693          	srli	a3,a3,0x1
    1034:	00e66733          	or	a4,a2,a4
    1038:	00189893          	slli	a7,a7,0x1
    103c:	fc069ae3          	bnez	a3,1010 <__muldi3+0x28>
    1040:	00058663          	beqz	a1,104c <__muldi3+0x64>
    1044:	f81ff0ef          	jal	ra,fc4 <__mulsi3>
    1048:	00a787b3          	add	a5,a5,a0
    104c:	00030a63          	beqz	t1,1060 <__muldi3+0x78>
    1050:	000e0513          	mv	a0,t3
    1054:	00030593          	mv	a1,t1
    1058:	f6dff0ef          	jal	ra,fc4 <__mulsi3>
    105c:	00f507b3          	add	a5,a0,a5
    1060:	00c12083          	lw	ra,12(sp)
    1064:	00080513          	mv	a0,a6
    1068:	00078593          	mv	a1,a5
    106c:	01010113          	addi	sp,sp,16
    1070:	00008067          	ret

00001074 <__divsi3>:
    1074:	06054063          	bltz	a0,10d4 <__umodsi3+0x10>
    1078:	0605c663          	bltz	a1,10e4 <__umodsi3+0x20>

0000107c <__hidden___udivsi3>:
    107c:	00058613          	mv	a2,a1
    1080:	00050593          	mv	a1,a0
    1084:	fff00513          	li	a0,-1
    1088:	02060c63          	beqz	a2,10c0 <__hidden___udivsi3+0x44>
    108c:	00100693          	li	a3,1
    1090:	00b67a63          	bgeu	a2,a1,10a4 <__hidden___udivsi3+0x28>
    1094:	00c05863          	blez	a2,10a4 <__hidden___udivsi3+0x28>
    1098:	00161613          	slli	a2,a2,0x1
    109c:	00169693          	slli	a3,a3,0x1
    10a0:	feb66ae3          	bltu	a2,a1,1094 <__hidden___udivsi3+0x18>
    10a4:	00000513          	li	a0,0
    10a8:	00c5e663          	bltu	a1,a2,10b4 <__hidden___udivsi3+0x38>
    10ac:	40c585b3          	sub	a1,a1,a2
    10b0:	00d56533          	or	a0,a0,a3
    10b4:	0016d693          	srli	a3,a3,0x1
    10b8:	00165613          	srli	a2,a2,0x1
    10bc:	fe0696e3          	bnez	a3,10a8 <__hidden___udivsi3+0x2c>
    10c0:	00008067          	ret

000010c4 <__umodsi3>:
    10c4:	00008293          	mv	t0,ra
    10c8:	fb5ff0ef          	jal	ra,107c <__hidden___udivsi3>
    10cc:	00058513          	mv	a0,a1
    10d0:	00028067          	jr	t0
    10d4:	40a00533          	neg	a0,a0
    10d8:	00b04863          	bgtz	a1,10e8 <__umodsi3+0x24>
    10dc:	40b005b3          	neg	a1,a1
    10e0:	f9dff06f          	j	107c <__hidden___udivsi3>
    10e4:	40b005b3          	neg	a1,a1
    10e8:	00008293          	mv	t0,ra
    10ec:	f91ff0ef          	jal	ra,107c <__hidden___udivsi3>
    10f0:	40a00533          	neg	a0,a0
    10f4:	00028067          	jr	t0

000010f8 <__modsi3>:
    10f8:	00008293          	mv	t0,ra
    10fc:	0005ca63          	bltz	a1,1110 <__modsi3+0x18>
    1100:	00054c63          	bltz	a0,1118 <__modsi3+0x20>
    1104:	f79ff0ef          	jal	ra,107c <__hidden___udivsi3>
    1108:	00058513          	mv	a0,a1
    110c:	00028067          	jr	t0
    1110:	40b005b3          	neg	a1,a1
    1114:	fe0558e3          	bgez	a0,1104 <__modsi3+0xc>
    1118:	40a00533          	neg	a0,a0
    111c:	f61ff0ef          	jal	ra,107c <__hidden___udivsi3>
    1120:	40b00533          	neg	a0,a1
    1124:	00028067          	jr	t0

00001128 <memcpy>:
    1128:	00b547b3          	xor	a5,a0,a1
    112c:	0037f793          	andi	a5,a5,3
    1130:	00c508b3          	add	a7,a0,a2
    1134:	06079463          	bnez	a5,119c <memcpy+0x74>
    1138:	00300793          	li	a5,3
    113c:	06c7f063          	bgeu	a5,a2,119c <memcpy+0x74>
    1140:	00357793          	andi	a5,a0,3
    1144:	00050713          	mv	a4,a0
    1148:	06079a63          	bnez	a5,11bc <memcpy+0x94>
    114c:	ffc8f613          	andi	a2,a7,-4
    1150:	40e606b3          	sub	a3,a2,a4
    1154:	02000793          	li	a5,32
    1158:	08d7ce63          	blt	a5,a3,11f4 <memcpy+0xcc>
    115c:	00058693          	mv	a3,a1
    1160:	00070793          	mv	a5,a4
    1164:	02c77863          	bgeu	a4,a2,1194 <memcpy+0x6c>
    1168:	0006a803          	lw	a6,0(a3)
    116c:	00478793          	addi	a5,a5,4
    1170:	00468693          	addi	a3,a3,4
    1174:	ff07ae23          	sw	a6,-4(a5)
    1178:	fec7e8e3          	bltu	a5,a2,1168 <memcpy+0x40>
    117c:	fff60793          	addi	a5,a2,-1
    1180:	40e787b3          	sub	a5,a5,a4
    1184:	ffc7f793          	andi	a5,a5,-4
    1188:	00478793          	addi	a5,a5,4
    118c:	00f70733          	add	a4,a4,a5
    1190:	00f585b3          	add	a1,a1,a5
    1194:	01176863          	bltu	a4,a7,11a4 <memcpy+0x7c>
    1198:	00008067          	ret
    119c:	00050713          	mv	a4,a0
    11a0:	05157863          	bgeu	a0,a7,11f0 <memcpy+0xc8>
    11a4:	0005c783          	lbu	a5,0(a1)
    11a8:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3e8e1>
    11ac:	00158593          	addi	a1,a1,1
    11b0:	fef70fa3          	sb	a5,-1(a4)
    11b4:	fee898e3          	bne	a7,a4,11a4 <memcpy+0x7c>
    11b8:	00008067          	ret
    11bc:	0005c683          	lbu	a3,0(a1)
    11c0:	00170713          	addi	a4,a4,1
    11c4:	00377793          	andi	a5,a4,3
    11c8:	fed70fa3          	sb	a3,-1(a4)
    11cc:	00158593          	addi	a1,a1,1
    11d0:	f6078ee3          	beqz	a5,114c <memcpy+0x24>
    11d4:	0005c683          	lbu	a3,0(a1)
    11d8:	00170713          	addi	a4,a4,1
    11dc:	00377793          	andi	a5,a4,3
    11e0:	fed70fa3          	sb	a3,-1(a4)
    11e4:	00158593          	addi	a1,a1,1
    11e8:	fc079ae3          	bnez	a5,11bc <memcpy+0x94>
    11ec:	f61ff06f          	j	114c <memcpy+0x24>
    11f0:	00008067          	ret
    11f4:	ff010113          	addi	sp,sp,-16
    11f8:	00812623          	sw	s0,12(sp)
    11fc:	02000413          	li	s0,32
    1200:	0005a383          	lw	t2,0(a1)
    1204:	0045a283          	lw	t0,4(a1)
    1208:	0085af83          	lw	t6,8(a1)
    120c:	00c5af03          	lw	t5,12(a1)
    1210:	0105ae83          	lw	t4,16(a1)
    1214:	0145ae03          	lw	t3,20(a1)
    1218:	0185a303          	lw	t1,24(a1)
    121c:	01c5a803          	lw	a6,28(a1)
    1220:	0205a683          	lw	a3,32(a1)
    1224:	02470713          	addi	a4,a4,36
    1228:	40e607b3          	sub	a5,a2,a4
    122c:	fc772e23          	sw	t2,-36(a4)
    1230:	fe572023          	sw	t0,-32(a4)
    1234:	fff72223          	sw	t6,-28(a4)
    1238:	ffe72423          	sw	t5,-24(a4)
    123c:	ffd72623          	sw	t4,-20(a4)
    1240:	ffc72823          	sw	t3,-16(a4)
    1244:	fe672a23          	sw	t1,-12(a4)
    1248:	ff072c23          	sw	a6,-8(a4)
    124c:	fed72e23          	sw	a3,-4(a4)
    1250:	02458593          	addi	a1,a1,36
    1254:	faf446e3          	blt	s0,a5,1200 <memcpy+0xd8>
    1258:	00058693          	mv	a3,a1
    125c:	00070793          	mv	a5,a4
    1260:	02c77863          	bgeu	a4,a2,1290 <memcpy+0x168>
    1264:	0006a803          	lw	a6,0(a3)
    1268:	00478793          	addi	a5,a5,4
    126c:	00468693          	addi	a3,a3,4
    1270:	ff07ae23          	sw	a6,-4(a5)
    1274:	fec7e8e3          	bltu	a5,a2,1264 <memcpy+0x13c>
    1278:	fff60793          	addi	a5,a2,-1
    127c:	40e787b3          	sub	a5,a5,a4
    1280:	ffc7f793          	andi	a5,a5,-4
    1284:	00478793          	addi	a5,a5,4
    1288:	00f70733          	add	a4,a4,a5
    128c:	00f585b3          	add	a1,a1,a5
    1290:	01176863          	bltu	a4,a7,12a0 <memcpy+0x178>
    1294:	00c12403          	lw	s0,12(sp)
    1298:	01010113          	addi	sp,sp,16
    129c:	00008067          	ret
    12a0:	0005c783          	lbu	a5,0(a1)
    12a4:	00170713          	addi	a4,a4,1
    12a8:	00158593          	addi	a1,a1,1
    12ac:	fef70fa3          	sb	a5,-1(a4)
    12b0:	fee882e3          	beq	a7,a4,1294 <memcpy+0x16c>
    12b4:	0005c783          	lbu	a5,0(a1)
    12b8:	00170713          	addi	a4,a4,1
    12bc:	00158593          	addi	a1,a1,1
    12c0:	fef70fa3          	sb	a5,-1(a4)
    12c4:	fce89ee3          	bne	a7,a4,12a0 <memcpy+0x178>
    12c8:	fcdff06f          	j	1294 <memcpy+0x16c>
