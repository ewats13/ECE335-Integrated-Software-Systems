	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_switch_statement
	.align	4, 0x90
_switch_statement:                      ## @switch_statement
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
Ltmp3:
	.cfi_offset %rbx, -24
	movl	%esi, %r11d
	xorl	%r9d, %r9d
	testl	%r11d, %r11d
	jle	LBB0_1
## BB#2:
	leaq	LJTI0_0(%rip), %r10
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	.align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	imulq	$1374389535, %rax, %rax ## imm = 0x51EB851F
	movq	%rax, %rbx
	shrq	$63, %rbx
	sarq	$38, %rax
	addl	%ebx, %eax
	cmpl	$4, %eax
	ja	LBB0_10
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	movslq	(%r10,%rax,4), %rax
	addq	%r10, %rax
	jmpq	*%rax
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	incl	%esi
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	incl	%edx
	jmp	LBB0_10
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	incl	%ecx
	jmp	LBB0_10
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	incl	%r8d
	jmp	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=1
	incl	%r9d
	.align	4, 0x90
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	addq	$4, %rdi
	decl	%r11d
	jne	LBB0_3
	jmp	LBB0_11
LBB0_1:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
LBB0_11:                                ## %._crit_edge
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	jmp	_printf                 ## TAILCALL
	.cfi_endproc
	.align	2, 0x90
L0_0_set_5 = LBB0_5-LJTI0_0
L0_0_set_6 = LBB0_6-LJTI0_0
L0_0_set_7 = LBB0_7-LJTI0_0
L0_0_set_8 = LBB0_8-LJTI0_0
L0_0_set_9 = LBB0_9-LJTI0_0
LJTI0_0:
	.long	L0_0_set_5
	.long	L0_0_set_6
	.long	L0_0_set_7
	.long	L0_0_set_8
	.long	L0_0_set_9

	.globl	_iffy
	.align	4, 0x90
_iffy:                                  ## @iffy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp4:
	.cfi_def_cfa_offset 16
Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp7:
	.cfi_offset %rbx, -56
Ltmp8:
	.cfi_offset %r12, -48
Ltmp9:
	.cfi_offset %r13, -40
Ltmp10:
	.cfi_offset %r14, -32
Ltmp11:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r15
	xorl	%r9d, %r9d
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jle	LBB1_13
	.align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r15), %eax
	cmpl	$199, %eax
	jg	LBB1_3
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	incl	%ebx
	jmp	LBB1_12
	.align	4, 0x90
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$399, %eax              ## imm = 0x18F
	jg	LBB1_5
## BB#4:                                ##   in Loop: Header=BB1_1 Depth=1
	incl	%r13d
	jmp	LBB1_12
	.align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	leal	-400(%rax), %edx
	cmpl	$199, %edx
	ja	LBB1_7
## BB#6:                                ##   in Loop: Header=BB1_1 Depth=1
	incl	%ecx
	jmp	LBB1_12
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	leal	-600(%rax), %edx
	cmpl	$199, %edx
	ja	LBB1_9
## BB#8:                                ##   in Loop: Header=BB1_1 Depth=1
	incl	%r12d
	jmp	LBB1_12
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	addl	$-800, %eax             ## imm = 0xFFFFFFFFFFFFFCE0
	cmpl	$199, %eax
	ja	LBB1_11
## BB#10:                               ##   in Loop: Header=BB1_1 Depth=1
	incl	%r9d
	jmp	LBB1_12
LBB1_11:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_str(%rip), %rdi
	movl	%r9d, -44(%rbp)         ## 4-byte Spill
	movl	%ecx, -48(%rbp)         ## 4-byte Spill
	callq	_puts
	movl	-48(%rbp), %ecx         ## 4-byte Reload
	movl	-44(%rbp), %r9d         ## 4-byte Reload
	.align	4, 0x90
LBB1_12:                                ##   in Loop: Header=BB1_1 Depth=1
	addq	$4, %r15
	decl	%r14d
	jne	LBB1_1
LBB1_13:                                ## %._crit_edge
	leaq	L_.str2(%rip), %rdi
	xorl	%eax, %eax
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	%r12d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_printf                 ## TAILCALL
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI2_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI2_1:
	.quad	4841369599423283200     ## double 4.503600e+15
	.quad	4985484787499139072     ## double 1.934281e+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_2:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp15:
	.cfi_offset %rbx, -56
Ltmp16:
	.cfi_offset %r12, -48
Ltmp17:
	.cfi_offset %r13, -40
Ltmp18:
	.cfi_offset %r14, -32
Ltmp19:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %r12
	movq	(%r12), %r12
	movq	%r12, -48(%rbp)
	leaq	-64(%rbp), %rdi
	callq	_time
	movl	-64(%rbp), %edi
	callq	_srand
	leaq	L_.str3(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str4(%rip), %rdi
	leaq	-52(%rbp), %rsi
	xorl	%eax, %eax
	callq	_scanf
	movl	-52(%rbp), %eax
	movq	%rsp, %r13
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	subq	%rcx, %r13
	movq	%r13, %rsp
	movq	%rsp, %r14
	subq	%rcx, %r14
	movq	%r14, %rsp
	testl	%eax, %eax
	jle	LBB2_1
	.align	4, 0x90
LBB2_6:                                 ## %.lr.ph4
                                        ## =>This Inner Loop Header: Depth=1
	callq	_rand
	cltq
	imulq	$274877907, %rax, %rcx  ## imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx       ## imm = 0x3E8
	subl	%ecx, %eax
	movl	%eax, (%r13,%rbx,4)
	incq	%rbx
	movslq	-52(%rbp), %rax
	cmpq	%rax, %rbx
	jl	LBB2_6
	jmp	LBB2_2
LBB2_1:                                 ## %.preheaderthread-pre-split
	movl	-52(%rbp), %eax
LBB2_2:                                 ## %.preheader
	testl	%eax, %eax
	jle	LBB2_4
## BB#3:                                ## %._crit_edge
	movl	-52(%rbp), %eax
	leal	-1(%rax), %ecx
	cmpl	$1, %eax
	leaq	4(,%rcx,4), %rax
	movl	$4, %edx
	cmovgq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_memcpy
LBB2_4:
	callq	_clock
	movq	%rax, %r15
	movl	-52(%rbp), %esi
	movq	%r13, %rdi
	callq	_switch_statement
	callq	_clock
	subq	%r15, %rax
	movd	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI2_2(%rip), %xmm0
	leaq	L_.str5(%rip), %rdi
	movb	$1, %al
	callq	_printf
	callq	_clock
	movq	%rax, %rbx
	movl	-52(%rbp), %esi
	movq	%r14, %rdi
	callq	_iffy
	callq	_clock
	subq	%rbx, %rax
	movd	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI2_2(%rip), %xmm0
	leaq	L_.str6(%rip), %rdi
	movb	$1, %al
	callq	_printf
	cmpq	-48(%rbp), %r12
	jne	LBB2_7
## BB#5:
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_7:
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Switch Statement Counts:\n0 - 199:     %i \n200 - 399:   %i \n400 - 599:   %i \n600 - 799:   %i \n800 - 999:   %i \n"

L_.str1:                                ## @.str1
	.asciz	"Value out of range, check random number generator.\n"

L_.str2:                                ## @.str2
	.asciz	"If-Then-Else Statement Counts:\n0 - 199:     %i \n200 - 399:   %i \n400 - 599:   %i \n600 - 799:   %i \n800 - 999:   %i \n"

L_.str3:                                ## @.str3
	.asciz	"Input Array Size: "

L_.str4:                                ## @.str4
	.asciz	"%d"

L_.str5:                                ## @.str5
	.asciz	"Switch Statement - Count Execution Time: %f seconds\n\n"

L_.str6:                                ## @.str6
	.asciz	"If-Then-Else Statement - Count Execution Time: %f seconds\n\n"

	.align	4                       ## @str
L_str:
	.asciz	"Value out of range, check random number generator."


.subsections_via_symbols
