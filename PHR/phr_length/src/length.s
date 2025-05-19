
length:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 f2 3e 00 00    	pushq  0x3ef2(%rip)        # 4f18 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 f3 3e 00 00 	bnd jmpq *0x3ef3(%rip)        # 4f20 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	pushq  $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmpq 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	pushq  $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmpq 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	pushq  $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmpq 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	pushq  $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmpq 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	pushq  $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmpq 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	pushq  $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmpq 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	pushq  $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmpq 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	pushq  $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmpq 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	pushq  $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmpq 1020 <.plt>
    118f:	90                   	nop

Disassembly of section .plt.got:

0000000000001190 <__cxa_finalize@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 5d 3e 00 00 	bnd jmpq *0x3e5d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011a0 <sigprocmask@plt>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	f2 ff 25 7d 3d 00 00 	bnd jmpq *0x3d7d(%rip)        # 4f28 <sigprocmask@GLIBC_2.2.5>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <puts@plt>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	f2 ff 25 75 3d 00 00 	bnd jmpq *0x3d75(%rip)        # 4f30 <puts@GLIBC_2.2.5>
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <__stack_chk_fail@plt>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	f2 ff 25 6d 3d 00 00 	bnd jmpq *0x3d6d(%rip)        # 4f38 <__stack_chk_fail@GLIBC_2.4>
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <printf@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 65 3d 00 00 	bnd jmpq *0x3d65(%rip)        # 4f40 <printf@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <lseek@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 5d 3d 00 00 	bnd jmpq *0x3d5d(%rip)        # 4f48 <lseek@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <close@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 55 3d 00 00 	bnd jmpq *0x3d55(%rip)        # 4f50 <close@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <sched_yield@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 4d 3d 00 00 	bnd jmpq *0x3d4d(%rip)        # 4f58 <sched_yield@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <_setjmp@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 45 3d 00 00 	bnd jmpq *0x3d45(%rip)        # 4f60 <_setjmp@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <strtoull@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 3d 3d 00 00 	bnd jmpq *0x3d3d(%rip)        # 4f68 <strtoull@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <signal@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 35 3d 00 00 	bnd jmpq *0x3d35(%rip)        # 4f70 <signal@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <syscall@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 2d 3d 00 00 	bnd jmpq *0x3d2d(%rip)        # 4f78 <syscall@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <sigemptyset@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 25 3d 00 00 	bnd jmpq *0x3d25(%rip)        # 4f80 <sigemptyset@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <malloc@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 1d 3d 00 00 	bnd jmpq *0x3d1d(%rip)        # 4f88 <malloc@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <fflush@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 15 3d 00 00 	bnd jmpq *0x3d15(%rip)        # 4f90 <fflush@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <pwrite@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 0d 3d 00 00 	bnd jmpq *0x3d0d(%rip)        # 4f98 <pwrite@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <longjmp@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 05 3d 00 00 	bnd jmpq *0x3d05(%rip)        # 4fa0 <longjmp@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <open@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 fd 3c 00 00 	bnd jmpq *0x3cfd(%rip)        # 4fa8 <open@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <pread@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 f5 3c 00 00 	bnd jmpq *0x3cf5(%rip)        # 4fb0 <pread@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <sprintf@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 ed 3c 00 00 	bnd jmpq *0x3ced(%rip)        # 4fb8 <sprintf@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <exit@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 e5 3c 00 00 	bnd jmpq *0x3ce5(%rip)        # 4fc0 <exit@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <sigaddset@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 dd 3c 00 00 	bnd jmpq *0x3cdd(%rip)        # 4fc8 <sigaddset@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <rand@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 d5 3c 00 00 	bnd jmpq *0x3cd5(%rip)        # 4fd0 <rand@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001300 <_start>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	31 ed                	xor    %ebp,%ebp
    1306:	49 89 d1             	mov    %rdx,%r9
    1309:	5e                   	pop    %rsi
    130a:	48 89 e2             	mov    %rsp,%rdx
    130d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1311:	50                   	push   %rax
    1312:	54                   	push   %rsp
    1313:	4c 8d 05 56 11 00 00 	lea    0x1156(%rip),%r8        # 2470 <__libc_csu_fini>
    131a:	48 8d 0d df 10 00 00 	lea    0x10df(%rip),%rcx        # 2400 <__libc_csu_init>
    1321:	48 8d 3d b7 0b 00 00 	lea    0xbb7(%rip),%rdi        # 1edf <main>
    1328:	ff 15 b2 3c 00 00    	callq  *0x3cb2(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    132e:	f4                   	hlt    
    132f:	90                   	nop

0000000000001330 <deregister_tm_clones>:
    1330:	48 8d 3d e1 3c 00 00 	lea    0x3ce1(%rip),%rdi        # 5018 <__TMC_END__>
    1337:	48 8d 05 da 3c 00 00 	lea    0x3cda(%rip),%rax        # 5018 <__TMC_END__>
    133e:	48 39 f8             	cmp    %rdi,%rax
    1341:	74 15                	je     1358 <deregister_tm_clones+0x28>
    1343:	48 8b 05 8e 3c 00 00 	mov    0x3c8e(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    134a:	48 85 c0             	test   %rax,%rax
    134d:	74 09                	je     1358 <deregister_tm_clones+0x28>
    134f:	ff e0                	jmpq   *%rax
    1351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1358:	c3                   	retq   
    1359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001360 <register_tm_clones>:
    1360:	48 8d 3d b1 3c 00 00 	lea    0x3cb1(%rip),%rdi        # 5018 <__TMC_END__>
    1367:	48 8d 35 aa 3c 00 00 	lea    0x3caa(%rip),%rsi        # 5018 <__TMC_END__>
    136e:	48 29 fe             	sub    %rdi,%rsi
    1371:	48 89 f0             	mov    %rsi,%rax
    1374:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1378:	48 c1 f8 03          	sar    $0x3,%rax
    137c:	48 01 c6             	add    %rax,%rsi
    137f:	48 d1 fe             	sar    %rsi
    1382:	74 14                	je     1398 <register_tm_clones+0x38>
    1384:	48 8b 05 65 3c 00 00 	mov    0x3c65(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    138b:	48 85 c0             	test   %rax,%rax
    138e:	74 08                	je     1398 <register_tm_clones+0x38>
    1390:	ff e0                	jmpq   *%rax
    1392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1398:	c3                   	retq   
    1399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013a0 <__do_global_dtors_aux>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	80 3d 7d 3c 00 00 00 	cmpb   $0x0,0x3c7d(%rip)        # 5028 <completed.8061>
    13ab:	75 2b                	jne    13d8 <__do_global_dtors_aux+0x38>
    13ad:	55                   	push   %rbp
    13ae:	48 83 3d 42 3c 00 00 	cmpq   $0x0,0x3c42(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    13b5:	00 
    13b6:	48 89 e5             	mov    %rsp,%rbp
    13b9:	74 0c                	je     13c7 <__do_global_dtors_aux+0x27>
    13bb:	48 8b 3d 46 3c 00 00 	mov    0x3c46(%rip),%rdi        # 5008 <__dso_handle>
    13c2:	e8 c9 fd ff ff       	callq  1190 <__cxa_finalize@plt>
    13c7:	e8 64 ff ff ff       	callq  1330 <deregister_tm_clones>
    13cc:	c6 05 55 3c 00 00 01 	movb   $0x1,0x3c55(%rip)        # 5028 <completed.8061>
    13d3:	5d                   	pop    %rbp
    13d4:	c3                   	retq   
    13d5:	0f 1f 00             	nopl   (%rax)
    13d8:	c3                   	retq   
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <frame_dummy>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	e9 77 ff ff ff       	jmpq   1360 <register_tm_clones>

00000000000013e9 <__get_cpuid_max>:
    13e9:	55                   	push   %rbp
    13ea:	48 89 e5             	mov    %rsp,%rbp
    13ed:	53                   	push   %rbx
    13ee:	89 7d e4             	mov    %edi,-0x1c(%rbp)
    13f1:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    13f5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    13f8:	0f a2                	cpuid  
    13fa:	89 de                	mov    %ebx,%esi
    13fc:	89 45 e8             	mov    %eax,-0x18(%rbp)
    13ff:	89 75 ec             	mov    %esi,-0x14(%rbp)
    1402:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    1405:	89 55 f4             	mov    %edx,-0xc(%rbp)
    1408:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    140d:	74 09                	je     1418 <__get_cpuid_max+0x2f>
    140f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1413:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1416:	89 10                	mov    %edx,(%rax)
    1418:	8b 45 e8             	mov    -0x18(%rbp),%eax
    141b:	5b                   	pop    %rbx
    141c:	5d                   	pop    %rbp
    141d:	c3                   	retq   

000000000000141e <perf_init>:
    141e:	f3 0f 1e fa          	endbr64 
    1422:	55                   	push   %rbp
    1423:	48 89 e5             	mov    %rsp,%rbp
    1426:	c7 05 50 3c 00 00 00 	movl   $0x0,0x3c50(%rip)        # 5080 <attr.4636>
    142d:	00 00 00 
    1430:	48 c7 05 4d 3c 00 00 	movq   $0x0,0x3c4d(%rip)        # 5088 <attr.4636+0x8>
    1437:	00 00 00 00 
    143b:	c7 05 3f 3c 00 00 70 	movl   $0x70,0x3c3f(%rip)        # 5084 <attr.4636+0x4>
    1442:	00 00 00 
    1445:	0f b6 05 5c 3c 00 00 	movzbl 0x3c5c(%rip),%eax        # 50a8 <attr.4636+0x28>
    144c:	83 c8 20             	or     $0x20,%eax
    144f:	88 05 53 3c 00 00    	mov    %al,0x3c53(%rip)        # 50a8 <attr.4636+0x28>
    1455:	0f b6 05 4c 3c 00 00 	movzbl 0x3c4c(%rip),%eax        # 50a8 <attr.4636+0x28>
    145c:	83 c8 40             	or     $0x40,%eax
    145f:	88 05 43 3c 00 00    	mov    %al,0x3c43(%rip)        # 50a8 <attr.4636+0x28>
    1465:	0f b6 05 3e 3c 00 00 	movzbl 0x3c3e(%rip),%eax        # 50aa <attr.4636+0x2a>
    146c:	83 c8 20             	or     $0x20,%eax
    146f:	88 05 35 3c 00 00    	mov    %al,0x3c35(%rip)        # 50aa <attr.4636+0x2a>
    1475:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    147b:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    1481:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    1486:	ba 00 00 00 00       	mov    $0x0,%edx
    148b:	48 8d 35 ee 3b 00 00 	lea    0x3bee(%rip),%rsi        # 5080 <attr.4636>
    1492:	bf 2a 01 00 00       	mov    $0x12a,%edi
    1497:	b8 00 00 00 00       	mov    $0x0,%eax
    149c:	e8 9f fd ff ff       	callq  1240 <syscall@plt>
    14a1:	48 89 05 c8 3b 00 00 	mov    %rax,0x3bc8(%rip)        # 5070 <perf_fd>
    14a8:	90                   	nop
    14a9:	5d                   	pop    %rbp
    14aa:	c3                   	retq   

00000000000014ab <rdtsc>:
    14ab:	f3 0f 1e fa          	endbr64 
    14af:	55                   	push   %rbp
    14b0:	48 89 e5             	mov    %rsp,%rbp
    14b3:	0f ae f0             	mfence 
    14b6:	0f 01 f9             	rdtscp 
    14b9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    14bd:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    14c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14c5:	48 c1 e0 20          	shl    $0x20,%rax
    14c9:	48 09 45 f0          	or     %rax,-0x10(%rbp)
    14cd:	0f ae f0             	mfence 
    14d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14d4:	5d                   	pop    %rbp
    14d5:	c3                   	retq   

00000000000014d6 <rdtsc_begin>:
    14d6:	f3 0f 1e fa          	endbr64 
    14da:	55                   	push   %rbp
    14db:	48 89 e5             	mov    %rsp,%rbp
    14de:	53                   	push   %rbx
    14df:	0f ae f0             	mfence 
    14e2:	0f a2                	cpuid  
    14e4:	0f 01 f9             	rdtscp 
    14e7:	48 89 d7             	mov    %rdx,%rdi
    14ea:	48 89 c6             	mov    %rax,%rsi
    14ed:	0f ae f0             	mfence 
    14f0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    14f4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    14f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14fc:	48 c1 e0 20          	shl    $0x20,%rax
    1500:	48 09 45 f0          	or     %rax,-0x10(%rbp)
    1504:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1508:	5b                   	pop    %rbx
    1509:	5d                   	pop    %rbp
    150a:	c3                   	retq   

000000000000150b <rdtsc_end>:
    150b:	f3 0f 1e fa          	endbr64 
    150f:	55                   	push   %rbp
    1510:	48 89 e5             	mov    %rsp,%rbp
    1513:	53                   	push   %rbx
    1514:	0f ae f0             	mfence 
    1517:	0f 01 f9             	rdtscp 
    151a:	48 89 d7             	mov    %rdx,%rdi
    151d:	48 89 c6             	mov    %rax,%rsi
    1520:	0f a2                	cpuid  
    1522:	0f ae f0             	mfence 
    1525:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1529:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    152d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1531:	48 c1 e0 20          	shl    $0x20,%rax
    1535:	48 09 45 f0          	or     %rax,-0x10(%rbp)
    1539:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    153d:	5b                   	pop    %rbx
    153e:	5d                   	pop    %rbp
    153f:	c3                   	retq   

0000000000001540 <flush>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	55                   	push   %rbp
    1545:	48 89 e5             	mov    %rsp,%rbp
    1548:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    154c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1550:	48 89 d1             	mov    %rdx,%rcx
    1553:	0f ae 39             	clflush (%rcx)
    1556:	90                   	nop
    1557:	5d                   	pop    %rbp
    1558:	c3                   	retq   

0000000000001559 <maccess>:
    1559:	f3 0f 1e fa          	endbr64 
    155d:	55                   	push   %rbp
    155e:	48 89 e5             	mov    %rsp,%rbp
    1561:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1565:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1569:	48 89 d1             	mov    %rdx,%rcx
    156c:	48 8b 01             	mov    (%rcx),%rax
    156f:	90                   	nop
    1570:	5d                   	pop    %rbp
    1571:	c3                   	retq   

0000000000001572 <mfence>:
    1572:	f3 0f 1e fa          	endbr64 
    1576:	55                   	push   %rbp
    1577:	48 89 e5             	mov    %rsp,%rbp
    157a:	0f ae f0             	mfence 
    157d:	90                   	nop
    157e:	5d                   	pop    %rbp
    157f:	c3                   	retq   

0000000000001580 <nospec>:
    1580:	f3 0f 1e fa          	endbr64 
    1584:	55                   	push   %rbp
    1585:	48 89 e5             	mov    %rsp,%rbp
    1588:	0f ae e8             	lfence 
    158b:	90                   	nop
    158c:	5d                   	pop    %rbp
    158d:	c3                   	retq   

000000000000158e <xbegin>:
    158e:	f3 0f 1e fa          	endbr64 
    1592:	55                   	push   %rbp
    1593:	48 89 e5             	mov    %rsp,%rbp
    1596:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    159d:	c7 f8 00 00 00 00    	xbeginq 15a3 <xbegin+0x15>
    15a3:	89 45 fc             	mov    %eax,-0x4(%rbp)
    15a6:	8b 45 fc             	mov    -0x4(%rbp),%eax
    15a9:	5d                   	pop    %rbp
    15aa:	c3                   	retq   

00000000000015ab <xend>:
    15ab:	f3 0f 1e fa          	endbr64 
    15af:	55                   	push   %rbp
    15b0:	48 89 e5             	mov    %rsp,%rbp
    15b3:	0f 01 d5             	xend   
    15b6:	90                   	nop
    15b7:	5d                   	pop    %rbp
    15b8:	c3                   	retq   

00000000000015b9 <has_tsx>:
    15b9:	f3 0f 1e fa          	endbr64 
    15bd:	55                   	push   %rbp
    15be:	48 89 e5             	mov    %rsp,%rbp
    15c1:	53                   	push   %rbx
    15c2:	48 83 ec 10          	sub    $0x10,%rsp
    15c6:	be 00 00 00 00       	mov    $0x0,%esi
    15cb:	bf 00 00 00 00       	mov    $0x0,%edi
    15d0:	e8 14 fe ff ff       	callq  13e9 <__get_cpuid_max>
    15d5:	83 f8 06             	cmp    $0x6,%eax
    15d8:	76 27                	jbe    1601 <has_tsx+0x48>
    15da:	b8 07 00 00 00       	mov    $0x7,%eax
    15df:	ba 00 00 00 00       	mov    $0x0,%edx
    15e4:	89 d1                	mov    %edx,%ecx
    15e6:	0f a2                	cpuid  
    15e8:	89 de                	mov    %ebx,%esi
    15ea:	89 45 e8             	mov    %eax,-0x18(%rbp)
    15ed:	89 75 ec             	mov    %esi,-0x14(%rbp)
    15f0:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    15f3:	89 55 f4             	mov    %edx,-0xc(%rbp)
    15f6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    15f9:	c1 e8 0b             	shr    $0xb,%eax
    15fc:	83 e0 01             	and    $0x1,%eax
    15ff:	eb 05                	jmp    1606 <has_tsx+0x4d>
    1601:	b8 00 00 00 00       	mov    $0x0,%eax
    1606:	48 83 c4 10          	add    $0x10,%rsp
    160a:	5b                   	pop    %rbx
    160b:	5d                   	pop    %rbp
    160c:	c3                   	retq   

000000000000160d <maccess_tsx>:
    160d:	f3 0f 1e fa          	endbr64 
    1611:	55                   	push   %rbp
    1612:	48 89 e5             	mov    %rsp,%rbp
    1615:	48 83 ec 08          	sub    $0x8,%rsp
    1619:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    161d:	b8 00 00 00 00       	mov    $0x0,%eax
    1622:	e8 67 ff ff ff       	callq  158e <xbegin>
    1627:	83 f8 ff             	cmp    $0xffffffff,%eax
    162a:	75 16                	jne    1642 <maccess_tsx+0x35>
    162c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1630:	48 89 c7             	mov    %rax,%rdi
    1633:	e8 21 ff ff ff       	callq  1559 <maccess>
    1638:	b8 00 00 00 00       	mov    $0x0,%eax
    163d:	e8 69 ff ff ff       	callq  15ab <xend>
    1642:	90                   	nop
    1643:	c9                   	leaveq 
    1644:	c3                   	retq   

0000000000001645 <get_physical_address>:
    1645:	f3 0f 1e fa          	endbr64 
    1649:	55                   	push   %rbp
    164a:	48 89 e5             	mov    %rsp,%rbp
    164d:	48 83 ec 40          	sub    $0x40,%rsp
    1651:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    1655:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    165c:	00 00 
    165e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1662:	31 c0                	xor    %eax,%eax
    1664:	be 00 00 00 00       	mov    $0x0,%esi
    1669:	48 8d 3d 98 19 00 00 	lea    0x1998(%rip),%rdi        # 3008 <_IO_stdin_used+0x8>
    1670:	b8 00 00 00 00       	mov    $0x0,%eax
    1675:	e8 26 fc ff ff       	callq  12a0 <open@plt>
    167a:	89 45 d8             	mov    %eax,-0x28(%rbp)
    167d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1681:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1685:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    168c:	00 
    168d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1691:	48 c1 e8 0c          	shr    $0xc,%rax
    1695:	48 c1 e0 03          	shl    $0x3,%rax
    1699:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    169d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    16a1:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    16a5:	8b 45 d8             	mov    -0x28(%rbp),%eax
    16a8:	48 89 d1             	mov    %rdx,%rcx
    16ab:	ba 08 00 00 00       	mov    $0x8,%edx
    16b0:	89 c7                	mov    %eax,%edi
    16b2:	e8 f9 fb ff ff       	callq  12b0 <pread@plt>
    16b7:	89 45 dc             	mov    %eax,-0x24(%rbp)
    16ba:	83 7d dc 08          	cmpl   $0x8,-0x24(%rbp)
    16be:	74 07                	je     16c7 <get_physical_address+0x82>
    16c0:	b8 00 00 00 00       	mov    $0x0,%eax
    16c5:	eb 21                	jmp    16e8 <get_physical_address+0xa3>
    16c7:	8b 45 d8             	mov    -0x28(%rbp),%eax
    16ca:	89 c7                	mov    %eax,%edi
    16cc:	e8 1f fb ff ff       	callq  11f0 <close@plt>
    16d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16d5:	48 c1 e0 0c          	shl    $0xc,%rax
    16d9:	48 89 c2             	mov    %rax,%rdx
    16dc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    16e0:	25 ff 0f 00 00       	and    $0xfff,%eax
    16e5:	48 09 d0             	or     %rdx,%rax
    16e8:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    16ec:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    16f3:	00 00 
    16f5:	74 05                	je     16fc <get_physical_address+0xb7>
    16f7:	e8 c4 fa ff ff       	callq  11c0 <__stack_chk_fail@plt>
    16fc:	c9                   	leaveq 
    16fd:	c3                   	retq   

00000000000016fe <get_direct_physical_map>:
    16fe:	f3 0f 1e fa          	endbr64 
    1702:	55                   	push   %rbp
    1703:	48 89 e5             	mov    %rsp,%rbp
    1706:	48 b8 00 00 00 00 80 	movabs $0xffff888000000000,%rax
    170d:	88 ff ff 
    1710:	5d                   	pop    %rbp
    1711:	c3                   	retq   

0000000000001712 <flush_reload>:
    1712:	f3 0f 1e fa          	endbr64 
    1716:	55                   	push   %rbp
    1717:	48 89 e5             	mov    %rsp,%rbp
    171a:	48 83 ec 18          	sub    $0x18,%rsp
    171e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1722:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    1729:	00 
    172a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1731:	00 
    1732:	b8 00 00 00 00       	mov    $0x0,%eax
    1737:	e8 6f fd ff ff       	callq  14ab <rdtsc>
    173c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1740:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1744:	48 89 c7             	mov    %rax,%rdi
    1747:	e8 0d fe ff ff       	callq  1559 <maccess>
    174c:	b8 00 00 00 00       	mov    $0x0,%eax
    1751:	e8 55 fd ff ff       	callq  14ab <rdtsc>
    1756:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    175a:	b8 00 00 00 00       	mov    $0x0,%eax
    175f:	e8 0e fe ff ff       	callq  1572 <mfence>
    1764:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1768:	48 89 c7             	mov    %rax,%rdi
    176b:	e8 d0 fd ff ff       	callq  1540 <flush>
    1770:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1774:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    1778:	48 89 c2             	mov    %rax,%rdx
    177b:	48 8b 05 de 38 00 00 	mov    0x38de(%rip),%rax        # 5060 <CACHE_MISS>
    1782:	48 39 c2             	cmp    %rax,%rdx
    1785:	73 07                	jae    178e <flush_reload+0x7c>
    1787:	b8 01 00 00 00       	mov    $0x1,%eax
    178c:	eb 05                	jmp    1793 <flush_reload+0x81>
    178e:	b8 00 00 00 00       	mov    $0x0,%eax
    1793:	c9                   	leaveq 
    1794:	c3                   	retq   

0000000000001795 <flush_reload_t>:
    1795:	f3 0f 1e fa          	endbr64 
    1799:	55                   	push   %rbp
    179a:	48 89 e5             	mov    %rsp,%rbp
    179d:	48 83 ec 18          	sub    $0x18,%rsp
    17a1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    17a5:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    17ac:	00 
    17ad:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    17b4:	00 
    17b5:	b8 00 00 00 00       	mov    $0x0,%eax
    17ba:	e8 ec fc ff ff       	callq  14ab <rdtsc>
    17bf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    17c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17c7:	48 89 c7             	mov    %rax,%rdi
    17ca:	e8 8a fd ff ff       	callq  1559 <maccess>
    17cf:	b8 00 00 00 00       	mov    $0x0,%eax
    17d4:	e8 d2 fc ff ff       	callq  14ab <rdtsc>
    17d9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    17dd:	b8 00 00 00 00       	mov    $0x0,%eax
    17e2:	e8 8b fd ff ff       	callq  1572 <mfence>
    17e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17eb:	48 89 c7             	mov    %rax,%rdi
    17ee:	e8 4d fd ff ff       	callq  1540 <flush>
    17f3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17f7:	89 c2                	mov    %eax,%edx
    17f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    17fd:	29 c2                	sub    %eax,%edx
    17ff:	89 d0                	mov    %edx,%eax
    1801:	c9                   	leaveq 
    1802:	c3                   	retq   

0000000000001803 <reload_t>:
    1803:	f3 0f 1e fa          	endbr64 
    1807:	55                   	push   %rbp
    1808:	48 89 e5             	mov    %rsp,%rbp
    180b:	48 83 ec 18          	sub    $0x18,%rsp
    180f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1813:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    181a:	00 
    181b:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1822:	00 
    1823:	b8 00 00 00 00       	mov    $0x0,%eax
    1828:	e8 7e fc ff ff       	callq  14ab <rdtsc>
    182d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1831:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1835:	48 89 c7             	mov    %rax,%rdi
    1838:	e8 1c fd ff ff       	callq  1559 <maccess>
    183d:	b8 00 00 00 00       	mov    $0x0,%eax
    1842:	e8 64 fc ff ff       	callq  14ab <rdtsc>
    1847:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    184b:	b8 00 00 00 00       	mov    $0x0,%eax
    1850:	e8 1d fd ff ff       	callq  1572 <mfence>
    1855:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1859:	89 c2                	mov    %eax,%edx
    185b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    185f:	29 c2                	sub    %eax,%edx
    1861:	89 d0                	mov    %edx,%eax
    1863:	c9                   	leaveq 
    1864:	c3                   	retq   

0000000000001865 <detect_flush_reload_threshold>:
    1865:	f3 0f 1e fa          	endbr64 
    1869:	55                   	push   %rbp
    186a:	48 89 e5             	mov    %rsp,%rbp
    186d:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    1874:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    187b:	00 00 
    187d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1881:	31 c0                	xor    %eax,%eax
    1883:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    188a:	00 00 00 00 
    188e:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    1895:	00 00 00 00 
    1899:	48 c7 85 60 ff ff ff 	movq   $0xf4240,-0xa0(%rbp)
    18a0:	40 42 0f 00 
    18a4:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    18ab:	48 83 c0 40          	add    $0x40,%rax
    18af:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    18b6:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    18bd:	48 89 c7             	mov    %rax,%rdi
    18c0:	e8 94 fc ff ff       	callq  1559 <maccess>
    18c5:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    18cc:	00 00 00 00 
    18d0:	eb 20                	jmp    18f2 <detect_flush_reload_threshold+0x8d>
    18d2:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    18d9:	48 89 c7             	mov    %rax,%rdi
    18dc:	e8 22 ff ff ff       	callq  1803 <reload_t>
    18e1:	48 98                	cltq   
    18e3:	48 01 85 48 ff ff ff 	add    %rax,-0xb8(%rbp)
    18ea:	48 83 85 58 ff ff ff 	addq   $0x1,-0xa8(%rbp)
    18f1:	01 
    18f2:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    18f9:	48 3b 85 60 ff ff ff 	cmp    -0xa0(%rbp),%rax
    1900:	72 d0                	jb     18d2 <detect_flush_reload_threshold+0x6d>
    1902:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    1909:	00 00 00 00 
    190d:	eb 20                	jmp    192f <detect_flush_reload_threshold+0xca>
    190f:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    1916:	48 89 c7             	mov    %rax,%rdi
    1919:	e8 77 fe ff ff       	callq  1795 <flush_reload_t>
    191e:	48 98                	cltq   
    1920:	48 01 85 50 ff ff ff 	add    %rax,-0xb0(%rbp)
    1927:	48 83 85 58 ff ff ff 	addq   $0x1,-0xa8(%rbp)
    192e:	01 
    192f:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    1936:	48 3b 85 60 ff ff ff 	cmp    -0xa0(%rbp),%rax
    193d:	72 d0                	jb     190f <detect_flush_reload_threshold+0xaa>
    193f:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1946:	ba 00 00 00 00       	mov    $0x0,%edx
    194b:	48 f7 b5 60 ff ff ff 	divq   -0xa0(%rbp)
    1952:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    1959:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    1960:	ba 00 00 00 00       	mov    $0x0,%edx
    1965:	48 f7 b5 60 ff ff ff 	divq   -0xa0(%rbp)
    196c:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    1973:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    197a:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    197e:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    1985:	48 01 d0             	add    %rdx,%rax
    1988:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
    198f:	aa aa aa 
    1992:	48 f7 e2             	mul    %rdx
    1995:	48 89 d0             	mov    %rdx,%rax
    1998:	48 d1 e8             	shr    %rax
    199b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    199f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    19a6:	00 00 
    19a8:	74 05                	je     19af <detect_flush_reload_threshold+0x14a>
    19aa:	e8 11 f8 ff ff       	callq  11c0 <__stack_chk_fail@plt>
    19af:	c9                   	leaveq 
    19b0:	c3                   	retq   

00000000000019b1 <maccess_speculative>:
    19b1:	f3 0f 1e fa          	endbr64 
    19b5:	55                   	push   %rbp
    19b6:	48 89 e5             	mov    %rsp,%rbp
    19b9:	48 83 ec 40          	sub    $0x40,%rsp
    19bd:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    19c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19c8:	00 00 
    19ca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    19ce:	31 c0                	xor    %eax,%eax
    19d0:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    19d7:	00 
    19d8:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    19df:	e9 9d 00 00 00       	jmpq   1a81 <maccess_speculative+0xd0>
    19e4:	8b 45 dc             	mov    -0x24(%rbp),%eax
    19e7:	69 c0 a7 00 00 00    	imul   $0xa7,%eax,%eax
    19ed:	83 c0 0d             	add    $0xd,%eax
    19f0:	48 98                	cltq   
    19f2:	83 e0 01             	and    $0x1,%eax
    19f5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    19f9:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    19fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a01:	48 0f af d0          	imul   %rax,%rdx
    1a05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a09:	b9 01 00 00 00       	mov    $0x1,%ecx
    1a0e:	48 29 c1             	sub    %rax,%rcx
    1a11:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1a15:	48 0f af c1          	imul   %rcx,%rax
    1a19:	48 01 d0             	add    %rdx,%rax
    1a1c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1a20:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    1a24:	48 89 c7             	mov    %rax,%rdi
    1a27:	e8 14 fb ff ff       	callq  1540 <flush>
    1a2c:	b8 00 00 00 00       	mov    $0x0,%eax
    1a31:	e8 3c fb ff ff       	callq  1572 <mfence>
    1a36:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a3a:	48 85 c0             	test   %rax,%rax
    1a3d:	78 07                	js     1a46 <maccess_speculative+0x95>
    1a3f:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1a44:	eb 15                	jmp    1a5b <maccess_speculative+0xaa>
    1a46:	48 89 c2             	mov    %rax,%rdx
    1a49:	48 d1 ea             	shr    %rdx
    1a4c:	83 e0 01             	and    $0x1,%eax
    1a4f:	48 09 c2             	or     %rax,%rdx
    1a52:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    1a57:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    1a5b:	f2 0f 10 0d 6d 16 00 	movsd  0x166d(%rip),%xmm1        # 30d0 <_IO_stdin_used+0xd0>
    1a62:	00 
    1a63:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1a67:	66 0f 2f 05 69 16 00 	comisd 0x1669(%rip),%xmm0        # 30d8 <_IO_stdin_used+0xd8>
    1a6e:	00 
    1a6f:	76 0c                	jbe    1a7d <maccess_speculative+0xcc>
    1a71:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a75:	48 89 c7             	mov    %rax,%rdi
    1a78:	e8 dc fa ff ff       	callq  1559 <maccess>
    1a7d:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    1a81:	83 7d dc 31          	cmpl   $0x31,-0x24(%rbp)
    1a85:	0f 8e 59 ff ff ff    	jle    19e4 <maccess_speculative+0x33>
    1a8b:	90                   	nop
    1a8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a90:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a97:	00 00 
    1a99:	74 05                	je     1aa0 <maccess_speculative+0xef>
    1a9b:	e8 20 f7 ff ff       	callq  11c0 <__stack_chk_fail@plt>
    1aa0:	c9                   	leaveq 
    1aa1:	c3                   	retq   

0000000000001aa2 <unblock_signal>:
    1aa2:	f3 0f 1e fa          	endbr64 
    1aa6:	55                   	push   %rbp
    1aa7:	48 89 e5             	mov    %rsp,%rbp
    1aaa:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    1ab1:	89 bd 6c ff ff ff    	mov    %edi,-0x94(%rbp)
    1ab7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1abe:	00 00 
    1ac0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ac4:	31 c0                	xor    %eax,%eax
    1ac6:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1acd:	48 89 c7             	mov    %rax,%rdi
    1ad0:	e8 7b f7 ff ff       	callq  1250 <sigemptyset@plt>
    1ad5:	8b 95 6c ff ff ff    	mov    -0x94(%rbp),%edx
    1adb:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1ae2:	89 d6                	mov    %edx,%esi
    1ae4:	48 89 c7             	mov    %rax,%rdi
    1ae7:	e8 f4 f7 ff ff       	callq  12e0 <sigaddset@plt>
    1aec:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1af3:	ba 00 00 00 00       	mov    $0x0,%edx
    1af8:	48 89 c6             	mov    %rax,%rsi
    1afb:	bf 01 00 00 00       	mov    $0x1,%edi
    1b00:	e8 9b f6 ff ff       	callq  11a0 <sigprocmask@plt>
    1b05:	90                   	nop
    1b06:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b0a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b11:	00 00 
    1b13:	74 05                	je     1b1a <unblock_signal+0x78>
    1b15:	e8 a6 f6 ff ff       	callq  11c0 <__stack_chk_fail@plt>
    1b1a:	c9                   	leaveq 
    1b1b:	c3                   	retq   

0000000000001b1c <trycatch_segfault_handler>:
    1b1c:	f3 0f 1e fa          	endbr64 
    1b20:	55                   	push   %rbp
    1b21:	48 89 e5             	mov    %rsp,%rbp
    1b24:	48 83 ec 20          	sub    $0x20,%rsp
    1b28:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1b2b:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1b32:	eb 0e                	jmp    1b42 <trycatch_segfault_handler+0x26>
    1b34:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b37:	89 c7                	mov    %eax,%edi
    1b39:	e8 64 ff ff ff       	callq  1aa2 <unblock_signal>
    1b3e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1b42:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%rbp)
    1b46:	7e ec                	jle    1b34 <trycatch_segfault_handler+0x18>
    1b48:	be 01 00 00 00       	mov    $0x1,%esi
    1b4d:	48 8d 3d cc 35 00 00 	lea    0x35cc(%rip),%rdi        # 5120 <trycatch_buf>
    1b54:	e8 37 f7 ff ff       	callq  1290 <longjmp@plt>

0000000000001b59 <try_start>:
    1b59:	f3 0f 1e fa          	endbr64 
    1b5d:	55                   	push   %rbp
    1b5e:	48 89 e5             	mov    %rsp,%rbp
    1b61:	48 83 ec 10          	sub    $0x10,%rsp
    1b65:	b8 00 00 00 00       	mov    $0x0,%eax
    1b6a:	e8 4a fa ff ff       	callq  15b9 <has_tsx>
    1b6f:	85 c0                	test   %eax,%eax
    1b71:	74 1c                	je     1b8f <try_start+0x36>
    1b73:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1b7a:	c7 f8 00 00 00 00    	xbeginq 1b80 <try_start+0x27>
    1b80:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1b83:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
    1b87:	0f 94 c0             	sete   %al
    1b8a:	0f b6 c0             	movzbl %al,%eax
    1b8d:	eb 3c                	jmp    1bcb <try_start+0x72>
    1b8f:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    1b96:	eb 15                	jmp    1bad <try_start+0x54>
    1b98:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1b9b:	48 8d 35 7a ff ff ff 	lea    -0x86(%rip),%rsi        # 1b1c <trycatch_segfault_handler>
    1ba2:	89 c7                	mov    %eax,%edi
    1ba4:	e8 87 f6 ff ff       	callq  1230 <signal@plt>
    1ba9:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1bad:	83 7d f8 1f          	cmpl   $0x1f,-0x8(%rbp)
    1bb1:	7e e5                	jle    1b98 <try_start+0x3f>
    1bb3:	48 8d 3d 66 35 00 00 	lea    0x3566(%rip),%rdi        # 5120 <trycatch_buf>
    1bba:	e8 51 f6 ff ff       	callq  1210 <_setjmp@plt>
    1bbf:	f3 0f 1e fa          	endbr64 
    1bc3:	85 c0                	test   %eax,%eax
    1bc5:	0f 94 c0             	sete   %al
    1bc8:	0f b6 c0             	movzbl %al,%eax
    1bcb:	c9                   	leaveq 
    1bcc:	c3                   	retq   

0000000000001bcd <try_end>:
    1bcd:	f3 0f 1e fa          	endbr64 
    1bd1:	55                   	push   %rbp
    1bd2:	48 89 e5             	mov    %rsp,%rbp
    1bd5:	48 83 ec 10          	sub    $0x10,%rsp
    1bd9:	b8 00 00 00 00       	mov    $0x0,%eax
    1bde:	e8 d6 f9 ff ff       	callq  15b9 <has_tsx>
    1be3:	85 c0                	test   %eax,%eax
    1be5:	75 22                	jne    1c09 <try_end+0x3c>
    1be7:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1bee:	eb 13                	jmp    1c03 <try_end+0x36>
    1bf0:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1bf3:	be 00 00 00 00       	mov    $0x0,%esi
    1bf8:	89 c7                	mov    %eax,%edi
    1bfa:	e8 31 f6 ff ff       	callq  1230 <signal@plt>
    1bff:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1c03:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%rbp)
    1c07:	7e e7                	jle    1bf0 <try_end+0x23>
    1c09:	90                   	nop
    1c0a:	c9                   	leaveq 
    1c0b:	c3                   	retq   

0000000000001c0c <try_abort>:
    1c0c:	f3 0f 1e fa          	endbr64 
    1c10:	55                   	push   %rbp
    1c11:	48 89 e5             	mov    %rsp,%rbp
    1c14:	b8 00 00 00 00       	mov    $0x0,%eax
    1c19:	e8 9b f9 ff ff       	callq  15b9 <has_tsx>
    1c1e:	85 c0                	test   %eax,%eax
    1c20:	74 05                	je     1c27 <try_abort+0x1b>
    1c22:	0f 01 d5             	xend   
    1c25:	eb 0a                	jmp    1c31 <try_abort+0x25>
    1c27:	bf 00 00 00 00       	mov    $0x0,%edi
    1c2c:	e8 28 f9 ff ff       	callq  1559 <maccess>
    1c31:	90                   	nop
    1c32:	5d                   	pop    %rbp
    1c33:	c3                   	retq   

0000000000001c34 <cache_encode>:
    1c34:	f3 0f 1e fa          	endbr64 
    1c38:	55                   	push   %rbp
    1c39:	48 89 e5             	mov    %rsp,%rbp
    1c3c:	48 83 ec 08          	sub    $0x8,%rsp
    1c40:	89 f8                	mov    %edi,%eax
    1c42:	88 45 fc             	mov    %al,-0x4(%rbp)
    1c45:	48 8b 15 bc 34 00 00 	mov    0x34bc(%rip),%rdx        # 5108 <mem>
    1c4c:	48 0f be 4d fc       	movsbq -0x4(%rbp),%rcx
    1c51:	48 8b 05 10 34 00 00 	mov    0x3410(%rip),%rax        # 5068 <pagesize>
    1c58:	48 0f af c1          	imul   %rcx,%rax
    1c5c:	48 01 d0             	add    %rdx,%rax
    1c5f:	48 89 c7             	mov    %rax,%rdi
    1c62:	e8 f2 f8 ff ff       	callq  1559 <maccess>
    1c67:	90                   	nop
    1c68:	c9                   	leaveq 
    1c69:	c3                   	retq   

0000000000001c6a <cache_decode_pretty>:
    1c6a:	f3 0f 1e fa          	endbr64 
    1c6e:	55                   	push   %rbp
    1c6f:	48 89 e5             	mov    %rsp,%rbp
    1c72:	48 83 ec 20          	sub    $0x20,%rsp
    1c76:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1c7a:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    1c7d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1c84:	e9 9d 00 00 00       	jmpq   1d26 <cache_decode_pretty+0xbc>
    1c89:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1c8c:	69 c0 a7 00 00 00    	imul   $0xa7,%eax,%eax
    1c92:	83 c0 0d             	add    $0xd,%eax
    1c95:	25 ff 00 00 00       	and    $0xff,%eax
    1c9a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1c9d:	48 8b 15 64 34 00 00 	mov    0x3464(%rip),%rdx        # 5108 <mem>
    1ca4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1ca7:	48 63 c8             	movslq %eax,%rcx
    1caa:	48 8b 05 b7 33 00 00 	mov    0x33b7(%rip),%rax        # 5068 <pagesize>
    1cb1:	48 0f af c1          	imul   %rcx,%rax
    1cb5:	48 01 d0             	add    %rdx,%rax
    1cb8:	48 89 c7             	mov    %rax,%rdi
    1cbb:	e8 52 fa ff ff       	callq  1712 <flush_reload>
    1cc0:	85 c0                	test   %eax,%eax
    1cc2:	74 5e                	je     1d22 <cache_decode_pretty+0xb8>
    1cc4:	83 7d fc 40          	cmpl   $0x40,-0x4(%rbp)
    1cc8:	7e 44                	jle    1d0e <cache_decode_pretty+0xa4>
    1cca:	83 7d fc 5a          	cmpl   $0x5a,-0x4(%rbp)
    1cce:	7f 3e                	jg     1d0e <cache_decode_pretty+0xa4>
    1cd0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1cd3:	48 63 d0             	movslq %eax,%rdx
    1cd6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1cda:	48 01 d0             	add    %rdx,%rax
    1cdd:	0f b6 00             	movzbl (%rax),%eax
    1ce0:	3c 20                	cmp    $0x20,%al
    1ce2:	75 2a                	jne    1d0e <cache_decode_pretty+0xa4>
    1ce4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1ce7:	48 63 d0             	movslq %eax,%rdx
    1cea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1cee:	48 01 d0             	add    %rdx,%rax
    1cf1:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1cf4:	88 10                	mov    %dl,(%rax)
    1cf6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1cfa:	48 89 c6             	mov    %rax,%rsi
    1cfd:	48 8d 3d 17 13 00 00 	lea    0x1317(%rip),%rdi        # 301b <_IO_stdin_used+0x1b>
    1d04:	b8 00 00 00 00       	mov    $0x0,%eax
    1d09:	e8 c2 f4 ff ff       	callq  11d0 <printf@plt>
    1d0e:	48 8b 05 0b 33 00 00 	mov    0x330b(%rip),%rax        # 5020 <stdout@@GLIBC_2.2.5>
    1d15:	48 89 c7             	mov    %rax,%rdi
    1d18:	e8 53 f5 ff ff       	callq  1270 <fflush@plt>
    1d1d:	e8 de f4 ff ff       	callq  1200 <sched_yield@plt>
    1d22:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1d26:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%rbp)
    1d2d:	0f 8e 56 ff ff ff    	jle    1c89 <cache_decode_pretty+0x1f>
    1d33:	90                   	nop
    1d34:	90                   	nop
    1d35:	c9                   	leaveq 
    1d36:	c3                   	retq   

0000000000001d37 <flush_shared_memory>:
    1d37:	f3 0f 1e fa          	endbr64 
    1d3b:	55                   	push   %rbp
    1d3c:	48 89 e5             	mov    %rsp,%rbp
    1d3f:	48 83 ec 10          	sub    $0x10,%rsp
    1d43:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1d4a:	eb 27                	jmp    1d73 <flush_shared_memory+0x3c>
    1d4c:	48 8b 15 b5 33 00 00 	mov    0x33b5(%rip),%rdx        # 5108 <mem>
    1d53:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1d56:	48 63 c8             	movslq %eax,%rcx
    1d59:	48 8b 05 08 33 00 00 	mov    0x3308(%rip),%rax        # 5068 <pagesize>
    1d60:	48 0f af c1          	imul   %rcx,%rax
    1d64:	48 01 d0             	add    %rdx,%rax
    1d67:	48 89 c7             	mov    %rax,%rdi
    1d6a:	e8 d1 f7 ff ff       	callq  1540 <flush>
    1d6f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1d73:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%rbp)
    1d7a:	7e d0                	jle    1d4c <flush_shared_memory+0x15>
    1d7c:	90                   	nop
    1d7d:	90                   	nop
    1d7e:	c9                   	leaveq 
    1d7f:	c3                   	retq   

0000000000001d80 <calculate_branch_miss_rate>:
    1d80:	f3 0f 1e fa          	endbr64 
    1d84:	55                   	push   %rbp
    1d85:	48 89 e5             	mov    %rsp,%rbp
    1d88:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1d8b:	f2 0f 2a 45 fc       	cvtsi2sdl -0x4(%rbp),%xmm0
    1d90:	f2 0f 10 0d 48 13 00 	movsd  0x1348(%rip),%xmm1        # 30e0 <_IO_stdin_used+0xe0>
    1d97:	00 
    1d98:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1d9c:	5d                   	pop    %rbp
    1d9d:	c3                   	retq   

0000000000001d9e <re_func>:
    1d9e:	f3 0f 1e fa          	endbr64 
    1da2:	55                   	push   %rbp
    1da3:	48 89 e5             	mov    %rsp,%rbp
    1da6:	48 83 ec 20          	sub    $0x20,%rsp
    1daa:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1dad:	bf 00 00 00 00       	mov    $0x0,%edi
    1db2:	e8 30 05 00 00       	callq  22e7 <pmu_x86_zero_pmc>
    1db7:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    1dbb:	74 0f                	je     1dcc <re_func+0x2e>
    1dbd:	8b 05 7d 32 00 00    	mov    0x327d(%rip),%eax        # 5040 <junk>
    1dc3:	83 c0 01             	add    $0x1,%eax
    1dc6:	89 05 74 32 00 00    	mov    %eax,0x3274(%rip)        # 5040 <junk>
    1dcc:	bf 00 00 00 00       	mov    $0x0,%edi
    1dd1:	e8 4e 05 00 00       	callq  2324 <pmu_x86_readPMC>
    1dd6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1dda:	48 8b 15 6f 32 00 00 	mov    0x326f(%rip),%rdx        # 5050 <train_br_misp_times>
    1de1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1de5:	48 01 d0             	add    %rdx,%rax
    1de8:	48 89 05 61 32 00 00 	mov    %rax,0x3261(%rip)        # 5050 <train_br_misp_times>
    1def:	bf 00 00 00 00       	mov    $0x0,%edi
    1df4:	e8 ee 04 00 00       	callq  22e7 <pmu_x86_zero_pmc>
    1df9:	eb 00                	jmp    1dfb <re_func+0x5d>
    1dfb:	90                   	nop
    1dfc:	eb 00                	jmp    1dfe <re_func+0x60>
    1dfe:	90                   	nop
    1dff:	eb 00                	jmp    1e01 <re_func+0x63>
    1e01:	90                   	nop
    1e02:	eb 00                	jmp    1e04 <re_func+0x66>
    1e04:	90                   	nop
    1e05:	eb 00                	jmp    1e07 <re_func+0x69>
    1e07:	90                   	nop
    1e08:	eb 00                	jmp    1e0a <re_func+0x6c>
    1e0a:	90                   	nop
    1e0b:	eb 00                	jmp    1e0d <re_func+0x6f>
    1e0d:	90                   	nop
    1e0e:	eb 00                	jmp    1e10 <re_func+0x72>
    1e10:	90                   	nop
    1e11:	eb 00                	jmp    1e13 <re_func+0x75>
    1e13:	90                   	nop
    1e14:	eb 00                	jmp    1e16 <re_func+0x78>
    1e16:	90                   	nop
    1e17:	eb 00                	jmp    1e19 <re_func+0x7b>
    1e19:	90                   	nop
    1e1a:	eb 00                	jmp    1e1c <re_func+0x7e>
    1e1c:	90                   	nop
    1e1d:	eb 00                	jmp    1e1f <re_func+0x81>
    1e1f:	90                   	nop
    1e20:	eb 00                	jmp    1e22 <re_func+0x84>
    1e22:	90                   	nop
    1e23:	eb 00                	jmp    1e25 <re_func+0x87>
    1e25:	90                   	nop
    1e26:	eb 00                	jmp    1e28 <re_func+0x8a>
    1e28:	90                   	nop
    1e29:	eb 00                	jmp    1e2b <re_func+0x8d>
    1e2b:	90                   	nop
    1e2c:	eb 00                	jmp    1e2e <re_func+0x90>
    1e2e:	90                   	nop
    1e2f:	eb 00                	jmp    1e31 <re_func+0x93>
    1e31:	90                   	nop
    1e32:	eb 00                	jmp    1e34 <re_func+0x96>
    1e34:	90                   	nop
    1e35:	eb 00                	jmp    1e37 <re_func+0x99>
    1e37:	90                   	nop
    1e38:	eb 00                	jmp    1e3a <re_func+0x9c>
    1e3a:	90                   	nop
    1e3b:	eb 00                	jmp    1e3d <re_func+0x9f>
    1e3d:	90                   	nop
    1e3e:	eb 00                	jmp    1e40 <re_func+0xa2>
    1e40:	90                   	nop
    1e41:	eb 00                	jmp    1e43 <re_func+0xa5>
    1e43:	90                   	nop
    1e44:	eb 00                	jmp    1e46 <re_func+0xa8>
    1e46:	90                   	nop
    1e47:	eb 00                	jmp    1e49 <re_func+0xab>
    1e49:	90                   	nop
    1e4a:	eb 00                	jmp    1e4c <re_func+0xae>
    1e4c:	90                   	nop
    1e4d:	eb 00                	jmp    1e4f <re_func+0xb1>
    1e4f:	90                   	nop
    1e50:	eb 00                	jmp    1e52 <re_func+0xb4>
    1e52:	90                   	nop
    1e53:	eb 00                	jmp    1e55 <re_func+0xb7>
    1e55:	90                   	nop
    1e56:	eb 00                	jmp    1e58 <re_func+0xba>
    1e58:	90                   	nop
    1e59:	eb 00                	jmp    1e5b <re_func+0xbd>
    1e5b:	90                   	nop
    1e5c:	eb 00                	jmp    1e5e <re_func+0xc0>
    1e5e:	90                   	nop
    1e5f:	eb 00                	jmp    1e61 <re_func+0xc3>
    1e61:	90                   	nop
    1e62:	eb 00                	jmp    1e64 <re_func+0xc6>
    1e64:	90                   	nop
    1e65:	eb 00                	jmp    1e67 <re_func+0xc9>
    1e67:	90                   	nop
    1e68:	eb 00                	jmp    1e6a <re_func+0xcc>
    1e6a:	90                   	nop
    1e6b:	eb 00                	jmp    1e6d <re_func+0xcf>
    1e6d:	90                   	nop
    1e6e:	eb 00                	jmp    1e70 <re_func+0xd2>
    1e70:	90                   	nop
    1e71:	eb 00                	jmp    1e73 <re_func+0xd5>
    1e73:	90                   	nop
    1e74:	eb 00                	jmp    1e76 <re_func+0xd8>
    1e76:	90                   	nop
    1e77:	eb 00                	jmp    1e79 <re_func+0xdb>
    1e79:	90                   	nop
    1e7a:	eb 00                	jmp    1e7c <re_func+0xde>
    1e7c:	90                   	nop
    1e7d:	eb 00                	jmp    1e7f <re_func+0xe1>
    1e7f:	90                   	nop
    1e80:	eb 00                	jmp    1e82 <re_func+0xe4>
    1e82:	90                   	nop
    1e83:	eb 00                	jmp    1e85 <re_func+0xe7>
    1e85:	90                   	nop
    1e86:	eb 00                	jmp    1e88 <re_func+0xea>
    1e88:	90                   	nop
    1e89:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    1e8d:	74 0f                	je     1e9e <re_func+0x100>
    1e8f:	8b 05 ab 31 00 00    	mov    0x31ab(%rip),%eax        # 5040 <junk>
    1e95:	83 c0 01             	add    $0x1,%eax
    1e98:	89 05 a2 31 00 00    	mov    %eax,0x31a2(%rip)        # 5040 <junk>
    1e9e:	bf 00 00 00 00       	mov    $0x0,%edi
    1ea3:	e8 7c 04 00 00       	callq  2324 <pmu_x86_readPMC>
    1ea8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1eac:	48 8b 15 95 31 00 00 	mov    0x3195(%rip),%rdx        # 5048 <test_br_misp_times>
    1eb3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1eb7:	48 01 d0             	add    %rdx,%rax
    1eba:	48 89 05 87 31 00 00 	mov    %rax,0x3187(%rip)        # 5048 <test_br_misp_times>
    1ec1:	48 8b 05 80 31 00 00 	mov    0x3180(%rip),%rax        # 5048 <test_br_misp_times>
    1ec8:	48 89 c6             	mov    %rax,%rsi
    1ecb:	48 8d 3d 57 11 00 00 	lea    0x1157(%rip),%rdi        # 3029 <_IO_stdin_used+0x29>
    1ed2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ed7:	e8 f4 f2 ff ff       	callq  11d0 <printf@plt>
    1edc:	90                   	nop
    1edd:	c9                   	leaveq 
    1ede:	c3                   	retq   

0000000000001edf <main>:
    1edf:	f3 0f 1e fa          	endbr64 
    1ee3:	55                   	push   %rbp
    1ee4:	48 89 e5             	mov    %rsp,%rbp
    1ee7:	48 83 ec 40          	sub    $0x40,%rsp
    1eeb:	89 7d cc             	mov    %edi,-0x34(%rbp)
    1eee:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    1ef2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1ef9:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    1f00:	48 8b 05 09 31 00 00 	mov    0x3109(%rip),%rax        # 5010 <eventcode>
    1f07:	48 0d 00 00 41 00    	or     $0x410000,%rax
    1f0d:	48 89 05 fc 31 00 00 	mov    %rax,0x31fc(%rip)        # 5110 <hexcode>
    1f14:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1f1b:	00 
    1f1c:	83 7d cc 01          	cmpl   $0x1,-0x34(%rbp)
    1f20:	7e 49                	jle    1f6b <main+0x8c>
    1f22:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1f26:	48 83 c0 08          	add    $0x8,%rax
    1f2a:	48 8b 00             	mov    (%rax),%rax
    1f2d:	ba 00 00 00 00       	mov    $0x0,%edx
    1f32:	be 00 00 00 00       	mov    $0x0,%esi
    1f37:	48 89 c7             	mov    %rax,%rdi
    1f3a:	e8 e1 f2 ff ff       	callq  1220 <strtoull@plt>
    1f3f:	89 45 e0             	mov    %eax,-0x20(%rbp)
    1f42:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1f45:	ba 01 00 00 00       	mov    $0x1,%edx
    1f4a:	48 8d 35 bf 31 00 00 	lea    0x31bf(%rip),%rsi        # 5110 <hexcode>
    1f51:	89 c7                	mov    %eax,%edi
    1f53:	e8 db 01 00 00       	callq  2133 <pmu_x86_setup_pmc>
    1f58:	b8 00 00 00 00       	mov    $0x0,%eax
    1f5d:	e8 f2 03 00 00       	callq  2354 <pmu_x86_start_pmc>
    1f62:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1f69:	eb 3c                	jmp    1fa7 <main+0xc8>
    1f6b:	48 8d 3d cf 10 00 00 	lea    0x10cf(%rip),%rdi        # 3041 <_IO_stdin_used+0x41>
    1f72:	b8 00 00 00 00       	mov    $0x0,%eax
    1f77:	e8 54 f2 ff ff       	callq  11d0 <printf@plt>
    1f7c:	b8 01 00 00 00       	mov    $0x1,%eax
    1f81:	e9 9d 00 00 00       	jmpq   2023 <main+0x144>
    1f86:	e8 65 f3 ff ff       	callq  12f0 <rand@plt>
    1f8b:	99                   	cltd   
    1f8c:	c1 ea 1f             	shr    $0x1f,%edx
    1f8f:	01 d0                	add    %edx,%eax
    1f91:	83 e0 01             	and    $0x1,%eax
    1f94:	29 d0                	sub    %edx,%eax
    1f96:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1f99:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1f9c:	89 c7                	mov    %eax,%edi
    1f9e:	e8 fb fd ff ff       	callq  1d9e <re_func>
    1fa3:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    1fa7:	81 7d dc e7 03 00 00 	cmpl   $0x3e7,-0x24(%rbp)
    1fae:	7e d6                	jle    1f86 <main+0xa7>
    1fb0:	48 8b 05 99 30 00 00 	mov    0x3099(%rip),%rax        # 5050 <train_br_misp_times>
    1fb7:	89 c7                	mov    %eax,%edi
    1fb9:	e8 c2 fd ff ff       	callq  1d80 <calculate_branch_miss_rate>
    1fbe:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1fc3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1fc7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1fcb:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1fd0:	48 8d 3d 7d 10 00 00 	lea    0x107d(%rip),%rdi        # 3054 <_IO_stdin_used+0x54>
    1fd7:	b8 01 00 00 00       	mov    $0x1,%eax
    1fdc:	e8 ef f1 ff ff       	callq  11d0 <printf@plt>
    1fe1:	48 8d 3d 90 10 00 00 	lea    0x1090(%rip),%rdi        # 3078 <_IO_stdin_used+0x78>
    1fe8:	e8 c3 f1 ff ff       	callq  11b0 <puts@plt>
    1fed:	48 8b 05 54 30 00 00 	mov    0x3054(%rip),%rax        # 5048 <test_br_misp_times>
    1ff4:	89 c7                	mov    %eax,%edi
    1ff6:	e8 85 fd ff ff       	callq  1d80 <calculate_branch_miss_rate>
    1ffb:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2000:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2004:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2008:	66 48 0f 6e c0       	movq   %rax,%xmm0
    200d:	48 8d 3d 9c 10 00 00 	lea    0x109c(%rip),%rdi        # 30b0 <_IO_stdin_used+0xb0>
    2014:	b8 01 00 00 00       	mov    $0x1,%eax
    2019:	e8 b2 f1 ff ff       	callq  11d0 <printf@plt>
    201e:	b8 00 00 00 00       	mov    $0x0,%eax
    2023:	c9                   	leaveq 
    2024:	c3                   	retq   

0000000000002025 <write_to_IA32_PERFEVTSELi>:
    2025:	f3 0f 1e fa          	endbr64 
    2029:	55                   	push   %rbp
    202a:	48 89 e5             	mov    %rsp,%rbp
    202d:	48 83 ec 20          	sub    $0x20,%rsp
    2031:	89 7d ec             	mov    %edi,-0x14(%rbp)
    2034:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2038:	8b 45 ec             	mov    -0x14(%rbp),%eax
    203b:	05 86 01 00 00       	add    $0x186,%eax
    2040:	48 63 d0             	movslq %eax,%rdx
    2043:	8b 05 f7 31 00 00    	mov    0x31f7(%rip),%eax        # 5240 <msr_fd>
    2049:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    204d:	48 89 d1             	mov    %rdx,%rcx
    2050:	ba 08 00 00 00       	mov    $0x8,%edx
    2055:	89 c7                	mov    %eax,%edi
    2057:	e8 24 f2 ff ff       	callq  1280 <pwrite@plt>
    205c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2060:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2063:	2d 00 00 ff 3f       	sub    $0x3fff0000,%eax
    2068:	89 c2                	mov    %eax,%edx
    206a:	8b 05 d0 31 00 00    	mov    0x31d0(%rip),%eax        # 5240 <msr_fd>
    2070:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    2074:	48 89 d1             	mov    %rdx,%rcx
    2077:	ba 08 00 00 00       	mov    $0x8,%edx
    207c:	89 c7                	mov    %eax,%edi
    207e:	e8 fd f1 ff ff       	callq  1280 <pwrite@plt>
    2083:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2087:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    208c:	75 0c                	jne    209a <write_to_IA32_PERFEVTSELi+0x75>
    208e:	48 8d 3d 53 10 00 00 	lea    0x1053(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    2095:	e8 16 f1 ff ff       	callq  11b0 <puts@plt>
    209a:	90                   	nop
    209b:	c9                   	leaveq 
    209c:	c3                   	retq   

000000000000209d <write_to_IA32_PMCi>:
    209d:	f3 0f 1e fa          	endbr64 
    20a1:	55                   	push   %rbp
    20a2:	48 89 e5             	mov    %rsp,%rbp
    20a5:	48 83 ec 20          	sub    $0x20,%rsp
    20a9:	89 7d ec             	mov    %edi,-0x14(%rbp)
    20ac:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    20b0:	8b 45 ec             	mov    -0x14(%rbp),%eax
    20b3:	05 c1 00 00 00       	add    $0xc1,%eax
    20b8:	48 63 d0             	movslq %eax,%rdx
    20bb:	8b 05 7f 31 00 00    	mov    0x317f(%rip),%eax        # 5240 <msr_fd>
    20c1:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    20c5:	48 89 d1             	mov    %rdx,%rcx
    20c8:	ba 08 00 00 00       	mov    $0x8,%edx
    20cd:	89 c7                	mov    %eax,%edi
    20cf:	e8 ac f1 ff ff       	callq  1280 <pwrite@plt>
    20d4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    20d8:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    20dd:	75 0c                	jne    20eb <write_to_IA32_PMCi+0x4e>
    20df:	48 8d 3d 02 10 00 00 	lea    0x1002(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    20e6:	e8 c5 f0 ff ff       	callq  11b0 <puts@plt>
    20eb:	90                   	nop
    20ec:	c9                   	leaveq 
    20ed:	c3                   	retq   

00000000000020ee <write_to_IA32_PERF_GLOBAL_CTRL>:
    20ee:	f3 0f 1e fa          	endbr64 
    20f2:	55                   	push   %rbp
    20f3:	48 89 e5             	mov    %rsp,%rbp
    20f6:	48 83 ec 20          	sub    $0x20,%rsp
    20fa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    20fe:	8b 05 3c 31 00 00    	mov    0x313c(%rip),%eax        # 5240 <msr_fd>
    2104:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
    2108:	b9 8f 03 00 00       	mov    $0x38f,%ecx
    210d:	ba 08 00 00 00       	mov    $0x8,%edx
    2112:	89 c7                	mov    %eax,%edi
    2114:	e8 67 f1 ff ff       	callq  1280 <pwrite@plt>
    2119:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    211d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2122:	75 0c                	jne    2130 <write_to_IA32_PERF_GLOBAL_CTRL+0x42>
    2124:	48 8d 3d bd 0f 00 00 	lea    0xfbd(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    212b:	e8 80 f0 ff ff       	callq  11b0 <puts@plt>
    2130:	90                   	nop
    2131:	c9                   	leaveq 
    2132:	c3                   	retq   

0000000000002133 <pmu_x86_setup_pmc>:
    2133:	f3 0f 1e fa          	endbr64 
    2137:	55                   	push   %rbp
    2138:	48 89 e5             	mov    %rsp,%rbp
    213b:	48 83 ec 20          	sub    $0x20,%rsp
    213f:	89 7d ec             	mov    %edi,-0x14(%rbp)
    2142:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2146:	89 55 e8             	mov    %edx,-0x18(%rbp)
    2149:	bf 10 00 00 00       	mov    $0x10,%edi
    214e:	e8 0d f1 ff ff       	callq  1260 <malloc@plt>
    2153:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2157:	8b 55 ec             	mov    -0x14(%rbp),%edx
    215a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    215e:	48 8d 35 91 0f 00 00 	lea    0xf91(%rip),%rsi        # 30f6 <_IO_stdin_used+0xf6>
    2165:	48 89 c7             	mov    %rax,%rdi
    2168:	b8 00 00 00 00       	mov    $0x0,%eax
    216d:	e8 4e f1 ff ff       	callq  12c0 <sprintf@plt>
    2172:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2176:	be 02 00 00 00       	mov    $0x2,%esi
    217b:	48 89 c7             	mov    %rax,%rdi
    217e:	b8 00 00 00 00       	mov    $0x0,%eax
    2183:	e8 18 f1 ff ff       	callq  12a0 <open@plt>
    2188:	89 05 b2 30 00 00    	mov    %eax,0x30b2(%rip)        # 5240 <msr_fd>
    218e:	83 7d e8 04          	cmpl   $0x4,-0x18(%rbp)
    2192:	7e 16                	jle    21aa <pmu_x86_setup_pmc+0x77>
    2194:	48 8d 3d 6b 0f 00 00 	lea    0xf6b(%rip),%rdi        # 3106 <_IO_stdin_used+0x106>
    219b:	e8 10 f0 ff ff       	callq  11b0 <puts@plt>
    21a0:	bf 00 00 00 00       	mov    $0x0,%edi
    21a5:	e8 26 f1 ff ff       	callq  12d0 <exit@plt>
    21aa:	bf 00 00 00 00       	mov    $0x0,%edi
    21af:	e8 3a ff ff ff       	callq  20ee <write_to_IA32_PERF_GLOBAL_CTRL>
    21b4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    21bb:	eb 26                	jmp    21e3 <pmu_x86_setup_pmc+0xb0>
    21bd:	8b 45 f4             	mov    -0xc(%rbp),%eax
    21c0:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    21c7:	00 
    21c8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    21cc:	48 01 d0             	add    %rdx,%rax
    21cf:	48 8b 10             	mov    (%rax),%rdx
    21d2:	8b 45 f4             	mov    -0xc(%rbp),%eax
    21d5:	48 89 d6             	mov    %rdx,%rsi
    21d8:	89 c7                	mov    %eax,%edi
    21da:	e8 46 fe ff ff       	callq  2025 <write_to_IA32_PERFEVTSELi>
    21df:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    21e3:	8b 45 e8             	mov    -0x18(%rbp),%eax
    21e6:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    21e9:	72 d2                	jb     21bd <pmu_x86_setup_pmc+0x8a>
    21eb:	8b 05 4f 30 00 00    	mov    0x304f(%rip),%eax        # 5240 <msr_fd>
    21f1:	ba 00 00 00 00       	mov    $0x0,%edx
    21f6:	be 8f 03 00 00       	mov    $0x38f,%esi
    21fb:	89 c7                	mov    %eax,%edi
    21fd:	e8 de ef ff ff       	callq  11e0 <lseek@plt>
    2202:	90                   	nop
    2203:	c9                   	leaveq 
    2204:	c3                   	retq   

0000000000002205 <read_IA32_PMCi>:
    2205:	f3 0f 1e fa          	endbr64 
    2209:	55                   	push   %rbp
    220a:	48 89 e5             	mov    %rsp,%rbp
    220d:	48 83 ec 30          	sub    $0x30,%rsp
    2211:	89 7d dc             	mov    %edi,-0x24(%rbp)
    2214:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    221b:	00 00 
    221d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2221:	31 c0                	xor    %eax,%eax
    2223:	48 c7 45 e8 ff ff ff 	movq   $0xffffffffffffffff,-0x18(%rbp)
    222a:	ff 
    222b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    222e:	05 c1 00 00 00       	add    $0xc1,%eax
    2233:	48 63 d0             	movslq %eax,%rdx
    2236:	8b 05 04 30 00 00    	mov    0x3004(%rip),%eax        # 5240 <msr_fd>
    223c:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
    2240:	48 89 d1             	mov    %rdx,%rcx
    2243:	ba 08 00 00 00       	mov    $0x8,%edx
    2248:	89 c7                	mov    %eax,%edi
    224a:	e8 61 f0 ff ff       	callq  12b0 <pread@plt>
    224f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2253:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    2258:	75 0c                	jne    2266 <read_IA32_PMCi+0x61>
    225a:	48 8d 3d b5 0e 00 00 	lea    0xeb5(%rip),%rdi        # 3116 <_IO_stdin_used+0x116>
    2261:	e8 4a ef ff ff       	callq  11b0 <puts@plt>
    2266:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    226a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    226e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2275:	00 00 
    2277:	74 05                	je     227e <read_IA32_PMCi+0x79>
    2279:	e8 42 ef ff ff       	callq  11c0 <__stack_chk_fail@plt>
    227e:	c9                   	leaveq 
    227f:	c3                   	retq   

0000000000002280 <pmu_x86_get_stats>:
    2280:	f3 0f 1e fa          	endbr64 
    2284:	55                   	push   %rbp
    2285:	48 89 e5             	mov    %rsp,%rbp
    2288:	48 83 ec 20          	sub    $0x20,%rsp
    228c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2290:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    2293:	83 7d e4 04          	cmpl   $0x4,-0x1c(%rbp)
    2297:	7e 16                	jle    22af <pmu_x86_get_stats+0x2f>
    2299:	48 8d 3d 66 0e 00 00 	lea    0xe66(%rip),%rdi        # 3106 <_IO_stdin_used+0x106>
    22a0:	e8 0b ef ff ff       	callq  11b0 <puts@plt>
    22a5:	bf 00 00 00 00       	mov    $0x0,%edi
    22aa:	e8 21 f0 ff ff       	callq  12d0 <exit@plt>
    22af:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    22b6:	eb 23                	jmp    22db <pmu_x86_get_stats+0x5b>
    22b8:	8b 45 fc             	mov    -0x4(%rbp),%eax
    22bb:	89 c7                	mov    %eax,%edi
    22bd:	e8 43 ff ff ff       	callq  2205 <read_IA32_PMCi>
    22c2:	8b 55 fc             	mov    -0x4(%rbp),%edx
    22c5:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
    22cc:	00 
    22cd:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    22d1:	48 01 ca             	add    %rcx,%rdx
    22d4:	48 89 02             	mov    %rax,(%rdx)
    22d7:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    22db:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    22de:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    22e1:	72 d5                	jb     22b8 <pmu_x86_get_stats+0x38>
    22e3:	90                   	nop
    22e4:	90                   	nop
    22e5:	c9                   	leaveq 
    22e6:	c3                   	retq   

00000000000022e7 <pmu_x86_zero_pmc>:
    22e7:	f3 0f 1e fa          	endbr64 
    22eb:	55                   	push   %rbp
    22ec:	48 89 e5             	mov    %rsp,%rbp
    22ef:	48 83 ec 10          	sub    $0x10,%rsp
    22f3:	89 7d fc             	mov    %edi,-0x4(%rbp)
    22f6:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
    22fa:	7e 16                	jle    2312 <pmu_x86_zero_pmc+0x2b>
    22fc:	48 8d 3d 25 0e 00 00 	lea    0xe25(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    2303:	e8 a8 ee ff ff       	callq  11b0 <puts@plt>
    2308:	bf 00 00 00 00       	mov    $0x0,%edi
    230d:	e8 be ef ff ff       	callq  12d0 <exit@plt>
    2312:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2315:	be 00 00 00 00       	mov    $0x0,%esi
    231a:	89 c7                	mov    %eax,%edi
    231c:	e8 7c fd ff ff       	callq  209d <write_to_IA32_PMCi>
    2321:	90                   	nop
    2322:	c9                   	leaveq 
    2323:	c3                   	retq   

0000000000002324 <pmu_x86_readPMC>:
    2324:	f3 0f 1e fa          	endbr64 
    2328:	55                   	push   %rbp
    2329:	48 89 e5             	mov    %rsp,%rbp
    232c:	89 7d dc             	mov    %edi,-0x24(%rbp)
    232f:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2332:	89 c1                	mov    %eax,%ecx
    2334:	0f 33                	rdpmc  
    2336:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    233a:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    233e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2342:	48 c1 e0 20          	shl    $0x20,%rax
    2346:	48 0b 45 e8          	or     -0x18(%rbp),%rax
    234a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    234e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2352:	5d                   	pop    %rbp
    2353:	c3                   	retq   

0000000000002354 <pmu_x86_start_pmc>:
    2354:	f3 0f 1e fa          	endbr64 
    2358:	55                   	push   %rbp
    2359:	48 89 e5             	mov    %rsp,%rbp
    235c:	48 83 ec 10          	sub    $0x10,%rsp
    2360:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2367:	00 00 
    2369:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    236d:	31 c0                	xor    %eax,%eax
    236f:	48 b8 0f 00 00 00 07 	movabs $0x70000000f,%rax
    2376:	00 00 00 
    2379:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    237d:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
    2381:	b8 01 00 00 00       	mov    $0x1,%eax
    2386:	8b 3d b4 2e 00 00    	mov    0x2eb4(%rip),%edi        # 5240 <msr_fd>
    238c:	48 89 ce             	mov    %rcx,%rsi
    238f:	ba 08 00 00 00       	mov    $0x8,%edx
    2394:	0f 05                	syscall 
    2396:	90                   	nop
    2397:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    239b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    23a2:	00 00 
    23a4:	74 05                	je     23ab <pmu_x86_start_pmc+0x57>
    23a6:	e8 15 ee ff ff       	callq  11c0 <__stack_chk_fail@plt>
    23ab:	c9                   	leaveq 
    23ac:	c3                   	retq   

00000000000023ad <pmu_x86_stop_pmc>:
    23ad:	f3 0f 1e fa          	endbr64 
    23b1:	55                   	push   %rbp
    23b2:	48 89 e5             	mov    %rsp,%rbp
    23b5:	48 83 ec 10          	sub    $0x10,%rsp
    23b9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    23c0:	00 00 
    23c2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    23c6:	31 c0                	xor    %eax,%eax
    23c8:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    23cf:	00 
    23d0:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
    23d4:	b8 01 00 00 00       	mov    $0x1,%eax
    23d9:	8b 3d 61 2e 00 00    	mov    0x2e61(%rip),%edi        # 5240 <msr_fd>
    23df:	48 89 ce             	mov    %rcx,%rsi
    23e2:	ba 08 00 00 00       	mov    $0x8,%edx
    23e7:	0f 05                	syscall 
    23e9:	90                   	nop
    23ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    23ee:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    23f5:	00 00 
    23f7:	74 05                	je     23fe <pmu_x86_stop_pmc+0x51>
    23f9:	e8 c2 ed ff ff       	callq  11c0 <__stack_chk_fail@plt>
    23fe:	c9                   	leaveq 
    23ff:	c3                   	retq   

0000000000002400 <__libc_csu_init>:
    2400:	f3 0f 1e fa          	endbr64 
    2404:	41 57                	push   %r15
    2406:	4c 8d 3d 03 29 00 00 	lea    0x2903(%rip),%r15        # 4d10 <__frame_dummy_init_array_entry>
    240d:	41 56                	push   %r14
    240f:	49 89 d6             	mov    %rdx,%r14
    2412:	41 55                	push   %r13
    2414:	49 89 f5             	mov    %rsi,%r13
    2417:	41 54                	push   %r12
    2419:	41 89 fc             	mov    %edi,%r12d
    241c:	55                   	push   %rbp
    241d:	48 8d 2d f4 28 00 00 	lea    0x28f4(%rip),%rbp        # 4d18 <__do_global_dtors_aux_fini_array_entry>
    2424:	53                   	push   %rbx
    2425:	4c 29 fd             	sub    %r15,%rbp
    2428:	48 83 ec 08          	sub    $0x8,%rsp
    242c:	e8 cf eb ff ff       	callq  1000 <_init>
    2431:	48 c1 fd 03          	sar    $0x3,%rbp
    2435:	74 1f                	je     2456 <__libc_csu_init+0x56>
    2437:	31 db                	xor    %ebx,%ebx
    2439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2440:	4c 89 f2             	mov    %r14,%rdx
    2443:	4c 89 ee             	mov    %r13,%rsi
    2446:	44 89 e7             	mov    %r12d,%edi
    2449:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    244d:	48 83 c3 01          	add    $0x1,%rbx
    2451:	48 39 dd             	cmp    %rbx,%rbp
    2454:	75 ea                	jne    2440 <__libc_csu_init+0x40>
    2456:	48 83 c4 08          	add    $0x8,%rsp
    245a:	5b                   	pop    %rbx
    245b:	5d                   	pop    %rbp
    245c:	41 5c                	pop    %r12
    245e:	41 5d                	pop    %r13
    2460:	41 5e                	pop    %r14
    2462:	41 5f                	pop    %r15
    2464:	c3                   	retq   
    2465:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    246c:	00 00 00 00 

0000000000002470 <__libc_csu_fini>:
    2470:	f3 0f 1e fa          	endbr64 
    2474:	c3                   	retq   

Disassembly of section .fini:

0000000000002478 <_fini>:
    2478:	f3 0f 1e fa          	endbr64 
    247c:	48 83 ec 08          	sub    $0x8,%rsp
    2480:	48 83 c4 08          	add    $0x8,%rsp
    2484:	c3                   	retq   
