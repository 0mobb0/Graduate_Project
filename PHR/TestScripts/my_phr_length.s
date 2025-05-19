
b64.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <TestLoop>:
   0:	53                   	push   %rbx
   1:	55                   	push   %rbp
   2:	41 54                	push   %r12
   4:	41 55                	push   %r13
   6:	41 56                	push   %r14
   8:	41 57                	push   %r15
   a:	41 89 ff             	mov    %edi,%r15d
   d:	b9 10 27 00 00       	mov    $0x2710,%ecx
  12:	b8 01 00 00 00       	mov    $0x1,%eax
  17:	90                   	nop
  18:	90                   	nop
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop
  1c:	90                   	nop
  1d:	90                   	nop
  1e:	90                   	nop
  1f:	90                   	nop

0000000000000020 <Warmuploop>:
  20:	0f af c1             	imul   %ecx,%eax
  23:	0f af c1             	imul   %ecx,%eax
  26:	0f af c1             	imul   %ecx,%eax
  29:	0f af c1             	imul   %ecx,%eax
  2c:	0f af c1             	imul   %ecx,%eax
  2f:	0f af c1             	imul   %ecx,%eax
  32:	0f af c1             	imul   %ecx,%eax
  35:	0f af c1             	imul   %ecx,%eax
  38:	0f af c1             	imul   %ecx,%eax
  3b:	0f af c1             	imul   %ecx,%eax
  3e:	ff c9                	dec    %ecx
  40:	75 de                	jne    20 <Warmuploop>
  42:	9b db e3             	finit  
  45:	c5 fc 77             	vzeroall 
  48:	41 69 c7 00 04 00 00 	imul   $0x400,%r15d,%eax
  4f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 56 <Warmuploop+0x36>
  56:	48 01 c6             	add    %rax,%rsi
  59:	48 8d be 00 02 00 00 	lea    0x200(%rsi),%rdi
  60:	31 ed                	xor    %ebp,%ebp
  62:	4c 8d 2d 00 00 00 00 	lea    0x0(%rip),%r13        # 69 <Warmuploop+0x49>
  69:	41 69 c7 80 01 00 00 	imul   $0x180,%r15d,%eax
  70:	49 01 c5             	add    %rax,%r13
  73:	49 89 a5 68 01 00 00 	mov    %rsp,0x168(%r13)
  7a:	45 31 f6             	xor    %r14d,%r14d

000000000000007d <TEST_LOOP_1>:
  7d:	31 c0                	xor    %eax,%eax
  7f:	0f a2                	cpuid  
  81:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 87 <TEST_LOOP_1+0xa>
  87:	0f 33                	rdpmc  
  89:	41 89 45 04          	mov    %eax,0x4(%r13)
  8d:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 93 <TEST_LOOP_1+0x16>
  93:	0f 33                	rdpmc  
  95:	41 89 45 08          	mov    %eax,0x8(%r13)
  99:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 9f <TEST_LOOP_1+0x22>
  9f:	0f 33                	rdpmc  
  a1:	41 89 45 0c          	mov    %eax,0xc(%r13)
  a5:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # ab <TEST_LOOP_1+0x2e>
  ab:	0f 33                	rdpmc  
  ad:	41 89 45 10          	mov    %eax,0x10(%r13)
  b1:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # b7 <TEST_LOOP_1+0x3a>
  b7:	0f 33                	rdpmc  
  b9:	41 89 45 14          	mov    %eax,0x14(%r13)
  bd:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # c3 <TEST_LOOP_1+0x46>
  c3:	0f 33                	rdpmc  
  c5:	41 89 45 18          	mov    %eax,0x18(%r13)
  c9:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # cf <TEST_LOOP_1+0x52>
  cf:	0f 33                	rdpmc  
  d1:	41 89 45 1c          	mov    %eax,0x1c(%r13)
  d5:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # db <TEST_LOOP_1+0x5e>
  db:	0f 33                	rdpmc  
  dd:	41 89 45 20          	mov    %eax,0x20(%r13)
  e1:	31 c0                	xor    %eax,%eax
  e3:	0f a2                	cpuid  
  e5:	0f 31                	rdtsc  
  e7:	41 89 45 00          	mov    %eax,0x0(%r13)
  eb:	31 c0                	xor    %eax,%eax
  ed:	0f a2                	cpuid  
  ef:	31 c0                	xor    %eax,%eax
  f1:	0f a2                	cpuid  
  f3:	0f 31                	rdtsc  
  f5:	41 29 45 00          	sub    %eax,0x0(%r13)
  f9:	31 c0                	xor    %eax,%eax
  fb:	0f a2                	cpuid  
  fd:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 103 <TEST_LOOP_1+0x86>
 103:	0f 33                	rdpmc  
 105:	41 29 45 04          	sub    %eax,0x4(%r13)
 109:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 10f <TEST_LOOP_1+0x92>
 10f:	0f 33                	rdpmc  
 111:	41 29 45 08          	sub    %eax,0x8(%r13)
 115:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 11b <TEST_LOOP_1+0x9e>
 11b:	0f 33                	rdpmc  
 11d:	41 29 45 0c          	sub    %eax,0xc(%r13)
 121:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 127 <TEST_LOOP_1+0xaa>
 127:	0f 33                	rdpmc  
 129:	41 29 45 10          	sub    %eax,0x10(%r13)
 12d:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 133 <TEST_LOOP_1+0xb6>
 133:	0f 33                	rdpmc  
 135:	41 29 45 14          	sub    %eax,0x14(%r13)
 139:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 13f <TEST_LOOP_1+0xc2>
 13f:	0f 33                	rdpmc  
 141:	41 29 45 18          	sub    %eax,0x18(%r13)
 145:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 14b <TEST_LOOP_1+0xce>
 14b:	0f 33                	rdpmc  
 14d:	41 29 45 1c          	sub    %eax,0x1c(%r13)
 151:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 157 <TEST_LOOP_1+0xda>
 157:	0f 33                	rdpmc  
 159:	41 29 45 20          	sub    %eax,0x20(%r13)
 15d:	31 c0                	xor    %eax,%eax
 15f:	0f a2                	cpuid  
 161:	41 8b 45 00          	mov    0x0(%r13),%eax
 165:	f7 d8                	neg    %eax
 167:	41 8b 5d 24          	mov    0x24(%r13),%ebx
 16b:	39 d8                	cmp    %ebx,%eax
 16d:	0f 42 d8             	cmovb  %eax,%ebx
 170:	41 89 5d 24          	mov    %ebx,0x24(%r13)
 174:	41 8b 45 04          	mov    0x4(%r13),%eax
 178:	f7 d8                	neg    %eax
 17a:	41 8b 5d 28          	mov    0x28(%r13),%ebx
 17e:	39 d8                	cmp    %ebx,%eax
 180:	0f 42 d8             	cmovb  %eax,%ebx
 183:	41 89 5d 28          	mov    %ebx,0x28(%r13)
 187:	41 8b 45 08          	mov    0x8(%r13),%eax
 18b:	f7 d8                	neg    %eax
 18d:	41 8b 5d 2c          	mov    0x2c(%r13),%ebx
 191:	39 d8                	cmp    %ebx,%eax
 193:	0f 42 d8             	cmovb  %eax,%ebx
 196:	41 89 5d 2c          	mov    %ebx,0x2c(%r13)
 19a:	41 8b 45 0c          	mov    0xc(%r13),%eax
 19e:	f7 d8                	neg    %eax
 1a0:	41 8b 5d 30          	mov    0x30(%r13),%ebx
 1a4:	39 d8                	cmp    %ebx,%eax
 1a6:	0f 42 d8             	cmovb  %eax,%ebx
 1a9:	41 89 5d 30          	mov    %ebx,0x30(%r13)
 1ad:	41 8b 45 10          	mov    0x10(%r13),%eax
 1b1:	f7 d8                	neg    %eax
 1b3:	41 8b 5d 34          	mov    0x34(%r13),%ebx
 1b7:	39 d8                	cmp    %ebx,%eax
 1b9:	0f 42 d8             	cmovb  %eax,%ebx
 1bc:	41 89 5d 34          	mov    %ebx,0x34(%r13)
 1c0:	41 8b 45 14          	mov    0x14(%r13),%eax
 1c4:	f7 d8                	neg    %eax
 1c6:	41 8b 5d 38          	mov    0x38(%r13),%ebx
 1ca:	39 d8                	cmp    %ebx,%eax
 1cc:	0f 42 d8             	cmovb  %eax,%ebx
 1cf:	41 89 5d 38          	mov    %ebx,0x38(%r13)
 1d3:	41 8b 45 18          	mov    0x18(%r13),%eax
 1d7:	f7 d8                	neg    %eax
 1d9:	41 8b 5d 3c          	mov    0x3c(%r13),%ebx
 1dd:	39 d8                	cmp    %ebx,%eax
 1df:	0f 42 d8             	cmovb  %eax,%ebx
 1e2:	41 89 5d 3c          	mov    %ebx,0x3c(%r13)
 1e6:	41 8b 45 1c          	mov    0x1c(%r13),%eax
 1ea:	f7 d8                	neg    %eax
 1ec:	41 8b 5d 40          	mov    0x40(%r13),%ebx
 1f0:	39 d8                	cmp    %ebx,%eax
 1f2:	0f 42 d8             	cmovb  %eax,%ebx
 1f5:	41 89 5d 40          	mov    %ebx,0x40(%r13)
 1f9:	41 8b 45 20          	mov    0x20(%r13),%eax
 1fd:	f7 d8                	neg    %eax
 1ff:	41 8b 5d 44          	mov    0x44(%r13),%ebx
 203:	39 d8                	cmp    %ebx,%eax
 205:	0f 42 d8             	cmovb  %eax,%ebx
 208:	41 89 5d 44          	mov    %ebx,0x44(%r13)
 20c:	41 ff c6             	inc    %r14d
 20f:	41 83 fe 04          	cmp    $0x4,%r14d
 213:	0f 82 64 fe ff ff    	jb     7d <TEST_LOOP_1>
 219:	45 31 f6             	xor    %r14d,%r14d

000000000000021c <TEST_LOOP_2>:
 21c:	31 c0                	xor    %eax,%eax
 21e:	0f a2                	cpuid  
 220:	31 c0                	xor    %eax,%eax
 222:	41 89 45 04          	mov    %eax,0x4(%r13)
 226:	31 c0                	xor    %eax,%eax
 228:	41 89 45 08          	mov    %eax,0x8(%r13)
 22c:	31 c0                	xor    %eax,%eax
 22e:	41 89 45 0c          	mov    %eax,0xc(%r13)
 232:	31 c0                	xor    %eax,%eax
 234:	41 89 45 10          	mov    %eax,0x10(%r13)
 238:	31 c0                	xor    %eax,%eax
 23a:	41 89 45 14          	mov    %eax,0x14(%r13)
 23e:	31 c0                	xor    %eax,%eax
 240:	41 89 45 18          	mov    %eax,0x18(%r13)
 244:	31 c0                	xor    %eax,%eax
 246:	41 89 45 1c          	mov    %eax,0x1c(%r13)
 24a:	31 c0                	xor    %eax,%eax
 24c:	41 89 45 20          	mov    %eax,0x20(%r13)
 250:	31 c0                	xor    %eax,%eax
 252:	0f a2                	cpuid  
 254:	31 c0                	xor    %eax,%eax
 256:	41 89 45 00          	mov    %eax,0x0(%r13)
 25a:	31 c0                	xor    %eax,%eax
 25c:	0f a2                	cpuid  
 25e:	bf e8 03 00 00       	mov    $0x3e8,%edi
 263:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 26a <TEST_LOOP_2+0x4e>
 26a:	48 89 1d 00 00 00 00 	mov    %rbx,0x0(%rip)        # 271 <TEST_LOOP_2+0x55>
 271:	48 89 0d 00 00 00 00 	mov    %rcx,0x0(%rip)        # 278 <TEST_LOOP_2+0x5c>
 278:	48 89 15 00 00 00 00 	mov    %rdx,0x0(%rip)        # 27f <TEST_LOOP_2+0x63>
 27f:	31 c0                	xor    %eax,%eax
 281:	0f a2                	cpuid  
 283:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 289 <TEST_LOOP_2+0x6d>
 289:	0f 33                	rdpmc  
 28b:	41 01 45 04          	add    %eax,0x4(%r13)
 28f:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 295 <TEST_LOOP_2+0x79>
 295:	0f 33                	rdpmc  
 297:	41 01 45 08          	add    %eax,0x8(%r13)
 29b:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 2a1 <TEST_LOOP_2+0x85>
 2a1:	0f 33                	rdpmc  
 2a3:	41 01 45 0c          	add    %eax,0xc(%r13)
 2a7:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 2ad <TEST_LOOP_2+0x91>
 2ad:	0f 33                	rdpmc  
 2af:	41 01 45 10          	add    %eax,0x10(%r13)
 2b3:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 2b9 <TEST_LOOP_2+0x9d>
 2b9:	0f 33                	rdpmc  
 2bb:	41 01 45 14          	add    %eax,0x14(%r13)
 2bf:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 2c5 <TEST_LOOP_2+0xa9>
 2c5:	0f 33                	rdpmc  
 2c7:	41 01 45 18          	add    %eax,0x18(%r13)
 2cb:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 2d1 <TEST_LOOP_2+0xb5>
 2d1:	0f 33                	rdpmc  
 2d3:	41 01 45 1c          	add    %eax,0x1c(%r13)
 2d7:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 2dd <TEST_LOOP_2+0xc1>
 2dd:	0f 33                	rdpmc  
 2df:	41 01 45 20          	add    %eax,0x20(%r13)
 2e3:	31 c0                	xor    %eax,%eax
 2e5:	0f a2                	cpuid  
 2e7:	0f 31                	rdtsc  
 2e9:	41 01 45 00          	add    %eax,0x0(%r13)
 2ed:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2f4 <TEST_LOOP_2+0xd8>
 2f4:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 2fb <TEST_LOOP_2+0xdf>
 2fb:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 302 <TEST_LOOP_2+0xe6>
 302:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 309 <loop_begin>

0000000000000309 <loop_begin>:
 309:	0f c7 f0             	rdrand %eax
 30c:	83 e0 01             	and    $0x1,%eax
 30f:	75 00                	jne    311 <first_target>

0000000000000311 <first_target>:
 311:	eb 00                	jmp    313 <dummy_branch_0>

0000000000000313 <dummy_branch_0>:
 313:	eb 00                	jmp    315 <dummy_branch_1>

0000000000000315 <dummy_branch_1>:
 315:	eb 00                	jmp    317 <dummy_branch_2>

0000000000000317 <dummy_branch_2>:
 317:	eb 00                	jmp    319 <dummy_branch_3>

0000000000000319 <dummy_branch_3>:
 319:	eb 00                	jmp    31b <dummy_branch_4>

000000000000031b <dummy_branch_4>:
 31b:	eb 00                	jmp    31d <dummy_branch_5>

000000000000031d <dummy_branch_5>:
 31d:	eb 00                	jmp    31f <dummy_branch_6>

000000000000031f <dummy_branch_6>:
 31f:	eb 00                	jmp    321 <dummy_branch_7>

0000000000000321 <dummy_branch_7>:
 321:	eb 00                	jmp    323 <dummy_branch_8>

0000000000000323 <dummy_branch_8>:
 323:	eb 00                	jmp    325 <dummy_branch_9>

0000000000000325 <dummy_branch_9>:
 325:	eb 00                	jmp    327 <dummy_branch_10>

0000000000000327 <dummy_branch_10>:
 327:	eb 00                	jmp    329 <dummy_branch_11>

0000000000000329 <dummy_branch_11>:
 329:	eb 00                	jmp    32b <dummy_branch_12>

000000000000032b <dummy_branch_12>:
 32b:	eb 00                	jmp    32d <dummy_branch_13>

000000000000032d <dummy_branch_13>:
 32d:	eb 00                	jmp    32f <dummy_branch_14>

000000000000032f <dummy_branch_14>:
 32f:	eb 00                	jmp    331 <dummy_branch_15>

0000000000000331 <dummy_branch_15>:
 331:	eb 00                	jmp    333 <dummy_branch_16>

0000000000000333 <dummy_branch_16>:
 333:	eb 00                	jmp    335 <dummy_branch_17>

0000000000000335 <dummy_branch_17>:
 335:	eb 00                	jmp    337 <dummy_branch_18>

0000000000000337 <dummy_branch_18>:
 337:	eb 00                	jmp    339 <dummy_branch_19>

0000000000000339 <dummy_branch_19>:
 339:	eb 00                	jmp    33b <dummy_branch_20>

000000000000033b <dummy_branch_20>:
 33b:	eb 00                	jmp    33d <dummy_branch_21>

000000000000033d <dummy_branch_21>:
 33d:	eb 00                	jmp    33f <dummy_branch_22>

000000000000033f <dummy_branch_22>:
 33f:	eb 00                	jmp    341 <dummy_branch_23>

0000000000000341 <dummy_branch_23>:
 341:	eb 00                	jmp    343 <dummy_branch_24>

0000000000000343 <dummy_branch_24>:
 343:	eb 00                	jmp    345 <dummy_branch_25>

0000000000000345 <dummy_branch_25>:
 345:	eb 00                	jmp    347 <dummy_branch_26>

0000000000000347 <dummy_branch_26>:
 347:	eb 00                	jmp    349 <dummy_branch_27>

0000000000000349 <dummy_branch_27>:
 349:	eb 00                	jmp    34b <dummy_branch_28>

000000000000034b <dummy_branch_28>:
 34b:	eb 00                	jmp    34d <dummy_branch_29>

000000000000034d <dummy_branch_29>:
 34d:	eb 00                	jmp    34f <dummy_branch_30>

000000000000034f <dummy_branch_30>:
 34f:	eb 00                	jmp    351 <dummy_branch_31>

0000000000000351 <dummy_branch_31>:
 351:	eb 00                	jmp    353 <dummy_branch_32>

0000000000000353 <dummy_branch_32>:
 353:	eb 00                	jmp    355 <dummy_branch_33>

0000000000000355 <dummy_branch_33>:
 355:	eb 00                	jmp    357 <dummy_branch_34>

0000000000000357 <dummy_branch_34>:
 357:	eb 00                	jmp    359 <dummy_branch_35>

0000000000000359 <dummy_branch_35>:
 359:	eb 00                	jmp    35b <dummy_branch_36>

000000000000035b <dummy_branch_36>:
 35b:	eb 00                	jmp    35d <dummy_branch_37>

000000000000035d <dummy_branch_37>:
 35d:	eb 00                	jmp    35f <dummy_branch_38>

000000000000035f <dummy_branch_38>:
 35f:	eb 00                	jmp    361 <dummy_branch_39>

0000000000000361 <dummy_branch_39>:
 361:	eb 00                	jmp    363 <dummy_branch_40>

0000000000000363 <dummy_branch_40>:
 363:	eb 00                	jmp    365 <dummy_branch_41>

0000000000000365 <dummy_branch_41>:
 365:	eb 00                	jmp    367 <dummy_branch_42>

0000000000000367 <dummy_branch_42>:
 367:	eb 00                	jmp    369 <dummy_branch_43>

0000000000000369 <dummy_branch_43>:
 369:	eb 00                	jmp    36b <dummy_branch_44>

000000000000036b <dummy_branch_44>:
 36b:	eb 00                	jmp    36d <dummy_branch_45>

000000000000036d <dummy_branch_45>:
 36d:	eb 00                	jmp    36f <dummy_branch_46>

000000000000036f <dummy_branch_46>:
 36f:	eb 00                	jmp    371 <dummy_branch_47>

0000000000000371 <dummy_branch_47>:
 371:	eb 00                	jmp    373 <dummy_branch_48>

0000000000000373 <dummy_branch_48>:
 373:	eb 00                	jmp    375 <dummy_branch_49>

0000000000000375 <dummy_branch_49>:
 375:	eb 00                	jmp    377 <dummy_branch_50>

0000000000000377 <dummy_branch_50>:
 377:	eb 00                	jmp    379 <dummy_branch_51>

0000000000000379 <dummy_branch_51>:
 379:	eb 00                	jmp    37b <dummy_branch_52>

000000000000037b <dummy_branch_52>:
 37b:	eb 00                	jmp    37d <dummy_branch_53>

000000000000037d <dummy_branch_53>:
 37d:	eb 00                	jmp    37f <dummy_branch_54>

000000000000037f <dummy_branch_54>:
 37f:	eb 00                	jmp    381 <dummy_branch_55>

0000000000000381 <dummy_branch_55>:
 381:	eb 00                	jmp    383 <dummy_branch_56>

0000000000000383 <dummy_branch_56>:
 383:	eb 00                	jmp    385 <dummy_branch_57>

0000000000000385 <dummy_branch_57>:
 385:	eb 00                	jmp    387 <dummy_branch_58>

0000000000000387 <dummy_branch_58>:
 387:	eb 00                	jmp    389 <dummy_branch_59>

0000000000000389 <dummy_branch_59>:
 389:	eb 00                	jmp    38b <dummy_branch_60>

000000000000038b <dummy_branch_60>:
 38b:	eb 00                	jmp    38d <dummy_branch_61>

000000000000038d <dummy_branch_61>:
 38d:	eb 00                	jmp    38f <dummy_branch_62>

000000000000038f <dummy_branch_62>:
 38f:	eb 00                	jmp    391 <dummy_branch_63>

0000000000000391 <dummy_branch_63>:
 391:	eb 00                	jmp    393 <dummy_branch_64>

0000000000000393 <dummy_branch_64>:
 393:	eb 00                	jmp    395 <dummy_branch_65>

0000000000000395 <dummy_branch_65>:
 395:	eb 00                	jmp    397 <dummy_branch_66>

0000000000000397 <dummy_branch_66>:
 397:	eb 00                	jmp    399 <dummy_branch_67>

0000000000000399 <dummy_branch_67>:
 399:	eb 00                	jmp    39b <dummy_branch_68>

000000000000039b <dummy_branch_68>:
 39b:	eb 00                	jmp    39d <dummy_branch_69>

000000000000039d <dummy_branch_69>:
 39d:	eb 00                	jmp    39f <dummy_branch_70>

000000000000039f <dummy_branch_70>:
 39f:	eb 00                	jmp    3a1 <dummy_branch_71>

00000000000003a1 <dummy_branch_71>:
 3a1:	eb 00                	jmp    3a3 <dummy_branch_72>

00000000000003a3 <dummy_branch_72>:
 3a3:	eb 00                	jmp    3a5 <dummy_branch_73>

00000000000003a5 <dummy_branch_73>:
 3a5:	eb 00                	jmp    3a7 <dummy_branch_74>

00000000000003a7 <dummy_branch_74>:
 3a7:	eb 00                	jmp    3a9 <dummy_branch_75>

00000000000003a9 <dummy_branch_75>:
 3a9:	eb 00                	jmp    3ab <dummy_branch_76>

00000000000003ab <dummy_branch_76>:
 3ab:	eb 00                	jmp    3ad <dummy_branch_77>

00000000000003ad <dummy_branch_77>:
 3ad:	eb 00                	jmp    3af <dummy_branch_78>

00000000000003af <dummy_branch_78>:
 3af:	eb 00                	jmp    3b1 <dummy_branch_79>

00000000000003b1 <dummy_branch_79>:
 3b1:	eb 00                	jmp    3b3 <dummy_branch_80>

00000000000003b3 <dummy_branch_80>:
 3b3:	eb 00                	jmp    3b5 <dummy_branch_81>

00000000000003b5 <dummy_branch_81>:
 3b5:	eb 00                	jmp    3b7 <dummy_branch_82>

00000000000003b7 <dummy_branch_82>:
 3b7:	eb 00                	jmp    3b9 <dummy_branch_83>

00000000000003b9 <dummy_branch_83>:
 3b9:	eb 00                	jmp    3bb <dummy_branch_84>

00000000000003bb <dummy_branch_84>:
 3bb:	eb 00                	jmp    3bd <dummy_branch_85>

00000000000003bd <dummy_branch_85>:
 3bd:	eb 00                	jmp    3bf <dummy_branch_86>

00000000000003bf <dummy_branch_86>:
 3bf:	eb 00                	jmp    3c1 <dummy_branch_87>

00000000000003c1 <dummy_branch_87>:
 3c1:	eb 00                	jmp    3c3 <dummy_branch_88>

00000000000003c3 <dummy_branch_88>:
 3c3:	eb 00                	jmp    3c5 <dummy_branch_89>

00000000000003c5 <dummy_branch_89>:
 3c5:	eb 00                	jmp    3c7 <dummy_branch_90>

00000000000003c7 <dummy_branch_90>:
 3c7:	eb 00                	jmp    3c9 <dummy_branch_91>

00000000000003c9 <dummy_branch_91>:
 3c9:	85 c0                	test   %eax,%eax
 3cb:	75 00                	jne    3cd <second_target>

00000000000003cd <second_target>:
 3cd:	48 ff cf             	dec    %rdi
 3d0:	0f 85 33 ff ff ff    	jne    309 <loop_begin>
 3d6:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 3dd <second_target+0x10>
 3dd:	48 89 1d 00 00 00 00 	mov    %rbx,0x0(%rip)        # 3e4 <second_target+0x17>
 3e4:	48 89 0d 00 00 00 00 	mov    %rcx,0x0(%rip)        # 3eb <second_target+0x1e>
 3eb:	48 89 15 00 00 00 00 	mov    %rdx,0x0(%rip)        # 3f2 <second_target+0x25>
 3f2:	31 c0                	xor    %eax,%eax
 3f4:	0f a2                	cpuid  
 3f6:	0f 31                	rdtsc  
 3f8:	41 29 45 00          	sub    %eax,0x0(%r13)
 3fc:	31 c0                	xor    %eax,%eax
 3fe:	0f a2                	cpuid  
 400:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 406 <second_target+0x39>
 406:	0f 33                	rdpmc  
 408:	41 29 45 04          	sub    %eax,0x4(%r13)
 40c:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 412 <second_target+0x45>
 412:	0f 33                	rdpmc  
 414:	41 29 45 08          	sub    %eax,0x8(%r13)
 418:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 41e <second_target+0x51>
 41e:	0f 33                	rdpmc  
 420:	41 29 45 0c          	sub    %eax,0xc(%r13)
 424:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 42a <second_target+0x5d>
 42a:	0f 33                	rdpmc  
 42c:	41 29 45 10          	sub    %eax,0x10(%r13)
 430:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 436 <second_target+0x69>
 436:	0f 33                	rdpmc  
 438:	41 29 45 14          	sub    %eax,0x14(%r13)
 43c:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 442 <second_target+0x75>
 442:	0f 33                	rdpmc  
 444:	41 29 45 18          	sub    %eax,0x18(%r13)
 448:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 44e <second_target+0x81>
 44e:	0f 33                	rdpmc  
 450:	41 29 45 1c          	sub    %eax,0x1c(%r13)
 454:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 45a <second_target+0x8d>
 45a:	0f 33                	rdpmc  
 45c:	41 29 45 20          	sub    %eax,0x20(%r13)
 460:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 467 <second_target+0x9a>
 467:	48 8b 1d 00 00 00 00 	mov    0x0(%rip),%rbx        # 46e <second_target+0xa1>
 46e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 475 <second_target+0xa8>
 475:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 47c <second_target+0xaf>
 47c:	90                   	nop
 47d:	90                   	nop
 47e:	90                   	nop
 47f:	90                   	nop
 480:	90                   	nop
 481:	90                   	nop
 482:	90                   	nop
 483:	90                   	nop
 484:	90                   	nop
 485:	90                   	nop
 486:	90                   	nop
 487:	90                   	nop
 488:	90                   	nop
 489:	90                   	nop
 48a:	90                   	nop
 48b:	90                   	nop
 48c:	90                   	nop
 48d:	90                   	nop
 48e:	90                   	nop
 48f:	90                   	nop
 490:	90                   	nop
 491:	90                   	nop
 492:	90                   	nop
 493:	90                   	nop
 494:	90                   	nop
 495:	90                   	nop
 496:	90                   	nop
 497:	90                   	nop
 498:	90                   	nop
 499:	90                   	nop
 49a:	90                   	nop
 49b:	90                   	nop
 49c:	90                   	nop
 49d:	90                   	nop
 49e:	90                   	nop
 49f:	90                   	nop
 4a0:	90                   	nop
 4a1:	90                   	nop
 4a2:	90                   	nop
 4a3:	90                   	nop
 4a4:	90                   	nop
 4a5:	90                   	nop
 4a6:	90                   	nop
 4a7:	90                   	nop
 4a8:	90                   	nop
 4a9:	90                   	nop
 4aa:	90                   	nop
 4ab:	90                   	nop
 4ac:	90                   	nop
 4ad:	90                   	nop
 4ae:	90                   	nop
 4af:	90                   	nop
 4b0:	90                   	nop
 4b1:	90                   	nop
 4b2:	90                   	nop
 4b3:	90                   	nop
 4b4:	90                   	nop
 4b5:	90                   	nop
 4b6:	90                   	nop
 4b7:	90                   	nop
 4b8:	90                   	nop
 4b9:	90                   	nop
 4ba:	90                   	nop
 4bb:	90                   	nop
 4bc:	90                   	nop
 4bd:	90                   	nop
 4be:	90                   	nop
 4bf:	90                   	nop
 4c0:	90                   	nop
 4c1:	90                   	nop
 4c2:	90                   	nop
 4c3:	90                   	nop
 4c4:	90                   	nop
 4c5:	90                   	nop
 4c6:	90                   	nop
 4c7:	90                   	nop
 4c8:	90                   	nop
 4c9:	90                   	nop
 4ca:	90                   	nop
 4cb:	90                   	nop
 4cc:	90                   	nop
 4cd:	90                   	nop
 4ce:	90                   	nop
 4cf:	90                   	nop
 4d0:	90                   	nop
 4d1:	90                   	nop
 4d2:	90                   	nop
 4d3:	90                   	nop
 4d4:	90                   	nop
 4d5:	90                   	nop
 4d6:	90                   	nop
 4d7:	90                   	nop
 4d8:	90                   	nop
 4d9:	90                   	nop
 4da:	90                   	nop
 4db:	90                   	nop
 4dc:	90                   	nop
 4dd:	90                   	nop
 4de:	90                   	nop
 4df:	90                   	nop
 4e0:	31 c0                	xor    %eax,%eax
 4e2:	0f a2                	cpuid  
 4e4:	41 8b 45 00          	mov    0x0(%r13),%eax
 4e8:	f7 d8                	neg    %eax
 4ea:	41 2b 45 24          	sub    0x24(%r13),%eax
 4ee:	43 89 44 b5 48       	mov    %eax,0x48(%r13,%r14,4)
 4f3:	41 8b 45 04          	mov    0x4(%r13),%eax
 4f7:	f7 d8                	neg    %eax
 4f9:	41 2b 45 28          	sub    0x28(%r13),%eax
 4fd:	43 89 44 b5 68       	mov    %eax,0x68(%r13,%r14,4)
 502:	41 8b 45 08          	mov    0x8(%r13),%eax
 506:	f7 d8                	neg    %eax
 508:	41 2b 45 2c          	sub    0x2c(%r13),%eax
 50c:	43 89 84 b5 88 00 00 	mov    %eax,0x88(%r13,%r14,4)
 513:	00 
 514:	41 8b 45 0c          	mov    0xc(%r13),%eax
 518:	f7 d8                	neg    %eax
 51a:	41 2b 45 30          	sub    0x30(%r13),%eax
 51e:	43 89 84 b5 a8 00 00 	mov    %eax,0xa8(%r13,%r14,4)
 525:	00 
 526:	41 8b 45 10          	mov    0x10(%r13),%eax
 52a:	f7 d8                	neg    %eax
 52c:	41 2b 45 34          	sub    0x34(%r13),%eax
 530:	43 89 84 b5 c8 00 00 	mov    %eax,0xc8(%r13,%r14,4)
 537:	00 
 538:	41 8b 45 14          	mov    0x14(%r13),%eax
 53c:	f7 d8                	neg    %eax
 53e:	41 2b 45 38          	sub    0x38(%r13),%eax
 542:	43 89 84 b5 e8 00 00 	mov    %eax,0xe8(%r13,%r14,4)
 549:	00 
 54a:	41 8b 45 18          	mov    0x18(%r13),%eax
 54e:	f7 d8                	neg    %eax
 550:	41 2b 45 3c          	sub    0x3c(%r13),%eax
 554:	43 89 84 b5 08 01 00 	mov    %eax,0x108(%r13,%r14,4)
 55b:	00 
 55c:	41 8b 45 1c          	mov    0x1c(%r13),%eax
 560:	f7 d8                	neg    %eax
 562:	41 2b 45 40          	sub    0x40(%r13),%eax
 566:	43 89 84 b5 28 01 00 	mov    %eax,0x128(%r13,%r14,4)
 56d:	00 
 56e:	41 8b 45 20          	mov    0x20(%r13),%eax
 572:	f7 d8                	neg    %eax
 574:	41 2b 45 44          	sub    0x44(%r13),%eax
 578:	43 89 84 b5 48 01 00 	mov    %eax,0x148(%r13,%r14,4)
 57f:	00 
 580:	41 ff c6             	inc    %r14d
 583:	41 83 fe 08          	cmp    $0x8,%r14d
 587:	0f 82 8f fc ff ff    	jb     21c <TEST_LOOP_2>

000000000000058d <EXITALL1>:
 58d:	49 8b a5 68 01 00 00 	mov    0x168(%r13),%rsp
 594:	9b db e3             	finit  
 597:	fc                   	cld    
 598:	c5 fc 77             	vzeroall 

000000000000059b <EXITALL2>:
 59b:	b8 08 00 00 00       	mov    $0x8,%eax
 5a0:	41 5f                	pop    %r15
 5a2:	41 5e                	pop    %r14
 5a4:	41 5d                	pop    %r13
 5a6:	41 5c                	pop    %r12
 5a8:	5d                   	pop    %rbp
 5a9:	5b                   	pop    %rbx
 5aa:	c3                   	retq   
