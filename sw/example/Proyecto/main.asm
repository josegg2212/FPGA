
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
      c4:	f4858593          	addi	a1,a1,-184 # 80000008 <__ctr0_io_space_begin+0x80000208>
      c8:	87c18613          	addi	a2,gp,-1924 # 8000007c <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00001597          	auipc	a1,0x1
      e0:	5d458593          	addi	a1,a1,1492 # 16b0 <__crt0_copy_data_src_begin>
      e4:	80000617          	auipc	a2,0x80000
      e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
      ec:	80000697          	auipc	a3,0x80000
      f0:	f1c68693          	addi	a3,a3,-228 # 80000008 <__ctr0_io_space_begin+0x80000208>

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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3450>
     194:	00112623          	sw	ra,12(sp)
     198:	2fd000ef          	jal	ra,c94 <neorv32_uart0_setup>
     19c:	3e0000ef          	jal	ra,57c <neorv32_gpio_available>
     1a0:	00050e63          	beqz	a0,1bc <main+0x3c>
     1a4:	155000ef          	jal	ra,af8 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	39450513          	addi	a0,a0,916 # 1394 <__etext+0x14c>
     1b0:	3a9000ef          	jal	ra,d58 <neorv32_uart0_print>
     1b4:	154000ef          	jal	ra,308 <wb_calculadora>
     1b8:	ffdff06f          	j	1b4 <main+0x34>
     1bc:	00001537          	lui	a0,0x1
     1c0:	37050513          	addi	a0,a0,880 # 1370 <__etext+0x128>
     1c4:	395000ef          	jal	ra,d58 <neorv32_uart0_print>
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00100513          	li	a0,1
     1d0:	01010113          	addi	sp,sp,16
     1d4:	00008067          	ret

000001d8 <keyboard>:
     1d8:	f9010113          	addi	sp,sp,-112
     1dc:	000015b7          	lui	a1,0x1
     1e0:	04000613          	li	a2,64
     1e4:	3a858593          	addi	a1,a1,936 # 13a8 <__etext+0x160>
     1e8:	00010513          	mv	a0,sp
     1ec:	06112623          	sw	ra,108(sp)
     1f0:	06912223          	sw	s1,100(sp)
     1f4:	05412c23          	sw	s4,88(sp)
     1f8:	05512a23          	sw	s5,84(sp)
     1fc:	05612823          	sw	s6,80(sp)
     200:	05712623          	sw	s7,76(sp)
     204:	05812423          	sw	s8,72(sp)
     208:	06812423          	sw	s0,104(sp)
     20c:	07212023          	sw	s2,96(sp)
     210:	05312e23          	sw	s3,92(sp)
     214:	05912223          	sw	s9,68(sp)
     218:	68d000ef          	jal	ra,10a4 <memcpy>
     21c:	0ff00513          	li	a0,255
     220:	00000593          	li	a1,0
     224:	3f0000ef          	jal	ra,614 <neorv32_gpio_port_set>
     228:	800004b7          	lui	s1,0x80000
     22c:	0ff00a93          	li	s5,255
     230:	0ff00c13          	li	s8,255
     234:	00800b13          	li	s6,8
     238:	00400b93          	li	s7,4
     23c:	80000a37          	lui	s4,0x80000
     240:	0184a223          	sw	s8,4(s1) # 80000004 <__ctr0_io_space_begin+0x80000204>
     244:	00010993          	mv	s3,sp
     248:	00000413          	li	s0,0
     24c:	00040513          	mv	a0,s0
     250:	36c000ef          	jal	ra,5bc <neorv32_gpio_pin_clr>
     254:	00098c93          	mv	s9,s3
     258:	00400913          	li	s2,4
     25c:	00090513          	mv	a0,s2
     260:	390000ef          	jal	ra,5f0 <neorv32_gpio_pin_get>
     264:	02051063          	bnez	a0,284 <keyboard+0xac>
     268:	03cca503          	lw	a0,60(s9)
     26c:	00a4a223          	sw	a0,4(s1)
     270:	01550a63          	beq	a0,s5,284 <keyboard+0xac>
     274:	00451513          	slli	a0,a0,0x4
     278:	0f057513          	andi	a0,a0,240
     27c:	00000593          	li	a1,0
     280:	394000ef          	jal	ra,614 <neorv32_gpio_port_set>
     284:	00190913          	addi	s2,s2,1
     288:	ff0c8c93          	addi	s9,s9,-16
     28c:	fd6918e3          	bne	s2,s6,25c <keyboard+0x84>
     290:	00040513          	mv	a0,s0
     294:	00140413          	addi	s0,s0,1
     298:	2f4000ef          	jal	ra,58c <neorv32_gpio_pin_set>
     29c:	ffc98993          	addi	s3,s3,-4
     2a0:	fb7416e3          	bne	s0,s7,24c <keyboard+0x74>
     2a4:	0044a583          	lw	a1,4(s1)
     2a8:	01558663          	beq	a1,s5,2b4 <keyboard+0xdc>
     2ac:	000a2783          	lw	a5,0(s4) # 80000000 <__ctr0_io_space_begin+0x80000200>
     2b0:	00f59663          	bne	a1,a5,2bc <keyboard+0xe4>
     2b4:	00ba2023          	sw	a1,0(s4)
     2b8:	f89ff06f          	j	240 <keyboard+0x68>
     2bc:	00001537          	lui	a0,0x1
     2c0:	24850513          	addi	a0,a0,584 # 1248 <__etext>
     2c4:	2ed000ef          	jal	ra,db0 <neorv32_uart0_printf>
     2c8:	09600513          	li	a0,150
     2cc:	1f4000ef          	jal	ra,4c0 <neorv32_cpu_delay_ms>
     2d0:	06c12083          	lw	ra,108(sp)
     2d4:	06812403          	lw	s0,104(sp)
     2d8:	0044a503          	lw	a0,4(s1)
     2dc:	06012903          	lw	s2,96(sp)
     2e0:	06412483          	lw	s1,100(sp)
     2e4:	05c12983          	lw	s3,92(sp)
     2e8:	05812a03          	lw	s4,88(sp)
     2ec:	05412a83          	lw	s5,84(sp)
     2f0:	05012b03          	lw	s6,80(sp)
     2f4:	04c12b83          	lw	s7,76(sp)
     2f8:	04812c03          	lw	s8,72(sp)
     2fc:	04412c83          	lw	s9,68(sp)
     300:	07010113          	addi	sp,sp,112
     304:	00008067          	ret

00000308 <wb_calculadora>:
     308:	00001537          	lui	a0,0x1
     30c:	ff010113          	addi	sp,sp,-16
     310:	25c50513          	addi	a0,a0,604 # 125c <__etext+0x14>
     314:	00112623          	sw	ra,12(sp)
     318:	00912223          	sw	s1,4(sp)
     31c:	01212023          	sw	s2,0(sp)
     320:	00812423          	sw	s0,8(sp)
     324:	28d000ef          	jal	ra,db0 <neorv32_uart0_printf>
     328:	00001537          	lui	a0,0x1
     32c:	2ac50513          	addi	a0,a0,684 # 12ac <__etext+0x64>
     330:	281000ef          	jal	ra,db0 <neorv32_uart0_printf>
     334:	00000493          	li	s1,0
     338:	00900913          	li	s2,9
     33c:	e9dff0ef          	jal	ra,1d8 <keyboard>
     340:	00050413          	mv	s0,a0
     344:	0ca97063          	bgeu	s2,a0,404 <wb_calculadora+0xfc>
     348:	00001537          	lui	a0,0x1
     34c:	00048593          	mv	a1,s1
     350:	2d050513          	addi	a0,a0,720 # 12d0 <__etext+0x88>
     354:	25d000ef          	jal	ra,db0 <neorv32_uart0_printf>
     358:	90000937          	lui	s2,0x90000
     35c:	00992023          	sw	s1,0(s2) # 90000000 <__ctr0_io_space_begin+0x90000200>
     360:	00001537          	lui	a0,0x1
     364:	00040593          	mv	a1,s0
     368:	2e450513          	addi	a0,a0,740 # 12e4 <__etext+0x9c>
     36c:	245000ef          	jal	ra,db0 <neorv32_uart0_printf>
     370:	00890913          	addi	s2,s2,8
     374:	00892023          	sw	s0,0(s2)
     378:	00001537          	lui	a0,0x1
     37c:	2f450513          	addi	a0,a0,756 # 12f4 <__etext+0xac>
     380:	231000ef          	jal	ra,db0 <neorv32_uart0_printf>
     384:	0ff00793          	li	a5,255
     388:	80000737          	lui	a4,0x80000
     38c:	00f72023          	sw	a5,0(a4) # 80000000 <__ctr0_io_space_begin+0x80000200>
     390:	80000737          	lui	a4,0x80000
     394:	00f72223          	sw	a5,4(a4) # 80000004 <__ctr0_io_space_begin+0x80000204>
     398:	00000413          	li	s0,0
     39c:	00d00493          	li	s1,13
     3a0:	e39ff0ef          	jal	ra,1d8 <keyboard>
     3a4:	06a4fa63          	bgeu	s1,a0,418 <wb_calculadora+0x110>
     3a8:	00001537          	lui	a0,0x1
     3ac:	00040593          	mv	a1,s0
     3b0:	31450513          	addi	a0,a0,788 # 1314 <__etext+0xcc>
     3b4:	1fd000ef          	jal	ra,db0 <neorv32_uart0_printf>
     3b8:	900007b7          	lui	a5,0x90000
     3bc:	00478693          	addi	a3,a5,4 # 90000004 <__ctr0_io_space_begin+0x90000204>
     3c0:	0086a023          	sw	s0,0(a3)
     3c4:	0007a503          	lw	a0,0(a5)
     3c8:	0006a683          	lw	a3,0(a3)
     3cc:	00878793          	addi	a5,a5,8
     3d0:	0007a783          	lw	a5,0(a5)
     3d4:	00c00713          	li	a4,12
     3d8:	06e78463          	beq	a5,a4,440 <wb_calculadora+0x138>
     3dc:	04f76863          	bltu	a4,a5,42c <wb_calculadora+0x124>
     3e0:	00a00613          	li	a2,10
     3e4:	00a68733          	add	a4,a3,a0
     3e8:	06c78463          	beq	a5,a2,450 <wb_calculadora+0x148>
     3ec:	00b00613          	li	a2,11
     3f0:	40d50733          	sub	a4,a0,a3
     3f4:	04c78e63          	beq	a5,a2,450 <wb_calculadora+0x148>
     3f8:	00001537          	lui	a0,0x1
     3fc:	34450513          	addi	a0,a0,836 # 1344 <__etext+0xfc>
     400:	0880006f          	j	488 <wb_calculadora+0x180>
     404:	00249793          	slli	a5,s1,0x2
     408:	009787b3          	add	a5,a5,s1
     40c:	00179793          	slli	a5,a5,0x1
     410:	008784b3          	add	s1,a5,s0
     414:	f29ff06f          	j	33c <wb_calculadora+0x34>
     418:	00241793          	slli	a5,s0,0x2
     41c:	008787b3          	add	a5,a5,s0
     420:	00179793          	slli	a5,a5,0x1
     424:	00a78433          	add	s0,a5,a0
     428:	f79ff06f          	j	3a0 <wb_calculadora+0x98>
     42c:	fc9796e3          	bne	a5,s1,3f8 <wb_calculadora+0xf0>
     430:	04068863          	beqz	a3,480 <wb_calculadora+0x178>
     434:	00068593          	mv	a1,a3
     438:	3c1000ef          	jal	ra,ff8 <__hidden___udivsi3>
     43c:	0100006f          	j	44c <wb_calculadora+0x144>
     440:	00050593          	mv	a1,a0
     444:	00068513          	mv	a0,a3
     448:	2f9000ef          	jal	ra,f40 <__mulsi3>
     44c:	00050713          	mv	a4,a0
     450:	900005b7          	lui	a1,0x90000
     454:	00c58593          	addi	a1,a1,12 # 9000000c <__ctr0_io_space_begin+0x9000020c>
     458:	00e5a023          	sw	a4,0(a1)
     45c:	0005a583          	lw	a1,0(a1)
     460:	00812403          	lw	s0,8(sp)
     464:	00c12083          	lw	ra,12(sp)
     468:	00412483          	lw	s1,4(sp)
     46c:	00012903          	lw	s2,0(sp)
     470:	00001537          	lui	a0,0x1
     474:	36050513          	addi	a0,a0,864 # 1360 <__etext+0x118>
     478:	01010113          	addi	sp,sp,16
     47c:	1350006f          	j	db0 <neorv32_uart0_printf>
     480:	00001537          	lui	a0,0x1
     484:	32850513          	addi	a0,a0,808 # 1328 <__etext+0xe0>
     488:	129000ef          	jal	ra,db0 <neorv32_uart0_printf>
     48c:	fff00713          	li	a4,-1
     490:	fc1ff06f          	j	450 <wb_calculadora+0x148>

00000494 <neorv32_cpu_get_systime>:
     494:	ff010113          	addi	sp,sp,-16
     498:	c81026f3          	rdtimeh	a3
     49c:	c0102773          	rdtime	a4
     4a0:	c81027f3          	rdtimeh	a5
     4a4:	fed79ae3          	bne	a5,a3,498 <neorv32_cpu_get_systime+0x4>
     4a8:	00e12023          	sw	a4,0(sp)
     4ac:	00f12223          	sw	a5,4(sp)
     4b0:	00012503          	lw	a0,0(sp)
     4b4:	00412583          	lw	a1,4(sp)
     4b8:	01010113          	addi	sp,sp,16
     4bc:	00008067          	ret

000004c0 <neorv32_cpu_delay_ms>:
     4c0:	fd010113          	addi	sp,sp,-48
     4c4:	00a12623          	sw	a0,12(sp)
     4c8:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     4cc:	3e800593          	li	a1,1000
     4d0:	02112623          	sw	ra,44(sp)
     4d4:	02812423          	sw	s0,40(sp)
     4d8:	02912223          	sw	s1,36(sp)
     4dc:	03212023          	sw	s2,32(sp)
     4e0:	01312e23          	sw	s3,28(sp)
     4e4:	315000ef          	jal	ra,ff8 <__hidden___udivsi3>
     4e8:	00c12603          	lw	a2,12(sp)
     4ec:	00000693          	li	a3,0
     4f0:	00000593          	li	a1,0
     4f4:	271000ef          	jal	ra,f64 <__muldi3>
     4f8:	00050413          	mv	s0,a0
     4fc:	00058993          	mv	s3,a1
     500:	f95ff0ef          	jal	ra,494 <neorv32_cpu_get_systime>
     504:	00058913          	mv	s2,a1
     508:	00050493          	mv	s1,a0
     50c:	f89ff0ef          	jal	ra,494 <neorv32_cpu_get_systime>
     510:	00b96663          	bltu	s2,a1,51c <neorv32_cpu_delay_ms+0x5c>
     514:	05259263          	bne	a1,s2,558 <neorv32_cpu_delay_ms+0x98>
     518:	04a4f063          	bgeu	s1,a0,558 <neorv32_cpu_delay_ms+0x98>
     51c:	008484b3          	add	s1,s1,s0
     520:	0084b433          	sltu	s0,s1,s0
     524:	01390933          	add	s2,s2,s3
     528:	01240433          	add	s0,s0,s2
     52c:	f69ff0ef          	jal	ra,494 <neorv32_cpu_get_systime>
     530:	fe85eee3          	bltu	a1,s0,52c <neorv32_cpu_delay_ms+0x6c>
     534:	00b41463          	bne	s0,a1,53c <neorv32_cpu_delay_ms+0x7c>
     538:	fe956ae3          	bltu	a0,s1,52c <neorv32_cpu_delay_ms+0x6c>
     53c:	02c12083          	lw	ra,44(sp)
     540:	02812403          	lw	s0,40(sp)
     544:	02412483          	lw	s1,36(sp)
     548:	02012903          	lw	s2,32(sp)
     54c:	01c12983          	lw	s3,28(sp)
     550:	03010113          	addi	sp,sp,48
     554:	00008067          	ret
     558:	01c99993          	slli	s3,s3,0x1c
     55c:	00445413          	srli	s0,s0,0x4
     560:	0089e433          	or	s0,s3,s0

00000564 <__neorv32_cpu_delay_ms_start>:
     564:	00040a63          	beqz	s0,578 <__neorv32_cpu_delay_ms_end>
     568:	00040863          	beqz	s0,578 <__neorv32_cpu_delay_ms_end>
     56c:	fff40413          	addi	s0,s0,-1
     570:	00000013          	nop
     574:	ff1ff06f          	j	564 <__neorv32_cpu_delay_ms_start>

00000578 <__neorv32_cpu_delay_ms_end>:
     578:	fc5ff06f          	j	53c <neorv32_cpu_delay_ms+0x7c>

0000057c <neorv32_gpio_available>:
     57c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     580:	01055513          	srli	a0,a0,0x10
     584:	00157513          	andi	a0,a0,1
     588:	00008067          	ret

0000058c <neorv32_gpio_pin_set>:
     58c:	00100793          	li	a5,1
     590:	01f00713          	li	a4,31
     594:	00a797b3          	sll	a5,a5,a0
     598:	00a74a63          	blt	a4,a0,5ac <neorv32_gpio_pin_set+0x20>
     59c:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5a0:	00f767b3          	or	a5,a4,a5
     5a4:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5a8:	00008067          	ret
     5ac:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5b0:	00f767b3          	or	a5,a4,a5
     5b4:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5b8:	00008067          	ret

000005bc <neorv32_gpio_pin_clr>:
     5bc:	00100793          	li	a5,1
     5c0:	00a797b3          	sll	a5,a5,a0
     5c4:	01f00713          	li	a4,31
     5c8:	fff7c793          	not	a5,a5
     5cc:	00a74a63          	blt	a4,a0,5e0 <neorv32_gpio_pin_clr+0x24>
     5d0:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5d4:	00f777b3          	and	a5,a4,a5
     5d8:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     5dc:	00008067          	ret
     5e0:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5e4:	00f777b3          	and	a5,a4,a5
     5e8:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     5ec:	00008067          	ret

000005f0 <neorv32_gpio_pin_get>:
     5f0:	00100793          	li	a5,1
     5f4:	01f00713          	li	a4,31
     5f8:	00a797b3          	sll	a5,a5,a0
     5fc:	00a74863          	blt	a4,a0,60c <neorv32_gpio_pin_get+0x1c>
     600:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     604:	00f77533          	and	a0,a4,a5
     608:	00008067          	ret
     60c:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     610:	ff5ff06f          	j	604 <neorv32_gpio_pin_get+0x14>

00000614 <neorv32_gpio_port_set>:
     614:	fc000793          	li	a5,-64
     618:	00a7a423          	sw	a0,8(a5)
     61c:	00b7a623          	sw	a1,12(a5)
     620:	00008067          	ret
     624:	0000                	.2byte	0x0
     626:	0000                	.2byte	0x0
     628:	0000                	.2byte	0x0
     62a:	0000                	.2byte	0x0
     62c:	0000                	.2byte	0x0
     62e:	0000                	.2byte	0x0

00000630 <__neorv32_rte_core>:
     630:	fc010113          	addi	sp,sp,-64
     634:	02112e23          	sw	ra,60(sp)
     638:	02512c23          	sw	t0,56(sp)
     63c:	02612a23          	sw	t1,52(sp)
     640:	02712823          	sw	t2,48(sp)
     644:	02a12623          	sw	a0,44(sp)
     648:	02b12423          	sw	a1,40(sp)
     64c:	02c12223          	sw	a2,36(sp)
     650:	02d12023          	sw	a3,32(sp)
     654:	00e12e23          	sw	a4,28(sp)
     658:	00f12c23          	sw	a5,24(sp)
     65c:	01012a23          	sw	a6,20(sp)
     660:	01112823          	sw	a7,16(sp)
     664:	01c12623          	sw	t3,12(sp)
     668:	01d12423          	sw	t4,8(sp)
     66c:	01e12223          	sw	t5,4(sp)
     670:	01f12023          	sw	t6,0(sp)
     674:	34102773          	csrr	a4,mepc
     678:	34071073          	csrw	mscratch,a4
     67c:	342027f3          	csrr	a5,mcause
     680:	0807ca63          	bltz	a5,714 <__neorv32_rte_core+0xe4>
     684:	00071683          	lh	a3,0(a4)
     688:	00300593          	li	a1,3
     68c:	0036f693          	andi	a3,a3,3
     690:	00270613          	addi	a2,a4,2
     694:	00b69463          	bne	a3,a1,69c <__neorv32_rte_core+0x6c>
     698:	00470613          	addi	a2,a4,4
     69c:	34161073          	csrw	mepc,a2
     6a0:	00b00713          	li	a4,11
     6a4:	04f77c63          	bgeu	a4,a5,6fc <__neorv32_rte_core+0xcc>
     6a8:	000017b7          	lui	a5,0x1
     6ac:	8e078793          	addi	a5,a5,-1824 # 8e0 <__neorv32_rte_debug_exc_handler>
     6b0:	000780e7          	jalr	a5
     6b4:	03c12083          	lw	ra,60(sp)
     6b8:	03812283          	lw	t0,56(sp)
     6bc:	03412303          	lw	t1,52(sp)
     6c0:	03012383          	lw	t2,48(sp)
     6c4:	02c12503          	lw	a0,44(sp)
     6c8:	02812583          	lw	a1,40(sp)
     6cc:	02412603          	lw	a2,36(sp)
     6d0:	02012683          	lw	a3,32(sp)
     6d4:	01c12703          	lw	a4,28(sp)
     6d8:	01812783          	lw	a5,24(sp)
     6dc:	01412803          	lw	a6,20(sp)
     6e0:	01012883          	lw	a7,16(sp)
     6e4:	00c12e03          	lw	t3,12(sp)
     6e8:	00812e83          	lw	t4,8(sp)
     6ec:	00412f03          	lw	t5,4(sp)
     6f0:	00012f83          	lw	t6,0(sp)
     6f4:	04010113          	addi	sp,sp,64
     6f8:	30200073          	mret
     6fc:	00001737          	lui	a4,0x1
     700:	00279793          	slli	a5,a5,0x2
     704:	3e870713          	addi	a4,a4,1000 # 13e8 <__etext+0x1a0>
     708:	00e787b3          	add	a5,a5,a4
     70c:	0007a783          	lw	a5,0(a5)
     710:	00078067          	jr	a5
     714:	80000737          	lui	a4,0x80000
     718:	ffd74713          	xori	a4,a4,-3
     71c:	00e787b3          	add	a5,a5,a4
     720:	01c00713          	li	a4,28
     724:	f8f762e3          	bltu	a4,a5,6a8 <__neorv32_rte_core+0x78>
     728:	00001737          	lui	a4,0x1
     72c:	00279793          	slli	a5,a5,0x2
     730:	41870713          	addi	a4,a4,1048 # 1418 <__etext+0x1d0>
     734:	00e787b3          	add	a5,a5,a4
     738:	0007a783          	lw	a5,0(a5)
     73c:	00078067          	jr	a5
     740:	800007b7          	lui	a5,0x80000
     744:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     748:	f69ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     74c:	800007b7          	lui	a5,0x80000
     750:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     754:	f5dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     758:	800007b7          	lui	a5,0x80000
     75c:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     760:	f51ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     764:	800007b7          	lui	a5,0x80000
     768:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     76c:	f45ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     770:	800007b7          	lui	a5,0x80000
     774:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     778:	f39ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     77c:	800007b7          	lui	a5,0x80000
     780:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     784:	f2dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     788:	800007b7          	lui	a5,0x80000
     78c:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     790:	f21ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     794:	800007b7          	lui	a5,0x80000
     798:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     79c:	f15ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7a0:	800007b7          	lui	a5,0x80000
     7a4:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     7a8:	f09ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7ac:	800007b7          	lui	a5,0x80000
     7b0:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     7b4:	efdff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7b8:	800007b7          	lui	a5,0x80000
     7bc:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     7c0:	ef1ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7c4:	800007b7          	lui	a5,0x80000
     7c8:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     7cc:	ee5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7d0:	800007b7          	lui	a5,0x80000
     7d4:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     7d8:	ed9ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7dc:	800007b7          	lui	a5,0x80000
     7e0:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     7e4:	ecdff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7e8:	800007b7          	lui	a5,0x80000
     7ec:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     7f0:	ec1ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     7f4:	800007b7          	lui	a5,0x80000
     7f8:	0447a783          	lw	a5,68(a5) # 80000044 <__ctr0_io_space_begin+0x80000244>
     7fc:	eb5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     800:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x40>
     804:	eadff06f          	j	6b0 <__neorv32_rte_core+0x80>
     808:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x44>
     80c:	ea5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     810:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x48>
     814:	e9dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     818:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x4c>
     81c:	e95ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     820:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x50>
     824:	e8dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     828:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x54>
     82c:	e85ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     830:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x58>
     834:	e7dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     838:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x5c>
     83c:	e75ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     840:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x60>
     844:	e6dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     848:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x64>
     84c:	e65ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     850:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x68>
     854:	e5dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     858:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x6c>
     85c:	e55ff06f          	j	6b0 <__neorv32_rte_core+0x80>
     860:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x70>
     864:	e4dff06f          	j	6b0 <__neorv32_rte_core+0x80>
     868:	0000                	.2byte	0x0
     86a:	0000                	.2byte	0x0
     86c:	0000                	.2byte	0x0
     86e:	0000                	.2byte	0x0

00000870 <__neorv32_rte_print_hex_word>:
     870:	fe010113          	addi	sp,sp,-32
     874:	01212823          	sw	s2,16(sp)
     878:	00050913          	mv	s2,a0
     87c:	00001537          	lui	a0,0x1
     880:	00912a23          	sw	s1,20(sp)
     884:	48c50513          	addi	a0,a0,1164 # 148c <__etext+0x244>
     888:	000014b7          	lui	s1,0x1
     88c:	00812c23          	sw	s0,24(sp)
     890:	01312623          	sw	s3,12(sp)
     894:	00112e23          	sw	ra,28(sp)
     898:	01c00413          	li	s0,28
     89c:	4bc000ef          	jal	ra,d58 <neorv32_uart0_print>
     8a0:	68048493          	addi	s1,s1,1664 # 1680 <hex_symbols.0>
     8a4:	ffc00993          	li	s3,-4
     8a8:	008957b3          	srl	a5,s2,s0
     8ac:	00f7f793          	andi	a5,a5,15
     8b0:	00f487b3          	add	a5,s1,a5
     8b4:	0007c503          	lbu	a0,0(a5)
     8b8:	ffc40413          	addi	s0,s0,-4
     8bc:	484000ef          	jal	ra,d40 <neorv32_uart0_putc>
     8c0:	ff3414e3          	bne	s0,s3,8a8 <__neorv32_rte_print_hex_word+0x38>
     8c4:	01c12083          	lw	ra,28(sp)
     8c8:	01812403          	lw	s0,24(sp)
     8cc:	01412483          	lw	s1,20(sp)
     8d0:	01012903          	lw	s2,16(sp)
     8d4:	00c12983          	lw	s3,12(sp)
     8d8:	02010113          	addi	sp,sp,32
     8dc:	00008067          	ret

000008e0 <__neorv32_rte_debug_exc_handler>:
     8e0:	ff010113          	addi	sp,sp,-16
     8e4:	00112623          	sw	ra,12(sp)
     8e8:	00812423          	sw	s0,8(sp)
     8ec:	00912223          	sw	s1,4(sp)
     8f0:	394000ef          	jal	ra,c84 <neorv32_uart0_available>
     8f4:	1a050e63          	beqz	a0,ab0 <__neorv32_rte_debug_exc_handler+0x1d0>
     8f8:	00001537          	lui	a0,0x1
     8fc:	49050513          	addi	a0,a0,1168 # 1490 <__etext+0x248>
     900:	458000ef          	jal	ra,d58 <neorv32_uart0_print>
     904:	34202473          	csrr	s0,mcause
     908:	00900713          	li	a4,9
     90c:	00f47793          	andi	a5,s0,15
     910:	03078493          	addi	s1,a5,48
     914:	00f77463          	bgeu	a4,a5,91c <__neorv32_rte_debug_exc_handler+0x3c>
     918:	05778493          	addi	s1,a5,87
     91c:	00b00793          	li	a5,11
     920:	0087ee63          	bltu	a5,s0,93c <__neorv32_rte_debug_exc_handler+0x5c>
     924:	00001737          	lui	a4,0x1
     928:	00241793          	slli	a5,s0,0x2
     92c:	65070713          	addi	a4,a4,1616 # 1650 <__etext+0x408>
     930:	00e787b3          	add	a5,a5,a4
     934:	0007a783          	lw	a5,0(a5)
     938:	00078067          	jr	a5
     93c:	800007b7          	lui	a5,0x80000
     940:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     944:	14e40463          	beq	s0,a4,a8c <__neorv32_rte_debug_exc_handler+0x1ac>
     948:	02876663          	bltu	a4,s0,974 <__neorv32_rte_debug_exc_handler+0x94>
     94c:	00378713          	addi	a4,a5,3
     950:	12e40263          	beq	s0,a4,a74 <__neorv32_rte_debug_exc_handler+0x194>
     954:	00778793          	addi	a5,a5,7
     958:	12f40463          	beq	s0,a5,a80 <__neorv32_rte_debug_exc_handler+0x1a0>
     95c:	00001537          	lui	a0,0x1
     960:	5f050513          	addi	a0,a0,1520 # 15f0 <__etext+0x3a8>
     964:	3f4000ef          	jal	ra,d58 <neorv32_uart0_print>
     968:	00040513          	mv	a0,s0
     96c:	f05ff0ef          	jal	ra,870 <__neorv32_rte_print_hex_word>
     970:	0280006f          	j	998 <__neorv32_rte_debug_exc_handler+0xb8>
     974:	ff07c793          	xori	a5,a5,-16
     978:	00f407b3          	add	a5,s0,a5
     97c:	00f00713          	li	a4,15
     980:	fcf76ee3          	bltu	a4,a5,95c <__neorv32_rte_debug_exc_handler+0x7c>
     984:	00001537          	lui	a0,0x1
     988:	5e050513          	addi	a0,a0,1504 # 15e0 <__etext+0x398>
     98c:	3cc000ef          	jal	ra,d58 <neorv32_uart0_print>
     990:	00048513          	mv	a0,s1
     994:	3ac000ef          	jal	ra,d40 <neorv32_uart0_putc>
     998:	00001537          	lui	a0,0x1
     99c:	63450513          	addi	a0,a0,1588 # 1634 <__etext+0x3ec>
     9a0:	3b8000ef          	jal	ra,d58 <neorv32_uart0_print>
     9a4:	34002573          	csrr	a0,mscratch
     9a8:	ec9ff0ef          	jal	ra,870 <__neorv32_rte_print_hex_word>
     9ac:	00001537          	lui	a0,0x1
     9b0:	63c50513          	addi	a0,a0,1596 # 163c <__etext+0x3f4>
     9b4:	3a4000ef          	jal	ra,d58 <neorv32_uart0_print>
     9b8:	34302573          	csrr	a0,mtval
     9bc:	eb5ff0ef          	jal	ra,870 <__neorv32_rte_print_hex_word>
     9c0:	00812403          	lw	s0,8(sp)
     9c4:	00c12083          	lw	ra,12(sp)
     9c8:	00412483          	lw	s1,4(sp)
     9cc:	00001537          	lui	a0,0x1
     9d0:	64850513          	addi	a0,a0,1608 # 1648 <__etext+0x400>
     9d4:	01010113          	addi	sp,sp,16
     9d8:	3800006f          	j	d58 <neorv32_uart0_print>
     9dc:	00001537          	lui	a0,0x1
     9e0:	49850513          	addi	a0,a0,1176 # 1498 <__etext+0x250>
     9e4:	374000ef          	jal	ra,d58 <neorv32_uart0_print>
     9e8:	fb1ff06f          	j	998 <__neorv32_rte_debug_exc_handler+0xb8>
     9ec:	00001537          	lui	a0,0x1
     9f0:	4b850513          	addi	a0,a0,1208 # 14b8 <__etext+0x270>
     9f4:	364000ef          	jal	ra,d58 <neorv32_uart0_print>
     9f8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     9fc:	0a07d463          	bgez	a5,aa4 <__neorv32_rte_debug_exc_handler+0x1c4>
     a00:	0017f793          	andi	a5,a5,1
     a04:	08078a63          	beqz	a5,a98 <__neorv32_rte_debug_exc_handler+0x1b8>
     a08:	00001537          	lui	a0,0x1
     a0c:	60850513          	addi	a0,a0,1544 # 1608 <__etext+0x3c0>
     a10:	fd5ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a14:	00001537          	lui	a0,0x1
     a18:	4d450513          	addi	a0,a0,1236 # 14d4 <__etext+0x28c>
     a1c:	fc9ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a20:	00001537          	lui	a0,0x1
     a24:	4e850513          	addi	a0,a0,1256 # 14e8 <__etext+0x2a0>
     a28:	fbdff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a2c:	00001537          	lui	a0,0x1
     a30:	4f450513          	addi	a0,a0,1268 # 14f4 <__etext+0x2ac>
     a34:	fb1ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a38:	00001537          	lui	a0,0x1
     a3c:	50c50513          	addi	a0,a0,1292 # 150c <__etext+0x2c4>
     a40:	fb5ff06f          	j	9f4 <__neorv32_rte_debug_exc_handler+0x114>
     a44:	00001537          	lui	a0,0x1
     a48:	52050513          	addi	a0,a0,1312 # 1520 <__etext+0x2d8>
     a4c:	f99ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a50:	00001537          	lui	a0,0x1
     a54:	53c50513          	addi	a0,a0,1340 # 153c <__etext+0x2f4>
     a58:	f9dff06f          	j	9f4 <__neorv32_rte_debug_exc_handler+0x114>
     a5c:	00001537          	lui	a0,0x1
     a60:	55050513          	addi	a0,a0,1360 # 1550 <__etext+0x308>
     a64:	f81ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a68:	00001537          	lui	a0,0x1
     a6c:	57050513          	addi	a0,a0,1392 # 1570 <__etext+0x328>
     a70:	f75ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a74:	00001537          	lui	a0,0x1
     a78:	59050513          	addi	a0,a0,1424 # 1590 <__etext+0x348>
     a7c:	f69ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a80:	00001537          	lui	a0,0x1
     a84:	5ac50513          	addi	a0,a0,1452 # 15ac <__etext+0x364>
     a88:	f5dff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a8c:	00001537          	lui	a0,0x1
     a90:	5c450513          	addi	a0,a0,1476 # 15c4 <__etext+0x37c>
     a94:	f51ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     a98:	00001537          	lui	a0,0x1
     a9c:	61850513          	addi	a0,a0,1560 # 1618 <__etext+0x3d0>
     aa0:	f45ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     aa4:	00001537          	lui	a0,0x1
     aa8:	62850513          	addi	a0,a0,1576 # 1628 <__etext+0x3e0>
     aac:	f39ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0x104>
     ab0:	00c12083          	lw	ra,12(sp)
     ab4:	00812403          	lw	s0,8(sp)
     ab8:	00412483          	lw	s1,4(sp)
     abc:	01010113          	addi	sp,sp,16
     ac0:	00008067          	ret

00000ac4 <neorv32_rte_exception_uninstall>:
     ac4:	01f00793          	li	a5,31
     ac8:	02a7e463          	bltu	a5,a0,af0 <neorv32_rte_exception_uninstall+0x2c>
     acc:	800007b7          	lui	a5,0x80000
     ad0:	00251513          	slli	a0,a0,0x2
     ad4:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
     ad8:	00001737          	lui	a4,0x1
     adc:	00a787b3          	add	a5,a5,a0
     ae0:	8e070713          	addi	a4,a4,-1824 # 8e0 <__neorv32_rte_debug_exc_handler>
     ae4:	00e7a023          	sw	a4,0(a5)
     ae8:	00000513          	li	a0,0
     aec:	00008067          	ret
     af0:	00100513          	li	a0,1
     af4:	00008067          	ret

00000af8 <neorv32_rte_setup>:
     af8:	ff010113          	addi	sp,sp,-16
     afc:	00112623          	sw	ra,12(sp)
     b00:	00812423          	sw	s0,8(sp)
     b04:	00912223          	sw	s1,4(sp)
     b08:	63000793          	li	a5,1584
     b0c:	30579073          	csrw	mtvec,a5
     b10:	00000413          	li	s0,0
     b14:	01d00493          	li	s1,29
     b18:	00040513          	mv	a0,s0
     b1c:	00140413          	addi	s0,s0,1
     b20:	0ff47413          	zext.b	s0,s0
     b24:	fa1ff0ef          	jal	ra,ac4 <neorv32_rte_exception_uninstall>
     b28:	fe9418e3          	bne	s0,s1,b18 <neorv32_rte_setup+0x20>
     b2c:	00c12083          	lw	ra,12(sp)
     b30:	00812403          	lw	s0,8(sp)
     b34:	00412483          	lw	s1,4(sp)
     b38:	01010113          	addi	sp,sp,16
     b3c:	00008067          	ret

00000b40 <__neorv32_uart_itoa>:
     b40:	fd010113          	addi	sp,sp,-48
     b44:	02812423          	sw	s0,40(sp)
     b48:	02912223          	sw	s1,36(sp)
     b4c:	03212023          	sw	s2,32(sp)
     b50:	01312e23          	sw	s3,28(sp)
     b54:	01412c23          	sw	s4,24(sp)
     b58:	02112623          	sw	ra,44(sp)
     b5c:	01512a23          	sw	s5,20(sp)
     b60:	00001a37          	lui	s4,0x1
     b64:	00050493          	mv	s1,a0
     b68:	00058413          	mv	s0,a1
     b6c:	00058523          	sb	zero,10(a1)
     b70:	00000993          	li	s3,0
     b74:	00410913          	addi	s2,sp,4
     b78:	6a4a0a13          	addi	s4,s4,1700 # 16a4 <numbers.1>
     b7c:	00a00593          	li	a1,10
     b80:	00048513          	mv	a0,s1
     b84:	4bc000ef          	jal	ra,1040 <__umodsi3>
     b88:	00aa0533          	add	a0,s4,a0
     b8c:	00054783          	lbu	a5,0(a0)
     b90:	01390ab3          	add	s5,s2,s3
     b94:	00048513          	mv	a0,s1
     b98:	00fa8023          	sb	a5,0(s5)
     b9c:	00a00593          	li	a1,10
     ba0:	458000ef          	jal	ra,ff8 <__hidden___udivsi3>
     ba4:	00198993          	addi	s3,s3,1
     ba8:	00a00793          	li	a5,10
     bac:	00050493          	mv	s1,a0
     bb0:	fcf996e3          	bne	s3,a5,b7c <__neorv32_uart_itoa+0x3c>
     bb4:	00090693          	mv	a3,s2
     bb8:	00900713          	li	a4,9
     bbc:	03000613          	li	a2,48
     bc0:	0096c583          	lbu	a1,9(a3)
     bc4:	00070793          	mv	a5,a4
     bc8:	fff70713          	addi	a4,a4,-1
     bcc:	01071713          	slli	a4,a4,0x10
     bd0:	01075713          	srli	a4,a4,0x10
     bd4:	00c59a63          	bne	a1,a2,be8 <__neorv32_uart_itoa+0xa8>
     bd8:	000684a3          	sb	zero,9(a3)
     bdc:	fff68693          	addi	a3,a3,-1
     be0:	fe0710e3          	bnez	a4,bc0 <__neorv32_uart_itoa+0x80>
     be4:	00000793          	li	a5,0
     be8:	00f907b3          	add	a5,s2,a5
     bec:	00000713          	li	a4,0
     bf0:	0007c683          	lbu	a3,0(a5)
     bf4:	00068c63          	beqz	a3,c0c <__neorv32_uart_itoa+0xcc>
     bf8:	00170613          	addi	a2,a4,1
     bfc:	00e40733          	add	a4,s0,a4
     c00:	00d70023          	sb	a3,0(a4)
     c04:	01061713          	slli	a4,a2,0x10
     c08:	01075713          	srli	a4,a4,0x10
     c0c:	fff78693          	addi	a3,a5,-1
     c10:	02f91863          	bne	s2,a5,c40 <__neorv32_uart_itoa+0x100>
     c14:	00e40433          	add	s0,s0,a4
     c18:	00040023          	sb	zero,0(s0)
     c1c:	02c12083          	lw	ra,44(sp)
     c20:	02812403          	lw	s0,40(sp)
     c24:	02412483          	lw	s1,36(sp)
     c28:	02012903          	lw	s2,32(sp)
     c2c:	01c12983          	lw	s3,28(sp)
     c30:	01812a03          	lw	s4,24(sp)
     c34:	01412a83          	lw	s5,20(sp)
     c38:	03010113          	addi	sp,sp,48
     c3c:	00008067          	ret
     c40:	00068793          	mv	a5,a3
     c44:	fadff06f          	j	bf0 <__neorv32_uart_itoa+0xb0>

00000c48 <__neorv32_uart_tohex>:
     c48:	00001637          	lui	a2,0x1
     c4c:	00758693          	addi	a3,a1,7
     c50:	00000713          	li	a4,0
     c54:	69060613          	addi	a2,a2,1680 # 1690 <symbols.0>
     c58:	02000813          	li	a6,32
     c5c:	00e557b3          	srl	a5,a0,a4
     c60:	00f7f793          	andi	a5,a5,15
     c64:	00f607b3          	add	a5,a2,a5
     c68:	0007c783          	lbu	a5,0(a5)
     c6c:	00470713          	addi	a4,a4,4
     c70:	fff68693          	addi	a3,a3,-1
     c74:	00f680a3          	sb	a5,1(a3)
     c78:	ff0712e3          	bne	a4,a6,c5c <__neorv32_uart_tohex+0x14>
     c7c:	00058423          	sb	zero,8(a1)
     c80:	00008067          	ret

00000c84 <neorv32_uart0_available>:
     c84:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     c88:	01255513          	srli	a0,a0,0x12
     c8c:	00157513          	andi	a0,a0,1
     c90:	00008067          	ret

00000c94 <neorv32_uart0_setup>:
     c94:	ff010113          	addi	sp,sp,-16
     c98:	00812423          	sw	s0,8(sp)
     c9c:	00912223          	sw	s1,4(sp)
     ca0:	00112623          	sw	ra,12(sp)
     ca4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     ca8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     cac:	00058413          	mv	s0,a1
     cb0:	00151593          	slli	a1,a0,0x1
     cb4:	00078513          	mv	a0,a5
     cb8:	00060493          	mv	s1,a2
     cbc:	33c000ef          	jal	ra,ff8 <__hidden___udivsi3>
     cc0:	01051513          	slli	a0,a0,0x10
     cc4:	000017b7          	lui	a5,0x1
     cc8:	01055513          	srli	a0,a0,0x10
     ccc:	00000713          	li	a4,0
     cd0:	ffe78793          	addi	a5,a5,-2 # ffe <__hidden___udivsi3+0x6>
     cd4:	04a7e463          	bltu	a5,a0,d1c <neorv32_uart0_setup+0x88>
     cd8:	0034f493          	andi	s1,s1,3
     cdc:	01449493          	slli	s1,s1,0x14
     ce0:	00347413          	andi	s0,s0,3
     ce4:	fff50793          	addi	a5,a0,-1
     ce8:	0097e7b3          	or	a5,a5,s1
     cec:	01641413          	slli	s0,s0,0x16
     cf0:	0087e7b3          	or	a5,a5,s0
     cf4:	01871713          	slli	a4,a4,0x18
     cf8:	00c12083          	lw	ra,12(sp)
     cfc:	00812403          	lw	s0,8(sp)
     d00:	00e7e7b3          	or	a5,a5,a4
     d04:	10000737          	lui	a4,0x10000
     d08:	00e7e7b3          	or	a5,a5,a4
     d0c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d10:	00412483          	lw	s1,4(sp)
     d14:	01010113          	addi	sp,sp,16
     d18:	00008067          	ret
     d1c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe94e>
     d20:	0fd6f693          	andi	a3,a3,253
     d24:	00069a63          	bnez	a3,d38 <neorv32_uart0_setup+0xa4>
     d28:	00355513          	srli	a0,a0,0x3
     d2c:	00170713          	addi	a4,a4,1
     d30:	0ff77713          	zext.b	a4,a4
     d34:	fa1ff06f          	j	cd4 <neorv32_uart0_setup+0x40>
     d38:	00155513          	srli	a0,a0,0x1
     d3c:	ff1ff06f          	j	d2c <neorv32_uart0_setup+0x98>

00000d40 <neorv32_uart0_putc>:
     d40:	00040737          	lui	a4,0x40
     d44:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d48:	00e7f7b3          	and	a5,a5,a4
     d4c:	fe079ce3          	bnez	a5,d44 <neorv32_uart0_putc+0x4>
     d50:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     d54:	00008067          	ret

00000d58 <neorv32_uart0_print>:
     d58:	ff010113          	addi	sp,sp,-16
     d5c:	00812423          	sw	s0,8(sp)
     d60:	01212023          	sw	s2,0(sp)
     d64:	00112623          	sw	ra,12(sp)
     d68:	00912223          	sw	s1,4(sp)
     d6c:	00050413          	mv	s0,a0
     d70:	00a00913          	li	s2,10
     d74:	00044483          	lbu	s1,0(s0)
     d78:	00140413          	addi	s0,s0,1
     d7c:	00049e63          	bnez	s1,d98 <neorv32_uart0_print+0x40>
     d80:	00c12083          	lw	ra,12(sp)
     d84:	00812403          	lw	s0,8(sp)
     d88:	00412483          	lw	s1,4(sp)
     d8c:	00012903          	lw	s2,0(sp)
     d90:	01010113          	addi	sp,sp,16
     d94:	00008067          	ret
     d98:	01249663          	bne	s1,s2,da4 <neorv32_uart0_print+0x4c>
     d9c:	00d00513          	li	a0,13
     da0:	fa1ff0ef          	jal	ra,d40 <neorv32_uart0_putc>
     da4:	00048513          	mv	a0,s1
     da8:	f99ff0ef          	jal	ra,d40 <neorv32_uart0_putc>
     dac:	fc9ff06f          	j	d74 <neorv32_uart0_print+0x1c>

00000db0 <neorv32_uart0_printf>:
     db0:	fa010113          	addi	sp,sp,-96
     db4:	04f12a23          	sw	a5,84(sp)
     db8:	04410793          	addi	a5,sp,68
     dbc:	02812c23          	sw	s0,56(sp)
     dc0:	03212823          	sw	s2,48(sp)
     dc4:	03312623          	sw	s3,44(sp)
     dc8:	03412423          	sw	s4,40(sp)
     dcc:	03512223          	sw	s5,36(sp)
     dd0:	03612023          	sw	s6,32(sp)
     dd4:	01712e23          	sw	s7,28(sp)
     dd8:	01812c23          	sw	s8,24(sp)
     ddc:	02112e23          	sw	ra,60(sp)
     de0:	02912a23          	sw	s1,52(sp)
     de4:	00050413          	mv	s0,a0
     de8:	04b12223          	sw	a1,68(sp)
     dec:	04c12423          	sw	a2,72(sp)
     df0:	04d12623          	sw	a3,76(sp)
     df4:	04e12823          	sw	a4,80(sp)
     df8:	05012c23          	sw	a6,88(sp)
     dfc:	05112e23          	sw	a7,92(sp)
     e00:	00f12023          	sw	a5,0(sp)
     e04:	02500993          	li	s3,37
     e08:	00a00a13          	li	s4,10
     e0c:	07300913          	li	s2,115
     e10:	07500a93          	li	s5,117
     e14:	07800b13          	li	s6,120
     e18:	06300b93          	li	s7,99
     e1c:	06900c13          	li	s8,105
     e20:	00044483          	lbu	s1,0(s0)
     e24:	02049a63          	bnez	s1,e58 <neorv32_uart0_printf+0xa8>
     e28:	03c12083          	lw	ra,60(sp)
     e2c:	03812403          	lw	s0,56(sp)
     e30:	03412483          	lw	s1,52(sp)
     e34:	03012903          	lw	s2,48(sp)
     e38:	02c12983          	lw	s3,44(sp)
     e3c:	02812a03          	lw	s4,40(sp)
     e40:	02412a83          	lw	s5,36(sp)
     e44:	02012b03          	lw	s6,32(sp)
     e48:	01c12b83          	lw	s7,28(sp)
     e4c:	01812c03          	lw	s8,24(sp)
     e50:	06010113          	addi	sp,sp,96
     e54:	00008067          	ret
     e58:	0d349663          	bne	s1,s3,f24 <neorv32_uart0_printf+0x174>
     e5c:	00144483          	lbu	s1,1(s0)
     e60:	05248263          	beq	s1,s2,ea4 <neorv32_uart0_printf+0xf4>
     e64:	00996e63          	bltu	s2,s1,e80 <neorv32_uart0_printf+0xd0>
     e68:	05748c63          	beq	s1,s7,ec0 <neorv32_uart0_printf+0x110>
     e6c:	07848663          	beq	s1,s8,ed8 <neorv32_uart0_printf+0x128>
     e70:	02500513          	li	a0,37
     e74:	ecdff0ef          	jal	ra,d40 <neorv32_uart0_putc>
     e78:	00048513          	mv	a0,s1
     e7c:	0540006f          	j	ed0 <neorv32_uart0_printf+0x120>
     e80:	09548663          	beq	s1,s5,f0c <neorv32_uart0_printf+0x15c>
     e84:	ff6496e3          	bne	s1,s6,e70 <neorv32_uart0_printf+0xc0>
     e88:	00012783          	lw	a5,0(sp)
     e8c:	00410593          	addi	a1,sp,4
     e90:	0007a503          	lw	a0,0(a5)
     e94:	00478713          	addi	a4,a5,4
     e98:	00e12023          	sw	a4,0(sp)
     e9c:	dadff0ef          	jal	ra,c48 <__neorv32_uart_tohex>
     ea0:	0640006f          	j	f04 <neorv32_uart0_printf+0x154>
     ea4:	00012783          	lw	a5,0(sp)
     ea8:	0007a503          	lw	a0,0(a5)
     eac:	00478713          	addi	a4,a5,4
     eb0:	00e12023          	sw	a4,0(sp)
     eb4:	ea5ff0ef          	jal	ra,d58 <neorv32_uart0_print>
     eb8:	00240413          	addi	s0,s0,2
     ebc:	f65ff06f          	j	e20 <neorv32_uart0_printf+0x70>
     ec0:	00012783          	lw	a5,0(sp)
     ec4:	0007c503          	lbu	a0,0(a5)
     ec8:	00478713          	addi	a4,a5,4
     ecc:	00e12023          	sw	a4,0(sp)
     ed0:	e71ff0ef          	jal	ra,d40 <neorv32_uart0_putc>
     ed4:	fe5ff06f          	j	eb8 <neorv32_uart0_printf+0x108>
     ed8:	00012783          	lw	a5,0(sp)
     edc:	0007a483          	lw	s1,0(a5)
     ee0:	00478713          	addi	a4,a5,4
     ee4:	00e12023          	sw	a4,0(sp)
     ee8:	0004d863          	bgez	s1,ef8 <neorv32_uart0_printf+0x148>
     eec:	02d00513          	li	a0,45
     ef0:	409004b3          	neg	s1,s1
     ef4:	e4dff0ef          	jal	ra,d40 <neorv32_uart0_putc>
     ef8:	00410593          	addi	a1,sp,4
     efc:	00048513          	mv	a0,s1
     f00:	c41ff0ef          	jal	ra,b40 <__neorv32_uart_itoa>
     f04:	00410513          	addi	a0,sp,4
     f08:	fadff06f          	j	eb4 <neorv32_uart0_printf+0x104>
     f0c:	00012783          	lw	a5,0(sp)
     f10:	00410593          	addi	a1,sp,4
     f14:	00478713          	addi	a4,a5,4
     f18:	0007a503          	lw	a0,0(a5)
     f1c:	00e12023          	sw	a4,0(sp)
     f20:	fe1ff06f          	j	f00 <neorv32_uart0_printf+0x150>
     f24:	01449663          	bne	s1,s4,f30 <neorv32_uart0_printf+0x180>
     f28:	00d00513          	li	a0,13
     f2c:	e15ff0ef          	jal	ra,d40 <neorv32_uart0_putc>
     f30:	00048513          	mv	a0,s1
     f34:	00140413          	addi	s0,s0,1
     f38:	e09ff0ef          	jal	ra,d40 <neorv32_uart0_putc>
     f3c:	ee5ff06f          	j	e20 <neorv32_uart0_printf+0x70>

00000f40 <__mulsi3>:
     f40:	00050613          	mv	a2,a0
     f44:	00000513          	li	a0,0
     f48:	0015f693          	andi	a3,a1,1
     f4c:	00068463          	beqz	a3,f54 <__mulsi3+0x14>
     f50:	00c50533          	add	a0,a0,a2
     f54:	0015d593          	srli	a1,a1,0x1
     f58:	00161613          	slli	a2,a2,0x1
     f5c:	fe0596e3          	bnez	a1,f48 <__mulsi3+0x8>
     f60:	00008067          	ret

00000f64 <__muldi3>:
     f64:	00050e13          	mv	t3,a0
     f68:	ff010113          	addi	sp,sp,-16
     f6c:	00068313          	mv	t1,a3
     f70:	00112623          	sw	ra,12(sp)
     f74:	00060513          	mv	a0,a2
     f78:	000e0893          	mv	a7,t3
     f7c:	00060693          	mv	a3,a2
     f80:	00000713          	li	a4,0
     f84:	00000793          	li	a5,0
     f88:	00000813          	li	a6,0
     f8c:	0016fe93          	andi	t4,a3,1
     f90:	00171613          	slli	a2,a4,0x1
     f94:	000e8a63          	beqz	t4,fa8 <__muldi3+0x44>
     f98:	01088833          	add	a6,a7,a6
     f9c:	00e787b3          	add	a5,a5,a4
     fa0:	01183733          	sltu	a4,a6,a7
     fa4:	00f707b3          	add	a5,a4,a5
     fa8:	01f8d713          	srli	a4,a7,0x1f
     fac:	0016d693          	srli	a3,a3,0x1
     fb0:	00e66733          	or	a4,a2,a4
     fb4:	00189893          	slli	a7,a7,0x1
     fb8:	fc069ae3          	bnez	a3,f8c <__muldi3+0x28>
     fbc:	00058663          	beqz	a1,fc8 <__muldi3+0x64>
     fc0:	f81ff0ef          	jal	ra,f40 <__mulsi3>
     fc4:	00a787b3          	add	a5,a5,a0
     fc8:	00030a63          	beqz	t1,fdc <__muldi3+0x78>
     fcc:	000e0513          	mv	a0,t3
     fd0:	00030593          	mv	a1,t1
     fd4:	f6dff0ef          	jal	ra,f40 <__mulsi3>
     fd8:	00f507b3          	add	a5,a0,a5
     fdc:	00c12083          	lw	ra,12(sp)
     fe0:	00080513          	mv	a0,a6
     fe4:	00078593          	mv	a1,a5
     fe8:	01010113          	addi	sp,sp,16
     fec:	00008067          	ret

00000ff0 <__divsi3>:
     ff0:	06054063          	bltz	a0,1050 <__umodsi3+0x10>
     ff4:	0605c663          	bltz	a1,1060 <__umodsi3+0x20>

00000ff8 <__hidden___udivsi3>:
     ff8:	00058613          	mv	a2,a1
     ffc:	00050593          	mv	a1,a0
    1000:	fff00513          	li	a0,-1
    1004:	02060c63          	beqz	a2,103c <__hidden___udivsi3+0x44>
    1008:	00100693          	li	a3,1
    100c:	00b67a63          	bgeu	a2,a1,1020 <__hidden___udivsi3+0x28>
    1010:	00c05863          	blez	a2,1020 <__hidden___udivsi3+0x28>
    1014:	00161613          	slli	a2,a2,0x1
    1018:	00169693          	slli	a3,a3,0x1
    101c:	feb66ae3          	bltu	a2,a1,1010 <__hidden___udivsi3+0x18>
    1020:	00000513          	li	a0,0
    1024:	00c5e663          	bltu	a1,a2,1030 <__hidden___udivsi3+0x38>
    1028:	40c585b3          	sub	a1,a1,a2
    102c:	00d56533          	or	a0,a0,a3
    1030:	0016d693          	srli	a3,a3,0x1
    1034:	00165613          	srli	a2,a2,0x1
    1038:	fe0696e3          	bnez	a3,1024 <__hidden___udivsi3+0x2c>
    103c:	00008067          	ret

00001040 <__umodsi3>:
    1040:	00008293          	mv	t0,ra
    1044:	fb5ff0ef          	jal	ra,ff8 <__hidden___udivsi3>
    1048:	00058513          	mv	a0,a1
    104c:	00028067          	jr	t0
    1050:	40a00533          	neg	a0,a0
    1054:	00b04863          	bgtz	a1,1064 <__umodsi3+0x24>
    1058:	40b005b3          	neg	a1,a1
    105c:	f9dff06f          	j	ff8 <__hidden___udivsi3>
    1060:	40b005b3          	neg	a1,a1
    1064:	00008293          	mv	t0,ra
    1068:	f91ff0ef          	jal	ra,ff8 <__hidden___udivsi3>
    106c:	40a00533          	neg	a0,a0
    1070:	00028067          	jr	t0

00001074 <__modsi3>:
    1074:	00008293          	mv	t0,ra
    1078:	0005ca63          	bltz	a1,108c <__modsi3+0x18>
    107c:	00054c63          	bltz	a0,1094 <__modsi3+0x20>
    1080:	f79ff0ef          	jal	ra,ff8 <__hidden___udivsi3>
    1084:	00058513          	mv	a0,a1
    1088:	00028067          	jr	t0
    108c:	40b005b3          	neg	a1,a1
    1090:	fe0558e3          	bgez	a0,1080 <__modsi3+0xc>
    1094:	40a00533          	neg	a0,a0
    1098:	f61ff0ef          	jal	ra,ff8 <__hidden___udivsi3>
    109c:	40b00533          	neg	a0,a1
    10a0:	00028067          	jr	t0

000010a4 <memcpy>:
    10a4:	00b547b3          	xor	a5,a0,a1
    10a8:	0037f793          	andi	a5,a5,3
    10ac:	00c508b3          	add	a7,a0,a2
    10b0:	06079463          	bnez	a5,1118 <memcpy+0x74>
    10b4:	00300793          	li	a5,3
    10b8:	06c7f063          	bgeu	a5,a2,1118 <memcpy+0x74>
    10bc:	00357793          	andi	a5,a0,3
    10c0:	00050713          	mv	a4,a0
    10c4:	06079a63          	bnez	a5,1138 <memcpy+0x94>
    10c8:	ffc8f613          	andi	a2,a7,-4
    10cc:	40e606b3          	sub	a3,a2,a4
    10d0:	02000793          	li	a5,32
    10d4:	08d7ce63          	blt	a5,a3,1170 <memcpy+0xcc>
    10d8:	00058693          	mv	a3,a1
    10dc:	00070793          	mv	a5,a4
    10e0:	02c77863          	bgeu	a4,a2,1110 <memcpy+0x6c>
    10e4:	0006a803          	lw	a6,0(a3)
    10e8:	00478793          	addi	a5,a5,4
    10ec:	00468693          	addi	a3,a3,4
    10f0:	ff07ae23          	sw	a6,-4(a5)
    10f4:	fec7e8e3          	bltu	a5,a2,10e4 <memcpy+0x40>
    10f8:	fff60793          	addi	a5,a2,-1
    10fc:	40e787b3          	sub	a5,a5,a4
    1100:	ffc7f793          	andi	a5,a5,-4
    1104:	00478793          	addi	a5,a5,4
    1108:	00f70733          	add	a4,a4,a5
    110c:	00f585b3          	add	a1,a1,a5
    1110:	01176863          	bltu	a4,a7,1120 <memcpy+0x7c>
    1114:	00008067          	ret
    1118:	00050713          	mv	a4,a0
    111c:	05157863          	bgeu	a0,a7,116c <memcpy+0xc8>
    1120:	0005c783          	lbu	a5,0(a1)
    1124:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3e951>
    1128:	00158593          	addi	a1,a1,1
    112c:	fef70fa3          	sb	a5,-1(a4)
    1130:	fee898e3          	bne	a7,a4,1120 <memcpy+0x7c>
    1134:	00008067          	ret
    1138:	0005c683          	lbu	a3,0(a1)
    113c:	00170713          	addi	a4,a4,1
    1140:	00377793          	andi	a5,a4,3
    1144:	fed70fa3          	sb	a3,-1(a4)
    1148:	00158593          	addi	a1,a1,1
    114c:	f6078ee3          	beqz	a5,10c8 <memcpy+0x24>
    1150:	0005c683          	lbu	a3,0(a1)
    1154:	00170713          	addi	a4,a4,1
    1158:	00377793          	andi	a5,a4,3
    115c:	fed70fa3          	sb	a3,-1(a4)
    1160:	00158593          	addi	a1,a1,1
    1164:	fc079ae3          	bnez	a5,1138 <memcpy+0x94>
    1168:	f61ff06f          	j	10c8 <memcpy+0x24>
    116c:	00008067          	ret
    1170:	ff010113          	addi	sp,sp,-16
    1174:	00812623          	sw	s0,12(sp)
    1178:	02000413          	li	s0,32
    117c:	0005a383          	lw	t2,0(a1)
    1180:	0045a283          	lw	t0,4(a1)
    1184:	0085af83          	lw	t6,8(a1)
    1188:	00c5af03          	lw	t5,12(a1)
    118c:	0105ae83          	lw	t4,16(a1)
    1190:	0145ae03          	lw	t3,20(a1)
    1194:	0185a303          	lw	t1,24(a1)
    1198:	01c5a803          	lw	a6,28(a1)
    119c:	0205a683          	lw	a3,32(a1)
    11a0:	02470713          	addi	a4,a4,36
    11a4:	40e607b3          	sub	a5,a2,a4
    11a8:	fc772e23          	sw	t2,-36(a4)
    11ac:	fe572023          	sw	t0,-32(a4)
    11b0:	fff72223          	sw	t6,-28(a4)
    11b4:	ffe72423          	sw	t5,-24(a4)
    11b8:	ffd72623          	sw	t4,-20(a4)
    11bc:	ffc72823          	sw	t3,-16(a4)
    11c0:	fe672a23          	sw	t1,-12(a4)
    11c4:	ff072c23          	sw	a6,-8(a4)
    11c8:	fed72e23          	sw	a3,-4(a4)
    11cc:	02458593          	addi	a1,a1,36
    11d0:	faf446e3          	blt	s0,a5,117c <memcpy+0xd8>
    11d4:	00058693          	mv	a3,a1
    11d8:	00070793          	mv	a5,a4
    11dc:	02c77863          	bgeu	a4,a2,120c <memcpy+0x168>
    11e0:	0006a803          	lw	a6,0(a3)
    11e4:	00478793          	addi	a5,a5,4
    11e8:	00468693          	addi	a3,a3,4
    11ec:	ff07ae23          	sw	a6,-4(a5)
    11f0:	fec7e8e3          	bltu	a5,a2,11e0 <memcpy+0x13c>
    11f4:	fff60793          	addi	a5,a2,-1
    11f8:	40e787b3          	sub	a5,a5,a4
    11fc:	ffc7f793          	andi	a5,a5,-4
    1200:	00478793          	addi	a5,a5,4
    1204:	00f70733          	add	a4,a4,a5
    1208:	00f585b3          	add	a1,a1,a5
    120c:	01176863          	bltu	a4,a7,121c <memcpy+0x178>
    1210:	00c12403          	lw	s0,12(sp)
    1214:	01010113          	addi	sp,sp,16
    1218:	00008067          	ret
    121c:	0005c783          	lbu	a5,0(a1)
    1220:	00170713          	addi	a4,a4,1
    1224:	00158593          	addi	a1,a1,1
    1228:	fef70fa3          	sb	a5,-1(a4)
    122c:	fee882e3          	beq	a7,a4,1210 <memcpy+0x16c>
    1230:	0005c783          	lbu	a5,0(a1)
    1234:	00170713          	addi	a4,a4,1
    1238:	00158593          	addi	a1,a1,1
    123c:	fef70fa3          	sb	a5,-1(a4)
    1240:	fce89ee3          	bne	a7,a4,121c <memcpy+0x178>
    1244:	fcdff06f          	j	1210 <memcpy+0x16c>
