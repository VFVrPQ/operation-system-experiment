
2.out:     file format elf32-i386


Disassembly of section .init:

08048314 <_init>:
 8048314:	53                   	push   %ebx
 8048315:	83 ec 08             	sub    $0x8,%esp
 8048318:	e8 b3 00 00 00       	call   80483d0 <__x86.get_pc_thunk.bx>
 804831d:	81 c3 e3 1c 00 00    	add    $0x1ce3,%ebx
 8048323:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048329:	85 c0                	test   %eax,%eax
 804832b:	74 05                	je     8048332 <_init+0x1e>
 804832d:	e8 3e 00 00 00       	call   8048370 <__gmon_start__@plt>
 8048332:	83 c4 08             	add    $0x8,%esp
 8048335:	5b                   	pop    %ebx
 8048336:	c3                   	ret    

Disassembly of section .plt:

08048340 <printf@plt-0x10>:
 8048340:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048346:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804834c:	00 00                	add    %al,(%eax)
	...

08048350 <printf@plt>:
 8048350:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048356:	68 00 00 00 00       	push   $0x0
 804835b:	e9 e0 ff ff ff       	jmp    8048340 <_init+0x2c>

08048360 <puts@plt>:
 8048360:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048366:	68 08 00 00 00       	push   $0x8
 804836b:	e9 d0 ff ff ff       	jmp    8048340 <_init+0x2c>

08048370 <__gmon_start__@plt>:
 8048370:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048376:	68 10 00 00 00       	push   $0x10
 804837b:	e9 c0 ff ff ff       	jmp    8048340 <_init+0x2c>

08048380 <__libc_start_main@plt>:
 8048380:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048386:	68 18 00 00 00       	push   $0x18
 804838b:	e9 b0 ff ff ff       	jmp    8048340 <_init+0x2c>

08048390 <__isoc99_scanf@plt>:
 8048390:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048396:	68 20 00 00 00       	push   $0x20
 804839b:	e9 a0 ff ff ff       	jmp    8048340 <_init+0x2c>

Disassembly of section .text:

080483a0 <_start>:
 80483a0:	31 ed                	xor    %ebp,%ebp
 80483a2:	5e                   	pop    %esi
 80483a3:	89 e1                	mov    %esp,%ecx
 80483a5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483a8:	50                   	push   %eax
 80483a9:	54                   	push   %esp
 80483aa:	52                   	push   %edx
 80483ab:	68 70 85 04 08       	push   $0x8048570
 80483b0:	68 00 85 04 08       	push   $0x8048500
 80483b5:	51                   	push   %ecx
 80483b6:	56                   	push   %esi
 80483b7:	68 9d 84 04 08       	push   $0x804849d
 80483bc:	e8 bf ff ff ff       	call   8048380 <__libc_start_main@plt>
 80483c1:	f4                   	hlt    
 80483c2:	66 90                	xchg   %ax,%ax
 80483c4:	66 90                	xchg   %ax,%ax
 80483c6:	66 90                	xchg   %ax,%ax
 80483c8:	66 90                	xchg   %ax,%ax
 80483ca:	66 90                	xchg   %ax,%ax
 80483cc:	66 90                	xchg   %ax,%ax
 80483ce:	66 90                	xchg   %ax,%ax

080483d0 <__x86.get_pc_thunk.bx>:
 80483d0:	8b 1c 24             	mov    (%esp),%ebx
 80483d3:	c3                   	ret    
 80483d4:	66 90                	xchg   %ax,%ax
 80483d6:	66 90                	xchg   %ax,%ax
 80483d8:	66 90                	xchg   %ax,%ax
 80483da:	66 90                	xchg   %ax,%ax
 80483dc:	66 90                	xchg   %ax,%ax
 80483de:	66 90                	xchg   %ax,%ax

080483e0 <deregister_tm_clones>:
 80483e0:	b8 2b a0 04 08       	mov    $0x804a02b,%eax
 80483e5:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 80483ea:	83 f8 06             	cmp    $0x6,%eax
 80483ed:	77 01                	ja     80483f0 <deregister_tm_clones+0x10>
 80483ef:	c3                   	ret    
 80483f0:	b8 00 00 00 00       	mov    $0x0,%eax
 80483f5:	85 c0                	test   %eax,%eax
 80483f7:	74 f6                	je     80483ef <deregister_tm_clones+0xf>
 80483f9:	55                   	push   %ebp
 80483fa:	89 e5                	mov    %esp,%ebp
 80483fc:	83 ec 18             	sub    $0x18,%esp
 80483ff:	c7 04 24 28 a0 04 08 	movl   $0x804a028,(%esp)
 8048406:	ff d0                	call   *%eax
 8048408:	c9                   	leave  
 8048409:	c3                   	ret    
 804840a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048410 <register_tm_clones>:
 8048410:	b8 28 a0 04 08       	mov    $0x804a028,%eax
 8048415:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 804841a:	c1 f8 02             	sar    $0x2,%eax
 804841d:	89 c2                	mov    %eax,%edx
 804841f:	c1 ea 1f             	shr    $0x1f,%edx
 8048422:	01 d0                	add    %edx,%eax
 8048424:	d1 f8                	sar    %eax
 8048426:	75 01                	jne    8048429 <register_tm_clones+0x19>
 8048428:	c3                   	ret    
 8048429:	ba 00 00 00 00       	mov    $0x0,%edx
 804842e:	85 d2                	test   %edx,%edx
 8048430:	74 f6                	je     8048428 <register_tm_clones+0x18>
 8048432:	55                   	push   %ebp
 8048433:	89 e5                	mov    %esp,%ebp
 8048435:	83 ec 18             	sub    $0x18,%esp
 8048438:	89 44 24 04          	mov    %eax,0x4(%esp)
 804843c:	c7 04 24 28 a0 04 08 	movl   $0x804a028,(%esp)
 8048443:	ff d2                	call   *%edx
 8048445:	c9                   	leave  
 8048446:	c3                   	ret    
 8048447:	89 f6                	mov    %esi,%esi
 8048449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048450 <__do_global_dtors_aux>:
 8048450:	80 3d 28 a0 04 08 00 	cmpb   $0x0,0x804a028
 8048457:	75 13                	jne    804846c <__do_global_dtors_aux+0x1c>
 8048459:	55                   	push   %ebp
 804845a:	89 e5                	mov    %esp,%ebp
 804845c:	83 ec 08             	sub    $0x8,%esp
 804845f:	e8 7c ff ff ff       	call   80483e0 <deregister_tm_clones>
 8048464:	c6 05 28 a0 04 08 01 	movb   $0x1,0x804a028
 804846b:	c9                   	leave  
 804846c:	f3 c3                	repz ret 
 804846e:	66 90                	xchg   %ax,%ax

08048470 <frame_dummy>:
 8048470:	a1 10 9f 04 08       	mov    0x8049f10,%eax
 8048475:	85 c0                	test   %eax,%eax
 8048477:	74 1f                	je     8048498 <frame_dummy+0x28>
 8048479:	b8 00 00 00 00       	mov    $0x0,%eax
 804847e:	85 c0                	test   %eax,%eax
 8048480:	74 16                	je     8048498 <frame_dummy+0x28>
 8048482:	55                   	push   %ebp
 8048483:	89 e5                	mov    %esp,%ebp
 8048485:	83 ec 18             	sub    $0x18,%esp
 8048488:	c7 04 24 10 9f 04 08 	movl   $0x8049f10,(%esp)
 804848f:	ff d0                	call   *%eax
 8048491:	c9                   	leave  
 8048492:	e9 79 ff ff ff       	jmp    8048410 <register_tm_clones>
 8048497:	90                   	nop
 8048498:	e9 73 ff ff ff       	jmp    8048410 <register_tm_clones>

0804849d <main>:
 804849d:	55                   	push   %ebp
 804849e:	89 e5                	mov    %esp,%ebp
 80484a0:	83 e4 f0             	and    $0xfffffff0,%esp
 80484a3:	83 ec 20             	sub    $0x20,%esp
 80484a6:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
 80484ad:	00 
 80484ae:	c7 04 24 90 85 04 08 	movl   $0x8048590,(%esp)
 80484b5:	e8 96 fe ff ff       	call   8048350 <printf@plt>
 80484ba:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80484be:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484c2:	c7 04 24 a5 85 04 08 	movl   $0x80485a5,(%esp)
 80484c9:	e8 c2 fe ff ff       	call   8048390 <__isoc99_scanf@plt>
 80484ce:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80484d2:	3d 0b f7 0d 00       	cmp    $0xdf70b,%eax
 80484d7:	75 0e                	jne    80484e7 <main+0x4a>
 80484d9:	c7 04 24 a8 85 04 08 	movl   $0x80485a8,(%esp)
 80484e0:	e8 7b fe ff ff       	call   8048360 <puts@plt>
 80484e5:	eb 0c                	jmp    80484f3 <main+0x56>
 80484e7:	c7 04 24 c1 85 04 08 	movl   $0x80485c1,(%esp)
 80484ee:	e8 6d fe ff ff       	call   8048360 <puts@plt>
 80484f3:	c9                   	leave  
 80484f4:	c3                   	ret    
 80484f5:	66 90                	xchg   %ax,%ax
 80484f7:	66 90                	xchg   %ax,%ax
 80484f9:	66 90                	xchg   %ax,%ax
 80484fb:	66 90                	xchg   %ax,%ax
 80484fd:	66 90                	xchg   %ax,%ax
 80484ff:	90                   	nop

08048500 <__libc_csu_init>:
 8048500:	55                   	push   %ebp
 8048501:	57                   	push   %edi
 8048502:	31 ff                	xor    %edi,%edi
 8048504:	56                   	push   %esi
 8048505:	53                   	push   %ebx
 8048506:	e8 c5 fe ff ff       	call   80483d0 <__x86.get_pc_thunk.bx>
 804850b:	81 c3 f5 1a 00 00    	add    $0x1af5,%ebx
 8048511:	83 ec 1c             	sub    $0x1c,%esp
 8048514:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048518:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804851e:	e8 f1 fd ff ff       	call   8048314 <_init>
 8048523:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048529:	29 c6                	sub    %eax,%esi
 804852b:	c1 fe 02             	sar    $0x2,%esi
 804852e:	85 f6                	test   %esi,%esi
 8048530:	74 27                	je     8048559 <__libc_csu_init+0x59>
 8048532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048538:	8b 44 24 38          	mov    0x38(%esp),%eax
 804853c:	89 2c 24             	mov    %ebp,(%esp)
 804853f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048543:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048547:	89 44 24 04          	mov    %eax,0x4(%esp)
 804854b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8048552:	83 c7 01             	add    $0x1,%edi
 8048555:	39 f7                	cmp    %esi,%edi
 8048557:	75 df                	jne    8048538 <__libc_csu_init+0x38>
 8048559:	83 c4 1c             	add    $0x1c,%esp
 804855c:	5b                   	pop    %ebx
 804855d:	5e                   	pop    %esi
 804855e:	5f                   	pop    %edi
 804855f:	5d                   	pop    %ebp
 8048560:	c3                   	ret    
 8048561:	eb 0d                	jmp    8048570 <__libc_csu_fini>
 8048563:	90                   	nop
 8048564:	90                   	nop
 8048565:	90                   	nop
 8048566:	90                   	nop
 8048567:	90                   	nop
 8048568:	90                   	nop
 8048569:	90                   	nop
 804856a:	90                   	nop
 804856b:	90                   	nop
 804856c:	90                   	nop
 804856d:	90                   	nop
 804856e:	90                   	nop
 804856f:	90                   	nop

08048570 <__libc_csu_fini>:
 8048570:	f3 c3                	repz ret 

Disassembly of section .fini:

08048574 <_fini>:
 8048574:	53                   	push   %ebx
 8048575:	83 ec 08             	sub    $0x8,%esp
 8048578:	e8 53 fe ff ff       	call   80483d0 <__x86.get_pc_thunk.bx>
 804857d:	81 c3 83 1a 00 00    	add    $0x1a83,%ebx
 8048583:	83 c4 08             	add    $0x8,%esp
 8048586:	5b                   	pop    %ebx
 8048587:	c3                   	ret    
