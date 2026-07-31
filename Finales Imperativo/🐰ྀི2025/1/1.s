	.file "1.pas"
# Begin asmlist al_procedures

.section .text.n_p$p1_$$_leerencomienda$encomienda
	.balign 16,0x90
.globl	P$P1_$$_LEERENCOMIENDA$ENCOMIENDA
	.type	P$P1_$$_LEERENCOMIENDA$ENCOMIENDA,@function
P$P1_$$_LEERENCOMIENDA$ENCOMIENDA:
.Lc1:
	pushq	%rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-32(%rsp),%rsp
	movq	%rbx,-24(%rbp)
	movq	%rdi,-8(%rbp)
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-16(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	movw	-16(%rbp),%dx
	movw	%dx,16(%rax)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	cmpw	$0,16(%rax)
	jne	.Lj5
	jmp	.Lj6
.Lj5:
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-16(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movq	-8(%rbp),%rdx
	movw	-16(%rbp),%ax
	movw	%ax,(%rdx)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-16(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	movw	-16(%rbp),%dx
	movw	%dx,2(%rax)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	movq	-8(%rbp),%rax
	leaq	4(%rax),%rsi
	movq	$10,%rdx
	movq	%rbx,%rdi
	call	fpc_read_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
.Lj6:
	movq	-24(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc2:
.Le0:
	.size	P$P1_$$_LEERENCOMIENDA$ENCOMIENDA, .Le0 - P$P1_$$_LEERENCOMIENDA$ENCOMIENDA

.section .text.n_p$p1_$$_agregar$arbol$encomienda
	.balign 16,0x90
.globl	P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA
	.type	P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA,@function
P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA:
.Lc6:
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-64(%rsp),%rsp
	movq	%rdi,-32(%rbp)
	movq	-32(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj9
	jmp	.Lj10
.Lj9:
	movq	$32,%rdi
	call	fpc_getmem
	movq	-32(%rbp),%rdx
	movq	%rax,(%rdx)
	movq	-32(%rbp),%rax
	movq	(%rax),%rdi
	leaq	20(%rbp),%rdx
	movq	$10,%rsi
	call	fpc_shortstr_to_shortstr
	movq	-32(%rbp),%rax
	movq	(%rax),%rdx
	movw	32(%rbp),%ax
	movw	%ax,12(%rdx)
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	movw	$1,14(%rax)
	jmp	.Lj11
.Lj10:
	movq	-32(%rbp),%rax
	movq	(%rax),%rsi
	leaq	20(%rbp),%rdi
	call	fpc_shortstr_compare
	cmpl	$0,%eax
	jl	.Lj12
	jmp	.Lj13
.Lj12:
	movq	16(%rbp),%rax
	movq	%rax,(%rsp)
	movq	24(%rbp),%rax
	movq	%rax,8(%rsp)
	movw	32(%rbp),%ax
	movw	%ax,16(%rsp)
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	leaq	16(%rax),%rdi
	call	P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA
	jmp	.Lj14
.Lj13:
	movq	-32(%rbp),%rax
	movq	(%rax),%rsi
	leaq	20(%rbp),%rdi
	call	fpc_shortstr_compare
	cmpl	$0,%eax
	jg	.Lj15
	jmp	.Lj16
.Lj15:
	movq	16(%rbp),%rax
	movq	%rax,(%rsp)
	movq	24(%rbp),%rax
	movq	%rax,8(%rsp)
	movw	32(%rbp),%ax
	movw	%ax,16(%rsp)
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	leaq	24(%rax),%rdi
	call	P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA
	jmp	.Lj17
.Lj16:
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	movswl	14(%rax),%eax
	leal	1(%eax),%eax
	movq	-32(%rbp),%rdx
	movq	(%rdx),%rdx
	movw	%ax,14(%rdx)
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	movswl	12(%rax),%eax
	movswl	32(%rbp),%edx
	leal	(%eax,%edx),%eax
	movq	-32(%rbp),%rdx
	movq	(%rdx),%rdx
	movw	%ax,12(%rdx)
.Lj17:
.Lj14:
.Lj11:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc7:
.Le1:
	.size	P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA, .Le1 - P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA

.section .text.n_p$p1_$$_cargar$arbol
	.balign 16,0x90
.globl	P$P1_$$_CARGAR$ARBOL
	.type	P$P1_$$_CARGAR$ARBOL,@function
P$P1_$$_CARGAR$ARBOL:
.Lc11:
	pushq	%rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-96(%rsp),%rsp
	movq	%rdi,-32(%rbp)
	leaq	-52(%rbp),%rax
	movq	%rax,%rdi
	call	P$P1_$$_LEERENCOMIENDA$ENCOMIENDA
	jmp	.Lj21
	.balign 8,0x90
.Lj20:
	movq	-52(%rbp),%rax
	movq	%rax,(%rsp)
	movq	-44(%rbp),%rax
	movq	%rax,8(%rsp)
	movw	-36(%rbp),%ax
	movw	%ax,16(%rsp)
	movq	-32(%rbp),%rdi
	call	P$P1_$$_AGREGAR$ARBOL$ENCOMIENDA
	leaq	-52(%rbp),%rdi
	call	P$P1_$$_LEERENCOMIENDA$ENCOMIENDA
.Lj21:
	cmpw	$0,-36(%rbp)
	jne	.Lj20
	jmp	.Lj22
.Lj22:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc12:
.Le2:
	.size	P$P1_$$_CARGAR$ARBOL, .Le2 - P$P1_$$_CARGAR$ARBOL

.section .text.n_p$p1_$$_ciudadescantmayor$arbol$lista$smallint
	.balign 16,0x90
.globl	P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT
	.type	P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT,@function
P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT:
.Lc16:
	pushq	%rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-32(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movw	%dx,-24(%rbp)
	cmpq	$0,-8(%rbp)
	jne	.Lj27
	jmp	.Lj28
.Lj27:
	movq	-16(%rbp),%rax
	movq	%rax,%rsi
	movswl	-24(%rbp),%edx
	movq	-8(%rbp),%rdi
	call	P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT
	movq	-8(%rbp),%rax
	movw	14(%rax),%ax
	cmpw	-24(%rbp),%ax
	jg	.Lj29
	jmp	.Lj30
.Lj29:
	movq	-8(%rbp),%rdx
	movq	-16(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT_$$_INSERTAR_ORDENADO$LISTA$ITEMARBOL
.Lj30:
	movq	-16(%rbp),%rsi
	movswl	-24(%rbp),%edx
	movq	-8(%rbp),%rdi
	call	P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT
.Lj28:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc17:
.Le3:
	.size	P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT, .Le3 - P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT

.section .text.n_p$p1$_$ciudadescantmayor$arbol$lista$smallint_$$_insertar_ordenado$lista$itemarbol
	.balign 16,0x90
.globl	P$P1$_$CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT_$$_INSERTAR_ORDENADO$LISTA$ITEMARBOL
	.type	P$P1$_$CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT_$$_INSERTAR_ORDENADO$LISTA$ITEMARBOL,@function
P$P1$_$CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT_$$_INSERTAR_ORDENADO$LISTA$ITEMARBOL:
.Lc21:
	pushq	%rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-64(%rsp),%rsp
	movq	%rdi,-24(%rbp)
	movq	%rsi,-8(%rbp)
	movq	%rdx,-16(%rbp)
	movq	-16(%rbp),%rax
	movq	(%rax),%rdx
	movq	%rdx,-64(%rbp)
	movq	8(%rax),%rax
	movq	%rax,-56(%rbp)
	movq	$24,%rdi
	call	fpc_getmem
	movq	%rax,-48(%rbp)
	movq	-48(%rbp),%rdx
	movq	-64(%rbp),%rax
	movq	%rax,(%rdx)
	movq	-56(%rbp),%rax
	movq	%rax,8(%rdx)
	movq	$0,-32(%rbp)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movq	%rax,-40(%rbp)
	jmp	.Lj32
	.balign 8,0x90
.Lj31:
	movq	-40(%rbp),%rax
	movq	%rax,-32(%rbp)
	movq	-40(%rbp),%rax
	movq	16(%rax),%rax
	movq	%rax,-40(%rbp)
.Lj32:
	cmpq	$0,-40(%rbp)
	jne	.Lj34
	jmp	.Lj35
.Lj34:
	movq	-40(%rbp),%rax
	movw	12(%rax),%ax
	cmpw	-52(%rbp),%ax
	jl	.Lj36
	jmp	.Lj35
.Lj36:
	jmp	.Lj31
.Lj35:
	jmp	.Lj33
.Lj33:
	cmpq	$0,-32(%rbp)
	je	.Lj37
	jmp	.Lj38
.Lj37:
	movq	-8(%rbp),%rax
	movq	-48(%rbp),%rdx
	movq	%rdx,(%rax)
	jmp	.Lj39
.Lj38:
	movq	-32(%rbp),%rax
	movq	-48(%rbp),%rdx
	movq	%rdx,16(%rax)
.Lj39:
	movq	-48(%rbp),%rax
	movq	-40(%rbp),%rdx
	movq	%rdx,16(%rax)
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc22:
.Le4:
	.size	P$P1$_$CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT_$$_INSERTAR_ORDENADO$LISTA$ITEMARBOL, .Le4 - P$P1$_$CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT_$$_INSERTAR_ORDENADO$LISTA$ITEMARBOL

.section .text.n_p$p1_$$_buscarciudad$arbol$str$resultado
	.balign 16,0x90
.globl	P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO
	.type	P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO,@function
P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO:
.Lc26:
	pushq	%rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-48(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movq	%rdx,-24(%rbp)
	movq	-16(%rbp),%rax
	movq	%rax,%rdx
	movq	$10,%rsi
	leaq	-36(%rbp),%rdi
	call	fpc_shortstr_to_shortstr
	cmpq	$0,-8(%rbp)
	je	.Lj42
	jmp	.Lj43
.Lj42:
	movq	-24(%rbp),%rax
	movw	$-1,(%rax)
	movq	-24(%rbp),%rax
	movw	$-1,2(%rax)
	jmp	.Lj44
.Lj43:
	movq	-8(%rbp),%rdi
	leaq	-36(%rbp),%rsi
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	.Lj45
	jmp	.Lj46
.Lj45:
	movq	-24(%rbp),%rdx
	movq	-8(%rbp),%rax
	movw	12(%rax),%ax
	movw	%ax,(%rdx)
	movq	-24(%rbp),%rdx
	movq	-8(%rbp),%rax
	movw	14(%rax),%ax
	movw	%ax,2(%rdx)
	jmp	.Lj47
.Lj46:
	movq	-8(%rbp),%rsi
	leaq	-36(%rbp),%rdi
	call	fpc_shortstr_compare
	cmpl	$0,%eax
	jl	.Lj48
	jmp	.Lj49
.Lj48:
	movq	-8(%rbp),%rax
	movq	16(%rax),%rdi
	movq	-24(%rbp),%rdx
	leaq	-36(%rbp),%rsi
	call	P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO
	jmp	.Lj50
.Lj49:
	movq	-8(%rbp),%rax
	movq	24(%rax),%rdi
	movq	-24(%rbp),%rdx
	leaq	-36(%rbp),%rsi
	call	P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO
.Lj50:
.Lj47:
.Lj44:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc27:
.Le5:
	.size	P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO, .Le5 - P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO

.section .text.n_p$p1_$$_iniciar$arbol$lista
	.balign 16,0x90
.globl	P$P1_$$_INICIAR$ARBOL$LISTA
	.type	P$P1_$$_INICIAR$ARBOL$LISTA,@function
P$P1_$$_INICIAR$ARBOL$LISTA:
.Lc31:
	pushq	%rbp
.Lc33:
.Lc34:
	movq	%rsp,%rbp
.Lc35:
	leaq	-16(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movq	-8(%rbp),%rax
	movq	$0,(%rax)
	movq	-16(%rbp),%rax
	movq	$0,(%rax)
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc32:
.Le6:
	.size	P$P1_$$_INICIAR$ARBOL$LISTA, .Le6 - P$P1_$$_INICIAR$ARBOL$LISTA

.section .text.n_main
	.balign 16,0x90
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Lc36:
	pushq	%rbp
.Lc38:
.Lc39:
	movq	%rsp,%rbp
.Lc40:
	call	fpc_initializeunits
	movq	$U_$P$P1_$$_L,%rax
	movq	$U_$P$P1_$$_A,%rdi
	movq	%rax,%rsi
	call	P$P1_$$_INICIAR$ARBOL$LISTA
	movq	$U_$P$P1_$$_A,%rdi
	call	P$P1_$$_CARGAR$ARBOL
	movq	$U_$P$P1_$$_L,%rsi
	movq	U_$P$P1_$$_A,%rdi
	movl	$10,%edx
	call	P$P1_$$_CIUDADESCANTMAYOR$ARBOL$LISTA$SMALLINT
	movq	$U_$P$P1_$$_I,%rdx
	movq	U_$P$P1_$$_A,%rdi
	movq	$_$P1$_Ld1,%rsi
	call	P$P1_$$_BUSCARCIUDAD$ARBOL$STR$RESULTADO
	call	fpc_do_exit
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc37:
.Le7:
	.size	main, .Le7 - main

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
	.balign 2
	.type U_$P$P1_$$_I,@object
	.size U_$P$P1_$$_I,4
U_$P$P1_$$_I:
	.zero 4

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	0
.Le8:
	.size	INITFINAL, .Le8 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 8
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,@object
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM$indirect
.Le9:
	.size	FPC_THREADVARTABLES, .Le9 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,@object
FPC_RESOURCESTRINGTABLES:
	.quad	0
.Le10:
	.size	FPC_RESOURCESTRINGTABLES, .Le10 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 8
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,@object
FPC_WIDEINITTABLES:
	.quad	0
.Le11:
	.size	FPC_WIDEINITTABLES, .Le11 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 8
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,@object
FPC_RESSTRINITTABLES:
	.quad	0
.Le12:
	.size	FPC_RESSTRINITTABLES, .Le12 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 16
	.type	__fpc_ident,@object
__fpc_ident:
	.ascii	"FPC 3.2.3 [2026/02/07] for x86_64 - Linux"
.Le13:
	.size	__fpc_ident, .Le13 - __fpc_ident

.section .data.n___stklen
	.balign 8
.globl	__stklen
	.type	__stklen,@object
__stklen:
	.quad	8388608
.Le14:
	.size	__stklen, .Le14 - __stklen

.section .data.n___heapsize
	.balign 8
.globl	__heapsize
	.type	__heapsize,@object
__heapsize:
	.quad	0
.Le15:
	.size	__heapsize, .Le15 - __heapsize

.section .data.n___fpc_valgrind
	.balign 8
.globl	__fpc_valgrind
	.type	__fpc_valgrind,@object
__fpc_valgrind:
	.byte	0
.Le16:
	.size	__fpc_valgrind, .Le16 - __fpc_valgrind

.section .data.n_FPC_RESLOCATION
	.balign 8
.globl	FPC_RESLOCATION
	.type	FPC_RESLOCATION,@object
FPC_RESLOCATION:
	.quad	0
.Le17:
	.size	FPC_RESLOCATION, .Le17 - FPC_RESLOCATION
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$P1$_Ld1
	.balign 8
.globl	_$P1$_Ld1
_$P1$_Ld1:
	.ascii	"\006ciudad\000"
.Le18:
	.size	_$P1$_Ld1, .Le18 - _$P1$_Ld1
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc41:
	.long	.Lc43-.Lc42
.Lc42:
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
.Lc43:
	.long	.Lc45-.Lc44
.Lc44:
	.quad	.Lc41
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
.Lc45:
	.long	.Lc47-.Lc46
.Lc46:
	.quad	.Lc41
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
.Lc47:
	.long	.Lc49-.Lc48
.Lc48:
	.quad	.Lc41
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
.Lc49:
	.long	.Lc51-.Lc50
.Lc50:
	.quad	.Lc41
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
.Lc51:
	.long	.Lc53-.Lc52
.Lc52:
	.quad	.Lc41
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
.Lc53:
	.long	.Lc55-.Lc54
.Lc54:
	.quad	.Lc41
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
.Lc55:
	.long	.Lc57-.Lc56
.Lc56:
	.quad	.Lc41
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
.Lc57:
	.long	.Lc59-.Lc58
.Lc58:
	.quad	.Lc41
	.quad	.Lc36
	.quad	.Lc37-.Lc36
	.byte	4
	.long	.Lc38-.Lc36
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc39-.Lc38
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc40-.Lc39
	.byte	13
	.uleb128	6
	.balign 8,0
.Lc59:
# End asmlist al_dwarf_frame
.section .note.GNU-stack,"",%progbits

