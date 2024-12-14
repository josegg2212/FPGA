
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
      c4:	f4458593          	addi	a1,a1,-188 # 80000004 <__ctr0_io_space_begin+0x80000204>
      c8:	87818613          	addi	a2,gp,-1928 # 80000078 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00001597          	auipc	a1,0x1
      e0:	5c458593          	addi	a1,a1,1476 # 16a0 <__crt0_copy_data_src_begin>
      e4:	80000617          	auipc	a2,0x80000
      e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
      ec:	80000697          	auipc	a3,0x80000
      f0:	f1868693          	addi	a3,a3,-232 # 80000004 <__ctr0_io_space_begin+0x80000204>

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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3460>
     194:	00112623          	sw	ra,12(sp)
     198:	2ed000ef          	jal	ra,c84 <neorv32_uart0_setup>
     19c:	3dc000ef          	jal	ra,578 <neorv32_gpio_available>
     1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
     1a4:	145000ef          	jal	ra,ae8 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	38450513          	addi	a0,a0,900 # 1384 <__etext+0x14c>
     1b0:	399000ef          	jal	ra,d48 <neorv32_uart0_print>
     1b4:	144000ef          	jal	ra,2f8 <wb_calculadora>
     1b8:	ffdff06f          	j	1b4 <main+0x34>
     1bc:	00001537          	lui	a0,0x1
     1c0:	36050513          	addi	a0,a0,864 # 1360 <__etext+0x128>
     1c4:	385000ef          	jal	ra,d48 <neorv32_uart0_print>
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00100513          	li	a0,1
     1d0:	01010113          	addi	sp,sp,16
     1d4:	00008067          	ret

000001d8 <keyboard>:
     1d8:	f9010113          	addi	sp,sp,-112
     1dc:	000015b7          	lui	a1,0x1
     1e0:	04000613          	li	a2,64
     1e4:	39858593          	addi	a1,a1,920 # 1398 <__etext+0x160>
     1e8:	00010513          	mv	a0,sp
     1ec:	06112623          	sw	ra,108(sp)
     1f0:	06812423          	sw	s0,104(sp)
     1f4:	06912223          	sw	s1,100(sp)
     1f8:	07212023          	sw	s2,96(sp)
     1fc:	05512a23          	sw	s5,84(sp)
     200:	05612823          	sw	s6,80(sp)
     204:	05712623          	sw	s7,76(sp)
     208:	05312e23          	sw	s3,92(sp)
     20c:	05412c23          	sw	s4,88(sp)
     210:	685000ef          	jal	ra,1094 <memcpy>
     214:	0ff00513          	li	a0,255
     218:	00000593          	li	a1,0
     21c:	3f4000ef          	jal	ra,610 <neorv32_gpio_port_set>
     220:	00010493          	mv	s1,sp
     224:	0ff00413          	li	s0,255
     228:	00000913          	li	s2,0
     22c:	0ff00b93          	li	s7,255
     230:	00800b13          	li	s6,8
     234:	00400a93          	li	s5,4
     238:	00090513          	mv	a0,s2
     23c:	37c000ef          	jal	ra,5b8 <neorv32_gpio_pin_clr>
     240:	00048a13          	mv	s4,s1
     244:	00400993          	li	s3,4
     248:	00098513          	mv	a0,s3
     24c:	3a0000ef          	jal	ra,5ec <neorv32_gpio_pin_get>
     250:	00051e63          	bnez	a0,26c <keyboard+0x94>
     254:	03ca2403          	lw	s0,60(s4)
     258:	01740a63          	beq	s0,s7,26c <keyboard+0x94>
     25c:	00441513          	slli	a0,s0,0x4
     260:	0f057513          	andi	a0,a0,240
     264:	00000593          	li	a1,0
     268:	3a8000ef          	jal	ra,610 <neorv32_gpio_port_set>
     26c:	00198993          	addi	s3,s3,1
     270:	ff0a0a13          	addi	s4,s4,-16
     274:	fd699ae3          	bne	s3,s6,248 <keyboard+0x70>
     278:	00090513          	mv	a0,s2
     27c:	00190913          	addi	s2,s2,1
     280:	308000ef          	jal	ra,588 <neorv32_gpio_pin_set>
     284:	ffc48493          	addi	s1,s1,-4
     288:	fb5918e3          	bne	s2,s5,238 <keyboard+0x60>
     28c:	0ff00713          	li	a4,255
     290:	800007b7          	lui	a5,0x80000
     294:	04e40c63          	beq	s0,a4,2ec <keyboard+0x114>
     298:	0007a703          	lw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     29c:	04870863          	beq	a4,s0,2ec <keyboard+0x114>
     2a0:	00001537          	lui	a0,0x1
     2a4:	23850513          	addi	a0,a0,568 # 1238 <__etext>
     2a8:	00040593          	mv	a1,s0
     2ac:	0087a023          	sw	s0,0(a5)
     2b0:	2f1000ef          	jal	ra,da0 <neorv32_uart0_printf>
     2b4:	03200513          	li	a0,50
     2b8:	204000ef          	jal	ra,4bc <neorv32_cpu_delay_ms>
     2bc:	06c12083          	lw	ra,108(sp)
     2c0:	00040513          	mv	a0,s0
     2c4:	06812403          	lw	s0,104(sp)
     2c8:	06412483          	lw	s1,100(sp)
     2cc:	06012903          	lw	s2,96(sp)
     2d0:	05c12983          	lw	s3,92(sp)
     2d4:	05812a03          	lw	s4,88(sp)
     2d8:	05412a83          	lw	s5,84(sp)
     2dc:	05012b03          	lw	s6,80(sp)
     2e0:	04c12b83          	lw	s7,76(sp)
     2e4:	07010113          	addi	sp,sp,112
     2e8:	00008067          	ret
     2ec:	0087a023          	sw	s0,0(a5)
     2f0:	01000413          	li	s0,16
     2f4:	fc9ff06f          	j	2bc <keyboard+0xe4>

000002f8 <wb_calculadora>:
     2f8:	00001537          	lui	a0,0x1
     2fc:	fe010113          	addi	sp,sp,-32
     300:	24c50513          	addi	a0,a0,588 # 124c <__etext+0x14>
     304:	00112e23          	sw	ra,28(sp)
     308:	00912a23          	sw	s1,20(sp)
     30c:	01212823          	sw	s2,16(sp)
     310:	01312623          	sw	s3,12(sp)
     314:	00812c23          	sw	s0,24(sp)
     318:	289000ef          	jal	ra,da0 <neorv32_uart0_printf>
     31c:	00001537          	lui	a0,0x1
     320:	29c50513          	addi	a0,a0,668 # 129c <__etext+0x64>
     324:	27d000ef          	jal	ra,da0 <neorv32_uart0_printf>
     328:	01000913          	li	s2,16
     32c:	00000493          	li	s1,0
     330:	00900993          	li	s3,9
     334:	ea5ff0ef          	jal	ra,1d8 <keyboard>
     338:	00050413          	mv	s0,a0
     33c:	0aa9f663          	bgeu	s3,a0,3e8 <wb_calculadora+0xf0>
     340:	00001537          	lui	a0,0x1
     344:	00048593          	mv	a1,s1
     348:	2c050513          	addi	a0,a0,704 # 12c0 <__etext+0x88>
     34c:	255000ef          	jal	ra,da0 <neorv32_uart0_printf>
     350:	900009b7          	lui	s3,0x90000
     354:	0099a023          	sw	s1,0(s3) # 90000000 <__ctr0_io_space_begin+0x90000200>
     358:	00001537          	lui	a0,0x1
     35c:	00040593          	mv	a1,s0
     360:	2d450513          	addi	a0,a0,724 # 12d4 <__etext+0x9c>
     364:	23d000ef          	jal	ra,da0 <neorv32_uart0_printf>
     368:	00898993          	addi	s3,s3,8
     36c:	0089a023          	sw	s0,0(s3)
     370:	00001537          	lui	a0,0x1
     374:	2e450513          	addi	a0,a0,740 # 12e4 <__etext+0xac>
     378:	229000ef          	jal	ra,da0 <neorv32_uart0_printf>
     37c:	00000413          	li	s0,0
     380:	00900493          	li	s1,9
     384:	e55ff0ef          	jal	ra,1d8 <keyboard>
     388:	06a4fe63          	bgeu	s1,a0,404 <wb_calculadora+0x10c>
     38c:	00001537          	lui	a0,0x1
     390:	00040593          	mv	a1,s0
     394:	30450513          	addi	a0,a0,772 # 1304 <__etext+0xcc>
     398:	209000ef          	jal	ra,da0 <neorv32_uart0_printf>
     39c:	900007b7          	lui	a5,0x90000
     3a0:	00478693          	addi	a3,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     3a4:	0086a023          	sw	s0,0(a3)
     3a8:	0007a503          	lw	a0,0(a5)
     3ac:	0006a683          	lw	a3,0(a3)
     3b0:	00878793          	addi	a5,a5,8
     3b4:	0007a783          	lw	a5,0(a5)
     3b8:	00c00713          	li	a4,12
     3bc:	06e78e63          	beq	a5,a4,438 <wb_calculadora+0x140>
     3c0:	06f76063          	bltu	a4,a5,420 <wb_calculadora+0x128>
     3c4:	00a00613          	li	a2,10
     3c8:	00a68733          	add	a4,a3,a0
     3cc:	06c78e63          	beq	a5,a2,448 <wb_calculadora+0x150>
     3d0:	00b00613          	li	a2,11
     3d4:	40d50733          	sub	a4,a0,a3
     3d8:	06c78863          	beq	a5,a2,448 <wb_calculadora+0x150>
     3dc:	00001537          	lui	a0,0x1
     3e0:	33450513          	addi	a0,a0,820 # 1334 <__etext+0xfc>
     3e4:	0a00006f          	j	484 <wb_calculadora+0x18c>
     3e8:	00890a63          	beq	s2,s0,3fc <wb_calculadora+0x104>
     3ec:	00249793          	slli	a5,s1,0x2
     3f0:	009787b3          	add	a5,a5,s1
     3f4:	00179793          	slli	a5,a5,0x1
     3f8:	008784b3          	add	s1,a5,s0
     3fc:	00040913          	mv	s2,s0
     400:	f35ff06f          	j	334 <wb_calculadora+0x3c>
     404:	00a90a63          	beq	s2,a0,418 <wb_calculadora+0x120>
     408:	00241793          	slli	a5,s0,0x2
     40c:	008787b3          	add	a5,a5,s0
     410:	00179793          	slli	a5,a5,0x1
     414:	00a78433          	add	s0,a5,a0
     418:	00050913          	mv	s2,a0
     41c:	f69ff06f          	j	384 <wb_calculadora+0x8c>
     420:	00d00713          	li	a4,13
     424:	fae79ce3          	bne	a5,a4,3dc <wb_calculadora+0xe4>
     428:	04068a63          	beqz	a3,47c <wb_calculadora+0x184>
     42c:	00068593          	mv	a1,a3
     430:	3b9000ef          	jal	ra,fe8 <__hidden___udivsi3>
     434:	0100006f          	j	444 <wb_calculadora+0x14c>
     438:	00050593          	mv	a1,a0
     43c:	00068513          	mv	a0,a3
     440:	2f1000ef          	jal	ra,f30 <__mulsi3>
     444:	00050713          	mv	a4,a0
     448:	900005b7          	lui	a1,0x90000
     44c:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     450:	00e5a023          	sw	a4,0(a1)
     454:	0005a583          	lw	a1,0(a1)
     458:	01812403          	lw	s0,24(sp)
     45c:	01c12083          	lw	ra,28(sp)
     460:	01412483          	lw	s1,20(sp)
     464:	01012903          	lw	s2,16(sp)
     468:	00c12983          	lw	s3,12(sp)
     46c:	00001537          	lui	a0,0x1
     470:	35050513          	addi	a0,a0,848 # 1350 <__etext+0x118>
     474:	02010113          	addi	sp,sp,32
     478:	1290006f          	j	da0 <neorv32_uart0_printf>
     47c:	00001537          	lui	a0,0x1
     480:	31850513          	addi	a0,a0,792 # 1318 <__etext+0xe0>
     484:	11d000ef          	jal	ra,da0 <neorv32_uart0_printf>
     488:	fff00713          	li	a4,-1
     48c:	fbdff06f          	j	448 <wb_calculadora+0x150>

00000490 <neorv32_cpu_get_systime>:
     490:	ff010113          	addi	sp,sp,-16
     494:	c81026f3          	rdtimeh	a3
     498:	c0102773          	rdtime	a4
     49c:	c81027f3          	rdtimeh	a5
     4a0:	fed79ae3          	bne	a5,a3,494 <neorv32_cpu_get_systime+0x4>
     4a4:	00e12023          	sw	a4,0(sp)
     4a8:	00f12223          	sw	a5,4(sp)
     4ac:	00012503          	lw	a0,0(sp)
     4b0:	00412583          	lw	a1,4(sp)
     4b4:	01010113          	addi	sp,sp,16
     4b8:	00008067          	ret

000004bc <neorv32_cpu_delay_ms>:
     4bc:	fd010113          	addi	sp,sp,-48
     4c0:	00a12623          	sw	a0,12(sp)
     4c4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     4c8:	3e800593          	li	a1,1000
     4cc:	02112623          	sw	ra,44(sp)
     4d0:	02812423          	sw	s0,40(sp)
     4d4:	02912223          	sw	s1,36(sp)
     4d8:	03212023          	sw	s2,32(sp)
     4dc:	01312e23          	sw	s3,28(sp)
     4e0:	309000ef          	jal	ra,fe8 <__hidden___udivsi3>
     4e4:	00c12603          	lw	a2,12(sp)
     4e8:	00000693          	li	a3,0
     4ec:	00000593          	li	a1,0
     4f0:	265000ef          	jal	ra,f54 <__muldi3>
     4f4:	00050413          	mv	s0,a0
     4f8:	00058993          	mv	s3,a1
     4fc:	f95ff0ef          	jal	ra,490 <neorv32_cpu_get_systime>
     500:	00058913          	mv	s2,a1
     504:	00050493          	mv	s1,a0
     508:	f89ff0ef          	jal	ra,490 <neorv32_cpu_get_systime>
     50c:	00b96663          	bltu	s2,a1,518 <neorv32_cpu_delay_ms+0x5c>
     510:	05259263          	bne	a1,s2,554 <neorv32_cpu_delay_ms+0x98>
     514:	04a4f063          	bgeu	s1,a0,554 <neorv32_cpu_delay_ms+0x98>
     518:	008484b3          	add	s1,s1,s0
     51c:	0084b433          	sltu	s0,s1,s0
     520:	01390933          	add	s2,s2,s3
     524:	01240433          	add	s0,s0,s2
     528:	f69ff0ef          	jal	ra,490 <neorv32_cpu_get_systime>
     52c:	fe85eee3          	bltu	a1,s0,528 <neorv32_cpu_delay_ms+0x6c>
     530:	00b41463          	bne	s0,a1,538 <neorv32_cpu_delay_ms+0x7c>
     534:	fe956ae3          	bltu	a0,s1,528 <neorv32_cpu_delay_ms+0x6c>
     538:	02c12083          	lw	ra,44(sp)
     53c:	02812403          	lw	s0,40(sp)
     540:	02412483          	lw	s1,36(sp)
     544:	02012903          	lw	s2,32(sp)
     548:	01c12983          	lw	s3,28(sp)
     54c:	03010113          	addi	sp,sp,48
     550:	00008067          	ret
     554:	01c99993          	slli	s3,s3,0x1c
     558:	00445413          	srli	s0,s0,0x4
     55c:	0089e433          	or	s0,s3,s0

00000560 <__neorv32_cpu_delay_ms_start>:
     560:	00040a63          	beqz	s0,574 <__neorv32_cpu_delay_ms_end>
     564:	00040863          	beqz	s0,574 <__neorv32_cpu_delay_ms_end>
     568:	fff40413          	addi	s0,s0,-1
     56c:	00000013          	nop
     570:	ff1ff06f          	j	560 <__neorv32_cpu_delay_ms_start>

00000574 <__neorv32_cpu_delay_ms_end>:
     574:	fc5ff06f          	j	538 <neorv32_cpu_delay_ms+0x7c>

00000578 <neorv32_gpio_available>:
     578:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     57c:	01055513          	srli	a0,a0,0x10
     580:	00157513          	andi	a0,a0,1
     584:	00008067          	ret

00000588 <neorv32_gpio_pin_set>:
     588:	00100793          	li	a5,1
     58c:	01f00713          	li	a4,31
     590:	00a797b3          	sll	a5,a5,a0
     594:	00a74a63          	blt	a4,a0,5a8 <neorv32_gpio_pin_set+0x20>
     598:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     59c:	00f767b3          	or	a5,a4,a5
     5a0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5a4:	00008067          	ret
     5a8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5ac:	00f767b3          	or	a5,a4,a5
     5b0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5b4:	00008067          	ret

000005b8 <neorv32_gpio_pin_clr>:
     5b8:	00100793          	li	a5,1
     5bc:	00a797b3          	sll	a5,a5,a0
     5c0:	01f00713          	li	a4,31
     5c4:	fff7c793          	not	a5,a5
     5c8:	00a74a63          	blt	a4,a0,5dc <neorv32_gpio_pin_clr+0x24>
     5cc:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5d0:	00f777b3          	and	a5,a4,a5
     5d4:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5d8:	00008067          	ret
     5dc:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5e0:	00f777b3          	and	a5,a4,a5
     5e4:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5e8:	00008067          	ret

000005ec <neorv32_gpio_pin_get>:
     5ec:	00100793          	li	a5,1
     5f0:	01f00713          	li	a4,31
     5f4:	00a797b3          	sll	a5,a5,a0
     5f8:	00a74863          	blt	a4,a0,608 <neorv32_gpio_pin_get+0x1c>
     5fc:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     600:	00f77533          	and	a0,a4,a5
     604:	00008067          	ret
     608:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     60c:	ff5ff06f          	j	600 <neorv32_gpio_pin_get+0x14>

00000610 <neorv32_gpio_port_set>:
     610:	fc000793          	li	a5,-64
     614:	00a7a423          	sw	a0,8(a5)
     618:	00b7a623          	sw	a1,12(a5)
     61c:	00008067          	ret

00000620 <__neorv32_rte_core>:
     620:	fc010113          	addi	sp,sp,-64
     624:	02112e23          	sw	ra,60(sp)
     628:	02512c23          	sw	t0,56(sp)
     62c:	02612a23          	sw	t1,52(sp)
     630:	02712823          	sw	t2,48(sp)
     634:	02a12623          	sw	a0,44(sp)
     638:	02b12423          	sw	a1,40(sp)
     63c:	02c12223          	sw	a2,36(sp)
     640:	02d12023          	sw	a3,32(sp)
     644:	00e12e23          	sw	a4,28(sp)
     648:	00f12c23          	sw	a5,24(sp)
     64c:	01012a23          	sw	a6,20(sp)
     650:	01112823          	sw	a7,16(sp)
     654:	01c12623          	sw	t3,12(sp)
     658:	01d12423          	sw	t4,8(sp)
     65c:	01e12223          	sw	t5,4(sp)
     660:	01f12023          	sw	t6,0(sp)
     664:	34102773          	csrr	a4,mepc
     668:	34071073          	csrw	mscratch,a4
     66c:	342027f3          	csrr	a5,mcause
     670:	0807ca63          	bltz	a5,704 <__neorv32_rte_core+0xe4>
     674:	00071683          	lh	a3,0(a4)
     678:	00300593          	li	a1,3
     67c:	0036f693          	andi	a3,a3,3
     680:	00270613          	addi	a2,a4,2
     684:	00b69463          	bne	a3,a1,68c <__neorv32_rte_core+0x6c>
     688:	00470613          	addi	a2,a4,4
     68c:	34161073          	csrw	mepc,a2
     690:	00b00713          	li	a4,11
     694:	04f77c63          	bgeu	a4,a5,6ec <__neorv32_rte_core+0xcc>
     698:	000017b7          	lui	a5,0x1
     69c:	8d078793          	addi	a5,a5,-1840 # 8d0 <__neorv32_rte_debug_exc_handler>
     6a0:	000780e7          	jalr	a5
     6a4:	03c12083          	lw	ra,60(sp)
     6a8:	03812283          	lw	t0,56(sp)
     6ac:	03412303          	lw	t1,52(sp)
     6b0:	03012383          	lw	t2,48(sp)
     6b4:	02c12503          	lw	a0,44(sp)
     6b8:	02812583          	lw	a1,40(sp)
     6bc:	02412603          	lw	a2,36(sp)
     6c0:	02012683          	lw	a3,32(sp)
     6c4:	01c12703          	lw	a4,28(sp)
     6c8:	01812783          	lw	a5,24(sp)
     6cc:	01412803          	lw	a6,20(sp)
     6d0:	01012883          	lw	a7,16(sp)
     6d4:	00c12e03          	lw	t3,12(sp)
     6d8:	00812e83          	lw	t4,8(sp)
     6dc:	00412f03          	lw	t5,4(sp)
     6e0:	00012f83          	lw	t6,0(sp)
     6e4:	04010113          	addi	sp,sp,64
     6e8:	30200073          	mret
     6ec:	00001737          	lui	a4,0x1
     6f0:	00279793          	slli	a5,a5,0x2
     6f4:	3d870713          	addi	a4,a4,984 # 13d8 <__etext+0x1a0>
     6f8:	00e787b3          	add	a5,a5,a4
     6fc:	0007a783          	lw	a5,0(a5)
     700:	00078067          	jr	a5
     704:	80000737          	lui	a4,0x80000
     708:	ffd74713          	xori	a4,a4,-3
     70c:	00e787b3          	add	a5,a5,a4
     710:	01c00713          	li	a4,28
     714:	f8f762e3          	bltu	a4,a5,698 <__neorv32_rte_core+0x78>
     718:	00001737          	lui	a4,0x1
     71c:	00279793          	slli	a5,a5,0x2
     720:	40870713          	addi	a4,a4,1032 # 1408 <__etext+0x1d0>
     724:	00e787b3          	add	a5,a5,a4
     728:	0007a783          	lw	a5,0(a5)
     72c:	00078067          	jr	a5
     730:	800007b7          	lui	a5,0x80000
     734:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     738:	f69ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     73c:	800007b7          	lui	a5,0x80000
     740:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     744:	f5dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     748:	800007b7          	lui	a5,0x80000
     74c:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     750:	f51ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     754:	800007b7          	lui	a5,0x80000
     758:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     75c:	f45ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     760:	800007b7          	lui	a5,0x80000
     764:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     768:	f39ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     76c:	800007b7          	lui	a5,0x80000
     770:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     774:	f2dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     778:	800007b7          	lui	a5,0x80000
     77c:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     780:	f21ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     784:	800007b7          	lui	a5,0x80000
     788:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     78c:	f15ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     790:	800007b7          	lui	a5,0x80000
     794:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     798:	f09ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     79c:	800007b7          	lui	a5,0x80000
     7a0:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     7a4:	efdff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7a8:	800007b7          	lui	a5,0x80000
     7ac:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     7b0:	ef1ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7b4:	800007b7          	lui	a5,0x80000
     7b8:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     7bc:	ee5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7c0:	800007b7          	lui	a5,0x80000
     7c4:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     7c8:	ed9ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7cc:	800007b7          	lui	a5,0x80000
     7d0:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     7d4:	ecdff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7d8:	800007b7          	lui	a5,0x80000
     7dc:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     7e0:	ec1ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7e4:	800007b7          	lui	a5,0x80000
     7e8:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     7ec:	eb5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7f0:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x40>
     7f4:	eadff06f          	j	6a0 <__neorv32_rte_core+0x80>
     7f8:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x44>
     7fc:	ea5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     800:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x48>
     804:	e9dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     808:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x4c>
     80c:	e95ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     810:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x50>
     814:	e8dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     818:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x54>
     81c:	e85ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     820:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x58>
     824:	e7dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     828:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x5c>
     82c:	e75ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     830:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x60>
     834:	e6dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     838:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x64>
     83c:	e65ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     840:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x68>
     844:	e5dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     848:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x6c>
     84c:	e55ff06f          	j	6a0 <__neorv32_rte_core+0x80>
     850:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x70>
     854:	e4dff06f          	j	6a0 <__neorv32_rte_core+0x80>
     858:	0000                	.2byte	0x0
     85a:	0000                	.2byte	0x0
     85c:	0000                	.2byte	0x0
     85e:	0000                	.2byte	0x0

00000860 <__neorv32_rte_print_hex_word>:
     860:	fe010113          	addi	sp,sp,-32
     864:	01212823          	sw	s2,16(sp)
     868:	00050913          	mv	s2,a0
     86c:	00001537          	lui	a0,0x1
     870:	00912a23          	sw	s1,20(sp)
     874:	47c50513          	addi	a0,a0,1148 # 147c <__etext+0x244>
     878:	000014b7          	lui	s1,0x1
     87c:	00812c23          	sw	s0,24(sp)
     880:	01312623          	sw	s3,12(sp)
     884:	00112e23          	sw	ra,28(sp)
     888:	01c00413          	li	s0,28
     88c:	4bc000ef          	jal	ra,d48 <neorv32_uart0_print>
     890:	67048493          	addi	s1,s1,1648 # 1670 <hex_symbols.0>
     894:	ffc00993          	li	s3,-4
     898:	008957b3          	srl	a5,s2,s0
     89c:	00f7f793          	andi	a5,a5,15
     8a0:	00f487b3          	add	a5,s1,a5
     8a4:	0007c503          	lbu	a0,0(a5)
     8a8:	ffc40413          	addi	s0,s0,-4
     8ac:	484000ef          	jal	ra,d30 <neorv32_uart0_putc>
     8b0:	ff3414e3          	bne	s0,s3,898 <__neorv32_rte_print_hex_word+0x38>
     8b4:	01c12083          	lw	ra,28(sp)
     8b8:	01812403          	lw	s0,24(sp)
     8bc:	01412483          	lw	s1,20(sp)
     8c0:	01012903          	lw	s2,16(sp)
     8c4:	00c12983          	lw	s3,12(sp)
     8c8:	02010113          	addi	sp,sp,32
     8cc:	00008067          	ret

000008d0 <__neorv32_rte_debug_exc_handler>:
     8d0:	ff010113          	addi	sp,sp,-16
     8d4:	00112623          	sw	ra,12(sp)
     8d8:	00812423          	sw	s0,8(sp)
     8dc:	00912223          	sw	s1,4(sp)
     8e0:	394000ef          	jal	ra,c74 <neorv32_uart0_available>
     8e4:	1a050e63          	beqz	a0,aa0 <__neorv32_rte_debug_exc_handler+0x1d0>
     8e8:	00001537          	lui	a0,0x1
     8ec:	48050513          	addi	a0,a0,1152 # 1480 <__etext+0x248>
     8f0:	458000ef          	jal	ra,d48 <neorv32_uart0_print>
     8f4:	34202473          	csrr	s0,mcause
     8f8:	00900713          	li	a4,9
     8fc:	00f47793          	andi	a5,s0,15
     900:	03078493          	addi	s1,a5,48
     904:	00f77463          	bgeu	a4,a5,90c <__neorv32_rte_debug_exc_handler+0x3c>
     908:	05778493          	addi	s1,a5,87
     90c:	00b00793          	li	a5,11
     910:	0087ee63          	bltu	a5,s0,92c <__neorv32_rte_debug_exc_handler+0x5c>
     914:	00001737          	lui	a4,0x1
     918:	00241793          	slli	a5,s0,0x2
     91c:	64070713          	addi	a4,a4,1600 # 1640 <__etext+0x408>
     920:	00e787b3          	add	a5,a5,a4
     924:	0007a783          	lw	a5,0(a5)
     928:	00078067          	jr	a5
     92c:	800007b7          	lui	a5,0x80000
     930:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     934:	14e40463          	beq	s0,a4,a7c <__neorv32_rte_debug_exc_handler+0x1ac>
     938:	02876663          	bltu	a4,s0,964 <__neorv32_rte_debug_exc_handler+0x94>
     93c:	00378713          	addi	a4,a5,3
     940:	12e40263          	beq	s0,a4,a64 <__neorv32_rte_debug_exc_handler+0x194>
     944:	00778793          	addi	a5,a5,7
     948:	12f40463          	beq	s0,a5,a70 <__neorv32_rte_debug_exc_handler+0x1a0>
     94c:	00001537          	lui	a0,0x1
     950:	5e050513          	addi	a0,a0,1504 # 15e0 <__etext+0x3a8>
     954:	3f4000ef          	jal	ra,d48 <neorv32_uart0_print>
     958:	00040513          	mv	a0,s0
     95c:	f05ff0ef          	jal	ra,860 <__neorv32_rte_print_hex_word>
     960:	0280006f          	j	988 <__neorv32_rte_debug_exc_handler+0xb8>
     964:	ff07c793          	xori	a5,a5,-16
     968:	00f407b3          	add	a5,s0,a5
     96c:	00f00713          	li	a4,15
     970:	fcf76ee3          	bltu	a4,a5,94c <__neorv32_rte_debug_exc_handler+0x7c>
     974:	00001537          	lui	a0,0x1
     978:	5d050513          	addi	a0,a0,1488 # 15d0 <__etext+0x398>
     97c:	3cc000ef          	jal	ra,d48 <neorv32_uart0_print>
     980:	00048513          	mv	a0,s1
     984:	3ac000ef          	jal	ra,d30 <neorv32_uart0_putc>
     988:	00001537          	lui	a0,0x1
     98c:	62450513          	addi	a0,a0,1572 # 1624 <__etext+0x3ec>
     990:	3b8000ef          	jal	ra,d48 <neorv32_uart0_print>
     994:	34002573          	csrr	a0,mscratch
     998:	ec9ff0ef          	jal	ra,860 <__neorv32_rte_print_hex_word>
     99c:	00001537          	lui	a0,0x1
     9a0:	62c50513          	addi	a0,a0,1580 # 162c <__etext+0x3f4>
     9a4:	3a4000ef          	jal	ra,d48 <neorv32_uart0_print>
     9a8:	34302573          	csrr	a0,mtval
     9ac:	eb5ff0ef          	jal	ra,860 <__neorv32_rte_print_hex_word>
     9b0:	00812403          	lw	s0,8(sp)
     9b4:	00c12083          	lw	ra,12(sp)
     9b8:	00412483          	lw	s1,4(sp)
     9bc:	00001537          	lui	a0,0x1
     9c0:	63850513          	addi	a0,a0,1592 # 1638 <__etext+0x400>
     9c4:	01010113          	addi	sp,sp,16
     9c8:	3800006f          	j	d48 <neorv32_uart0_print>
     9cc:	00001537          	lui	a0,0x1
     9d0:	48850513          	addi	a0,a0,1160 # 1488 <__etext+0x250>
     9d4:	374000ef          	jal	ra,d48 <neorv32_uart0_print>
     9d8:	fb1ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0xb8>
     9dc:	00001537          	lui	a0,0x1
     9e0:	4a850513          	addi	a0,a0,1192 # 14a8 <__etext+0x270>
     9e4:	364000ef          	jal	ra,d48 <neorv32_uart0_print>
     9e8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     9ec:	0a07d463          	bgez	a5,a94 <__neorv32_rte_debug_exc_handler+0x1c4>
     9f0:	0017f793          	andi	a5,a5,1
     9f4:	08078a63          	beqz	a5,a88 <__neorv32_rte_debug_exc_handler+0x1b8>
     9f8:	00001537          	lui	a0,0x1
     9fc:	5f850513          	addi	a0,a0,1528 # 15f8 <__etext+0x3c0>
     a00:	fd5ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a04:	00001537          	lui	a0,0x1
     a08:	4c450513          	addi	a0,a0,1220 # 14c4 <__etext+0x28c>
     a0c:	fc9ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a10:	00001537          	lui	a0,0x1
     a14:	4d850513          	addi	a0,a0,1240 # 14d8 <__etext+0x2a0>
     a18:	fbdff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a1c:	00001537          	lui	a0,0x1
     a20:	4e450513          	addi	a0,a0,1252 # 14e4 <__etext+0x2ac>
     a24:	fb1ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a28:	00001537          	lui	a0,0x1
     a2c:	4fc50513          	addi	a0,a0,1276 # 14fc <__etext+0x2c4>
     a30:	fb5ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x114>
     a34:	00001537          	lui	a0,0x1
     a38:	51050513          	addi	a0,a0,1296 # 1510 <__etext+0x2d8>
     a3c:	f99ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a40:	00001537          	lui	a0,0x1
     a44:	52c50513          	addi	a0,a0,1324 # 152c <__etext+0x2f4>
     a48:	f9dff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x114>
     a4c:	00001537          	lui	a0,0x1
     a50:	54050513          	addi	a0,a0,1344 # 1540 <__etext+0x308>
     a54:	f81ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a58:	00001537          	lui	a0,0x1
     a5c:	56050513          	addi	a0,a0,1376 # 1560 <__etext+0x328>
     a60:	f75ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a64:	00001537          	lui	a0,0x1
     a68:	58050513          	addi	a0,a0,1408 # 1580 <__etext+0x348>
     a6c:	f69ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a70:	00001537          	lui	a0,0x1
     a74:	59c50513          	addi	a0,a0,1436 # 159c <__etext+0x364>
     a78:	f5dff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a7c:	00001537          	lui	a0,0x1
     a80:	5b450513          	addi	a0,a0,1460 # 15b4 <__etext+0x37c>
     a84:	f51ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a88:	00001537          	lui	a0,0x1
     a8c:	60850513          	addi	a0,a0,1544 # 1608 <__etext+0x3d0>
     a90:	f45ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     a94:	00001537          	lui	a0,0x1
     a98:	61850513          	addi	a0,a0,1560 # 1618 <__etext+0x3e0>
     a9c:	f39ff06f          	j	9d4 <__neorv32_rte_debug_exc_handler+0x104>
     aa0:	00c12083          	lw	ra,12(sp)
     aa4:	00812403          	lw	s0,8(sp)
     aa8:	00412483          	lw	s1,4(sp)
     aac:	01010113          	addi	sp,sp,16
     ab0:	00008067          	ret

00000ab4 <neorv32_rte_exception_uninstall>:
     ab4:	01f00793          	li	a5,31
     ab8:	02a7e463          	bltu	a5,a0,ae0 <neorv32_rte_exception_uninstall+0x2c>
     abc:	800007b7          	lui	a5,0x80000
     ac0:	00251513          	slli	a0,a0,0x2
     ac4:	00478793          	addi	a5,a5,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
     ac8:	00001737          	lui	a4,0x1
     acc:	00a787b3          	add	a5,a5,a0
     ad0:	8d070713          	addi	a4,a4,-1840 # 8d0 <__neorv32_rte_debug_exc_handler>
     ad4:	00e7a023          	sw	a4,0(a5)
     ad8:	00000513          	li	a0,0
     adc:	00008067          	ret
     ae0:	00100513          	li	a0,1
     ae4:	00008067          	ret

00000ae8 <neorv32_rte_setup>:
     ae8:	ff010113          	addi	sp,sp,-16
     aec:	00112623          	sw	ra,12(sp)
     af0:	00812423          	sw	s0,8(sp)
     af4:	00912223          	sw	s1,4(sp)
     af8:	62000793          	li	a5,1568
     afc:	30579073          	csrw	mtvec,a5
     b00:	00000413          	li	s0,0
     b04:	01d00493          	li	s1,29
     b08:	00040513          	mv	a0,s0
     b0c:	00140413          	addi	s0,s0,1
     b10:	0ff47413          	zext.b	s0,s0
     b14:	fa1ff0ef          	jal	ra,ab4 <neorv32_rte_exception_uninstall>
     b18:	fe9418e3          	bne	s0,s1,b08 <neorv32_rte_setup+0x20>
     b1c:	00c12083          	lw	ra,12(sp)
     b20:	00812403          	lw	s0,8(sp)
     b24:	00412483          	lw	s1,4(sp)
     b28:	01010113          	addi	sp,sp,16
     b2c:	00008067          	ret

00000b30 <__neorv32_uart_itoa>:
     b30:	fd010113          	addi	sp,sp,-48
     b34:	02812423          	sw	s0,40(sp)
     b38:	02912223          	sw	s1,36(sp)
     b3c:	03212023          	sw	s2,32(sp)
     b40:	01312e23          	sw	s3,28(sp)
     b44:	01412c23          	sw	s4,24(sp)
     b48:	02112623          	sw	ra,44(sp)
     b4c:	01512a23          	sw	s5,20(sp)
     b50:	00001a37          	lui	s4,0x1
     b54:	00050493          	mv	s1,a0
     b58:	00058413          	mv	s0,a1
     b5c:	00058523          	sb	zero,10(a1)
     b60:	00000993          	li	s3,0
     b64:	00410913          	addi	s2,sp,4
     b68:	694a0a13          	addi	s4,s4,1684 # 1694 <numbers.1>
     b6c:	00a00593          	li	a1,10
     b70:	00048513          	mv	a0,s1
     b74:	4bc000ef          	jal	ra,1030 <__umodsi3>
     b78:	00aa0533          	add	a0,s4,a0
     b7c:	00054783          	lbu	a5,0(a0)
     b80:	01390ab3          	add	s5,s2,s3
     b84:	00048513          	mv	a0,s1
     b88:	00fa8023          	sb	a5,0(s5)
     b8c:	00a00593          	li	a1,10
     b90:	458000ef          	jal	ra,fe8 <__hidden___udivsi3>
     b94:	00198993          	addi	s3,s3,1
     b98:	00a00793          	li	a5,10
     b9c:	00050493          	mv	s1,a0
     ba0:	fcf996e3          	bne	s3,a5,b6c <__neorv32_uart_itoa+0x3c>
     ba4:	00090693          	mv	a3,s2
     ba8:	00900713          	li	a4,9
     bac:	03000613          	li	a2,48
     bb0:	0096c583          	lbu	a1,9(a3)
     bb4:	00070793          	mv	a5,a4
     bb8:	fff70713          	addi	a4,a4,-1
     bbc:	01071713          	slli	a4,a4,0x10
     bc0:	01075713          	srli	a4,a4,0x10
     bc4:	00c59a63          	bne	a1,a2,bd8 <__neorv32_uart_itoa+0xa8>
     bc8:	000684a3          	sb	zero,9(a3)
     bcc:	fff68693          	addi	a3,a3,-1
     bd0:	fe0710e3          	bnez	a4,bb0 <__neorv32_uart_itoa+0x80>
     bd4:	00000793          	li	a5,0
     bd8:	00f907b3          	add	a5,s2,a5
     bdc:	00000713          	li	a4,0
     be0:	0007c683          	lbu	a3,0(a5)
     be4:	00068c63          	beqz	a3,bfc <__neorv32_uart_itoa+0xcc>
     be8:	00170613          	addi	a2,a4,1
     bec:	00e40733          	add	a4,s0,a4
     bf0:	00d70023          	sb	a3,0(a4)
     bf4:	01061713          	slli	a4,a2,0x10
     bf8:	01075713          	srli	a4,a4,0x10
     bfc:	fff78693          	addi	a3,a5,-1
     c00:	02f91863          	bne	s2,a5,c30 <__neorv32_uart_itoa+0x100>
     c04:	00e40433          	add	s0,s0,a4
     c08:	00040023          	sb	zero,0(s0)
     c0c:	02c12083          	lw	ra,44(sp)
     c10:	02812403          	lw	s0,40(sp)
     c14:	02412483          	lw	s1,36(sp)
     c18:	02012903          	lw	s2,32(sp)
     c1c:	01c12983          	lw	s3,28(sp)
     c20:	01812a03          	lw	s4,24(sp)
     c24:	01412a83          	lw	s5,20(sp)
     c28:	03010113          	addi	sp,sp,48
     c2c:	00008067          	ret
     c30:	00068793          	mv	a5,a3
     c34:	fadff06f          	j	be0 <__neorv32_uart_itoa+0xb0>

00000c38 <__neorv32_uart_tohex>:
     c38:	00001637          	lui	a2,0x1
     c3c:	00758693          	addi	a3,a1,7
     c40:	00000713          	li	a4,0
     c44:	68060613          	addi	a2,a2,1664 # 1680 <symbols.0>
     c48:	02000813          	li	a6,32
     c4c:	00e557b3          	srl	a5,a0,a4
     c50:	00f7f793          	andi	a5,a5,15
     c54:	00f607b3          	add	a5,a2,a5
     c58:	0007c783          	lbu	a5,0(a5)
     c5c:	00470713          	addi	a4,a4,4
     c60:	fff68693          	addi	a3,a3,-1
     c64:	00f680a3          	sb	a5,1(a3)
     c68:	ff0712e3          	bne	a4,a6,c4c <__neorv32_uart_tohex+0x14>
     c6c:	00058423          	sb	zero,8(a1)
     c70:	00008067          	ret

00000c74 <neorv32_uart0_available>:
     c74:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     c78:	01255513          	srli	a0,a0,0x12
     c7c:	00157513          	andi	a0,a0,1
     c80:	00008067          	ret

00000c84 <neorv32_uart0_setup>:
     c84:	ff010113          	addi	sp,sp,-16
     c88:	00812423          	sw	s0,8(sp)
     c8c:	00912223          	sw	s1,4(sp)
     c90:	00112623          	sw	ra,12(sp)
     c94:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c98:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     c9c:	00058413          	mv	s0,a1
     ca0:	00151593          	slli	a1,a0,0x1
     ca4:	00078513          	mv	a0,a5
     ca8:	00060493          	mv	s1,a2
     cac:	33c000ef          	jal	ra,fe8 <__hidden___udivsi3>
     cb0:	01051513          	slli	a0,a0,0x10
     cb4:	000017b7          	lui	a5,0x1
     cb8:	01055513          	srli	a0,a0,0x10
     cbc:	00000713          	li	a4,0
     cc0:	ffe78793          	addi	a5,a5,-2 # ffe <__hidden___udivsi3+0x16>
     cc4:	04a7e463          	bltu	a5,a0,d0c <neorv32_uart0_setup+0x88>
     cc8:	0034f493          	andi	s1,s1,3
     ccc:	01449493          	slli	s1,s1,0x14
     cd0:	00347413          	andi	s0,s0,3
     cd4:	fff50793          	addi	a5,a0,-1
     cd8:	0097e7b3          	or	a5,a5,s1
     cdc:	01641413          	slli	s0,s0,0x16
     ce0:	0087e7b3          	or	a5,a5,s0
     ce4:	01871713          	slli	a4,a4,0x18
     ce8:	00c12083          	lw	ra,12(sp)
     cec:	00812403          	lw	s0,8(sp)
     cf0:	00e7e7b3          	or	a5,a5,a4
     cf4:	10000737          	lui	a4,0x10000
     cf8:	00e7e7b3          	or	a5,a5,a4
     cfc:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d00:	00412483          	lw	s1,4(sp)
     d04:	01010113          	addi	sp,sp,16
     d08:	00008067          	ret
     d0c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe95e>
     d10:	0fd6f693          	andi	a3,a3,253
     d14:	00069a63          	bnez	a3,d28 <neorv32_uart0_setup+0xa4>
     d18:	00355513          	srli	a0,a0,0x3
     d1c:	00170713          	addi	a4,a4,1
     d20:	0ff77713          	zext.b	a4,a4
     d24:	fa1ff06f          	j	cc4 <neorv32_uart0_setup+0x40>
     d28:	00155513          	srli	a0,a0,0x1
     d2c:	ff1ff06f          	j	d1c <neorv32_uart0_setup+0x98>

00000d30 <neorv32_uart0_putc>:
     d30:	00040737          	lui	a4,0x40
     d34:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d38:	00e7f7b3          	and	a5,a5,a4
     d3c:	fe079ce3          	bnez	a5,d34 <neorv32_uart0_putc+0x4>
     d40:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     d44:	00008067          	ret

00000d48 <neorv32_uart0_print>:
     d48:	ff010113          	addi	sp,sp,-16
     d4c:	00812423          	sw	s0,8(sp)
     d50:	01212023          	sw	s2,0(sp)
     d54:	00112623          	sw	ra,12(sp)
     d58:	00912223          	sw	s1,4(sp)
     d5c:	00050413          	mv	s0,a0
     d60:	00a00913          	li	s2,10
     d64:	00044483          	lbu	s1,0(s0)
     d68:	00140413          	addi	s0,s0,1
     d6c:	00049e63          	bnez	s1,d88 <neorv32_uart0_print+0x40>
     d70:	00c12083          	lw	ra,12(sp)
     d74:	00812403          	lw	s0,8(sp)
     d78:	00412483          	lw	s1,4(sp)
     d7c:	00012903          	lw	s2,0(sp)
     d80:	01010113          	addi	sp,sp,16
     d84:	00008067          	ret
     d88:	01249663          	bne	s1,s2,d94 <neorv32_uart0_print+0x4c>
     d8c:	00d00513          	li	a0,13
     d90:	fa1ff0ef          	jal	ra,d30 <neorv32_uart0_putc>
     d94:	00048513          	mv	a0,s1
     d98:	f99ff0ef          	jal	ra,d30 <neorv32_uart0_putc>
     d9c:	fc9ff06f          	j	d64 <neorv32_uart0_print+0x1c>

00000da0 <neorv32_uart0_printf>:
     da0:	fa010113          	addi	sp,sp,-96
     da4:	04f12a23          	sw	a5,84(sp)
     da8:	04410793          	addi	a5,sp,68
     dac:	02812c23          	sw	s0,56(sp)
     db0:	03212823          	sw	s2,48(sp)
     db4:	03312623          	sw	s3,44(sp)
     db8:	03412423          	sw	s4,40(sp)
     dbc:	03512223          	sw	s5,36(sp)
     dc0:	03612023          	sw	s6,32(sp)
     dc4:	01712e23          	sw	s7,28(sp)
     dc8:	01812c23          	sw	s8,24(sp)
     dcc:	02112e23          	sw	ra,60(sp)
     dd0:	02912a23          	sw	s1,52(sp)
     dd4:	00050413          	mv	s0,a0
     dd8:	04b12223          	sw	a1,68(sp)
     ddc:	04c12423          	sw	a2,72(sp)
     de0:	04d12623          	sw	a3,76(sp)
     de4:	04e12823          	sw	a4,80(sp)
     de8:	05012c23          	sw	a6,88(sp)
     dec:	05112e23          	sw	a7,92(sp)
     df0:	00f12023          	sw	a5,0(sp)
     df4:	02500993          	li	s3,37
     df8:	00a00a13          	li	s4,10
     dfc:	07300913          	li	s2,115
     e00:	07500a93          	li	s5,117
     e04:	07800b13          	li	s6,120
     e08:	06300b93          	li	s7,99
     e0c:	06900c13          	li	s8,105
     e10:	00044483          	lbu	s1,0(s0)
     e14:	02049a63          	bnez	s1,e48 <neorv32_uart0_printf+0xa8>
     e18:	03c12083          	lw	ra,60(sp)
     e1c:	03812403          	lw	s0,56(sp)
     e20:	03412483          	lw	s1,52(sp)
     e24:	03012903          	lw	s2,48(sp)
     e28:	02c12983          	lw	s3,44(sp)
     e2c:	02812a03          	lw	s4,40(sp)
     e30:	02412a83          	lw	s5,36(sp)
     e34:	02012b03          	lw	s6,32(sp)
     e38:	01c12b83          	lw	s7,28(sp)
     e3c:	01812c03          	lw	s8,24(sp)
     e40:	06010113          	addi	sp,sp,96
     e44:	00008067          	ret
     e48:	0d349663          	bne	s1,s3,f14 <neorv32_uart0_printf+0x174>
     e4c:	00144483          	lbu	s1,1(s0)
     e50:	05248263          	beq	s1,s2,e94 <neorv32_uart0_printf+0xf4>
     e54:	00996e63          	bltu	s2,s1,e70 <neorv32_uart0_printf+0xd0>
     e58:	05748c63          	beq	s1,s7,eb0 <neorv32_uart0_printf+0x110>
     e5c:	07848663          	beq	s1,s8,ec8 <neorv32_uart0_printf+0x128>
     e60:	02500513          	li	a0,37
     e64:	ecdff0ef          	jal	ra,d30 <neorv32_uart0_putc>
     e68:	00048513          	mv	a0,s1
     e6c:	0540006f          	j	ec0 <neorv32_uart0_printf+0x120>
     e70:	09548663          	beq	s1,s5,efc <neorv32_uart0_printf+0x15c>
     e74:	ff6496e3          	bne	s1,s6,e60 <neorv32_uart0_printf+0xc0>
     e78:	00012783          	lw	a5,0(sp)
     e7c:	00410593          	addi	a1,sp,4
     e80:	0007a503          	lw	a0,0(a5)
     e84:	00478713          	addi	a4,a5,4
     e88:	00e12023          	sw	a4,0(sp)
     e8c:	dadff0ef          	jal	ra,c38 <__neorv32_uart_tohex>
     e90:	0640006f          	j	ef4 <neorv32_uart0_printf+0x154>
     e94:	00012783          	lw	a5,0(sp)
     e98:	0007a503          	lw	a0,0(a5)
     e9c:	00478713          	addi	a4,a5,4
     ea0:	00e12023          	sw	a4,0(sp)
     ea4:	ea5ff0ef          	jal	ra,d48 <neorv32_uart0_print>
     ea8:	00240413          	addi	s0,s0,2
     eac:	f65ff06f          	j	e10 <neorv32_uart0_printf+0x70>
     eb0:	00012783          	lw	a5,0(sp)
     eb4:	0007c503          	lbu	a0,0(a5)
     eb8:	00478713          	addi	a4,a5,4
     ebc:	00e12023          	sw	a4,0(sp)
     ec0:	e71ff0ef          	jal	ra,d30 <neorv32_uart0_putc>
     ec4:	fe5ff06f          	j	ea8 <neorv32_uart0_printf+0x108>
     ec8:	00012783          	lw	a5,0(sp)
     ecc:	0007a483          	lw	s1,0(a5)
     ed0:	00478713          	addi	a4,a5,4
     ed4:	00e12023          	sw	a4,0(sp)
     ed8:	0004d863          	bgez	s1,ee8 <neorv32_uart0_printf+0x148>
     edc:	02d00513          	li	a0,45
     ee0:	409004b3          	neg	s1,s1
     ee4:	e4dff0ef          	jal	ra,d30 <neorv32_uart0_putc>
     ee8:	00410593          	addi	a1,sp,4
     eec:	00048513          	mv	a0,s1
     ef0:	c41ff0ef          	jal	ra,b30 <__neorv32_uart_itoa>
     ef4:	00410513          	addi	a0,sp,4
     ef8:	fadff06f          	j	ea4 <neorv32_uart0_printf+0x104>
     efc:	00012783          	lw	a5,0(sp)
     f00:	00410593          	addi	a1,sp,4
     f04:	00478713          	addi	a4,a5,4
     f08:	0007a503          	lw	a0,0(a5)
     f0c:	00e12023          	sw	a4,0(sp)
     f10:	fe1ff06f          	j	ef0 <neorv32_uart0_printf+0x150>
     f14:	01449663          	bne	s1,s4,f20 <neorv32_uart0_printf+0x180>
     f18:	00d00513          	li	a0,13
     f1c:	e15ff0ef          	jal	ra,d30 <neorv32_uart0_putc>
     f20:	00048513          	mv	a0,s1
     f24:	00140413          	addi	s0,s0,1
     f28:	e09ff0ef          	jal	ra,d30 <neorv32_uart0_putc>
     f2c:	ee5ff06f          	j	e10 <neorv32_uart0_printf+0x70>

00000f30 <__mulsi3>:
     f30:	00050613          	mv	a2,a0
     f34:	00000513          	li	a0,0
     f38:	0015f693          	andi	a3,a1,1
     f3c:	00068463          	beqz	a3,f44 <__mulsi3+0x14>
     f40:	00c50533          	add	a0,a0,a2
     f44:	0015d593          	srli	a1,a1,0x1
     f48:	00161613          	slli	a2,a2,0x1
     f4c:	fe0596e3          	bnez	a1,f38 <__mulsi3+0x8>
     f50:	00008067          	ret

00000f54 <__muldi3>:
     f54:	00050e13          	mv	t3,a0
     f58:	ff010113          	addi	sp,sp,-16
     f5c:	00068313          	mv	t1,a3
     f60:	00112623          	sw	ra,12(sp)
     f64:	00060513          	mv	a0,a2
     f68:	000e0893          	mv	a7,t3
     f6c:	00060693          	mv	a3,a2
     f70:	00000713          	li	a4,0
     f74:	00000793          	li	a5,0
     f78:	00000813          	li	a6,0
     f7c:	0016fe93          	andi	t4,a3,1
     f80:	00171613          	slli	a2,a4,0x1
     f84:	000e8a63          	beqz	t4,f98 <__muldi3+0x44>
     f88:	01088833          	add	a6,a7,a6
     f8c:	00e787b3          	add	a5,a5,a4
     f90:	01183733          	sltu	a4,a6,a7
     f94:	00f707b3          	add	a5,a4,a5
     f98:	01f8d713          	srli	a4,a7,0x1f
     f9c:	0016d693          	srli	a3,a3,0x1
     fa0:	00e66733          	or	a4,a2,a4
     fa4:	00189893          	slli	a7,a7,0x1
     fa8:	fc069ae3          	bnez	a3,f7c <__muldi3+0x28>
     fac:	00058663          	beqz	a1,fb8 <__muldi3+0x64>
     fb0:	f81ff0ef          	jal	ra,f30 <__mulsi3>
     fb4:	00a787b3          	add	a5,a5,a0
     fb8:	00030a63          	beqz	t1,fcc <__muldi3+0x78>
     fbc:	000e0513          	mv	a0,t3
     fc0:	00030593          	mv	a1,t1
     fc4:	f6dff0ef          	jal	ra,f30 <__mulsi3>
     fc8:	00f507b3          	add	a5,a0,a5
     fcc:	00c12083          	lw	ra,12(sp)
     fd0:	00080513          	mv	a0,a6
     fd4:	00078593          	mv	a1,a5
     fd8:	01010113          	addi	sp,sp,16
     fdc:	00008067          	ret

00000fe0 <__divsi3>:
     fe0:	06054063          	bltz	a0,1040 <__umodsi3+0x10>
     fe4:	0605c663          	bltz	a1,1050 <__umodsi3+0x20>

00000fe8 <__hidden___udivsi3>:
     fe8:	00058613          	mv	a2,a1
     fec:	00050593          	mv	a1,a0
     ff0:	fff00513          	li	a0,-1
     ff4:	02060c63          	beqz	a2,102c <__hidden___udivsi3+0x44>
     ff8:	00100693          	li	a3,1
     ffc:	00b67a63          	bgeu	a2,a1,1010 <__hidden___udivsi3+0x28>
    1000:	00c05863          	blez	a2,1010 <__hidden___udivsi3+0x28>
    1004:	00161613          	slli	a2,a2,0x1
    1008:	00169693          	slli	a3,a3,0x1
    100c:	feb66ae3          	bltu	a2,a1,1000 <__hidden___udivsi3+0x18>
    1010:	00000513          	li	a0,0
    1014:	00c5e663          	bltu	a1,a2,1020 <__hidden___udivsi3+0x38>
    1018:	40c585b3          	sub	a1,a1,a2
    101c:	00d56533          	or	a0,a0,a3
    1020:	0016d693          	srli	a3,a3,0x1
    1024:	00165613          	srli	a2,a2,0x1
    1028:	fe0696e3          	bnez	a3,1014 <__hidden___udivsi3+0x2c>
    102c:	00008067          	ret

00001030 <__umodsi3>:
    1030:	00008293          	mv	t0,ra
    1034:	fb5ff0ef          	jal	ra,fe8 <__hidden___udivsi3>
    1038:	00058513          	mv	a0,a1
    103c:	00028067          	jr	t0
    1040:	40a00533          	neg	a0,a0
    1044:	00b04863          	bgtz	a1,1054 <__umodsi3+0x24>
    1048:	40b005b3          	neg	a1,a1
    104c:	f9dff06f          	j	fe8 <__hidden___udivsi3>
    1050:	40b005b3          	neg	a1,a1
    1054:	00008293          	mv	t0,ra
    1058:	f91ff0ef          	jal	ra,fe8 <__hidden___udivsi3>
    105c:	40a00533          	neg	a0,a0
    1060:	00028067          	jr	t0

00001064 <__modsi3>:
    1064:	00008293          	mv	t0,ra
    1068:	0005ca63          	bltz	a1,107c <__modsi3+0x18>
    106c:	00054c63          	bltz	a0,1084 <__modsi3+0x20>
    1070:	f79ff0ef          	jal	ra,fe8 <__hidden___udivsi3>
    1074:	00058513          	mv	a0,a1
    1078:	00028067          	jr	t0
    107c:	40b005b3          	neg	a1,a1
    1080:	fe0558e3          	bgez	a0,1070 <__modsi3+0xc>
    1084:	40a00533          	neg	a0,a0
    1088:	f61ff0ef          	jal	ra,fe8 <__hidden___udivsi3>
    108c:	40b00533          	neg	a0,a1
    1090:	00028067          	jr	t0

00001094 <memcpy>:
    1094:	00b547b3          	xor	a5,a0,a1
    1098:	0037f793          	andi	a5,a5,3
    109c:	00c508b3          	add	a7,a0,a2
    10a0:	06079463          	bnez	a5,1108 <memcpy+0x74>
    10a4:	00300793          	li	a5,3
    10a8:	06c7f063          	bgeu	a5,a2,1108 <memcpy+0x74>
    10ac:	00357793          	andi	a5,a0,3
    10b0:	00050713          	mv	a4,a0
    10b4:	06079a63          	bnez	a5,1128 <memcpy+0x94>
    10b8:	ffc8f613          	andi	a2,a7,-4
    10bc:	40e606b3          	sub	a3,a2,a4
    10c0:	02000793          	li	a5,32
    10c4:	08d7ce63          	blt	a5,a3,1160 <memcpy+0xcc>
    10c8:	00058693          	mv	a3,a1
    10cc:	00070793          	mv	a5,a4
    10d0:	02c77863          	bgeu	a4,a2,1100 <memcpy+0x6c>
    10d4:	0006a803          	lw	a6,0(a3)
    10d8:	00478793          	addi	a5,a5,4
    10dc:	00468693          	addi	a3,a3,4
    10e0:	ff07ae23          	sw	a6,-4(a5)
    10e4:	fec7e8e3          	bltu	a5,a2,10d4 <memcpy+0x40>
    10e8:	fff60793          	addi	a5,a2,-1
    10ec:	40e787b3          	sub	a5,a5,a4
    10f0:	ffc7f793          	andi	a5,a5,-4
    10f4:	00478793          	addi	a5,a5,4
    10f8:	00f70733          	add	a4,a4,a5
    10fc:	00f585b3          	add	a1,a1,a5
    1100:	01176863          	bltu	a4,a7,1110 <memcpy+0x7c>
    1104:	00008067          	ret
    1108:	00050713          	mv	a4,a0
    110c:	05157863          	bgeu	a0,a7,115c <memcpy+0xc8>
    1110:	0005c783          	lbu	a5,0(a1)
    1114:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3e961>
    1118:	00158593          	addi	a1,a1,1
    111c:	fef70fa3          	sb	a5,-1(a4)
    1120:	fee898e3          	bne	a7,a4,1110 <memcpy+0x7c>
    1124:	00008067          	ret
    1128:	0005c683          	lbu	a3,0(a1)
    112c:	00170713          	addi	a4,a4,1
    1130:	00377793          	andi	a5,a4,3
    1134:	fed70fa3          	sb	a3,-1(a4)
    1138:	00158593          	addi	a1,a1,1
    113c:	f6078ee3          	beqz	a5,10b8 <memcpy+0x24>
    1140:	0005c683          	lbu	a3,0(a1)
    1144:	00170713          	addi	a4,a4,1
    1148:	00377793          	andi	a5,a4,3
    114c:	fed70fa3          	sb	a3,-1(a4)
    1150:	00158593          	addi	a1,a1,1
    1154:	fc079ae3          	bnez	a5,1128 <memcpy+0x94>
    1158:	f61ff06f          	j	10b8 <memcpy+0x24>
    115c:	00008067          	ret
    1160:	ff010113          	addi	sp,sp,-16
    1164:	00812623          	sw	s0,12(sp)
    1168:	02000413          	li	s0,32
    116c:	0005a383          	lw	t2,0(a1)
    1170:	0045a283          	lw	t0,4(a1)
    1174:	0085af83          	lw	t6,8(a1)
    1178:	00c5af03          	lw	t5,12(a1)
    117c:	0105ae83          	lw	t4,16(a1)
    1180:	0145ae03          	lw	t3,20(a1)
    1184:	0185a303          	lw	t1,24(a1)
    1188:	01c5a803          	lw	a6,28(a1)
    118c:	0205a683          	lw	a3,32(a1)
    1190:	02470713          	addi	a4,a4,36
    1194:	40e607b3          	sub	a5,a2,a4
    1198:	fc772e23          	sw	t2,-36(a4)
    119c:	fe572023          	sw	t0,-32(a4)
    11a0:	fff72223          	sw	t6,-28(a4)
    11a4:	ffe72423          	sw	t5,-24(a4)
    11a8:	ffd72623          	sw	t4,-20(a4)
    11ac:	ffc72823          	sw	t3,-16(a4)
    11b0:	fe672a23          	sw	t1,-12(a4)
    11b4:	ff072c23          	sw	a6,-8(a4)
    11b8:	fed72e23          	sw	a3,-4(a4)
    11bc:	02458593          	addi	a1,a1,36
    11c0:	faf446e3          	blt	s0,a5,116c <memcpy+0xd8>
    11c4:	00058693          	mv	a3,a1
    11c8:	00070793          	mv	a5,a4
    11cc:	02c77863          	bgeu	a4,a2,11fc <memcpy+0x168>
    11d0:	0006a803          	lw	a6,0(a3)
    11d4:	00478793          	addi	a5,a5,4
    11d8:	00468693          	addi	a3,a3,4
    11dc:	ff07ae23          	sw	a6,-4(a5)
    11e0:	fec7e8e3          	bltu	a5,a2,11d0 <memcpy+0x13c>
    11e4:	fff60793          	addi	a5,a2,-1
    11e8:	40e787b3          	sub	a5,a5,a4
    11ec:	ffc7f793          	andi	a5,a5,-4
    11f0:	00478793          	addi	a5,a5,4
    11f4:	00f70733          	add	a4,a4,a5
    11f8:	00f585b3          	add	a1,a1,a5
    11fc:	01176863          	bltu	a4,a7,120c <memcpy+0x178>
    1200:	00c12403          	lw	s0,12(sp)
    1204:	01010113          	addi	sp,sp,16
    1208:	00008067          	ret
    120c:	0005c783          	lbu	a5,0(a1)
    1210:	00170713          	addi	a4,a4,1
    1214:	00158593          	addi	a1,a1,1
    1218:	fef70fa3          	sb	a5,-1(a4)
    121c:	fee882e3          	beq	a7,a4,1200 <memcpy+0x16c>
    1220:	0005c783          	lbu	a5,0(a1)
    1224:	00170713          	addi	a4,a4,1
    1228:	00158593          	addi	a1,a1,1
    122c:	fef70fa3          	sb	a5,-1(a4)
    1230:	fce89ee3          	bne	a7,a4,120c <memcpy+0x178>
    1234:	fcdff06f          	j	1200 <memcpy+0x16c>
