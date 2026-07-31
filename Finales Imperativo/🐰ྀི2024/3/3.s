	.file "3.pas"
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
	leaq	-816(%rsp),%rsp
	movq	%rdi,-272(%rbp)
	leaq	-532(%rbp),%rax
	movq	%rbp,%rdi
	movq	%rax,%rsi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO
	jmp	.Lj10
	.balign 8,0x90
.Lj9:
	movq	%rsp,%rdi
	leaq	-532(%rbp),%rsi
	movq	$32,%rcx
	rep
	movsq
	movsl
	movq	-272(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO
	leaq	-532(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO
.Lj10:
	cmpw	$0,-276(%rbp)
	jne	.Lj9
	jmp	.Lj11
.Lj11:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc2:
.Le0:
	.size	P$P1_$$_CARGARDATOS$ARBOL, .Le0 - P$P1_$$_CARGARDATOS$ARBOL

.section .text.n_p$p1$_$cargardatos$arbol_$$_cargar$arbol$alumno
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO
	.type	P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO,@function
P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO:
.Lc6:
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-560(%rsp),%rsp
	movq	%rdi,-280(%rbp)
	movq	%rsi,-272(%rbp)
	movq	-272(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj12
	jmp	.Lj13
.Lj12:
	movq	$280,%rdi
	call	fpc_getmem
	movq	-272(%rbp),%rdx
	movq	%rax,(%rdx)
	movq	-272(%rbp),%rax
	movq	(%rax),%rdi
	leaq	16(%rbp),%rsi
	movq	$32,%rcx
	rep
	movsq
	movsl
	movq	-272(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,264(%rax)
	movq	-272(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,272(%rax)
	jmp	.Lj14
.Lj13:
	movq	-272(%rbp),%rax
	movq	(%rax),%rax
	movw	256(%rax),%ax
	cmpw	272(%rbp),%ax
	jg	.Lj15
	jmp	.Lj16
.Lj15:
	movq	%rsp,%rdi
	leaq	16(%rbp),%rsi
	movq	$32,%rcx
	rep
	movsq
	movsl
	movq	-272(%rbp),%rax
	movq	(%rax),%rax
	leaq	264(%rax),%rsi
	movq	-280(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO
	jmp	.Lj17
.Lj16:
	movq	%rsp,%rdi
	leaq	16(%rbp),%rsi
	movq	$32,%rcx
	rep
	movsq
	movsl
	movq	-272(%rbp),%rax
	movq	(%rax),%rax
	leaq	272(%rax),%rsi
	movq	-280(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO
.Lj17:
.Lj14:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc7:
.Le1:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO, .Le1 - P$P1$_$CARGARDATOS$ARBOL_$$_CARGAR$ARBOL$ALUMNO

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
	leaq	-32(%rsp),%rsp
	movq	%rbx,-32(%rbp)
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
	movw	%dx,256(%rax)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	cmpw	$0,256(%rax)
	jne	.Lj18
	jmp	.Lj19
.Lj18:
	call	fpc_get_input
	movq	%rax,%rbx
	movq	-8(%rbp),%rsi
	movq	$255,%rdx
	movq	%rbx,%rdi
	call	fpc_read_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	movw	$0,258(%rax)
.Lj19:
	movq	-32(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc12:
.Le2:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO, .Le2 - P$P1$_$CARGARDATOS$ARBOL_$$_LEERALUMNO$ALUMNO

.section .text.n_p$p1_$$_aumentarautoevaluaciones$arbol$smallint$$boolean
	.balign 16,0x90
.globl	P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN
	.type	P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN,@function
P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN:
.Lc16:
	pushq	%rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-32(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	movw	%si,-16(%rbp)
	cmpq	$0,-8(%rbp)
	je	.Lj22
	jmp	.Lj23
.Lj22:
	movb	$0,-20(%rbp)
	jmp	.Lj24
.Lj23:
	movq	-8(%rbp),%rax
	movw	256(%rax),%ax
	cmpw	-16(%rbp),%ax
	jg	.Lj25
	jmp	.Lj26
.Lj25:
	movq	-8(%rbp),%rax
	movq	264(%rax),%rdi
	movswl	-16(%rbp),%esi
	call	P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN
	jmp	.Lj27
.Lj26:
	movq	-8(%rbp),%rax
	movw	256(%rax),%ax
	cmpw	-16(%rbp),%ax
	jl	.Lj28
	jmp	.Lj29
.Lj28:
	movq	-8(%rbp),%rax
	movq	272(%rax),%rdi
	movswl	-16(%rbp),%esi
	call	P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN
	jmp	.Lj30
.Lj29:
	movq	-8(%rbp),%rax
	movswl	258(%rax),%eax
	leal	1(%eax),%eax
	movq	-8(%rbp),%rdx
	movw	%ax,258(%rdx)
	movb	$1,-20(%rbp)
.Lj30:
.Lj27:
.Lj24:
	movb	-20(%rbp),%al
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc17:
.Le3:
	.size	P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN, .Le3 - P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN

.section .text.n_p$p1_$$_alumnosconmasdetresaut$arbol$lista
	.balign 16,0x90
.globl	P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA
	.type	P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA,@function
P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA:
.Lc21:
	pushq	%rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-560(%rsp),%rsp
	movq	%rdi,-272(%rbp)
	movq	%rsi,-280(%rbp)
	cmpq	$0,-272(%rbp)
	jne	.Lj35
	jmp	.Lj36
.Lj35:
	movq	-272(%rbp),%rax
	movq	264(%rax),%rdi
	movq	-280(%rbp),%rsi
	call	P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA
	movq	-272(%rbp),%rax
	cmpw	$3,258(%rax)
	jge	.Lj37
	jmp	.Lj38
.Lj37:
	movq	-272(%rbp),%rsi
	movq	%rsp,%rdi
	movq	$32,%rcx
	rep
	movsq
	movsl
	movq	-280(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$ALUMNOSCONMASDETRESAUT$ARBOL$LISTA_$$_INSERTAR_ORDENADO$LISTA$ALUMNO
.Lj38:
	movq	-272(%rbp),%rax
	movq	272(%rax),%rdi
	movq	-280(%rbp),%rsi
	call	P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA
.Lj36:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc22:
.Le4:
	.size	P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA, .Le4 - P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA

.section .text.n_p$p1$_$alumnosconmasdetresaut$arbol$lista_$$_insertar_ordenado$lista$alumno
	.balign 16,0x90
.globl	P$P1$_$ALUMNOSCONMASDETRESAUT$ARBOL$LISTA_$$_INSERTAR_ORDENADO$LISTA$ALUMNO
	.type	P$P1$_$ALUMNOSCONMASDETRESAUT$ARBOL$LISTA_$$_INSERTAR_ORDENADO$LISTA$ALUMNO,@function
P$P1$_$ALUMNOSCONMASDETRESAUT$ARBOL$LISTA_$$_INSERTAR_ORDENADO$LISTA$ALUMNO:
.Lc26:
	pushq	%rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-48(%rsp),%rsp
	movq	%rdi,-16(%rbp)
	movq	%rsi,-8(%rbp)
	movq	$272,%rdi
	call	fpc_getmem
	movq	%rax,-40(%rbp)
	movq	-40(%rbp),%rdi
	leaq	16(%rbp),%rsi
	movq	$32,%rcx
	rep
	movsq
	movsl
	movq	$0,-24(%rbp)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movq	%rax,-32(%rbp)
	jmp	.Lj40
	.balign 8,0x90
.Lj39:
	movq	-32(%rbp),%rax
	movq	%rax,-24(%rbp)
	movq	-32(%rbp),%rax
	movq	264(%rax),%rax
	movq	%rax,-32(%rbp)
.Lj40:
	cmpq	$0,-32(%rbp)
	jne	.Lj42
	jmp	.Lj43
.Lj42:
	movq	-32(%rbp),%rdi
	leaq	16(%rbp),%rsi
	call	fpc_shortstr_compare
	cmpl	$0,%eax
	jl	.Lj44
	jmp	.Lj43
.Lj44:
	jmp	.Lj39
.Lj43:
	jmp	.Lj41
.Lj41:
	cmpq	$0,-24(%rbp)
	je	.Lj45
	jmp	.Lj46
.Lj45:
	movq	-8(%rbp),%rax
	movq	-40(%rbp),%rdx
	movq	%rdx,(%rax)
	jmp	.Lj47
.Lj46:
	movq	-24(%rbp),%rax
	movq	-40(%rbp),%rdx
	movq	%rdx,264(%rax)
.Lj47:
	movq	-40(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rdx,264(%rax)
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc27:
.Le5:
	.size	P$P1$_$ALUMNOSCONMASDETRESAUT$ARBOL$LISTA_$$_INSERTAR_ORDENADO$LISTA$ALUMNO, .Le5 - P$P1$_$ALUMNOSCONMASDETRESAUT$ARBOL$LISTA_$$_INSERTAR_ORDENADO$LISTA$ALUMNO

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
	call	fpc_initializeunits
	movq	$0,U_$P$P1_$$_A
	movq	$0,U_$P$P1_$$_L
	movq	$U_$P$P1_$$_A,%rax
	movq	%rax,%rdi
	call	P$P1_$$_CARGARDATOS$ARBOL
	movq	U_$P$P1_$$_A,%rdi
	movl	$1,%esi
	call	P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN
	movq	U_$P$P1_$$_A,%rdi
	movl	$2,%esi
	call	P$P1_$$_AUMENTARAUTOEVALUACIONES$ARBOL$SMALLINT$$BOOLEAN
	movq	$U_$P$P1_$$_L,%rsi
	movq	U_$P$P1_$$_A,%rdi
	call	P$P1_$$_ALUMNOSCONMASDETRESAUT$ARBOL$LISTA
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

