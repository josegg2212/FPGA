
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
      e0:	5a858593          	addi	a1,a1,1448 # 1684 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x347c>
     194:	00112623          	sw	ra,12(sp)
     198:	2d1000ef          	jal	ra,c68 <neorv32_uart0_setup>
     19c:	3b8000ef          	jal	ra,554 <neorv32_gpio_available>
     1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
     1a4:	129000ef          	jal	ra,acc <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	36850513          	addi	a0,a0,872 # 1368 <__etext+0x14c>
     1b0:	37d000ef          	jal	ra,d2c <neorv32_uart0_print>
     1b4:	13c000ef          	jal	ra,2f0 <wb_calculadora>
     1b8:	ffdff06f          	j	1b4 <main+0x34>
     1bc:	00001537          	lui	a0,0x1
     1c0:	34450513          	addi	a0,a0,836 # 1344 <__etext+0x128>
     1c4:	369000ef          	jal	ra,d2c <neorv32_uart0_print>
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00100513          	li	a0,1
     1d0:	01010113          	addi	sp,sp,16
     1d4:	00008067          	ret

000001d8 <keyboard>:
     1d8:	f9010113          	addi	sp,sp,-112
     1dc:	000015b7          	lui	a1,0x1
     1e0:	04000613          	li	a2,64
     1e4:	37c58593          	addi	a1,a1,892 # 137c <__etext+0x160>
     1e8:	00010513          	mv	a0,sp
     1ec:	06112623          	sw	ra,108(sp)
     1f0:	05312e23          	sw	s3,92(sp)
     1f4:	05612823          	sw	s6,80(sp)
     1f8:	05712623          	sw	s7,76(sp)
     1fc:	05812423          	sw	s8,72(sp)
     200:	06812423          	sw	s0,104(sp)
     204:	06912223          	sw	s1,100(sp)
     208:	07212023          	sw	s2,96(sp)
     20c:	05412c23          	sw	s4,88(sp)
     210:	05512a23          	sw	s5,84(sp)
     214:	665000ef          	jal	ra,1078 <memcpy>
     218:	0ff00513          	li	a0,255
     21c:	00000593          	li	a1,0
     220:	3cc000ef          	jal	ra,5ec <neorv32_gpio_port_set>
     224:	0ff00993          	li	s3,255
     228:	0ff00b13          	li	s6,255
     22c:	00800b93          	li	s7,8
     230:	00400c13          	li	s8,4
     234:	00010a13          	mv	s4,sp
     238:	00000493          	li	s1,0
     23c:	0ff00413          	li	s0,255
     240:	00048513          	mv	a0,s1
     244:	350000ef          	jal	ra,594 <neorv32_gpio_pin_clr>
     248:	000a0a93          	mv	s5,s4
     24c:	00400913          	li	s2,4
     250:	00090513          	mv	a0,s2
     254:	374000ef          	jal	ra,5c8 <neorv32_gpio_pin_get>
     258:	00051e63          	bnez	a0,274 <keyboard+0x9c>
     25c:	03caa403          	lw	s0,60(s5)
     260:	01640a63          	beq	s0,s6,274 <keyboard+0x9c>
     264:	00441513          	slli	a0,s0,0x4
     268:	0f057513          	andi	a0,a0,240
     26c:	00000593          	li	a1,0
     270:	37c000ef          	jal	ra,5ec <neorv32_gpio_port_set>
     274:	00190913          	addi	s2,s2,1
     278:	ff0a8a93          	addi	s5,s5,-16
     27c:	fd791ae3          	bne	s2,s7,250 <keyboard+0x78>
     280:	00048513          	mv	a0,s1
     284:	00148493          	addi	s1,s1,1
     288:	2dc000ef          	jal	ra,564 <neorv32_gpio_pin_set>
     28c:	ffca0a13          	addi	s4,s4,-4
     290:	fb8498e3          	bne	s1,s8,240 <keyboard+0x68>
     294:	05641a63          	bne	s0,s6,2e8 <keyboard+0x110>
     298:	04898863          	beq	s3,s0,2e8 <keyboard+0x110>
     29c:	00001537          	lui	a0,0x1
     2a0:	0ff00593          	li	a1,255
     2a4:	21c50513          	addi	a0,a0,540 # 121c <__etext>
     2a8:	2dd000ef          	jal	ra,d84 <neorv32_uart0_printf>
     2ac:	03200513          	li	a0,50
     2b0:	1e8000ef          	jal	ra,498 <neorv32_cpu_delay_ms>
     2b4:	06c12083          	lw	ra,108(sp)
     2b8:	06812403          	lw	s0,104(sp)
     2bc:	06412483          	lw	s1,100(sp)
     2c0:	06012903          	lw	s2,96(sp)
     2c4:	05812a03          	lw	s4,88(sp)
     2c8:	05412a83          	lw	s5,84(sp)
     2cc:	05012b03          	lw	s6,80(sp)
     2d0:	04c12b83          	lw	s7,76(sp)
     2d4:	04812c03          	lw	s8,72(sp)
     2d8:	00098513          	mv	a0,s3
     2dc:	05c12983          	lw	s3,92(sp)
     2e0:	07010113          	addi	sp,sp,112
     2e4:	00008067          	ret
     2e8:	00040993          	mv	s3,s0
     2ec:	f49ff06f          	j	234 <keyboard+0x5c>

000002f0 <wb_calculadora>:
     2f0:	00001537          	lui	a0,0x1
     2f4:	ff010113          	addi	sp,sp,-16
     2f8:	23050513          	addi	a0,a0,560 # 1230 <__etext+0x14>
     2fc:	00112623          	sw	ra,12(sp)
     300:	00912223          	sw	s1,4(sp)
     304:	01212023          	sw	s2,0(sp)
     308:	00812423          	sw	s0,8(sp)
     30c:	279000ef          	jal	ra,d84 <neorv32_uart0_printf>
     310:	00001537          	lui	a0,0x1
     314:	28050513          	addi	a0,a0,640 # 1280 <__etext+0x64>
     318:	26d000ef          	jal	ra,d84 <neorv32_uart0_printf>
     31c:	00000493          	li	s1,0
     320:	00900913          	li	s2,9
     324:	eb5ff0ef          	jal	ra,1d8 <keyboard>
     328:	00050413          	mv	s0,a0
     32c:	0aa97663          	bgeu	s2,a0,3d8 <wb_calculadora+0xe8>
     330:	00001537          	lui	a0,0x1
     334:	00048593          	mv	a1,s1
     338:	2a450513          	addi	a0,a0,676 # 12a4 <__etext+0x88>
     33c:	249000ef          	jal	ra,d84 <neorv32_uart0_printf>
     340:	90000937          	lui	s2,0x90000
     344:	00992023          	sw	s1,0(s2) # 90000000 <__ctr0_io_space_begin+0x90000200>
     348:	00001537          	lui	a0,0x1
     34c:	00040593          	mv	a1,s0
     350:	2b850513          	addi	a0,a0,696 # 12b8 <__etext+0x9c>
     354:	231000ef          	jal	ra,d84 <neorv32_uart0_printf>
     358:	00890913          	addi	s2,s2,8
     35c:	00892023          	sw	s0,0(s2)
     360:	00001537          	lui	a0,0x1
     364:	2c850513          	addi	a0,a0,712 # 12c8 <__etext+0xac>
     368:	21d000ef          	jal	ra,d84 <neorv32_uart0_printf>
     36c:	00000413          	li	s0,0
     370:	00900493          	li	s1,9
     374:	e65ff0ef          	jal	ra,1d8 <keyboard>
     378:	06a4fa63          	bgeu	s1,a0,3ec <wb_calculadora+0xfc>
     37c:	00001537          	lui	a0,0x1
     380:	00040593          	mv	a1,s0
     384:	2e850513          	addi	a0,a0,744 # 12e8 <__etext+0xcc>
     388:	1fd000ef          	jal	ra,d84 <neorv32_uart0_printf>
     38c:	900007b7          	lui	a5,0x90000
     390:	00478693          	addi	a3,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     394:	0086a023          	sw	s0,0(a3)
     398:	0007a503          	lw	a0,0(a5)
     39c:	0006a683          	lw	a3,0(a3)
     3a0:	00878793          	addi	a5,a5,8
     3a4:	0007a783          	lw	a5,0(a5)
     3a8:	00c00713          	li	a4,12
     3ac:	06e78663          	beq	a5,a4,418 <wb_calculadora+0x128>
     3b0:	04f76863          	bltu	a4,a5,400 <wb_calculadora+0x110>
     3b4:	00a00613          	li	a2,10
     3b8:	00a68733          	add	a4,a3,a0
     3bc:	06c78663          	beq	a5,a2,428 <wb_calculadora+0x138>
     3c0:	00b00613          	li	a2,11
     3c4:	40d50733          	sub	a4,a0,a3
     3c8:	06c78063          	beq	a5,a2,428 <wb_calculadora+0x138>
     3cc:	00001537          	lui	a0,0x1
     3d0:	31850513          	addi	a0,a0,792 # 1318 <__etext+0xfc>
     3d4:	08c0006f          	j	460 <wb_calculadora+0x170>
     3d8:	00249793          	slli	a5,s1,0x2
     3dc:	009787b3          	add	a5,a5,s1
     3e0:	00179793          	slli	a5,a5,0x1
     3e4:	008784b3          	add	s1,a5,s0
     3e8:	f3dff06f          	j	324 <wb_calculadora+0x34>
     3ec:	00241793          	slli	a5,s0,0x2
     3f0:	008787b3          	add	a5,a5,s0
     3f4:	00179793          	slli	a5,a5,0x1
     3f8:	00a78433          	add	s0,a5,a0
     3fc:	f79ff06f          	j	374 <wb_calculadora+0x84>
     400:	00d00713          	li	a4,13
     404:	fce794e3          	bne	a5,a4,3cc <wb_calculadora+0xdc>
     408:	04068863          	beqz	a3,458 <wb_calculadora+0x168>
     40c:	00068593          	mv	a1,a3
     410:	3bd000ef          	jal	ra,fcc <__hidden___udivsi3>
     414:	0100006f          	j	424 <wb_calculadora+0x134>
     418:	00050593          	mv	a1,a0
     41c:	00068513          	mv	a0,a3
     420:	2f5000ef          	jal	ra,f14 <__mulsi3>
     424:	00050713          	mv	a4,a0
     428:	900005b7          	lui	a1,0x90000
     42c:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     430:	00e5a023          	sw	a4,0(a1)
     434:	0005a583          	lw	a1,0(a1)
     438:	00812403          	lw	s0,8(sp)
     43c:	00c12083          	lw	ra,12(sp)
     440:	00412483          	lw	s1,4(sp)
     444:	00012903          	lw	s2,0(sp)
     448:	00001537          	lui	a0,0x1
     44c:	33450513          	addi	a0,a0,820 # 1334 <__etext+0x118>
     450:	01010113          	addi	sp,sp,16
     454:	1310006f          	j	d84 <neorv32_uart0_printf>
     458:	00001537          	lui	a0,0x1
     45c:	2fc50513          	addi	a0,a0,764 # 12fc <__etext+0xe0>
     460:	125000ef          	jal	ra,d84 <neorv32_uart0_printf>
     464:	fff00713          	li	a4,-1
     468:	fc1ff06f          	j	428 <wb_calculadora+0x138>

0000046c <neorv32_cpu_get_systime>:
     46c:	ff010113          	addi	sp,sp,-16
     470:	c81026f3          	rdtimeh	a3
     474:	c0102773          	rdtime	a4
     478:	c81027f3          	rdtimeh	a5
     47c:	fed79ae3          	bne	a5,a3,470 <neorv32_cpu_get_systime+0x4>
     480:	00e12023          	sw	a4,0(sp)
     484:	00f12223          	sw	a5,4(sp)
     488:	00012503          	lw	a0,0(sp)
     48c:	00412583          	lw	a1,4(sp)
     490:	01010113          	addi	sp,sp,16
     494:	00008067          	ret

00000498 <neorv32_cpu_delay_ms>:
     498:	fd010113          	addi	sp,sp,-48
     49c:	00a12623          	sw	a0,12(sp)
     4a0:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     4a4:	3e800593          	li	a1,1000
     4a8:	02112623          	sw	ra,44(sp)
     4ac:	02812423          	sw	s0,40(sp)
     4b0:	02912223          	sw	s1,36(sp)
     4b4:	03212023          	sw	s2,32(sp)
     4b8:	01312e23          	sw	s3,28(sp)
     4bc:	311000ef          	jal	ra,fcc <__hidden___udivsi3>
     4c0:	00c12603          	lw	a2,12(sp)
     4c4:	00000693          	li	a3,0
     4c8:	00000593          	li	a1,0
     4cc:	26d000ef          	jal	ra,f38 <__muldi3>
     4d0:	00050413          	mv	s0,a0
     4d4:	00058993          	mv	s3,a1
     4d8:	f95ff0ef          	jal	ra,46c <neorv32_cpu_get_systime>
     4dc:	00058913          	mv	s2,a1
     4e0:	00050493          	mv	s1,a0
     4e4:	f89ff0ef          	jal	ra,46c <neorv32_cpu_get_systime>
     4e8:	00b96663          	bltu	s2,a1,4f4 <neorv32_cpu_delay_ms+0x5c>
     4ec:	05259263          	bne	a1,s2,530 <neorv32_cpu_delay_ms+0x98>
     4f0:	04a4f063          	bgeu	s1,a0,530 <neorv32_cpu_delay_ms+0x98>
     4f4:	008484b3          	add	s1,s1,s0
     4f8:	0084b433          	sltu	s0,s1,s0
     4fc:	01390933          	add	s2,s2,s3
     500:	01240433          	add	s0,s0,s2
     504:	f69ff0ef          	jal	ra,46c <neorv32_cpu_get_systime>
     508:	fe85eee3          	bltu	a1,s0,504 <neorv32_cpu_delay_ms+0x6c>
     50c:	00b41463          	bne	s0,a1,514 <neorv32_cpu_delay_ms+0x7c>
     510:	fe956ae3          	bltu	a0,s1,504 <neorv32_cpu_delay_ms+0x6c>
     514:	02c12083          	lw	ra,44(sp)
     518:	02812403          	lw	s0,40(sp)
     51c:	02412483          	lw	s1,36(sp)
     520:	02012903          	lw	s2,32(sp)
     524:	01c12983          	lw	s3,28(sp)
     528:	03010113          	addi	sp,sp,48
     52c:	00008067          	ret
     530:	01c99993          	slli	s3,s3,0x1c
     534:	00445413          	srli	s0,s0,0x4
     538:	0089e433          	or	s0,s3,s0

0000053c <__neorv32_cpu_delay_ms_start>:
     53c:	00040a63          	beqz	s0,550 <__neorv32_cpu_delay_ms_end>
     540:	00040863          	beqz	s0,550 <__neorv32_cpu_delay_ms_end>
     544:	fff40413          	addi	s0,s0,-1
     548:	00000013          	nop
     54c:	ff1ff06f          	j	53c <__neorv32_cpu_delay_ms_start>

00000550 <__neorv32_cpu_delay_ms_end>:
     550:	fc5ff06f          	j	514 <neorv32_cpu_delay_ms+0x7c>

00000554 <neorv32_gpio_available>:
     554:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     558:	01055513          	srli	a0,a0,0x10
     55c:	00157513          	andi	a0,a0,1
     560:	00008067          	ret

00000564 <neorv32_gpio_pin_set>:
     564:	00100793          	li	a5,1
     568:	01f00713          	li	a4,31
     56c:	00a797b3          	sll	a5,a5,a0
     570:	00a74a63          	blt	a4,a0,584 <neorv32_gpio_pin_set+0x20>
     574:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     578:	00f767b3          	or	a5,a4,a5
     57c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     580:	00008067          	ret
     584:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     588:	00f767b3          	or	a5,a4,a5
     58c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     590:	00008067          	ret

00000594 <neorv32_gpio_pin_clr>:
     594:	00100793          	li	a5,1
     598:	00a797b3          	sll	a5,a5,a0
     59c:	01f00713          	li	a4,31
     5a0:	fff7c793          	not	a5,a5
     5a4:	00a74a63          	blt	a4,a0,5b8 <neorv32_gpio_pin_clr+0x24>
     5a8:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5ac:	00f777b3          	and	a5,a4,a5
     5b0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5b4:	00008067          	ret
     5b8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5bc:	00f777b3          	and	a5,a4,a5
     5c0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5c4:	00008067          	ret

000005c8 <neorv32_gpio_pin_get>:
     5c8:	00100793          	li	a5,1
     5cc:	01f00713          	li	a4,31
     5d0:	00a797b3          	sll	a5,a5,a0
     5d4:	00a74863          	blt	a4,a0,5e4 <neorv32_gpio_pin_get+0x1c>
     5d8:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     5dc:	00f77533          	and	a0,a4,a5
     5e0:	00008067          	ret
     5e4:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     5e8:	ff5ff06f          	j	5dc <neorv32_gpio_pin_get+0x14>

000005ec <neorv32_gpio_port_set>:
     5ec:	fc000793          	li	a5,-64
     5f0:	00a7a423          	sw	a0,8(a5)
     5f4:	00b7a623          	sw	a1,12(a5)
     5f8:	00008067          	ret
     5fc:	0000                	.2byte	0x0
     5fe:	0000                	.2byte	0x0

00000600 <__neorv32_rte_core>:
     600:	fc010113          	addi	sp,sp,-64
     604:	02112e23          	sw	ra,60(sp)
     608:	02512c23          	sw	t0,56(sp)
     60c:	02612a23          	sw	t1,52(sp)
     610:	02712823          	sw	t2,48(sp)
     614:	02a12623          	sw	a0,44(sp)
     618:	02b12423          	sw	a1,40(sp)
     61c:	02c12223          	sw	a2,36(sp)
     620:	02d12023          	sw	a3,32(sp)
     624:	00e12e23          	sw	a4,28(sp)
     628:	00f12c23          	sw	a5,24(sp)
     62c:	01012a23          	sw	a6,20(sp)
     630:	01112823          	sw	a7,16(sp)
     634:	01c12623          	sw	t3,12(sp)
     638:	01d12423          	sw	t4,8(sp)
     63c:	01e12223          	sw	t5,4(sp)
     640:	01f12023          	sw	t6,0(sp)
     644:	34102773          	csrr	a4,mepc
     648:	34071073          	csrw	mscratch,a4
     64c:	342027f3          	csrr	a5,mcause
     650:	0807ca63          	bltz	a5,6e4 <__neorv32_rte_core+0xe4>
     654:	00071683          	lh	a3,0(a4)
     658:	00300593          	li	a1,3
     65c:	0036f693          	andi	a3,a3,3
     660:	00270613          	addi	a2,a4,2
     664:	00b69463          	bne	a3,a1,66c <__neorv32_rte_core+0x6c>
     668:	00470613          	addi	a2,a4,4
     66c:	34161073          	csrw	mepc,a2
     670:	00b00713          	li	a4,11
     674:	04f77c63          	bgeu	a4,a5,6cc <__neorv32_rte_core+0xcc>
     678:	000017b7          	lui	a5,0x1
     67c:	8b478793          	addi	a5,a5,-1868 # 8b4 <__neorv32_rte_debug_exc_handler>
     680:	000780e7          	jalr	a5
     684:	03c12083          	lw	ra,60(sp)
     688:	03812283          	lw	t0,56(sp)
     68c:	03412303          	lw	t1,52(sp)
     690:	03012383          	lw	t2,48(sp)
     694:	02c12503          	lw	a0,44(sp)
     698:	02812583          	lw	a1,40(sp)
     69c:	02412603          	lw	a2,36(sp)
     6a0:	02012683          	lw	a3,32(sp)
     6a4:	01c12703          	lw	a4,28(sp)
     6a8:	01812783          	lw	a5,24(sp)
     6ac:	01412803          	lw	a6,20(sp)
     6b0:	01012883          	lw	a7,16(sp)
     6b4:	00c12e03          	lw	t3,12(sp)
     6b8:	00812e83          	lw	t4,8(sp)
     6bc:	00412f03          	lw	t5,4(sp)
     6c0:	00012f83          	lw	t6,0(sp)
     6c4:	04010113          	addi	sp,sp,64
     6c8:	30200073          	mret
     6cc:	00001737          	lui	a4,0x1
     6d0:	00279793          	slli	a5,a5,0x2
     6d4:	3bc70713          	addi	a4,a4,956 # 13bc <__etext+0x1a0>
     6d8:	00e787b3          	add	a5,a5,a4
     6dc:	0007a783          	lw	a5,0(a5)
     6e0:	00078067          	jr	a5
     6e4:	80000737          	lui	a4,0x80000
     6e8:	ffd74713          	xori	a4,a4,-3
     6ec:	00e787b3          	add	a5,a5,a4
     6f0:	01c00713          	li	a4,28
     6f4:	f8f762e3          	bltu	a4,a5,678 <__neorv32_rte_core+0x78>
     6f8:	00001737          	lui	a4,0x1
     6fc:	00279793          	slli	a5,a5,0x2
     700:	3ec70713          	addi	a4,a4,1004 # 13ec <__etext+0x1d0>
     704:	00e787b3          	add	a5,a5,a4
     708:	0007a783          	lw	a5,0(a5)
     70c:	00078067          	jr	a5
     710:	800007b7          	lui	a5,0x80000
     714:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     718:	f69ff06f          	j	680 <__neorv32_rte_core+0x80>
     71c:	800007b7          	lui	a5,0x80000
     720:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     724:	f5dff06f          	j	680 <__neorv32_rte_core+0x80>
     728:	800007b7          	lui	a5,0x80000
     72c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     730:	f51ff06f          	j	680 <__neorv32_rte_core+0x80>
     734:	800007b7          	lui	a5,0x80000
     738:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     73c:	f45ff06f          	j	680 <__neorv32_rte_core+0x80>
     740:	800007b7          	lui	a5,0x80000
     744:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     748:	f39ff06f          	j	680 <__neorv32_rte_core+0x80>
     74c:	800007b7          	lui	a5,0x80000
     750:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     754:	f2dff06f          	j	680 <__neorv32_rte_core+0x80>
     758:	800007b7          	lui	a5,0x80000
     75c:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     760:	f21ff06f          	j	680 <__neorv32_rte_core+0x80>
     764:	800007b7          	lui	a5,0x80000
     768:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     76c:	f15ff06f          	j	680 <__neorv32_rte_core+0x80>
     770:	800007b7          	lui	a5,0x80000
     774:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     778:	f09ff06f          	j	680 <__neorv32_rte_core+0x80>
     77c:	800007b7          	lui	a5,0x80000
     780:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     784:	efdff06f          	j	680 <__neorv32_rte_core+0x80>
     788:	800007b7          	lui	a5,0x80000
     78c:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     790:	ef1ff06f          	j	680 <__neorv32_rte_core+0x80>
     794:	800007b7          	lui	a5,0x80000
     798:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     79c:	ee5ff06f          	j	680 <__neorv32_rte_core+0x80>
     7a0:	800007b7          	lui	a5,0x80000
     7a4:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     7a8:	ed9ff06f          	j	680 <__neorv32_rte_core+0x80>
     7ac:	800007b7          	lui	a5,0x80000
     7b0:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     7b4:	ecdff06f          	j	680 <__neorv32_rte_core+0x80>
     7b8:	800007b7          	lui	a5,0x80000
     7bc:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     7c0:	ec1ff06f          	j	680 <__neorv32_rte_core+0x80>
     7c4:	800007b7          	lui	a5,0x80000
     7c8:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     7cc:	eb5ff06f          	j	680 <__neorv32_rte_core+0x80>
     7d0:	800007b7          	lui	a5,0x80000
     7d4:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     7d8:	ea9ff06f          	j	680 <__neorv32_rte_core+0x80>
     7dc:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     7e0:	ea1ff06f          	j	680 <__neorv32_rte_core+0x80>
     7e4:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     7e8:	e99ff06f          	j	680 <__neorv32_rte_core+0x80>
     7ec:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     7f0:	e91ff06f          	j	680 <__neorv32_rte_core+0x80>
     7f4:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     7f8:	e89ff06f          	j	680 <__neorv32_rte_core+0x80>
     7fc:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     800:	e81ff06f          	j	680 <__neorv32_rte_core+0x80>
     804:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     808:	e79ff06f          	j	680 <__neorv32_rte_core+0x80>
     80c:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     810:	e71ff06f          	j	680 <__neorv32_rte_core+0x80>
     814:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     818:	e69ff06f          	j	680 <__neorv32_rte_core+0x80>
     81c:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     820:	e61ff06f          	j	680 <__neorv32_rte_core+0x80>
     824:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     828:	e59ff06f          	j	680 <__neorv32_rte_core+0x80>
     82c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     830:	e51ff06f          	j	680 <__neorv32_rte_core+0x80>
     834:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     838:	e49ff06f          	j	680 <__neorv32_rte_core+0x80>
     83c:	0000                	.2byte	0x0
     83e:	0000                	.2byte	0x0
     840:	0000                	.2byte	0x0
     842:	0000                	.2byte	0x0

00000844 <__neorv32_rte_print_hex_word>:
     844:	fe010113          	addi	sp,sp,-32
     848:	01212823          	sw	s2,16(sp)
     84c:	00050913          	mv	s2,a0
     850:	00001537          	lui	a0,0x1
     854:	00912a23          	sw	s1,20(sp)
     858:	46050513          	addi	a0,a0,1120 # 1460 <__etext+0x244>
     85c:	000014b7          	lui	s1,0x1
     860:	00812c23          	sw	s0,24(sp)
     864:	01312623          	sw	s3,12(sp)
     868:	00112e23          	sw	ra,28(sp)
     86c:	01c00413          	li	s0,28
     870:	4bc000ef          	jal	ra,d2c <neorv32_uart0_print>
     874:	65448493          	addi	s1,s1,1620 # 1654 <hex_symbols.0>
     878:	ffc00993          	li	s3,-4
     87c:	008957b3          	srl	a5,s2,s0
     880:	00f7f793          	andi	a5,a5,15
     884:	00f487b3          	add	a5,s1,a5
     888:	0007c503          	lbu	a0,0(a5)
     88c:	ffc40413          	addi	s0,s0,-4
     890:	484000ef          	jal	ra,d14 <neorv32_uart0_putc>
     894:	ff3414e3          	bne	s0,s3,87c <__neorv32_rte_print_hex_word+0x38>
     898:	01c12083          	lw	ra,28(sp)
     89c:	01812403          	lw	s0,24(sp)
     8a0:	01412483          	lw	s1,20(sp)
     8a4:	01012903          	lw	s2,16(sp)
     8a8:	00c12983          	lw	s3,12(sp)
     8ac:	02010113          	addi	sp,sp,32
     8b0:	00008067          	ret

000008b4 <__neorv32_rte_debug_exc_handler>:
     8b4:	ff010113          	addi	sp,sp,-16
     8b8:	00112623          	sw	ra,12(sp)
     8bc:	00812423          	sw	s0,8(sp)
     8c0:	00912223          	sw	s1,4(sp)
     8c4:	394000ef          	jal	ra,c58 <neorv32_uart0_available>
     8c8:	1a050e63          	beqz	a0,a84 <__neorv32_rte_debug_exc_handler+0x1d0>
     8cc:	00001537          	lui	a0,0x1
     8d0:	46450513          	addi	a0,a0,1124 # 1464 <__etext+0x248>
     8d4:	458000ef          	jal	ra,d2c <neorv32_uart0_print>
     8d8:	34202473          	csrr	s0,mcause
     8dc:	00900713          	li	a4,9
     8e0:	00f47793          	andi	a5,s0,15
     8e4:	03078493          	addi	s1,a5,48
     8e8:	00f77463          	bgeu	a4,a5,8f0 <__neorv32_rte_debug_exc_handler+0x3c>
     8ec:	05778493          	addi	s1,a5,87
     8f0:	00b00793          	li	a5,11
     8f4:	0087ee63          	bltu	a5,s0,910 <__neorv32_rte_debug_exc_handler+0x5c>
     8f8:	00001737          	lui	a4,0x1
     8fc:	00241793          	slli	a5,s0,0x2
     900:	62470713          	addi	a4,a4,1572 # 1624 <__etext+0x408>
     904:	00e787b3          	add	a5,a5,a4
     908:	0007a783          	lw	a5,0(a5)
     90c:	00078067          	jr	a5
     910:	800007b7          	lui	a5,0x80000
     914:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     918:	14e40463          	beq	s0,a4,a60 <__neorv32_rte_debug_exc_handler+0x1ac>
     91c:	02876663          	bltu	a4,s0,948 <__neorv32_rte_debug_exc_handler+0x94>
     920:	00378713          	addi	a4,a5,3
     924:	12e40263          	beq	s0,a4,a48 <__neorv32_rte_debug_exc_handler+0x194>
     928:	00778793          	addi	a5,a5,7
     92c:	12f40463          	beq	s0,a5,a54 <__neorv32_rte_debug_exc_handler+0x1a0>
     930:	00001537          	lui	a0,0x1
     934:	5c450513          	addi	a0,a0,1476 # 15c4 <__etext+0x3a8>
     938:	3f4000ef          	jal	ra,d2c <neorv32_uart0_print>
     93c:	00040513          	mv	a0,s0
     940:	f05ff0ef          	jal	ra,844 <__neorv32_rte_print_hex_word>
     944:	0280006f          	j	96c <__neorv32_rte_debug_exc_handler+0xb8>
     948:	ff07c793          	xori	a5,a5,-16
     94c:	00f407b3          	add	a5,s0,a5
     950:	00f00713          	li	a4,15
     954:	fcf76ee3          	bltu	a4,a5,930 <__neorv32_rte_debug_exc_handler+0x7c>
     958:	00001537          	lui	a0,0x1
     95c:	5b450513          	addi	a0,a0,1460 # 15b4 <__etext+0x398>
     960:	3cc000ef          	jal	ra,d2c <neorv32_uart0_print>
     964:	00048513          	mv	a0,s1
     968:	3ac000ef          	jal	ra,d14 <neorv32_uart0_putc>
     96c:	00001537          	lui	a0,0x1
     970:	60850513          	addi	a0,a0,1544 # 1608 <__etext+0x3ec>
     974:	3b8000ef          	jal	ra,d2c <neorv32_uart0_print>
     978:	34002573          	csrr	a0,mscratch
     97c:	ec9ff0ef          	jal	ra,844 <__neorv32_rte_print_hex_word>
     980:	00001537          	lui	a0,0x1
     984:	61050513          	addi	a0,a0,1552 # 1610 <__etext+0x3f4>
     988:	3a4000ef          	jal	ra,d2c <neorv32_uart0_print>
     98c:	34302573          	csrr	a0,mtval
     990:	eb5ff0ef          	jal	ra,844 <__neorv32_rte_print_hex_word>
     994:	00812403          	lw	s0,8(sp)
     998:	00c12083          	lw	ra,12(sp)
     99c:	00412483          	lw	s1,4(sp)
     9a0:	00001537          	lui	a0,0x1
     9a4:	61c50513          	addi	a0,a0,1564 # 161c <__etext+0x400>
     9a8:	01010113          	addi	sp,sp,16
     9ac:	3800006f          	j	d2c <neorv32_uart0_print>
     9b0:	00001537          	lui	a0,0x1
     9b4:	46c50513          	addi	a0,a0,1132 # 146c <__etext+0x250>
     9b8:	374000ef          	jal	ra,d2c <neorv32_uart0_print>
     9bc:	fb1ff06f          	j	96c <__neorv32_rte_debug_exc_handler+0xb8>
     9c0:	00001537          	lui	a0,0x1
     9c4:	48c50513          	addi	a0,a0,1164 # 148c <__etext+0x270>
     9c8:	364000ef          	jal	ra,d2c <neorv32_uart0_print>
     9cc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     9d0:	0a07d463          	bgez	a5,a78 <__neorv32_rte_debug_exc_handler+0x1c4>
     9d4:	0017f793          	andi	a5,a5,1
     9d8:	08078a63          	beqz	a5,a6c <__neorv32_rte_debug_exc_handler+0x1b8>
     9dc:	00001537          	lui	a0,0x1
     9e0:	5dc50513          	addi	a0,a0,1500 # 15dc <__etext+0x3c0>
     9e4:	fd5ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     9e8:	00001537          	lui	a0,0x1
     9ec:	4a850513          	addi	a0,a0,1192 # 14a8 <__etext+0x28c>
     9f0:	fc9ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     9f4:	00001537          	lui	a0,0x1
     9f8:	4bc50513          	addi	a0,a0,1212 # 14bc <__etext+0x2a0>
     9fc:	fbdff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a00:	00001537          	lui	a0,0x1
     a04:	4c850513          	addi	a0,a0,1224 # 14c8 <__etext+0x2ac>
     a08:	fb1ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a0c:	00001537          	lui	a0,0x1
     a10:	4e050513          	addi	a0,a0,1248 # 14e0 <__etext+0x2c4>
     a14:	fb5ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x114>
     a18:	00001537          	lui	a0,0x1
     a1c:	4f450513          	addi	a0,a0,1268 # 14f4 <__etext+0x2d8>
     a20:	f99ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a24:	00001537          	lui	a0,0x1
     a28:	51050513          	addi	a0,a0,1296 # 1510 <__etext+0x2f4>
     a2c:	f9dff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x114>
     a30:	00001537          	lui	a0,0x1
     a34:	52450513          	addi	a0,a0,1316 # 1524 <__etext+0x308>
     a38:	f81ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a3c:	00001537          	lui	a0,0x1
     a40:	54450513          	addi	a0,a0,1348 # 1544 <__etext+0x328>
     a44:	f75ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a48:	00001537          	lui	a0,0x1
     a4c:	56450513          	addi	a0,a0,1380 # 1564 <__etext+0x348>
     a50:	f69ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a54:	00001537          	lui	a0,0x1
     a58:	58050513          	addi	a0,a0,1408 # 1580 <__etext+0x364>
     a5c:	f5dff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a60:	00001537          	lui	a0,0x1
     a64:	59850513          	addi	a0,a0,1432 # 1598 <__etext+0x37c>
     a68:	f51ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a6c:	00001537          	lui	a0,0x1
     a70:	5ec50513          	addi	a0,a0,1516 # 15ec <__etext+0x3d0>
     a74:	f45ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a78:	00001537          	lui	a0,0x1
     a7c:	5fc50513          	addi	a0,a0,1532 # 15fc <__etext+0x3e0>
     a80:	f39ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x104>
     a84:	00c12083          	lw	ra,12(sp)
     a88:	00812403          	lw	s0,8(sp)
     a8c:	00412483          	lw	s1,4(sp)
     a90:	01010113          	addi	sp,sp,16
     a94:	00008067          	ret

00000a98 <neorv32_rte_exception_uninstall>:
     a98:	01f00793          	li	a5,31
     a9c:	02a7e463          	bltu	a5,a0,ac4 <neorv32_rte_exception_uninstall+0x2c>
     aa0:	800007b7          	lui	a5,0x80000
     aa4:	00251513          	slli	a0,a0,0x2
     aa8:	00078793          	mv	a5,a5
     aac:	00001737          	lui	a4,0x1
     ab0:	00a787b3          	add	a5,a5,a0
     ab4:	8b470713          	addi	a4,a4,-1868 # 8b4 <__neorv32_rte_debug_exc_handler>
     ab8:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     abc:	00000513          	li	a0,0
     ac0:	00008067          	ret
     ac4:	00100513          	li	a0,1
     ac8:	00008067          	ret

00000acc <neorv32_rte_setup>:
     acc:	ff010113          	addi	sp,sp,-16
     ad0:	00112623          	sw	ra,12(sp)
     ad4:	00812423          	sw	s0,8(sp)
     ad8:	00912223          	sw	s1,4(sp)
     adc:	60000793          	li	a5,1536
     ae0:	30579073          	csrw	mtvec,a5
     ae4:	00000413          	li	s0,0
     ae8:	01d00493          	li	s1,29
     aec:	00040513          	mv	a0,s0
     af0:	00140413          	addi	s0,s0,1
     af4:	0ff47413          	zext.b	s0,s0
     af8:	fa1ff0ef          	jal	ra,a98 <neorv32_rte_exception_uninstall>
     afc:	fe9418e3          	bne	s0,s1,aec <neorv32_rte_setup+0x20>
     b00:	00c12083          	lw	ra,12(sp)
     b04:	00812403          	lw	s0,8(sp)
     b08:	00412483          	lw	s1,4(sp)
     b0c:	01010113          	addi	sp,sp,16
     b10:	00008067          	ret

00000b14 <__neorv32_uart_itoa>:
     b14:	fd010113          	addi	sp,sp,-48
     b18:	02812423          	sw	s0,40(sp)
     b1c:	02912223          	sw	s1,36(sp)
     b20:	03212023          	sw	s2,32(sp)
     b24:	01312e23          	sw	s3,28(sp)
     b28:	01412c23          	sw	s4,24(sp)
     b2c:	02112623          	sw	ra,44(sp)
     b30:	01512a23          	sw	s5,20(sp)
     b34:	00001a37          	lui	s4,0x1
     b38:	00050493          	mv	s1,a0
     b3c:	00058413          	mv	s0,a1
     b40:	00058523          	sb	zero,10(a1)
     b44:	00000993          	li	s3,0
     b48:	00410913          	addi	s2,sp,4
     b4c:	678a0a13          	addi	s4,s4,1656 # 1678 <numbers.1>
     b50:	00a00593          	li	a1,10
     b54:	00048513          	mv	a0,s1
     b58:	4bc000ef          	jal	ra,1014 <__umodsi3>
     b5c:	00aa0533          	add	a0,s4,a0
     b60:	00054783          	lbu	a5,0(a0)
     b64:	01390ab3          	add	s5,s2,s3
     b68:	00048513          	mv	a0,s1
     b6c:	00fa8023          	sb	a5,0(s5)
     b70:	00a00593          	li	a1,10
     b74:	458000ef          	jal	ra,fcc <__hidden___udivsi3>
     b78:	00198993          	addi	s3,s3,1
     b7c:	00a00793          	li	a5,10
     b80:	00050493          	mv	s1,a0
     b84:	fcf996e3          	bne	s3,a5,b50 <__neorv32_uart_itoa+0x3c>
     b88:	00090693          	mv	a3,s2
     b8c:	00900713          	li	a4,9
     b90:	03000613          	li	a2,48
     b94:	0096c583          	lbu	a1,9(a3)
     b98:	00070793          	mv	a5,a4
     b9c:	fff70713          	addi	a4,a4,-1
     ba0:	01071713          	slli	a4,a4,0x10
     ba4:	01075713          	srli	a4,a4,0x10
     ba8:	00c59a63          	bne	a1,a2,bbc <__neorv32_uart_itoa+0xa8>
     bac:	000684a3          	sb	zero,9(a3)
     bb0:	fff68693          	addi	a3,a3,-1
     bb4:	fe0710e3          	bnez	a4,b94 <__neorv32_uart_itoa+0x80>
     bb8:	00000793          	li	a5,0
     bbc:	00f907b3          	add	a5,s2,a5
     bc0:	00000713          	li	a4,0
     bc4:	0007c683          	lbu	a3,0(a5)
     bc8:	00068c63          	beqz	a3,be0 <__neorv32_uart_itoa+0xcc>
     bcc:	00170613          	addi	a2,a4,1
     bd0:	00e40733          	add	a4,s0,a4
     bd4:	00d70023          	sb	a3,0(a4)
     bd8:	01061713          	slli	a4,a2,0x10
     bdc:	01075713          	srli	a4,a4,0x10
     be0:	fff78693          	addi	a3,a5,-1
     be4:	02f91863          	bne	s2,a5,c14 <__neorv32_uart_itoa+0x100>
     be8:	00e40433          	add	s0,s0,a4
     bec:	00040023          	sb	zero,0(s0)
     bf0:	02c12083          	lw	ra,44(sp)
     bf4:	02812403          	lw	s0,40(sp)
     bf8:	02412483          	lw	s1,36(sp)
     bfc:	02012903          	lw	s2,32(sp)
     c00:	01c12983          	lw	s3,28(sp)
     c04:	01812a03          	lw	s4,24(sp)
     c08:	01412a83          	lw	s5,20(sp)
     c0c:	03010113          	addi	sp,sp,48
     c10:	00008067          	ret
     c14:	00068793          	mv	a5,a3
     c18:	fadff06f          	j	bc4 <__neorv32_uart_itoa+0xb0>

00000c1c <__neorv32_uart_tohex>:
     c1c:	00001637          	lui	a2,0x1
     c20:	00758693          	addi	a3,a1,7
     c24:	00000713          	li	a4,0
     c28:	66460613          	addi	a2,a2,1636 # 1664 <symbols.0>
     c2c:	02000813          	li	a6,32
     c30:	00e557b3          	srl	a5,a0,a4
     c34:	00f7f793          	andi	a5,a5,15
     c38:	00f607b3          	add	a5,a2,a5
     c3c:	0007c783          	lbu	a5,0(a5)
     c40:	00470713          	addi	a4,a4,4
     c44:	fff68693          	addi	a3,a3,-1
     c48:	00f680a3          	sb	a5,1(a3)
     c4c:	ff0712e3          	bne	a4,a6,c30 <__neorv32_uart_tohex+0x14>
     c50:	00058423          	sb	zero,8(a1)
     c54:	00008067          	ret

00000c58 <neorv32_uart0_available>:
     c58:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     c5c:	01255513          	srli	a0,a0,0x12
     c60:	00157513          	andi	a0,a0,1
     c64:	00008067          	ret

00000c68 <neorv32_uart0_setup>:
     c68:	ff010113          	addi	sp,sp,-16
     c6c:	00812423          	sw	s0,8(sp)
     c70:	00912223          	sw	s1,4(sp)
     c74:	00112623          	sw	ra,12(sp)
     c78:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c7c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     c80:	00058413          	mv	s0,a1
     c84:	00151593          	slli	a1,a0,0x1
     c88:	00078513          	mv	a0,a5
     c8c:	00060493          	mv	s1,a2
     c90:	33c000ef          	jal	ra,fcc <__hidden___udivsi3>
     c94:	01051513          	slli	a0,a0,0x10
     c98:	000017b7          	lui	a5,0x1
     c9c:	01055513          	srli	a0,a0,0x10
     ca0:	00000713          	li	a4,0
     ca4:	ffe78793          	addi	a5,a5,-2 # ffe <__hidden___udivsi3+0x32>
     ca8:	04a7e463          	bltu	a5,a0,cf0 <neorv32_uart0_setup+0x88>
     cac:	0034f493          	andi	s1,s1,3
     cb0:	01449493          	slli	s1,s1,0x14
     cb4:	00347413          	andi	s0,s0,3
     cb8:	fff50793          	addi	a5,a0,-1
     cbc:	0097e7b3          	or	a5,a5,s1
     cc0:	01641413          	slli	s0,s0,0x16
     cc4:	0087e7b3          	or	a5,a5,s0
     cc8:	01871713          	slli	a4,a4,0x18
     ccc:	00c12083          	lw	ra,12(sp)
     cd0:	00812403          	lw	s0,8(sp)
     cd4:	00e7e7b3          	or	a5,a5,a4
     cd8:	10000737          	lui	a4,0x10000
     cdc:	00e7e7b3          	or	a5,a5,a4
     ce0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     ce4:	00412483          	lw	s1,4(sp)
     ce8:	01010113          	addi	sp,sp,16
     cec:	00008067          	ret
     cf0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe97a>
     cf4:	0fd6f693          	andi	a3,a3,253
     cf8:	00069a63          	bnez	a3,d0c <neorv32_uart0_setup+0xa4>
     cfc:	00355513          	srli	a0,a0,0x3
     d00:	00170713          	addi	a4,a4,1
     d04:	0ff77713          	zext.b	a4,a4
     d08:	fa1ff06f          	j	ca8 <neorv32_uart0_setup+0x40>
     d0c:	00155513          	srli	a0,a0,0x1
     d10:	ff1ff06f          	j	d00 <neorv32_uart0_setup+0x98>

00000d14 <neorv32_uart0_putc>:
     d14:	00040737          	lui	a4,0x40
     d18:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d1c:	00e7f7b3          	and	a5,a5,a4
     d20:	fe079ce3          	bnez	a5,d18 <neorv32_uart0_putc+0x4>
     d24:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     d28:	00008067          	ret

00000d2c <neorv32_uart0_print>:
     d2c:	ff010113          	addi	sp,sp,-16
     d30:	00812423          	sw	s0,8(sp)
     d34:	01212023          	sw	s2,0(sp)
     d38:	00112623          	sw	ra,12(sp)
     d3c:	00912223          	sw	s1,4(sp)
     d40:	00050413          	mv	s0,a0
     d44:	00a00913          	li	s2,10
     d48:	00044483          	lbu	s1,0(s0)
     d4c:	00140413          	addi	s0,s0,1
     d50:	00049e63          	bnez	s1,d6c <neorv32_uart0_print+0x40>
     d54:	00c12083          	lw	ra,12(sp)
     d58:	00812403          	lw	s0,8(sp)
     d5c:	00412483          	lw	s1,4(sp)
     d60:	00012903          	lw	s2,0(sp)
     d64:	01010113          	addi	sp,sp,16
     d68:	00008067          	ret
     d6c:	01249663          	bne	s1,s2,d78 <neorv32_uart0_print+0x4c>
     d70:	00d00513          	li	a0,13
     d74:	fa1ff0ef          	jal	ra,d14 <neorv32_uart0_putc>
     d78:	00048513          	mv	a0,s1
     d7c:	f99ff0ef          	jal	ra,d14 <neorv32_uart0_putc>
     d80:	fc9ff06f          	j	d48 <neorv32_uart0_print+0x1c>

00000d84 <neorv32_uart0_printf>:
     d84:	fa010113          	addi	sp,sp,-96
     d88:	04f12a23          	sw	a5,84(sp)
     d8c:	04410793          	addi	a5,sp,68
     d90:	02812c23          	sw	s0,56(sp)
     d94:	03212823          	sw	s2,48(sp)
     d98:	03312623          	sw	s3,44(sp)
     d9c:	03412423          	sw	s4,40(sp)
     da0:	03512223          	sw	s5,36(sp)
     da4:	03612023          	sw	s6,32(sp)
     da8:	01712e23          	sw	s7,28(sp)
     dac:	01812c23          	sw	s8,24(sp)
     db0:	02112e23          	sw	ra,60(sp)
     db4:	02912a23          	sw	s1,52(sp)
     db8:	00050413          	mv	s0,a0
     dbc:	04b12223          	sw	a1,68(sp)
     dc0:	04c12423          	sw	a2,72(sp)
     dc4:	04d12623          	sw	a3,76(sp)
     dc8:	04e12823          	sw	a4,80(sp)
     dcc:	05012c23          	sw	a6,88(sp)
     dd0:	05112e23          	sw	a7,92(sp)
     dd4:	00f12023          	sw	a5,0(sp)
     dd8:	02500993          	li	s3,37
     ddc:	00a00a13          	li	s4,10
     de0:	07300913          	li	s2,115
     de4:	07500a93          	li	s5,117
     de8:	07800b13          	li	s6,120
     dec:	06300b93          	li	s7,99
     df0:	06900c13          	li	s8,105
     df4:	00044483          	lbu	s1,0(s0)
     df8:	02049a63          	bnez	s1,e2c <neorv32_uart0_printf+0xa8>
     dfc:	03c12083          	lw	ra,60(sp)
     e00:	03812403          	lw	s0,56(sp)
     e04:	03412483          	lw	s1,52(sp)
     e08:	03012903          	lw	s2,48(sp)
     e0c:	02c12983          	lw	s3,44(sp)
     e10:	02812a03          	lw	s4,40(sp)
     e14:	02412a83          	lw	s5,36(sp)
     e18:	02012b03          	lw	s6,32(sp)
     e1c:	01c12b83          	lw	s7,28(sp)
     e20:	01812c03          	lw	s8,24(sp)
     e24:	06010113          	addi	sp,sp,96
     e28:	00008067          	ret
     e2c:	0d349663          	bne	s1,s3,ef8 <neorv32_uart0_printf+0x174>
     e30:	00144483          	lbu	s1,1(s0)
     e34:	05248263          	beq	s1,s2,e78 <neorv32_uart0_printf+0xf4>
     e38:	00996e63          	bltu	s2,s1,e54 <neorv32_uart0_printf+0xd0>
     e3c:	05748c63          	beq	s1,s7,e94 <neorv32_uart0_printf+0x110>
     e40:	07848663          	beq	s1,s8,eac <neorv32_uart0_printf+0x128>
     e44:	02500513          	li	a0,37
     e48:	ecdff0ef          	jal	ra,d14 <neorv32_uart0_putc>
     e4c:	00048513          	mv	a0,s1
     e50:	0540006f          	j	ea4 <neorv32_uart0_printf+0x120>
     e54:	09548663          	beq	s1,s5,ee0 <neorv32_uart0_printf+0x15c>
     e58:	ff6496e3          	bne	s1,s6,e44 <neorv32_uart0_printf+0xc0>
     e5c:	00012783          	lw	a5,0(sp)
     e60:	00410593          	addi	a1,sp,4
     e64:	0007a503          	lw	a0,0(a5)
     e68:	00478713          	addi	a4,a5,4
     e6c:	00e12023          	sw	a4,0(sp)
     e70:	dadff0ef          	jal	ra,c1c <__neorv32_uart_tohex>
     e74:	0640006f          	j	ed8 <neorv32_uart0_printf+0x154>
     e78:	00012783          	lw	a5,0(sp)
     e7c:	0007a503          	lw	a0,0(a5)
     e80:	00478713          	addi	a4,a5,4
     e84:	00e12023          	sw	a4,0(sp)
     e88:	ea5ff0ef          	jal	ra,d2c <neorv32_uart0_print>
     e8c:	00240413          	addi	s0,s0,2
     e90:	f65ff06f          	j	df4 <neorv32_uart0_printf+0x70>
     e94:	00012783          	lw	a5,0(sp)
     e98:	0007c503          	lbu	a0,0(a5)
     e9c:	00478713          	addi	a4,a5,4
     ea0:	00e12023          	sw	a4,0(sp)
     ea4:	e71ff0ef          	jal	ra,d14 <neorv32_uart0_putc>
     ea8:	fe5ff06f          	j	e8c <neorv32_uart0_printf+0x108>
     eac:	00012783          	lw	a5,0(sp)
     eb0:	0007a483          	lw	s1,0(a5)
     eb4:	00478713          	addi	a4,a5,4
     eb8:	00e12023          	sw	a4,0(sp)
     ebc:	0004d863          	bgez	s1,ecc <neorv32_uart0_printf+0x148>
     ec0:	02d00513          	li	a0,45
     ec4:	409004b3          	neg	s1,s1
     ec8:	e4dff0ef          	jal	ra,d14 <neorv32_uart0_putc>
     ecc:	00410593          	addi	a1,sp,4
     ed0:	00048513          	mv	a0,s1
     ed4:	c41ff0ef          	jal	ra,b14 <__neorv32_uart_itoa>
     ed8:	00410513          	addi	a0,sp,4
     edc:	fadff06f          	j	e88 <neorv32_uart0_printf+0x104>
     ee0:	00012783          	lw	a5,0(sp)
     ee4:	00410593          	addi	a1,sp,4
     ee8:	00478713          	addi	a4,a5,4
     eec:	0007a503          	lw	a0,0(a5)
     ef0:	00e12023          	sw	a4,0(sp)
     ef4:	fe1ff06f          	j	ed4 <neorv32_uart0_printf+0x150>
     ef8:	01449663          	bne	s1,s4,f04 <neorv32_uart0_printf+0x180>
     efc:	00d00513          	li	a0,13
     f00:	e15ff0ef          	jal	ra,d14 <neorv32_uart0_putc>
     f04:	00048513          	mv	a0,s1
     f08:	00140413          	addi	s0,s0,1
     f0c:	e09ff0ef          	jal	ra,d14 <neorv32_uart0_putc>
     f10:	ee5ff06f          	j	df4 <neorv32_uart0_printf+0x70>

00000f14 <__mulsi3>:
     f14:	00050613          	mv	a2,a0
     f18:	00000513          	li	a0,0
     f1c:	0015f693          	andi	a3,a1,1
     f20:	00068463          	beqz	a3,f28 <__mulsi3+0x14>
     f24:	00c50533          	add	a0,a0,a2
     f28:	0015d593          	srli	a1,a1,0x1
     f2c:	00161613          	slli	a2,a2,0x1
     f30:	fe0596e3          	bnez	a1,f1c <__mulsi3+0x8>
     f34:	00008067          	ret

00000f38 <__muldi3>:
     f38:	00050e13          	mv	t3,a0
     f3c:	ff010113          	addi	sp,sp,-16
     f40:	00068313          	mv	t1,a3
     f44:	00112623          	sw	ra,12(sp)
     f48:	00060513          	mv	a0,a2
     f4c:	000e0893          	mv	a7,t3
     f50:	00060693          	mv	a3,a2
     f54:	00000713          	li	a4,0
     f58:	00000793          	li	a5,0
     f5c:	00000813          	li	a6,0
     f60:	0016fe93          	andi	t4,a3,1
     f64:	00171613          	slli	a2,a4,0x1
     f68:	000e8a63          	beqz	t4,f7c <__muldi3+0x44>
     f6c:	01088833          	add	a6,a7,a6
     f70:	00e787b3          	add	a5,a5,a4
     f74:	01183733          	sltu	a4,a6,a7
     f78:	00f707b3          	add	a5,a4,a5
     f7c:	01f8d713          	srli	a4,a7,0x1f
     f80:	0016d693          	srli	a3,a3,0x1
     f84:	00e66733          	or	a4,a2,a4
     f88:	00189893          	slli	a7,a7,0x1
     f8c:	fc069ae3          	bnez	a3,f60 <__muldi3+0x28>
     f90:	00058663          	beqz	a1,f9c <__muldi3+0x64>
     f94:	f81ff0ef          	jal	ra,f14 <__mulsi3>
     f98:	00a787b3          	add	a5,a5,a0
     f9c:	00030a63          	beqz	t1,fb0 <__muldi3+0x78>
     fa0:	000e0513          	mv	a0,t3
     fa4:	00030593          	mv	a1,t1
     fa8:	f6dff0ef          	jal	ra,f14 <__mulsi3>
     fac:	00f507b3          	add	a5,a0,a5
     fb0:	00c12083          	lw	ra,12(sp)
     fb4:	00080513          	mv	a0,a6
     fb8:	00078593          	mv	a1,a5
     fbc:	01010113          	addi	sp,sp,16
     fc0:	00008067          	ret

00000fc4 <__divsi3>:
     fc4:	06054063          	bltz	a0,1024 <__umodsi3+0x10>
     fc8:	0605c663          	bltz	a1,1034 <__umodsi3+0x20>

00000fcc <__hidden___udivsi3>:
     fcc:	00058613          	mv	a2,a1
     fd0:	00050593          	mv	a1,a0
     fd4:	fff00513          	li	a0,-1
     fd8:	02060c63          	beqz	a2,1010 <__hidden___udivsi3+0x44>
     fdc:	00100693          	li	a3,1
     fe0:	00b67a63          	bgeu	a2,a1,ff4 <__hidden___udivsi3+0x28>
     fe4:	00c05863          	blez	a2,ff4 <__hidden___udivsi3+0x28>
     fe8:	00161613          	slli	a2,a2,0x1
     fec:	00169693          	slli	a3,a3,0x1
     ff0:	feb66ae3          	bltu	a2,a1,fe4 <__hidden___udivsi3+0x18>
     ff4:	00000513          	li	a0,0
     ff8:	00c5e663          	bltu	a1,a2,1004 <__hidden___udivsi3+0x38>
     ffc:	40c585b3          	sub	a1,a1,a2
    1000:	00d56533          	or	a0,a0,a3
    1004:	0016d693          	srli	a3,a3,0x1
    1008:	00165613          	srli	a2,a2,0x1
    100c:	fe0696e3          	bnez	a3,ff8 <__hidden___udivsi3+0x2c>
    1010:	00008067          	ret

00001014 <__umodsi3>:
    1014:	00008293          	mv	t0,ra
    1018:	fb5ff0ef          	jal	ra,fcc <__hidden___udivsi3>
    101c:	00058513          	mv	a0,a1
    1020:	00028067          	jr	t0
    1024:	40a00533          	neg	a0,a0
    1028:	00b04863          	bgtz	a1,1038 <__umodsi3+0x24>
    102c:	40b005b3          	neg	a1,a1
    1030:	f9dff06f          	j	fcc <__hidden___udivsi3>
    1034:	40b005b3          	neg	a1,a1
    1038:	00008293          	mv	t0,ra
    103c:	f91ff0ef          	jal	ra,fcc <__hidden___udivsi3>
    1040:	40a00533          	neg	a0,a0
    1044:	00028067          	jr	t0

00001048 <__modsi3>:
    1048:	00008293          	mv	t0,ra
    104c:	0005ca63          	bltz	a1,1060 <__modsi3+0x18>
    1050:	00054c63          	bltz	a0,1068 <__modsi3+0x20>
    1054:	f79ff0ef          	jal	ra,fcc <__hidden___udivsi3>
    1058:	00058513          	mv	a0,a1
    105c:	00028067          	jr	t0
    1060:	40b005b3          	neg	a1,a1
    1064:	fe0558e3          	bgez	a0,1054 <__modsi3+0xc>
    1068:	40a00533          	neg	a0,a0
    106c:	f61ff0ef          	jal	ra,fcc <__hidden___udivsi3>
    1070:	40b00533          	neg	a0,a1
    1074:	00028067          	jr	t0

00001078 <memcpy>:
    1078:	00b547b3          	xor	a5,a0,a1
    107c:	0037f793          	andi	a5,a5,3
    1080:	00c508b3          	add	a7,a0,a2
    1084:	06079463          	bnez	a5,10ec <memcpy+0x74>
    1088:	00300793          	li	a5,3
    108c:	06c7f063          	bgeu	a5,a2,10ec <memcpy+0x74>
    1090:	00357793          	andi	a5,a0,3
    1094:	00050713          	mv	a4,a0
    1098:	06079a63          	bnez	a5,110c <memcpy+0x94>
    109c:	ffc8f613          	andi	a2,a7,-4
    10a0:	40e606b3          	sub	a3,a2,a4
    10a4:	02000793          	li	a5,32
    10a8:	08d7ce63          	blt	a5,a3,1144 <memcpy+0xcc>
    10ac:	00058693          	mv	a3,a1
    10b0:	00070793          	mv	a5,a4
    10b4:	02c77863          	bgeu	a4,a2,10e4 <memcpy+0x6c>
    10b8:	0006a803          	lw	a6,0(a3)
    10bc:	00478793          	addi	a5,a5,4
    10c0:	00468693          	addi	a3,a3,4
    10c4:	ff07ae23          	sw	a6,-4(a5)
    10c8:	fec7e8e3          	bltu	a5,a2,10b8 <memcpy+0x40>
    10cc:	fff60793          	addi	a5,a2,-1
    10d0:	40e787b3          	sub	a5,a5,a4
    10d4:	ffc7f793          	andi	a5,a5,-4
    10d8:	00478793          	addi	a5,a5,4
    10dc:	00f70733          	add	a4,a4,a5
    10e0:	00f585b3          	add	a1,a1,a5
    10e4:	01176863          	bltu	a4,a7,10f4 <memcpy+0x7c>
    10e8:	00008067          	ret
    10ec:	00050713          	mv	a4,a0
    10f0:	05157863          	bgeu	a0,a7,1140 <memcpy+0xc8>
    10f4:	0005c783          	lbu	a5,0(a1)
    10f8:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3e97d>
    10fc:	00158593          	addi	a1,a1,1
    1100:	fef70fa3          	sb	a5,-1(a4)
    1104:	fee898e3          	bne	a7,a4,10f4 <memcpy+0x7c>
    1108:	00008067          	ret
    110c:	0005c683          	lbu	a3,0(a1)
    1110:	00170713          	addi	a4,a4,1
    1114:	00377793          	andi	a5,a4,3
    1118:	fed70fa3          	sb	a3,-1(a4)
    111c:	00158593          	addi	a1,a1,1
    1120:	f6078ee3          	beqz	a5,109c <memcpy+0x24>
    1124:	0005c683          	lbu	a3,0(a1)
    1128:	00170713          	addi	a4,a4,1
    112c:	00377793          	andi	a5,a4,3
    1130:	fed70fa3          	sb	a3,-1(a4)
    1134:	00158593          	addi	a1,a1,1
    1138:	fc079ae3          	bnez	a5,110c <memcpy+0x94>
    113c:	f61ff06f          	j	109c <memcpy+0x24>
    1140:	00008067          	ret
    1144:	ff010113          	addi	sp,sp,-16
    1148:	00812623          	sw	s0,12(sp)
    114c:	02000413          	li	s0,32
    1150:	0005a383          	lw	t2,0(a1)
    1154:	0045a283          	lw	t0,4(a1)
    1158:	0085af83          	lw	t6,8(a1)
    115c:	00c5af03          	lw	t5,12(a1)
    1160:	0105ae83          	lw	t4,16(a1)
    1164:	0145ae03          	lw	t3,20(a1)
    1168:	0185a303          	lw	t1,24(a1)
    116c:	01c5a803          	lw	a6,28(a1)
    1170:	0205a683          	lw	a3,32(a1)
    1174:	02470713          	addi	a4,a4,36
    1178:	40e607b3          	sub	a5,a2,a4
    117c:	fc772e23          	sw	t2,-36(a4)
    1180:	fe572023          	sw	t0,-32(a4)
    1184:	fff72223          	sw	t6,-28(a4)
    1188:	ffe72423          	sw	t5,-24(a4)
    118c:	ffd72623          	sw	t4,-20(a4)
    1190:	ffc72823          	sw	t3,-16(a4)
    1194:	fe672a23          	sw	t1,-12(a4)
    1198:	ff072c23          	sw	a6,-8(a4)
    119c:	fed72e23          	sw	a3,-4(a4)
    11a0:	02458593          	addi	a1,a1,36
    11a4:	faf446e3          	blt	s0,a5,1150 <memcpy+0xd8>
    11a8:	00058693          	mv	a3,a1
    11ac:	00070793          	mv	a5,a4
    11b0:	02c77863          	bgeu	a4,a2,11e0 <memcpy+0x168>
    11b4:	0006a803          	lw	a6,0(a3)
    11b8:	00478793          	addi	a5,a5,4
    11bc:	00468693          	addi	a3,a3,4
    11c0:	ff07ae23          	sw	a6,-4(a5)
    11c4:	fec7e8e3          	bltu	a5,a2,11b4 <memcpy+0x13c>
    11c8:	fff60793          	addi	a5,a2,-1
    11cc:	40e787b3          	sub	a5,a5,a4
    11d0:	ffc7f793          	andi	a5,a5,-4
    11d4:	00478793          	addi	a5,a5,4
    11d8:	00f70733          	add	a4,a4,a5
    11dc:	00f585b3          	add	a1,a1,a5
    11e0:	01176863          	bltu	a4,a7,11f0 <memcpy+0x178>
    11e4:	00c12403          	lw	s0,12(sp)
    11e8:	01010113          	addi	sp,sp,16
    11ec:	00008067          	ret
    11f0:	0005c783          	lbu	a5,0(a1)
    11f4:	00170713          	addi	a4,a4,1
    11f8:	00158593          	addi	a1,a1,1
    11fc:	fef70fa3          	sb	a5,-1(a4)
    1200:	fee882e3          	beq	a7,a4,11e4 <memcpy+0x16c>
    1204:	0005c783          	lbu	a5,0(a1)
    1208:	00170713          	addi	a4,a4,1
    120c:	00158593          	addi	a1,a1,1
    1210:	fef70fa3          	sb	a5,-1(a4)
    1214:	fce89ee3          	bne	a7,a4,11f0 <memcpy+0x178>
    1218:	fcdff06f          	j	11e4 <memcpy+0x16c>
