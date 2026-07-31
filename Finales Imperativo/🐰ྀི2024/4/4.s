	.file "4.pas"
# Begin asmlist al_procedures

.section .text.n_p$p1_$$_cargardatos$arbol
	.balign 16,0x90
.globl	P$P1_$$_CARGARDATOS$ARBOL
	.type	P$P1_$$_CARGARDATOS$ARBOL,@function
P$P1_$$_CARGARDATOS$ARBOL:
.Lc1:
	pushq	%rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-208(%rsp),%rsp
	movq	%rdi,-72(%rbp)
	leaq	-132(%rbp),%rax
	movq	%rbp,%rdi
	movq	%rax,%rsi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERVEHICULO$VEHICULO
	jmp	.Lj10
	.balign 8,0x90
.Lj9:
	movq	%rsp,%rdi
	leaq	-132(%rbp),%rsi
	movq	$7,%rcx
	rep
	movsq
	movsw
	movq	-72(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO
	leaq	-132(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERVEHICULO$VEHICULO
.Lj10:
	leaq	-132(%rbp),%rdi
	movq	$_$P1$_Ld1,%rsi
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	jne	.Lj9
	jmp	.Lj11
.Lj11:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc2:
.Le0:
	.size	P$P1_$$_CARGARDATOS$ARBOL, .Le0 - P$P1_$$_CARGARDATOS$ARBOL

.section .text.n_p$p1$_$cargardatos$arbol_$$_agregar$arbol$vehiculo
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO
	.type	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO,@function
P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO:
.Lc6:
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-144(%rsp),%rsp
	movq	%rdi,-80(%rbp)
	movq	%rsi,-72(%rbp)
	movq	-72(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj12
	jmp	.Lj13
.Lj12:
	movq	$80,%rdi
	call	fpc_getmem
	movq	-72(%rbp),%rdx
	movq	%rax,(%rdx)
	movq	-72(%rbp),%rax
	movq	(%rax),%rdi
	leaq	16(%rbp),%rsi
	movq	$7,%rcx
	rep
	movsq
	movsw
	movq	-72(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,64(%rax)
	movq	-72(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,72(%rax)
	jmp	.Lj14
.Lj13:
	movq	-72(%rbp),%rax
	movq	(%rax),%rax
	movw	56(%rax),%ax
	cmpw	72(%rbp),%ax
	jg	.Lj15
	jmp	.Lj16
.Lj15:
	movq	%rsp,%rdi
	leaq	16(%rbp),%rsi
	movq	$7,%rcx
	rep
	movsq
	movsw
	movq	-72(%rbp),%rax
	movq	(%rax),%rax
	leaq	64(%rax),%rsi
	movq	-80(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO
	jmp	.Lj17
.Lj16:
	movq	%rsp,%rdi
	leaq	16(%rbp),%rsi
	movq	$7,%rcx
	rep
	movsq
	movsw
	movq	-72(%rbp),%rax
	movq	(%rax),%rax
	leaq	72(%rax),%rsi
	movq	-80(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO
.Lj17:
.Lj14:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc7:
.Le1:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO, .Le1 - P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$VEHICULO

.section .text.n_p$p1$_$cargardatos$arbol_$$_leervehiculo$vehiculo
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$ARBOL_$$_LEERVEHICULO$VEHICULO
	.type	P$P1$_$CARGARDATOS$ARBOL_$$_LEERVEHICULO$VEHICULO,@function
P$P1$_$CARGARDATOS$ARBOL_$$_LEERVEHICULO$VEHICULO:
.Lc11:
	pushq	%rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-32(%rsp),%rsp
	movq	%rbx,-32(%rbp)
	movq	%rdi,-16(%rbp)
	movq	%rsi,-8(%rbp)
	call	fpc_get_input
	movq	%rax,%rbx
	movq	-8(%rbp),%rsi
	movq	$17,%rdx
	movq	%rbx,%rdi
	call	fpc_read_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	movq	-8(%rbp),%rdi
	movq	$_$P1$_Ld1,%rsi
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	jne	.Lj18
	jmp	.Lj19
.Lj18:
	call	fpc_get_input
	movq	%rax,%rbx
	movq	-8(%rbp),%rax
	leaq	18(%rax),%rsi
	movq	$17,%rdx
	movq	%rbx,%rdi
	call	fpc_read_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-24(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movq	-8(%rbp),%rdx
	movw	-24(%rbp),%ax
	movw	%ax,36(%rdx)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	movq	-8(%rbp),%rax
	leaq	38(%rax),%rsi
	movq	$17,%rdx
	movq	%rbx,%rdi
	call	fpc_read_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-24(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	movw	-24(%rbp),%dx
	movw	%dx,56(%rax)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
.Lj19:
	movq	-32(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc12:
.Le2:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_LEERVEHICULO$VEHICULO, .Le2 - P$P1$_$CARGARDATOS$ARBOL_$$_LEERVEHICULO$VEHICULO

.section .text.n_p$p1_$$_cantidadentre$arbol$smallint$smallint$$smallint
	.balign 16,0x90
.globl	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT
	.type	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT,@function
P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT:
.Lc16:
	pushq	%rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-48(%rsp),%rsp
	movq	%rbx,-40(%rbp)
	movq	%rdi,-8(%rbp)
	movw	%si,-16(%rbp)
	movw	%dx,-24(%rbp)
	cmpq	$0,-8(%rbp)
	je	.Lj22
	jmp	.Lj23
.Lj22:
	movw	$0,-28(%rbp)
	jmp	.Lj24
.Lj23:
	movq	-8(%rbp),%rax
	movw	36(%rax),%ax
	cmpw	-16(%rbp),%ax
	jge	.Lj25
	jmp	.Lj26
.Lj25:
	movq	-8(%rbp),%rax
	movw	36(%rax),%ax
	cmpw	-24(%rbp),%ax
	jle	.Lj27
	jmp	.Lj26
.Lj27:
	movq	-8(%rbp),%rax
	movq	64(%rax),%rdi
	movswl	-24(%rbp),%edx
	movswl	-16(%rbp),%esi
	call	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT
	movswl	%ax,%eax
	leal	1(%eax),%ebx
	movq	-8(%rbp),%rax
	movq	72(%rax),%rdi
	movswl	-24(%rbp),%edx
	movswl	-16(%rbp),%esi
	call	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT
	movswl	%ax,%eax
	leal	(%ebx,%eax),%eax
	movw	%ax,-28(%rbp)
	jmp	.Lj28
.Lj26:
	movq	-8(%rbp),%rax
	movq	64(%rax),%rdi
	movswl	-24(%rbp),%edx
	movswl	-16(%rbp),%esi
	call	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT
	movw	%ax,%bx
	movswl	%bx,%ebx
	movq	-8(%rbp),%rax
	movq	72(%rax),%rdi
	movswl	-24(%rbp),%edx
	movswl	-16(%rbp),%esi
	call	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT
	movswl	%ax,%eax
	leal	(%ebx,%eax),%eax
	movw	%ax,-28(%rbp)
.Lj28:
.Lj24:
	movswl	-28(%rbp),%eax
	movq	-40(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc17:
.Le3:
	.size	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT, .Le3 - P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT

.section .text.n_p$p1_$$_dnimenoresa$arbol$lista$lista$smallint
	.balign 16,0x90
.globl	P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT
	.type	P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT,@function
P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT:
.Lc21:
	pushq	%rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-160(%rsp),%rsp
	movq	%rdi,-72(%rbp)
	movq	%rsi,-80(%rbp)
	movq	%rdx,-88(%rbp)
	movw	%cx,-96(%rbp)
	cmpq	$0,-72(%rbp)
	jne	.Lj33
	jmp	.Lj34
.Lj33:
	movq	-72(%rbp),%rax
	movw	56(%rax),%ax
	cmpw	-96(%rbp),%ax
	jge	.Lj35
	jmp	.Lj36
.Lj35:
	movq	-72(%rbp),%rax
	movq	64(%rax),%rdi
	movq	-88(%rbp),%rdx
	movq	-80(%rbp),%rsi
	movswl	-96(%rbp),%ecx
	call	P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT
	jmp	.Lj37
.Lj36:
	movq	-72(%rbp),%rax
	movq	64(%rax),%rdi
	movq	-88(%rbp),%rdx
	movq	-80(%rbp),%rsi
	movswl	-96(%rbp),%ecx
	call	P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT
	movq	-72(%rbp),%rsi
	movq	%rsp,%rdi
	movq	$7,%rcx
	rep
	movsq
	movsw
	movq	-88(%rbp),%rdx
	movq	-80(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT_$$_INSERTAR_ATRAS$LISTA$LISTA$VEHICULO
	movq	-72(%rbp),%rax
	movq	72(%rax),%rdi
	movq	-88(%rbp),%rdx
	movq	-80(%rbp),%rsi
	movswl	-96(%rbp),%ecx
	call	P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT
.Lj37:
.Lj34:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc22:
.Le4:
	.size	P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT, .Le4 - P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT

.section .text.n_p$p1$_$dnimenoresa$arbol$lista$lista$smallint_$$_insertar_atras$lista$lista$vehiculo
	.balign 16,0x90
.globl	P$P1$_$DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT_$$_INSERTAR_ATRAS$LISTA$LISTA$VEHICULO
	.type	P$P1$_$DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT_$$_INSERTAR_ATRAS$LISTA$LISTA$VEHICULO,@function
P$P1$_$DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT_$$_INSERTAR_ATRAS$LISTA$LISTA$VEHICULO:
.Lc26:
	pushq	%rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-32(%rsp),%rsp
	movq	%rdi,-24(%rbp)
	movq	%rsi,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movq	$72,%rdi
	call	fpc_getmem
	movq	%rax,-32(%rbp)
	movq	-32(%rbp),%rdi
	leaq	16(%rbp),%rsi
	movq	$7,%rcx
	rep
	movsq
	movsw
	movq	-32(%rbp),%rax
	movq	$0,64(%rax)
	movq	-8(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj38
	jmp	.Lj39
.Lj38:
	movq	-8(%rbp),%rdx
	movq	-32(%rbp),%rax
	movq	%rax,(%rdx)
	jmp	.Lj40
.Lj39:
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	movq	-32(%rbp),%rdx
	movq	%rdx,64(%rax)
.Lj40:
	movq	-16(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rdx,(%rax)
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc27:
.Le5:
	.size	P$P1$_$DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT_$$_INSERTAR_ATRAS$LISTA$LISTA$VEHICULO, .Le5 - P$P1$_$DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT_$$_INSERTAR_ATRAS$LISTA$LISTA$VEHICULO

.section .text.n_main
	.balign 16,0x90
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Lc31:
	pushq	%rbp
.Lc33:
.Lc34:
	movq	%rsp,%rbp
.Lc35:
	leaq	-16(%rsp),%rsp
	movq	%rbx,-8(%rbp)
	call	fpc_initializeunits
	movq	$0,U_$P$P1_$$_A
	movq	$0,U_$P$P1_$$_L
	movq	$0,U_$P$P1_$$_ULT
	movq	$U_$P$P1_$$_A,%rax
	movq	%rax,%rdi
	call	P$P1_$$_CARGARDATOS$ARBOL
	call	fpc_get_output
	movq	%rax,%rbx
	movq	U_$P$P1_$$_A,%rdi
	movl	$2,%edx
	movl	$1,%esi
	call	P$P1_$$_CANTIDADENTRE$ARBOL$SMALLINT$SMALLINT$$SMALLINT
	movw	%ax,%dx
	movswq	%dx,%rdx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	movq	$U_$P$P1_$$_ULT,%rdx
	movq	$U_$P$P1_$$_L,%rsi
	movq	U_$P$P1_$$_A,%rdi
	movl	$10,%ecx
	call	P$P1_$$_DNIMENORESA$ARBOL$LISTA$LISTA$SMALLINT
	call	fpc_do_exit
	movq	-8(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc32:
.Le6:
	.size	main, .Le6 - main

.section .text
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
	.type U_$P$P1_$$_A,@object
	.size U_$P$P1_$$_A,8
U_$P$P1_$$_A:
	.zero 8

.section .bss
	.balign 8
	.type U_$P$P1_$$_L,@object
	.size U_$P$P1_$$_L,8
U_$P$P1_$$_L:
	.zero 8

.section .bss
	.balign 8
	.type U_$P$P1_$$_ULT,@object
	.size U_$P$P1_$$_ULT,8
U_$P$P1_$$_ULT:
	.zero 8

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	0
.Le7:
	.size	INITFINAL, .Le7 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 8
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,@object
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM$indirect
.Le8:
	.size	FPC_THREADVARTABLES, .Le8 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,@object
FPC_RESOURCESTRINGTABLES:
	.quad	0
.Le9:
	.size	FPC_RESOURCESTRINGTABLES, .Le9 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 8
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,@object
FPC_WIDEINITTABLES:
	.quad	0
.Le10:
	.size	FPC_WIDEINITTABLES, .Le10 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 8
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,@object
FPC_RESSTRINITTABLES:
	.quad	0
.Le11:
	.size	FPC_RESSTRINITTABLES, .Le11 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 16
	.type	__fpc_ident,@object
__fpc_ident:
	.ascii	"FPC 3.2.3 [2026/02/07] for x86_64 - Linux"
.Le12:
	.size	__fpc_ident, .Le12 - __fpc_ident

.section .data.n___stklen
	.balign 8
.globl	__stklen
	.type	__stklen,@object
__stklen:
	.quad	8388608
.Le13:
	.size	__stklen, .Le13 - __stklen

.section .data.n___heapsize
	.balign 8
.globl	__heapsize
	.type	__heapsize,@object
__heapsize:
	.quad	0
.Le14:
	.size	__heapsize, .Le14 - __heapsize

.section .data.n___fpc_valgrind
	.balign 8
.globl	__fpc_valgrind
	.type	__fpc_valgrind,@object
__fpc_valgrind:
	.byte	0
.Le15:
	.size	__fpc_valgrind, .Le15 - __fpc_valgrind

.section .data.n_FPC_RESLOCATION
	.balign 8
.globl	FPC_RESLOCATION
	.type	FPC_RESLOCATION,@object
FPC_RESLOCATION:
	.quad	0
.Le16:
	.size	FPC_RESLOCATION, .Le16 - FPC_RESLOCATION
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$P1$_Ld1
	.balign 8
.globl	_$P1$_Ld1
_$P1$_Ld1:
	.ascii	"\003ZZZ\000"
.Le17:
	.size	_$P1$_Ld1, .Le17 - _$P1$_Ld1
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc36:
	.long	.Lc38-.Lc37
.Lc37:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 8,0
.Lc38:
	.long	.Lc40-.Lc39
.Lc39:
	.quad	.Lc36
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc40:
	.long	.Lc42-.Lc41
.Lc41:
	.quad	.Lc36
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc9-.Lc8
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc10-.Lc9
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc42:
	.long	.Lc44-.Lc43
.Lc43:
	.quad	.Lc36
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc14-.Lc13
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc15-.Lc14
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc44:
	.long	.Lc46-.Lc45
.Lc45:
	.quad	.Lc36
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc19-.Lc18
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc20-.Lc19
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc46:
	.long	.Lc48-.Lc47
.Lc47:
	.quad	.Lc36
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc24-.Lc23
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc25-.Lc24
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc48:
	.long	.Lc50-.Lc49
.Lc49:
	.quad	.Lc36
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.byte	4
	.long	.Lc28-.Lc26
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc29-.Lc28
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc30-.Lc29
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc50:
	.long	.Lc52-.Lc51
.Lc51:
	.quad	.Lc36
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc34-.Lc33
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc35-.Lc34
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc52:
# End asmlist al_dwarf_frame
.section .note.GNU-stack,"",%progbits

