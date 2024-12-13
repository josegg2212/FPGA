
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
      e0:	28c58593          	addi	a1,a1,652 # 1368 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3798>
     194:	00112623          	sw	ra,12(sp)
     198:	0f9000ef          	jal	ra,a90 <neorv32_uart0_setup>
     19c:	1e4000ef          	jal	ra,380 <neorv32_gpio_available>
     1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
     1a4:	750000ef          	jal	ra,8f4 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	07c50513          	addi	a0,a0,124 # 107c <__etext+0x38>
     1b0:	1a5000ef          	jal	ra,b54 <neorv32_uart0_print>
     1b4:	020000ef          	jal	ra,1d4 <keyboard>
     1b8:	00001537          	lui	a0,0x1
     1bc:	05850513          	addi	a0,a0,88 # 1058 <__etext+0x14>
     1c0:	195000ef          	jal	ra,b54 <neorv32_uart0_print>
     1c4:	00c12083          	lw	ra,12(sp)
     1c8:	00100513          	li	a0,1
     1cc:	01010113          	addi	sp,sp,16
     1d0:	00008067          	ret

000001d4 <keyboard>:
     1d4:	fd010113          	addi	sp,sp,-48
     1d8:	000015b7          	lui	a1,0x1
     1dc:	01000613          	li	a2,16
     1e0:	09058593          	addi	a1,a1,144 # 1090 <__etext+0x4c>
     1e4:	00010513          	mv	a0,sp
     1e8:	02112623          	sw	ra,44(sp)
     1ec:	03212023          	sw	s2,32(sp)
     1f0:	01312e23          	sw	s3,28(sp)
     1f4:	01412c23          	sw	s4,24(sp)
     1f8:	01512a23          	sw	s5,20(sp)
     1fc:	02812423          	sw	s0,40(sp)
     200:	02912223          	sw	s1,36(sp)
     204:	49d000ef          	jal	ra,ea0 <memcpy>
     208:	0ff00513          	li	a0,255
     20c:	00000593          	li	a1,0
     210:	208000ef          	jal	ra,418 <neorv32_gpio_port_set>
     214:	00800913          	li	s2,8
     218:	00700993          	li	s3,7
     21c:	00300a13          	li	s4,3
     220:	00001ab7          	lui	s5,0x1
     224:	00000493          	li	s1,0
     228:	00048513          	mv	a0,s1
     22c:	194000ef          	jal	ra,3c0 <neorv32_gpio_pin_clr>
     230:	00400413          	li	s0,4
     234:	00040513          	mv	a0,s0
     238:	1bc000ef          	jal	ra,3f4 <neorv32_gpio_pin_get>
     23c:	02051e63          	bnez	a0,278 <keyboard+0xa4>
     240:	40898433          	sub	s0,s3,s0
     244:	00241413          	slli	s0,s0,0x2
     248:	01040713          	addi	a4,s0,16
     24c:	409a07b3          	sub	a5,s4,s1
     250:	00270433          	add	s0,a4,sp
     254:	00f40433          	add	s0,s0,a5
     258:	ff044583          	lbu	a1,-16(s0)
     25c:	044a8513          	addi	a0,s5,68 # 1044 <__etext>
     260:	14d000ef          	jal	ra,bac <neorv32_uart0_printf>
     264:	00048513          	mv	a0,s1
     268:	128000ef          	jal	ra,390 <neorv32_gpio_pin_set>
     26c:	0c800513          	li	a0,200
     270:	054000ef          	jal	ra,2c4 <neorv32_cpu_delay_ms>
     274:	fb1ff06f          	j	224 <keyboard+0x50>
     278:	00140413          	addi	s0,s0,1
     27c:	fb241ce3          	bne	s0,s2,234 <keyboard+0x60>
     280:	00048513          	mv	a0,s1
     284:	10c000ef          	jal	ra,390 <neorv32_gpio_pin_set>
     288:	00148493          	addi	s1,s1,1
     28c:	00400793          	li	a5,4
     290:	f8f49ce3          	bne	s1,a5,228 <keyboard+0x54>
     294:	fd9ff06f          	j	26c <keyboard+0x98>

00000298 <neorv32_cpu_get_systime>:
     298:	ff010113          	addi	sp,sp,-16
     29c:	c81026f3          	rdtimeh	a3
     2a0:	c0102773          	rdtime	a4
     2a4:	c81027f3          	rdtimeh	a5
     2a8:	fed79ae3          	bne	a5,a3,29c <neorv32_cpu_get_systime+0x4>
     2ac:	00e12023          	sw	a4,0(sp)
     2b0:	00f12223          	sw	a5,4(sp)
     2b4:	00012503          	lw	a0,0(sp)
     2b8:	00412583          	lw	a1,4(sp)
     2bc:	01010113          	addi	sp,sp,16
     2c0:	00008067          	ret

000002c4 <neorv32_cpu_delay_ms>:
     2c4:	fd010113          	addi	sp,sp,-48
     2c8:	00a12623          	sw	a0,12(sp)
     2cc:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     2d0:	3e800593          	li	a1,1000
     2d4:	02112623          	sw	ra,44(sp)
     2d8:	02812423          	sw	s0,40(sp)
     2dc:	02912223          	sw	s1,36(sp)
     2e0:	03212023          	sw	s2,32(sp)
     2e4:	01312e23          	sw	s3,28(sp)
     2e8:	30d000ef          	jal	ra,df4 <__hidden___udivsi3>
     2ec:	00c12603          	lw	a2,12(sp)
     2f0:	00000693          	li	a3,0
     2f4:	00000593          	li	a1,0
     2f8:	269000ef          	jal	ra,d60 <__muldi3>
     2fc:	00050413          	mv	s0,a0
     300:	00058993          	mv	s3,a1
     304:	f95ff0ef          	jal	ra,298 <neorv32_cpu_get_systime>
     308:	00058913          	mv	s2,a1
     30c:	00050493          	mv	s1,a0
     310:	f89ff0ef          	jal	ra,298 <neorv32_cpu_get_systime>
     314:	00b96663          	bltu	s2,a1,320 <neorv32_cpu_delay_ms+0x5c>
     318:	05259263          	bne	a1,s2,35c <neorv32_cpu_delay_ms+0x98>
     31c:	04a4f063          	bgeu	s1,a0,35c <neorv32_cpu_delay_ms+0x98>
     320:	008484b3          	add	s1,s1,s0
     324:	0084b433          	sltu	s0,s1,s0
     328:	01390933          	add	s2,s2,s3
     32c:	01240433          	add	s0,s0,s2
     330:	f69ff0ef          	jal	ra,298 <neorv32_cpu_get_systime>
     334:	fe85eee3          	bltu	a1,s0,330 <neorv32_cpu_delay_ms+0x6c>
     338:	00b41463          	bne	s0,a1,340 <neorv32_cpu_delay_ms+0x7c>
     33c:	fe956ae3          	bltu	a0,s1,330 <neorv32_cpu_delay_ms+0x6c>
     340:	02c12083          	lw	ra,44(sp)
     344:	02812403          	lw	s0,40(sp)
     348:	02412483          	lw	s1,36(sp)
     34c:	02012903          	lw	s2,32(sp)
     350:	01c12983          	lw	s3,28(sp)
     354:	03010113          	addi	sp,sp,48
     358:	00008067          	ret
     35c:	01c99993          	slli	s3,s3,0x1c
     360:	00445413          	srli	s0,s0,0x4
     364:	0089e433          	or	s0,s3,s0

00000368 <__neorv32_cpu_delay_ms_start>:
     368:	00040a63          	beqz	s0,37c <__neorv32_cpu_delay_ms_end>
     36c:	00040863          	beqz	s0,37c <__neorv32_cpu_delay_ms_end>
     370:	fff40413          	addi	s0,s0,-1
     374:	00000013          	nop
     378:	ff1ff06f          	j	368 <__neorv32_cpu_delay_ms_start>

0000037c <__neorv32_cpu_delay_ms_end>:
     37c:	fc5ff06f          	j	340 <neorv32_cpu_delay_ms+0x7c>

00000380 <neorv32_gpio_available>:
     380:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     384:	01055513          	srli	a0,a0,0x10
     388:	00157513          	andi	a0,a0,1
     38c:	00008067          	ret

00000390 <neorv32_gpio_pin_set>:
     390:	00100793          	li	a5,1
     394:	01f00713          	li	a4,31
     398:	00a797b3          	sll	a5,a5,a0
     39c:	00a74a63          	blt	a4,a0,3b0 <neorv32_gpio_pin_set+0x20>
     3a0:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3a4:	00f767b3          	or	a5,a4,a5
     3a8:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3ac:	00008067          	ret
     3b0:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3b4:	00f767b3          	or	a5,a4,a5
     3b8:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3bc:	00008067          	ret

000003c0 <neorv32_gpio_pin_clr>:
     3c0:	00100793          	li	a5,1
     3c4:	00a797b3          	sll	a5,a5,a0
     3c8:	01f00713          	li	a4,31
     3cc:	fff7c793          	not	a5,a5
     3d0:	00a74a63          	blt	a4,a0,3e4 <neorv32_gpio_pin_clr+0x24>
     3d4:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3d8:	00f777b3          	and	a5,a4,a5
     3dc:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     3e0:	00008067          	ret
     3e4:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3e8:	00f777b3          	and	a5,a4,a5
     3ec:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     3f0:	00008067          	ret

000003f4 <neorv32_gpio_pin_get>:
     3f4:	00100793          	li	a5,1
     3f8:	01f00713          	li	a4,31
     3fc:	00a797b3          	sll	a5,a5,a0
     400:	00a74863          	blt	a4,a0,410 <neorv32_gpio_pin_get+0x1c>
     404:	fc002703          	lw	a4,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     408:	00f77533          	and	a0,a4,a5
     40c:	00008067          	ret
     410:	fc402703          	lw	a4,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     414:	ff5ff06f          	j	408 <neorv32_gpio_pin_get+0x14>

00000418 <neorv32_gpio_port_set>:
     418:	fc000793          	li	a5,-64
     41c:	00a7a423          	sw	a0,8(a5)
     420:	00b7a623          	sw	a1,12(a5)
     424:	00008067          	ret
     428:	0000                	.2byte	0x0
     42a:	0000                	.2byte	0x0
     42c:	0000                	.2byte	0x0
     42e:	0000                	.2byte	0x0

00000430 <__neorv32_rte_core>:
     430:	fc010113          	addi	sp,sp,-64
     434:	02112e23          	sw	ra,60(sp)
     438:	02512c23          	sw	t0,56(sp)
     43c:	02612a23          	sw	t1,52(sp)
     440:	02712823          	sw	t2,48(sp)
     444:	02a12623          	sw	a0,44(sp)
     448:	02b12423          	sw	a1,40(sp)
     44c:	02c12223          	sw	a2,36(sp)
     450:	02d12023          	sw	a3,32(sp)
     454:	00e12e23          	sw	a4,28(sp)
     458:	00f12c23          	sw	a5,24(sp)
     45c:	01012a23          	sw	a6,20(sp)
     460:	01112823          	sw	a7,16(sp)
     464:	01c12623          	sw	t3,12(sp)
     468:	01d12423          	sw	t4,8(sp)
     46c:	01e12223          	sw	t5,4(sp)
     470:	01f12023          	sw	t6,0(sp)
     474:	34102773          	csrr	a4,mepc
     478:	34071073          	csrw	mscratch,a4
     47c:	342027f3          	csrr	a5,mcause
     480:	0807c863          	bltz	a5,510 <__neorv32_rte_core+0xe0>
     484:	00071683          	lh	a3,0(a4)
     488:	00300593          	li	a1,3
     48c:	0036f693          	andi	a3,a3,3
     490:	00270613          	addi	a2,a4,2
     494:	00b69463          	bne	a3,a1,49c <__neorv32_rte_core+0x6c>
     498:	00470613          	addi	a2,a4,4
     49c:	34161073          	csrw	mepc,a2
     4a0:	00b00713          	li	a4,11
     4a4:	04f77a63          	bgeu	a4,a5,4f8 <__neorv32_rte_core+0xc8>
     4a8:	6e000793          	li	a5,1760
     4ac:	000780e7          	jalr	a5
     4b0:	03c12083          	lw	ra,60(sp)
     4b4:	03812283          	lw	t0,56(sp)
     4b8:	03412303          	lw	t1,52(sp)
     4bc:	03012383          	lw	t2,48(sp)
     4c0:	02c12503          	lw	a0,44(sp)
     4c4:	02812583          	lw	a1,40(sp)
     4c8:	02412603          	lw	a2,36(sp)
     4cc:	02012683          	lw	a3,32(sp)
     4d0:	01c12703          	lw	a4,28(sp)
     4d4:	01812783          	lw	a5,24(sp)
     4d8:	01412803          	lw	a6,20(sp)
     4dc:	01012883          	lw	a7,16(sp)
     4e0:	00c12e03          	lw	t3,12(sp)
     4e4:	00812e83          	lw	t4,8(sp)
     4e8:	00412f03          	lw	t5,4(sp)
     4ec:	00012f83          	lw	t6,0(sp)
     4f0:	04010113          	addi	sp,sp,64
     4f4:	30200073          	mret
     4f8:	00001737          	lui	a4,0x1
     4fc:	00279793          	slli	a5,a5,0x2
     500:	0a070713          	addi	a4,a4,160 # 10a0 <__etext+0x5c>
     504:	00e787b3          	add	a5,a5,a4
     508:	0007a783          	lw	a5,0(a5)
     50c:	00078067          	jr	a5
     510:	80000737          	lui	a4,0x80000
     514:	ffd74713          	xori	a4,a4,-3
     518:	00e787b3          	add	a5,a5,a4
     51c:	01c00713          	li	a4,28
     520:	f8f764e3          	bltu	a4,a5,4a8 <__neorv32_rte_core+0x78>
     524:	00001737          	lui	a4,0x1
     528:	00279793          	slli	a5,a5,0x2
     52c:	0d070713          	addi	a4,a4,208 # 10d0 <__etext+0x8c>
     530:	00e787b3          	add	a5,a5,a4
     534:	0007a783          	lw	a5,0(a5)
     538:	00078067          	jr	a5
     53c:	800007b7          	lui	a5,0x80000
     540:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     544:	f69ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     548:	800007b7          	lui	a5,0x80000
     54c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     550:	f5dff06f          	j	4ac <__neorv32_rte_core+0x7c>
     554:	800007b7          	lui	a5,0x80000
     558:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     55c:	f51ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     560:	800007b7          	lui	a5,0x80000
     564:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     568:	f45ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     56c:	800007b7          	lui	a5,0x80000
     570:	0107a783          	lw	a5,16(a5) # 80000010 <__ctr0_io_space_begin+0x80000210>
     574:	f39ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     578:	800007b7          	lui	a5,0x80000
     57c:	0147a783          	lw	a5,20(a5) # 80000014 <__ctr0_io_space_begin+0x80000214>
     580:	f2dff06f          	j	4ac <__neorv32_rte_core+0x7c>
     584:	800007b7          	lui	a5,0x80000
     588:	0187a783          	lw	a5,24(a5) # 80000018 <__ctr0_io_space_begin+0x80000218>
     58c:	f21ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     590:	800007b7          	lui	a5,0x80000
     594:	01c7a783          	lw	a5,28(a5) # 8000001c <__ctr0_io_space_begin+0x8000021c>
     598:	f15ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     59c:	800007b7          	lui	a5,0x80000
     5a0:	0207a783          	lw	a5,32(a5) # 80000020 <__ctr0_io_space_begin+0x80000220>
     5a4:	f09ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5a8:	800007b7          	lui	a5,0x80000
     5ac:	0247a783          	lw	a5,36(a5) # 80000024 <__ctr0_io_space_begin+0x80000224>
     5b0:	efdff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5b4:	800007b7          	lui	a5,0x80000
     5b8:	0287a783          	lw	a5,40(a5) # 80000028 <__ctr0_io_space_begin+0x80000228>
     5bc:	ef1ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5c0:	800007b7          	lui	a5,0x80000
     5c4:	02c7a783          	lw	a5,44(a5) # 8000002c <__ctr0_io_space_begin+0x8000022c>
     5c8:	ee5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5cc:	800007b7          	lui	a5,0x80000
     5d0:	0307a783          	lw	a5,48(a5) # 80000030 <__ctr0_io_space_begin+0x80000230>
     5d4:	ed9ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5d8:	800007b7          	lui	a5,0x80000
     5dc:	0347a783          	lw	a5,52(a5) # 80000034 <__ctr0_io_space_begin+0x80000234>
     5e0:	ecdff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5e4:	800007b7          	lui	a5,0x80000
     5e8:	0387a783          	lw	a5,56(a5) # 80000038 <__ctr0_io_space_begin+0x80000238>
     5ec:	ec1ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5f0:	800007b7          	lui	a5,0x80000
     5f4:	03c7a783          	lw	a5,60(a5) # 8000003c <__ctr0_io_space_begin+0x8000023c>
     5f8:	eb5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     5fc:	800007b7          	lui	a5,0x80000
     600:	0407a783          	lw	a5,64(a5) # 80000040 <__ctr0_io_space_begin+0x80000240>
     604:	ea9ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     608:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     60c:	ea1ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     610:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     614:	e99ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     618:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     61c:	e91ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     620:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     624:	e89ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     628:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     62c:	e81ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     630:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     634:	e79ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     638:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     63c:	e71ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     640:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     644:	e69ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     648:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     64c:	e61ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     650:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     654:	e59ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     658:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     65c:	e51ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     660:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     664:	e49ff06f          	j	4ac <__neorv32_rte_core+0x7c>
     668:	0000                	.2byte	0x0
     66a:	0000                	.2byte	0x0
     66c:	0000                	.2byte	0x0
     66e:	0000                	.2byte	0x0

00000670 <__neorv32_rte_print_hex_word>:
     670:	fe010113          	addi	sp,sp,-32
     674:	01212823          	sw	s2,16(sp)
     678:	00050913          	mv	s2,a0
     67c:	00001537          	lui	a0,0x1
     680:	00912a23          	sw	s1,20(sp)
     684:	14450513          	addi	a0,a0,324 # 1144 <__etext+0x100>
     688:	000014b7          	lui	s1,0x1
     68c:	00812c23          	sw	s0,24(sp)
     690:	01312623          	sw	s3,12(sp)
     694:	00112e23          	sw	ra,28(sp)
     698:	01c00413          	li	s0,28
     69c:	4b8000ef          	jal	ra,b54 <neorv32_uart0_print>
     6a0:	33848493          	addi	s1,s1,824 # 1338 <hex_symbols.0>
     6a4:	ffc00993          	li	s3,-4
     6a8:	008957b3          	srl	a5,s2,s0
     6ac:	00f7f793          	andi	a5,a5,15
     6b0:	00f487b3          	add	a5,s1,a5
     6b4:	0007c503          	lbu	a0,0(a5)
     6b8:	ffc40413          	addi	s0,s0,-4
     6bc:	480000ef          	jal	ra,b3c <neorv32_uart0_putc>
     6c0:	ff3414e3          	bne	s0,s3,6a8 <__neorv32_rte_print_hex_word+0x38>
     6c4:	01c12083          	lw	ra,28(sp)
     6c8:	01812403          	lw	s0,24(sp)
     6cc:	01412483          	lw	s1,20(sp)
     6d0:	01012903          	lw	s2,16(sp)
     6d4:	00c12983          	lw	s3,12(sp)
     6d8:	02010113          	addi	sp,sp,32
     6dc:	00008067          	ret

000006e0 <__neorv32_rte_debug_exc_handler>:
     6e0:	ff010113          	addi	sp,sp,-16
     6e4:	00112623          	sw	ra,12(sp)
     6e8:	00812423          	sw	s0,8(sp)
     6ec:	00912223          	sw	s1,4(sp)
     6f0:	390000ef          	jal	ra,a80 <neorv32_uart0_available>
     6f4:	1a050e63          	beqz	a0,8b0 <__neorv32_rte_debug_exc_handler+0x1d0>
     6f8:	00001537          	lui	a0,0x1
     6fc:	14850513          	addi	a0,a0,328 # 1148 <__etext+0x104>
     700:	454000ef          	jal	ra,b54 <neorv32_uart0_print>
     704:	34202473          	csrr	s0,mcause
     708:	00900713          	li	a4,9
     70c:	00f47793          	andi	a5,s0,15
     710:	03078493          	addi	s1,a5,48
     714:	00f77463          	bgeu	a4,a5,71c <__neorv32_rte_debug_exc_handler+0x3c>
     718:	05778493          	addi	s1,a5,87
     71c:	00b00793          	li	a5,11
     720:	0087ee63          	bltu	a5,s0,73c <__neorv32_rte_debug_exc_handler+0x5c>
     724:	00001737          	lui	a4,0x1
     728:	00241793          	slli	a5,s0,0x2
     72c:	30870713          	addi	a4,a4,776 # 1308 <__etext+0x2c4>
     730:	00e787b3          	add	a5,a5,a4
     734:	0007a783          	lw	a5,0(a5)
     738:	00078067          	jr	a5
     73c:	800007b7          	lui	a5,0x80000
     740:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     744:	14e40463          	beq	s0,a4,88c <__neorv32_rte_debug_exc_handler+0x1ac>
     748:	02876663          	bltu	a4,s0,774 <__neorv32_rte_debug_exc_handler+0x94>
     74c:	00378713          	addi	a4,a5,3
     750:	12e40263          	beq	s0,a4,874 <__neorv32_rte_debug_exc_handler+0x194>
     754:	00778793          	addi	a5,a5,7
     758:	12f40463          	beq	s0,a5,880 <__neorv32_rte_debug_exc_handler+0x1a0>
     75c:	00001537          	lui	a0,0x1
     760:	2a850513          	addi	a0,a0,680 # 12a8 <__etext+0x264>
     764:	3f0000ef          	jal	ra,b54 <neorv32_uart0_print>
     768:	00040513          	mv	a0,s0
     76c:	f05ff0ef          	jal	ra,670 <__neorv32_rte_print_hex_word>
     770:	0280006f          	j	798 <__neorv32_rte_debug_exc_handler+0xb8>
     774:	ff07c793          	xori	a5,a5,-16
     778:	00f407b3          	add	a5,s0,a5
     77c:	00f00713          	li	a4,15
     780:	fcf76ee3          	bltu	a4,a5,75c <__neorv32_rte_debug_exc_handler+0x7c>
     784:	00001537          	lui	a0,0x1
     788:	29850513          	addi	a0,a0,664 # 1298 <__etext+0x254>
     78c:	3c8000ef          	jal	ra,b54 <neorv32_uart0_print>
     790:	00048513          	mv	a0,s1
     794:	3a8000ef          	jal	ra,b3c <neorv32_uart0_putc>
     798:	00001537          	lui	a0,0x1
     79c:	2ec50513          	addi	a0,a0,748 # 12ec <__etext+0x2a8>
     7a0:	3b4000ef          	jal	ra,b54 <neorv32_uart0_print>
     7a4:	34002573          	csrr	a0,mscratch
     7a8:	ec9ff0ef          	jal	ra,670 <__neorv32_rte_print_hex_word>
     7ac:	00001537          	lui	a0,0x1
     7b0:	2f450513          	addi	a0,a0,756 # 12f4 <__etext+0x2b0>
     7b4:	3a0000ef          	jal	ra,b54 <neorv32_uart0_print>
     7b8:	34302573          	csrr	a0,mtval
     7bc:	eb5ff0ef          	jal	ra,670 <__neorv32_rte_print_hex_word>
     7c0:	00812403          	lw	s0,8(sp)
     7c4:	00c12083          	lw	ra,12(sp)
     7c8:	00412483          	lw	s1,4(sp)
     7cc:	00001537          	lui	a0,0x1
     7d0:	30050513          	addi	a0,a0,768 # 1300 <__etext+0x2bc>
     7d4:	01010113          	addi	sp,sp,16
     7d8:	37c0006f          	j	b54 <neorv32_uart0_print>
     7dc:	00001537          	lui	a0,0x1
     7e0:	15050513          	addi	a0,a0,336 # 1150 <__etext+0x10c>
     7e4:	370000ef          	jal	ra,b54 <neorv32_uart0_print>
     7e8:	fb1ff06f          	j	798 <__neorv32_rte_debug_exc_handler+0xb8>
     7ec:	00001537          	lui	a0,0x1
     7f0:	17050513          	addi	a0,a0,368 # 1170 <__etext+0x12c>
     7f4:	360000ef          	jal	ra,b54 <neorv32_uart0_print>
     7f8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     7fc:	0a07d463          	bgez	a5,8a4 <__neorv32_rte_debug_exc_handler+0x1c4>
     800:	0017f793          	andi	a5,a5,1
     804:	08078a63          	beqz	a5,898 <__neorv32_rte_debug_exc_handler+0x1b8>
     808:	00001537          	lui	a0,0x1
     80c:	2c050513          	addi	a0,a0,704 # 12c0 <__etext+0x27c>
     810:	fd5ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     814:	00001537          	lui	a0,0x1
     818:	18c50513          	addi	a0,a0,396 # 118c <__etext+0x148>
     81c:	fc9ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     820:	00001537          	lui	a0,0x1
     824:	1a050513          	addi	a0,a0,416 # 11a0 <__etext+0x15c>
     828:	fbdff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     82c:	00001537          	lui	a0,0x1
     830:	1ac50513          	addi	a0,a0,428 # 11ac <__etext+0x168>
     834:	fb1ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     838:	00001537          	lui	a0,0x1
     83c:	1c450513          	addi	a0,a0,452 # 11c4 <__etext+0x180>
     840:	fb5ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x114>
     844:	00001537          	lui	a0,0x1
     848:	1d850513          	addi	a0,a0,472 # 11d8 <__etext+0x194>
     84c:	f99ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     850:	00001537          	lui	a0,0x1
     854:	1f450513          	addi	a0,a0,500 # 11f4 <__etext+0x1b0>
     858:	f9dff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x114>
     85c:	00001537          	lui	a0,0x1
     860:	20850513          	addi	a0,a0,520 # 1208 <__etext+0x1c4>
     864:	f81ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     868:	00001537          	lui	a0,0x1
     86c:	22850513          	addi	a0,a0,552 # 1228 <__etext+0x1e4>
     870:	f75ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     874:	00001537          	lui	a0,0x1
     878:	24850513          	addi	a0,a0,584 # 1248 <__etext+0x204>
     87c:	f69ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     880:	00001537          	lui	a0,0x1
     884:	26450513          	addi	a0,a0,612 # 1264 <__etext+0x220>
     888:	f5dff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     88c:	00001537          	lui	a0,0x1
     890:	27c50513          	addi	a0,a0,636 # 127c <__etext+0x238>
     894:	f51ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     898:	00001537          	lui	a0,0x1
     89c:	2d050513          	addi	a0,a0,720 # 12d0 <__etext+0x28c>
     8a0:	f45ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     8a4:	00001537          	lui	a0,0x1
     8a8:	2e050513          	addi	a0,a0,736 # 12e0 <__etext+0x29c>
     8ac:	f39ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x104>
     8b0:	00c12083          	lw	ra,12(sp)
     8b4:	00812403          	lw	s0,8(sp)
     8b8:	00412483          	lw	s1,4(sp)
     8bc:	01010113          	addi	sp,sp,16
     8c0:	00008067          	ret

000008c4 <neorv32_rte_exception_uninstall>:
     8c4:	01f00793          	li	a5,31
     8c8:	02a7e263          	bltu	a5,a0,8ec <neorv32_rte_exception_uninstall+0x28>
     8cc:	800007b7          	lui	a5,0x80000
     8d0:	00251513          	slli	a0,a0,0x2
     8d4:	00078793          	mv	a5,a5
     8d8:	00a787b3          	add	a5,a5,a0
     8dc:	6e000713          	li	a4,1760
     8e0:	00e7a023          	sw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     8e4:	00000513          	li	a0,0
     8e8:	00008067          	ret
     8ec:	00100513          	li	a0,1
     8f0:	00008067          	ret

000008f4 <neorv32_rte_setup>:
     8f4:	ff010113          	addi	sp,sp,-16
     8f8:	00112623          	sw	ra,12(sp)
     8fc:	00812423          	sw	s0,8(sp)
     900:	00912223          	sw	s1,4(sp)
     904:	43000793          	li	a5,1072
     908:	30579073          	csrw	mtvec,a5
     90c:	00000413          	li	s0,0
     910:	01d00493          	li	s1,29
     914:	00040513          	mv	a0,s0
     918:	00140413          	addi	s0,s0,1
     91c:	0ff47413          	zext.b	s0,s0
     920:	fa5ff0ef          	jal	ra,8c4 <neorv32_rte_exception_uninstall>
     924:	fe9418e3          	bne	s0,s1,914 <neorv32_rte_setup+0x20>
     928:	00c12083          	lw	ra,12(sp)
     92c:	00812403          	lw	s0,8(sp)
     930:	00412483          	lw	s1,4(sp)
     934:	01010113          	addi	sp,sp,16
     938:	00008067          	ret

0000093c <__neorv32_uart_itoa>:
     93c:	fd010113          	addi	sp,sp,-48
     940:	02812423          	sw	s0,40(sp)
     944:	02912223          	sw	s1,36(sp)
     948:	03212023          	sw	s2,32(sp)
     94c:	01312e23          	sw	s3,28(sp)
     950:	01412c23          	sw	s4,24(sp)
     954:	02112623          	sw	ra,44(sp)
     958:	01512a23          	sw	s5,20(sp)
     95c:	00001a37          	lui	s4,0x1
     960:	00050493          	mv	s1,a0
     964:	00058413          	mv	s0,a1
     968:	00058523          	sb	zero,10(a1)
     96c:	00000993          	li	s3,0
     970:	00410913          	addi	s2,sp,4
     974:	35ca0a13          	addi	s4,s4,860 # 135c <numbers.1>
     978:	00a00593          	li	a1,10
     97c:	00048513          	mv	a0,s1
     980:	4bc000ef          	jal	ra,e3c <__umodsi3>
     984:	00aa0533          	add	a0,s4,a0
     988:	00054783          	lbu	a5,0(a0)
     98c:	01390ab3          	add	s5,s2,s3
     990:	00048513          	mv	a0,s1
     994:	00fa8023          	sb	a5,0(s5)
     998:	00a00593          	li	a1,10
     99c:	458000ef          	jal	ra,df4 <__hidden___udivsi3>
     9a0:	00198993          	addi	s3,s3,1
     9a4:	00a00793          	li	a5,10
     9a8:	00050493          	mv	s1,a0
     9ac:	fcf996e3          	bne	s3,a5,978 <__neorv32_uart_itoa+0x3c>
     9b0:	00090693          	mv	a3,s2
     9b4:	00900713          	li	a4,9
     9b8:	03000613          	li	a2,48
     9bc:	0096c583          	lbu	a1,9(a3)
     9c0:	00070793          	mv	a5,a4
     9c4:	fff70713          	addi	a4,a4,-1
     9c8:	01071713          	slli	a4,a4,0x10
     9cc:	01075713          	srli	a4,a4,0x10
     9d0:	00c59a63          	bne	a1,a2,9e4 <__neorv32_uart_itoa+0xa8>
     9d4:	000684a3          	sb	zero,9(a3)
     9d8:	fff68693          	addi	a3,a3,-1
     9dc:	fe0710e3          	bnez	a4,9bc <__neorv32_uart_itoa+0x80>
     9e0:	00000793          	li	a5,0
     9e4:	00f907b3          	add	a5,s2,a5
     9e8:	00000713          	li	a4,0
     9ec:	0007c683          	lbu	a3,0(a5)
     9f0:	00068c63          	beqz	a3,a08 <__neorv32_uart_itoa+0xcc>
     9f4:	00170613          	addi	a2,a4,1
     9f8:	00e40733          	add	a4,s0,a4
     9fc:	00d70023          	sb	a3,0(a4)
     a00:	01061713          	slli	a4,a2,0x10
     a04:	01075713          	srli	a4,a4,0x10
     a08:	fff78693          	addi	a3,a5,-1
     a0c:	02f91863          	bne	s2,a5,a3c <__neorv32_uart_itoa+0x100>
     a10:	00e40433          	add	s0,s0,a4
     a14:	00040023          	sb	zero,0(s0)
     a18:	02c12083          	lw	ra,44(sp)
     a1c:	02812403          	lw	s0,40(sp)
     a20:	02412483          	lw	s1,36(sp)
     a24:	02012903          	lw	s2,32(sp)
     a28:	01c12983          	lw	s3,28(sp)
     a2c:	01812a03          	lw	s4,24(sp)
     a30:	01412a83          	lw	s5,20(sp)
     a34:	03010113          	addi	sp,sp,48
     a38:	00008067          	ret
     a3c:	00068793          	mv	a5,a3
     a40:	fadff06f          	j	9ec <__neorv32_uart_itoa+0xb0>

00000a44 <__neorv32_uart_tohex>:
     a44:	00001637          	lui	a2,0x1
     a48:	00758693          	addi	a3,a1,7
     a4c:	00000713          	li	a4,0
     a50:	34860613          	addi	a2,a2,840 # 1348 <symbols.0>
     a54:	02000813          	li	a6,32
     a58:	00e557b3          	srl	a5,a0,a4
     a5c:	00f7f793          	andi	a5,a5,15
     a60:	00f607b3          	add	a5,a2,a5
     a64:	0007c783          	lbu	a5,0(a5)
     a68:	00470713          	addi	a4,a4,4
     a6c:	fff68693          	addi	a3,a3,-1
     a70:	00f680a3          	sb	a5,1(a3)
     a74:	ff0712e3          	bne	a4,a6,a58 <__neorv32_uart_tohex+0x14>
     a78:	00058423          	sb	zero,8(a1)
     a7c:	00008067          	ret

00000a80 <neorv32_uart0_available>:
     a80:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     a84:	01255513          	srli	a0,a0,0x12
     a88:	00157513          	andi	a0,a0,1
     a8c:	00008067          	ret

00000a90 <neorv32_uart0_setup>:
     a90:	ff010113          	addi	sp,sp,-16
     a94:	00812423          	sw	s0,8(sp)
     a98:	00912223          	sw	s1,4(sp)
     a9c:	00112623          	sw	ra,12(sp)
     aa0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     aa4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     aa8:	00058413          	mv	s0,a1
     aac:	00151593          	slli	a1,a0,0x1
     ab0:	00078513          	mv	a0,a5
     ab4:	00060493          	mv	s1,a2
     ab8:	33c000ef          	jal	ra,df4 <__hidden___udivsi3>
     abc:	01051513          	slli	a0,a0,0x10
     ac0:	000017b7          	lui	a5,0x1
     ac4:	01055513          	srli	a0,a0,0x10
     ac8:	00000713          	li	a4,0
     acc:	ffe78793          	addi	a5,a5,-2 # ffe <memcpy+0x15e>
     ad0:	04a7e463          	bltu	a5,a0,b18 <neorv32_uart0_setup+0x88>
     ad4:	0034f493          	andi	s1,s1,3
     ad8:	01449493          	slli	s1,s1,0x14
     adc:	00347413          	andi	s0,s0,3
     ae0:	fff50793          	addi	a5,a0,-1
     ae4:	0097e7b3          	or	a5,a5,s1
     ae8:	01641413          	slli	s0,s0,0x16
     aec:	0087e7b3          	or	a5,a5,s0
     af0:	01871713          	slli	a4,a4,0x18
     af4:	00c12083          	lw	ra,12(sp)
     af8:	00812403          	lw	s0,8(sp)
     afc:	00e7e7b3          	or	a5,a5,a4
     b00:	10000737          	lui	a4,0x10000
     b04:	00e7e7b3          	or	a5,a5,a4
     b08:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     b0c:	00412483          	lw	s1,4(sp)
     b10:	01010113          	addi	sp,sp,16
     b14:	00008067          	ret
     b18:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffec96>
     b1c:	0fd6f693          	andi	a3,a3,253
     b20:	00069a63          	bnez	a3,b34 <neorv32_uart0_setup+0xa4>
     b24:	00355513          	srli	a0,a0,0x3
     b28:	00170713          	addi	a4,a4,1
     b2c:	0ff77713          	zext.b	a4,a4
     b30:	fa1ff06f          	j	ad0 <neorv32_uart0_setup+0x40>
     b34:	00155513          	srli	a0,a0,0x1
     b38:	ff1ff06f          	j	b28 <neorv32_uart0_setup+0x98>

00000b3c <neorv32_uart0_putc>:
     b3c:	00040737          	lui	a4,0x40
     b40:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     b44:	00e7f7b3          	and	a5,a5,a4
     b48:	fe079ce3          	bnez	a5,b40 <neorv32_uart0_putc+0x4>
     b4c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     b50:	00008067          	ret

00000b54 <neorv32_uart0_print>:
     b54:	ff010113          	addi	sp,sp,-16
     b58:	00812423          	sw	s0,8(sp)
     b5c:	01212023          	sw	s2,0(sp)
     b60:	00112623          	sw	ra,12(sp)
     b64:	00912223          	sw	s1,4(sp)
     b68:	00050413          	mv	s0,a0
     b6c:	00a00913          	li	s2,10
     b70:	00044483          	lbu	s1,0(s0)
     b74:	00140413          	addi	s0,s0,1
     b78:	00049e63          	bnez	s1,b94 <neorv32_uart0_print+0x40>
     b7c:	00c12083          	lw	ra,12(sp)
     b80:	00812403          	lw	s0,8(sp)
     b84:	00412483          	lw	s1,4(sp)
     b88:	00012903          	lw	s2,0(sp)
     b8c:	01010113          	addi	sp,sp,16
     b90:	00008067          	ret
     b94:	01249663          	bne	s1,s2,ba0 <neorv32_uart0_print+0x4c>
     b98:	00d00513          	li	a0,13
     b9c:	fa1ff0ef          	jal	ra,b3c <neorv32_uart0_putc>
     ba0:	00048513          	mv	a0,s1
     ba4:	f99ff0ef          	jal	ra,b3c <neorv32_uart0_putc>
     ba8:	fc9ff06f          	j	b70 <neorv32_uart0_print+0x1c>

00000bac <neorv32_uart0_printf>:
     bac:	fa010113          	addi	sp,sp,-96
     bb0:	04f12a23          	sw	a5,84(sp)
     bb4:	04410793          	addi	a5,sp,68
     bb8:	02812c23          	sw	s0,56(sp)
     bbc:	03212823          	sw	s2,48(sp)
     bc0:	03312623          	sw	s3,44(sp)
     bc4:	03412423          	sw	s4,40(sp)
     bc8:	03512223          	sw	s5,36(sp)
     bcc:	03612023          	sw	s6,32(sp)
     bd0:	01712e23          	sw	s7,28(sp)
     bd4:	01812c23          	sw	s8,24(sp)
     bd8:	02112e23          	sw	ra,60(sp)
     bdc:	02912a23          	sw	s1,52(sp)
     be0:	00050413          	mv	s0,a0
     be4:	04b12223          	sw	a1,68(sp)
     be8:	04c12423          	sw	a2,72(sp)
     bec:	04d12623          	sw	a3,76(sp)
     bf0:	04e12823          	sw	a4,80(sp)
     bf4:	05012c23          	sw	a6,88(sp)
     bf8:	05112e23          	sw	a7,92(sp)
     bfc:	00f12023          	sw	a5,0(sp)
     c00:	02500993          	li	s3,37
     c04:	00a00a13          	li	s4,10
     c08:	07300913          	li	s2,115
     c0c:	07500a93          	li	s5,117
     c10:	07800b13          	li	s6,120
     c14:	06300b93          	li	s7,99
     c18:	06900c13          	li	s8,105
     c1c:	00044483          	lbu	s1,0(s0)
     c20:	02049a63          	bnez	s1,c54 <neorv32_uart0_printf+0xa8>
     c24:	03c12083          	lw	ra,60(sp)
     c28:	03812403          	lw	s0,56(sp)
     c2c:	03412483          	lw	s1,52(sp)
     c30:	03012903          	lw	s2,48(sp)
     c34:	02c12983          	lw	s3,44(sp)
     c38:	02812a03          	lw	s4,40(sp)
     c3c:	02412a83          	lw	s5,36(sp)
     c40:	02012b03          	lw	s6,32(sp)
     c44:	01c12b83          	lw	s7,28(sp)
     c48:	01812c03          	lw	s8,24(sp)
     c4c:	06010113          	addi	sp,sp,96
     c50:	00008067          	ret
     c54:	0d349663          	bne	s1,s3,d20 <neorv32_uart0_printf+0x174>
     c58:	00144483          	lbu	s1,1(s0)
     c5c:	05248263          	beq	s1,s2,ca0 <neorv32_uart0_printf+0xf4>
     c60:	00996e63          	bltu	s2,s1,c7c <neorv32_uart0_printf+0xd0>
     c64:	05748c63          	beq	s1,s7,cbc <neorv32_uart0_printf+0x110>
     c68:	07848663          	beq	s1,s8,cd4 <neorv32_uart0_printf+0x128>
     c6c:	02500513          	li	a0,37
     c70:	ecdff0ef          	jal	ra,b3c <neorv32_uart0_putc>
     c74:	00048513          	mv	a0,s1
     c78:	0540006f          	j	ccc <neorv32_uart0_printf+0x120>
     c7c:	09548663          	beq	s1,s5,d08 <neorv32_uart0_printf+0x15c>
     c80:	ff6496e3          	bne	s1,s6,c6c <neorv32_uart0_printf+0xc0>
     c84:	00012783          	lw	a5,0(sp)
     c88:	00410593          	addi	a1,sp,4
     c8c:	0007a503          	lw	a0,0(a5)
     c90:	00478713          	addi	a4,a5,4
     c94:	00e12023          	sw	a4,0(sp)
     c98:	dadff0ef          	jal	ra,a44 <__neorv32_uart_tohex>
     c9c:	0640006f          	j	d00 <neorv32_uart0_printf+0x154>
     ca0:	00012783          	lw	a5,0(sp)
     ca4:	0007a503          	lw	a0,0(a5)
     ca8:	00478713          	addi	a4,a5,4
     cac:	00e12023          	sw	a4,0(sp)
     cb0:	ea5ff0ef          	jal	ra,b54 <neorv32_uart0_print>
     cb4:	00240413          	addi	s0,s0,2
     cb8:	f65ff06f          	j	c1c <neorv32_uart0_printf+0x70>
     cbc:	00012783          	lw	a5,0(sp)
     cc0:	0007c503          	lbu	a0,0(a5)
     cc4:	00478713          	addi	a4,a5,4
     cc8:	00e12023          	sw	a4,0(sp)
     ccc:	e71ff0ef          	jal	ra,b3c <neorv32_uart0_putc>
     cd0:	fe5ff06f          	j	cb4 <neorv32_uart0_printf+0x108>
     cd4:	00012783          	lw	a5,0(sp)
     cd8:	0007a483          	lw	s1,0(a5)
     cdc:	00478713          	addi	a4,a5,4
     ce0:	00e12023          	sw	a4,0(sp)
     ce4:	0004d863          	bgez	s1,cf4 <neorv32_uart0_printf+0x148>
     ce8:	02d00513          	li	a0,45
     cec:	409004b3          	neg	s1,s1
     cf0:	e4dff0ef          	jal	ra,b3c <neorv32_uart0_putc>
     cf4:	00410593          	addi	a1,sp,4
     cf8:	00048513          	mv	a0,s1
     cfc:	c41ff0ef          	jal	ra,93c <__neorv32_uart_itoa>
     d00:	00410513          	addi	a0,sp,4
     d04:	fadff06f          	j	cb0 <neorv32_uart0_printf+0x104>
     d08:	00012783          	lw	a5,0(sp)
     d0c:	00410593          	addi	a1,sp,4
     d10:	00478713          	addi	a4,a5,4
     d14:	0007a503          	lw	a0,0(a5)
     d18:	00e12023          	sw	a4,0(sp)
     d1c:	fe1ff06f          	j	cfc <neorv32_uart0_printf+0x150>
     d20:	01449663          	bne	s1,s4,d2c <neorv32_uart0_printf+0x180>
     d24:	00d00513          	li	a0,13
     d28:	e15ff0ef          	jal	ra,b3c <neorv32_uart0_putc>
     d2c:	00048513          	mv	a0,s1
     d30:	00140413          	addi	s0,s0,1
     d34:	e09ff0ef          	jal	ra,b3c <neorv32_uart0_putc>
     d38:	ee5ff06f          	j	c1c <neorv32_uart0_printf+0x70>

00000d3c <__mulsi3>:
     d3c:	00050613          	mv	a2,a0
     d40:	00000513          	li	a0,0
     d44:	0015f693          	andi	a3,a1,1
     d48:	00068463          	beqz	a3,d50 <__mulsi3+0x14>
     d4c:	00c50533          	add	a0,a0,a2
     d50:	0015d593          	srli	a1,a1,0x1
     d54:	00161613          	slli	a2,a2,0x1
     d58:	fe0596e3          	bnez	a1,d44 <__mulsi3+0x8>
     d5c:	00008067          	ret

00000d60 <__muldi3>:
     d60:	00050e13          	mv	t3,a0
     d64:	ff010113          	addi	sp,sp,-16
     d68:	00068313          	mv	t1,a3
     d6c:	00112623          	sw	ra,12(sp)
     d70:	00060513          	mv	a0,a2
     d74:	000e0893          	mv	a7,t3
     d78:	00060693          	mv	a3,a2
     d7c:	00000713          	li	a4,0
     d80:	00000793          	li	a5,0
     d84:	00000813          	li	a6,0
     d88:	0016fe93          	andi	t4,a3,1
     d8c:	00171613          	slli	a2,a4,0x1
     d90:	000e8a63          	beqz	t4,da4 <__muldi3+0x44>
     d94:	01088833          	add	a6,a7,a6
     d98:	00e787b3          	add	a5,a5,a4
     d9c:	01183733          	sltu	a4,a6,a7
     da0:	00f707b3          	add	a5,a4,a5
     da4:	01f8d713          	srli	a4,a7,0x1f
     da8:	0016d693          	srli	a3,a3,0x1
     dac:	00e66733          	or	a4,a2,a4
     db0:	00189893          	slli	a7,a7,0x1
     db4:	fc069ae3          	bnez	a3,d88 <__muldi3+0x28>
     db8:	00058663          	beqz	a1,dc4 <__muldi3+0x64>
     dbc:	f81ff0ef          	jal	ra,d3c <__mulsi3>
     dc0:	00a787b3          	add	a5,a5,a0
     dc4:	00030a63          	beqz	t1,dd8 <__muldi3+0x78>
     dc8:	000e0513          	mv	a0,t3
     dcc:	00030593          	mv	a1,t1
     dd0:	f6dff0ef          	jal	ra,d3c <__mulsi3>
     dd4:	00f507b3          	add	a5,a0,a5
     dd8:	00c12083          	lw	ra,12(sp)
     ddc:	00080513          	mv	a0,a6
     de0:	00078593          	mv	a1,a5
     de4:	01010113          	addi	sp,sp,16
     de8:	00008067          	ret

00000dec <__divsi3>:
     dec:	06054063          	bltz	a0,e4c <__umodsi3+0x10>
     df0:	0605c663          	bltz	a1,e5c <__umodsi3+0x20>

00000df4 <__hidden___udivsi3>:
     df4:	00058613          	mv	a2,a1
     df8:	00050593          	mv	a1,a0
     dfc:	fff00513          	li	a0,-1
     e00:	02060c63          	beqz	a2,e38 <__hidden___udivsi3+0x44>
     e04:	00100693          	li	a3,1
     e08:	00b67a63          	bgeu	a2,a1,e1c <__hidden___udivsi3+0x28>
     e0c:	00c05863          	blez	a2,e1c <__hidden___udivsi3+0x28>
     e10:	00161613          	slli	a2,a2,0x1
     e14:	00169693          	slli	a3,a3,0x1
     e18:	feb66ae3          	bltu	a2,a1,e0c <__hidden___udivsi3+0x18>
     e1c:	00000513          	li	a0,0
     e20:	00c5e663          	bltu	a1,a2,e2c <__hidden___udivsi3+0x38>
     e24:	40c585b3          	sub	a1,a1,a2
     e28:	00d56533          	or	a0,a0,a3
     e2c:	0016d693          	srli	a3,a3,0x1
     e30:	00165613          	srli	a2,a2,0x1
     e34:	fe0696e3          	bnez	a3,e20 <__hidden___udivsi3+0x2c>
     e38:	00008067          	ret

00000e3c <__umodsi3>:
     e3c:	00008293          	mv	t0,ra
     e40:	fb5ff0ef          	jal	ra,df4 <__hidden___udivsi3>
     e44:	00058513          	mv	a0,a1
     e48:	00028067          	jr	t0
     e4c:	40a00533          	neg	a0,a0
     e50:	00b04863          	bgtz	a1,e60 <__umodsi3+0x24>
     e54:	40b005b3          	neg	a1,a1
     e58:	f9dff06f          	j	df4 <__hidden___udivsi3>
     e5c:	40b005b3          	neg	a1,a1
     e60:	00008293          	mv	t0,ra
     e64:	f91ff0ef          	jal	ra,df4 <__hidden___udivsi3>
     e68:	40a00533          	neg	a0,a0
     e6c:	00028067          	jr	t0

00000e70 <__modsi3>:
     e70:	00008293          	mv	t0,ra
     e74:	0005ca63          	bltz	a1,e88 <__modsi3+0x18>
     e78:	00054c63          	bltz	a0,e90 <__modsi3+0x20>
     e7c:	f79ff0ef          	jal	ra,df4 <__hidden___udivsi3>
     e80:	00058513          	mv	a0,a1
     e84:	00028067          	jr	t0
     e88:	40b005b3          	neg	a1,a1
     e8c:	fe0558e3          	bgez	a0,e7c <__modsi3+0xc>
     e90:	40a00533          	neg	a0,a0
     e94:	f61ff0ef          	jal	ra,df4 <__hidden___udivsi3>
     e98:	40b00533          	neg	a0,a1
     e9c:	00028067          	jr	t0

00000ea0 <memcpy>:
     ea0:	00b547b3          	xor	a5,a0,a1
     ea4:	0037f793          	andi	a5,a5,3
     ea8:	00c508b3          	add	a7,a0,a2
     eac:	06079463          	bnez	a5,f14 <memcpy+0x74>
     eb0:	00300793          	li	a5,3
     eb4:	06c7f063          	bgeu	a5,a2,f14 <memcpy+0x74>
     eb8:	00357793          	andi	a5,a0,3
     ebc:	00050713          	mv	a4,a0
     ec0:	06079a63          	bnez	a5,f34 <memcpy+0x94>
     ec4:	ffc8f613          	andi	a2,a7,-4
     ec8:	40e606b3          	sub	a3,a2,a4
     ecc:	02000793          	li	a5,32
     ed0:	08d7ce63          	blt	a5,a3,f6c <memcpy+0xcc>
     ed4:	00058693          	mv	a3,a1
     ed8:	00070793          	mv	a5,a4
     edc:	02c77863          	bgeu	a4,a2,f0c <memcpy+0x6c>
     ee0:	0006a803          	lw	a6,0(a3)
     ee4:	00478793          	addi	a5,a5,4
     ee8:	00468693          	addi	a3,a3,4
     eec:	ff07ae23          	sw	a6,-4(a5)
     ef0:	fec7e8e3          	bltu	a5,a2,ee0 <memcpy+0x40>
     ef4:	fff60793          	addi	a5,a2,-1
     ef8:	40e787b3          	sub	a5,a5,a4
     efc:	ffc7f793          	andi	a5,a5,-4
     f00:	00478793          	addi	a5,a5,4
     f04:	00f70733          	add	a4,a4,a5
     f08:	00f585b3          	add	a1,a1,a5
     f0c:	01176863          	bltu	a4,a7,f1c <memcpy+0x7c>
     f10:	00008067          	ret
     f14:	00050713          	mv	a4,a0
     f18:	05157863          	bgeu	a0,a7,f68 <memcpy+0xc8>
     f1c:	0005c783          	lbu	a5,0(a1)
     f20:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3ec99>
     f24:	00158593          	addi	a1,a1,1
     f28:	fef70fa3          	sb	a5,-1(a4)
     f2c:	fee898e3          	bne	a7,a4,f1c <memcpy+0x7c>
     f30:	00008067          	ret
     f34:	0005c683          	lbu	a3,0(a1)
     f38:	00170713          	addi	a4,a4,1
     f3c:	00377793          	andi	a5,a4,3
     f40:	fed70fa3          	sb	a3,-1(a4)
     f44:	00158593          	addi	a1,a1,1
     f48:	f6078ee3          	beqz	a5,ec4 <memcpy+0x24>
     f4c:	0005c683          	lbu	a3,0(a1)
     f50:	00170713          	addi	a4,a4,1
     f54:	00377793          	andi	a5,a4,3
     f58:	fed70fa3          	sb	a3,-1(a4)
     f5c:	00158593          	addi	a1,a1,1
     f60:	fc079ae3          	bnez	a5,f34 <memcpy+0x94>
     f64:	f61ff06f          	j	ec4 <memcpy+0x24>
     f68:	00008067          	ret
     f6c:	ff010113          	addi	sp,sp,-16
     f70:	00812623          	sw	s0,12(sp)
     f74:	02000413          	li	s0,32
     f78:	0005a383          	lw	t2,0(a1)
     f7c:	0045a283          	lw	t0,4(a1)
     f80:	0085af83          	lw	t6,8(a1)
     f84:	00c5af03          	lw	t5,12(a1)
     f88:	0105ae83          	lw	t4,16(a1)
     f8c:	0145ae03          	lw	t3,20(a1)
     f90:	0185a303          	lw	t1,24(a1)
     f94:	01c5a803          	lw	a6,28(a1)
     f98:	0205a683          	lw	a3,32(a1)
     f9c:	02470713          	addi	a4,a4,36
     fa0:	40e607b3          	sub	a5,a2,a4
     fa4:	fc772e23          	sw	t2,-36(a4)
     fa8:	fe572023          	sw	t0,-32(a4)
     fac:	fff72223          	sw	t6,-28(a4)
     fb0:	ffe72423          	sw	t5,-24(a4)
     fb4:	ffd72623          	sw	t4,-20(a4)
     fb8:	ffc72823          	sw	t3,-16(a4)
     fbc:	fe672a23          	sw	t1,-12(a4)
     fc0:	ff072c23          	sw	a6,-8(a4)
     fc4:	fed72e23          	sw	a3,-4(a4)
     fc8:	02458593          	addi	a1,a1,36
     fcc:	faf446e3          	blt	s0,a5,f78 <memcpy+0xd8>
     fd0:	00058693          	mv	a3,a1
     fd4:	00070793          	mv	a5,a4
     fd8:	02c77863          	bgeu	a4,a2,1008 <memcpy+0x168>
     fdc:	0006a803          	lw	a6,0(a3)
     fe0:	00478793          	addi	a5,a5,4
     fe4:	00468693          	addi	a3,a3,4
     fe8:	ff07ae23          	sw	a6,-4(a5)
     fec:	fec7e8e3          	bltu	a5,a2,fdc <memcpy+0x13c>
     ff0:	fff60793          	addi	a5,a2,-1
     ff4:	40e787b3          	sub	a5,a5,a4
     ff8:	ffc7f793          	andi	a5,a5,-4
     ffc:	00478793          	addi	a5,a5,4
    1000:	00f70733          	add	a4,a4,a5
    1004:	00f585b3          	add	a1,a1,a5
    1008:	01176863          	bltu	a4,a7,1018 <memcpy+0x178>
    100c:	00c12403          	lw	s0,12(sp)
    1010:	01010113          	addi	sp,sp,16
    1014:	00008067          	ret
    1018:	0005c783          	lbu	a5,0(a1)
    101c:	00170713          	addi	a4,a4,1
    1020:	00158593          	addi	a1,a1,1
    1024:	fef70fa3          	sb	a5,-1(a4)
    1028:	fee882e3          	beq	a7,a4,100c <memcpy+0x16c>
    102c:	0005c783          	lbu	a5,0(a1)
    1030:	00170713          	addi	a4,a4,1
    1034:	00158593          	addi	a1,a1,1
    1038:	fef70fa3          	sb	a5,-1(a4)
    103c:	fce89ee3          	bne	a7,a4,1018 <memcpy+0x178>
    1040:	fcdff06f          	j	100c <memcpy+0x16c>
