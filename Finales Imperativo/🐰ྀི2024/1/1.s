	.file "1.pas"
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
	leaq	-112(%rsp),%rsp
	movq	%rdi,-40(%rbp)
	leaq	-72(%rbp),%rax
	movq	%rbp,%rdi
	movq	%rax,%rsi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO
	jmp	.Lj10
	.balign 8,0x90
.Lj9:
	movq	%rsp,%rdi
	leaq	-72(%rbp),%rsi
	movq	$4,%rcx
	rep
	movsq
	movq	-40(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO
	leaq	-72(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO
.Lj10:
	cmpw	$0,-54(%rbp)
	jne	.Lj9
	jmp	.Lj11
.Lj11:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc2:
.Le0:
	.size	P$P1_$$_CARGARDATOS$ARBOL, .Le0 - P$P1_$$_CARGARDATOS$ARBOL

.section .text.n_p$p1$_$cargardatos$arbol_$$_agregar$arbol$alumno
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO
	.type	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO,@function
P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO:
.Lc6:
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-96(%rsp),%rsp
	movq	%rdi,-48(%rbp)
	movq	%rsi,-40(%rbp)
	movq	-40(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj12
	jmp	.Lj13
.Lj12:
	movq	$48,%rdi
	call	fpc_getmem
	movq	-40(%rbp),%rdx
	movq	%rax,(%rdx)
	movq	-40(%rbp),%rax
	movq	(%rax),%rdi
	leaq	16(%rbp),%rsi
	movq	$4,%rcx
	rep
	movsq
	movq	-40(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,32(%rax)
	movq	-40(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,40(%rax)
	jmp	.Lj14
.Lj13:
	movq	-40(%rbp),%rax
	movq	(%rax),%rax
	movsd	24(%rax),%xmm0
	comisd	40(%rbp),%xmm0
	jp	.Lj17
	ja	.Lj15
.Lj17:
	jmp	.Lj16
.Lj15:
	movq	%rsp,%rdi
	leaq	16(%rbp),%rsi
	movq	$4,%rcx
	rep
	movsq
	movq	-40(%rbp),%rax
	movq	(%rax),%rax
	leaq	32(%rax),%rsi
	movq	-48(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO
	jmp	.Lj18
.Lj16:
	movq	%rsp,%rdi
	leaq	16(%rbp),%rsi
	movq	$4,%rcx
	rep
	movsq
	movq	-40(%rbp),%rax
	movq	(%rax),%rax
	leaq	40(%rax),%rsi
	movq	-48(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO
.Lj18:
.Lj14:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc7:
.Le1:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO, .Le1 - P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$ALUMNO

.section .text.n_p$p1$_$cargardatos$arbol_$$_leeralumno$alumno
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO
	.type	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO,@function
P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO:
.Lc11:
	pushq	%rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-64(%rsp),%rsp
	movq	%rbx,-56(%rbp)
	movq	%rdi,-16(%rbp)
	movq	%rsi,-8(%rbp)
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-24(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	movw	-24(%rbp),%dx
	movw	%dx,18(%rax)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	cmpw	$0,18(%rax)
	jne	.Lj19
	jmp	.Lj20
.Lj19:
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
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-48(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_float
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	fldt	-48(%rbp)
	fstpl	24(%rax)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
.Lj20:
	movq	-56(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc12:
.Le2:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO, .Le2 - P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO

.section .text.n_p$p1_$$_alumnosentre$arbol$lista$lista$real$real
	.balign 16,0x90
.globl	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL
	.type	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL,@function
P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL:
.Lc16:
	pushq	%rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-128(%rsp),%rsp
	movq	%rdi,-40(%rbp)
	movq	%rsi,-48(%rbp)
	movq	%rdx,-56(%rbp)
	movsd	%xmm0,-64(%rbp)
	movsd	%xmm1,-72(%rbp)
	cmpq	$0,-40(%rbp)
	jne	.Lj25
	jmp	.Lj26
.Lj25:
	movq	-40(%rbp),%rax
	movsd	24(%rax),%xmm0
	comisd	-64(%rbp),%xmm0
	jp	.Lj29
	jb	.Lj27
.Lj29:
	jmp	.Lj28
.Lj27:
	movq	-40(%rbp),%rax
	movq	40(%rax),%rdi
	movq	-56(%rbp),%rdx
	movq	-48(%rbp),%rsi
	movsd	-72(%rbp),%xmm1
	movsd	-64(%rbp),%xmm0
	call	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL
	jmp	.Lj30
.Lj28:
	movq	-40(%rbp),%rax
	movsd	24(%rax),%xmm0
	comisd	-72(%rbp),%xmm0
	jp	.Lj33
	ja	.Lj31
.Lj33:
	jmp	.Lj32
.Lj31:
	movq	-40(%rbp),%rax
	movq	32(%rax),%rdi
	movq	-56(%rbp),%rdx
	movq	-48(%rbp),%rsi
	movsd	-72(%rbp),%xmm1
	movsd	-64(%rbp),%xmm0
	call	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL
	jmp	.Lj34
.Lj32:
	movq	-40(%rbp),%rax
	movq	32(%rax),%rdi
	movq	-56(%rbp),%rdx
	movq	-48(%rbp),%rsi
	movsd	-72(%rbp),%xmm1
	movsd	-64(%rbp),%xmm0
	call	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL
	movq	-40(%rbp),%rsi
	movq	%rsp,%rdi
	movq	$4,%rcx
	rep
	movsq
	movq	-56(%rbp),%rdx
	movq	-48(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL_$$_INSERTAR_ATRAS$LISTA$LISTA$ALUMNO
	movq	-40(%rbp),%rax
	movq	40(%rax),%rdi
	movq	-56(%rbp),%rdx
	movq	-48(%rbp),%rsi
	movsd	-72(%rbp),%xmm1
	movsd	-64(%rbp),%xmm0
	call	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL
.Lj34:
.Lj30:
.Lj26:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc17:
.Le3:
	.size	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL, .Le3 - P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL

.section .text.n_p$p1$_$alumnosentre$arbol$lista$lista$real$real_$$_insertar_atras$lista$lista$alumno
	.balign 16,0x90
.globl	P$P1$_$ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL_$$_INSERTAR_ATRAS$LISTA$LISTA$ALUMNO
	.type	P$P1$_$ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL_$$_INSERTAR_ATRAS$LISTA$LISTA$ALUMNO,@function
P$P1$_$ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL_$$_INSERTAR_ATRAS$LISTA$LISTA$ALUMNO:
.Lc21:
	pushq	%rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-32(%rsp),%rsp
	movq	%rdi,-24(%rbp)
	movq	%rsi,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movq	$40,%rdi
	call	fpc_getmem
	movq	%rax,-32(%rbp)
	movq	-32(%rbp),%rdi
	leaq	16(%rbp),%rsi
	movq	$4,%rcx
	rep
	movsq
	movq	-32(%rbp),%rax
	movq	$0,32(%rax)
	movq	-8(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj35
	jmp	.Lj36
.Lj35:
	movq	-8(%rbp),%rdx
	movq	-32(%rbp),%rax
	movq	%rax,(%rdx)
	jmp	.Lj37
.Lj36:
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	movq	-32(%rbp),%rdx
	movq	%rdx,32(%rax)
.Lj37:
	movq	-16(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rdx,(%rax)
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc22:
.Le4:
	.size	P$P1$_$ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL_$$_INSERTAR_ATRAS$LISTA$LISTA$ALUMNO, .Le4 - P$P1$_$ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL_$$_INSERTAR_ATRAS$LISTA$LISTA$ALUMNO

.section .text.n_p$p1_$$_alumnomasrapido$arbol$resultado
	.balign 16,0x90
.globl	P$P1_$$_ALUMNOMASRAPIDO$ARBOL$RESULTADO
	.type	P$P1_$$_ALUMNOMASRAPIDO$ARBOL$RESULTADO,@function
P$P1_$$_ALUMNOMASRAPIDO$ARBOL$RESULTADO:
.Lc26:
	pushq	%rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-16(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movq	-16(%rbp),%rax
	movw	$-1,(%rax)
	movq	-16(%rbp),%rax
	leaq	2(%rax),%rdi
	movq	$_$P1$_Ld1,%rdx
	movq	$17,%rsi
	call	fpc_shortstr_to_shortstr
	cmpq	$0,-8(%rbp)
	jne	.Lj40
	jmp	.Lj41
.Lj40:
	jmp	.Lj43
	.balign 8,0x90
.Lj42:
	movq	-8(%rbp),%rax
	movq	32(%rax),%rax
	movq	%rax,-8(%rbp)
.Lj43:
	movq	-8(%rbp),%rax
	cmpq	$0,32(%rax)
	jne	.Lj42
	jmp	.Lj44
.Lj44:
	movq	-16(%rbp),%rdx
	movq	-8(%rbp),%rax
	movw	18(%rax),%ax
	movw	%ax,(%rdx)
	movq	-8(%rbp),%rdx
	movq	-16(%rbp),%rax
	leaq	2(%rax),%rdi
	movq	$17,%rsi
	call	fpc_shortstr_to_shortstr
.Lj41:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc27:
.Le5:
	.size	P$P1_$$_ALUMNOMASRAPIDO$ARBOL$RESULTADO, .Le5 - P$P1_$$_ALUMNOMASRAPIDO$ARBOL$RESULTADO

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
	call	fpc_initializeunits
	movq	$0,U_$P$P1_$$_A
	movq	$0,U_$P$P1_$$_L
	movq	$0,U_$P$P1_$$_ULT
	movq	$U_$P$P1_$$_A,%rax
	movq	%rax,%rdi
	call	P$P1_$$_CARGARDATOS$ARBOL
	movsd	_$P1$_Ld2,%xmm0
	movapd	%xmm0,%xmm1
	movsd	_$P1$_Ld3,%xmm0
	movq	$U_$P$P1_$$_ULT,%rdx
	movq	$U_$P$P1_$$_L,%rsi
	movq	U_$P$P1_$$_A,%rdi
	call	P$P1_$$_ALUMNOSENTRE$ARBOL$LISTA$LISTA$REAL$REAL
	movq	$U_$P$P1_$$_RES,%rsi
	movq	U_$P$P1_$$_A,%rdi
	call	P$P1_$$_ALUMNOMASRAPIDO$ARBOL$RESULTADO
	call	fpc_do_exit
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

.section .bss
	.balign 2
	.type U_$P$P1_$$_RES,@object
	.size U_$P$P1_$$_RES,20
U_$P$P1_$$_RES:
	.zero 20

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

.section .rodata.n__$P1$_Ld2
	.balign 8
.globl	_$P1$_Ld2
_$P1$_Ld2:
	.byte	0,0,0,0,0,0,52,64

.section .rodata.n__$P1$_Ld3
	.balign 8
.globl	_$P1$_Ld3
_$P1$_Ld3:
	.byte	0,0,0,0,0,0,36,64
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

