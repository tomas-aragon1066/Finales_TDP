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
	leaq	-32(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	leaq	-20(%rbp),%rax
	movq	%rbp,%rdi
	movq	%rax,%rsi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERPAQUETE$PAQUETE
	jmp	.Lj10
	.balign 8,0x90
.Lj9:
	movq	-8(%rbp),%rsi
	movq	-20(%rbp),%rdx
	movzwl	-12(%rbp),%ecx
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE
	leaq	-20(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_LEERPAQUETE$PAQUETE
.Lj10:
	cmpw	$0,-20(%rbp)
	jne	.Lj9
	jmp	.Lj11
.Lj11:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc2:
.Le0:
	.size	P$P1_$$_CARGARDATOS$ARBOL, .Le0 - P$P1_$$_CARGARDATOS$ARBOL

.section .text.n_p$p1$_$cargardatos$arbol_$$_agregar$arbol$paquete
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE
	.type	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE,@function
P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE:
.Lc6:
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-32(%rsp),%rsp
	movq	%rdi,-32(%rbp)
	movq	%rsi,-8(%rbp)
	movq	%rdx,-24(%rbp)
	movw	%cx,-16(%rbp)
	movq	-8(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj12
	jmp	.Lj13
.Lj12:
	movq	$24,%rdi
	call	fpc_getmem
	movq	-8(%rbp),%rdx
	movq	%rax,(%rdx)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movw	-22(%rbp),%dx
	movw	%dx,(%rax)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movw	-16(%rbp),%dx
	movw	%dx,2(%rax)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movw	$1,4(%rax)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,8(%rax)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,16(%rax)
	jmp	.Lj14
.Lj13:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movw	(%rax),%ax
	cmpw	-22(%rbp),%ax
	jg	.Lj15
	jmp	.Lj16
.Lj15:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	leaq	8(%rax),%rsi
	movq	-24(%rbp),%rdx
	movzwl	-16(%rbp),%ecx
	movq	-32(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE
	jmp	.Lj17
.Lj16:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movw	(%rax),%ax
	cmpw	-22(%rbp),%ax
	jl	.Lj18
	jmp	.Lj19
.Lj18:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	leaq	16(%rax),%rsi
	movq	-24(%rbp),%rdx
	movzwl	-16(%rbp),%ecx
	movq	-32(%rbp),%rdi
	call	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE
	jmp	.Lj20
.Lj19:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movswl	2(%rax),%eax
	movswl	-16(%rbp),%edx
	leal	(%eax,%edx),%eax
	movq	-8(%rbp),%rdx
	movq	(%rdx),%rdx
	movw	%ax,2(%rdx)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movswl	4(%rax),%eax
	leal	1(%eax),%eax
	movq	-8(%rbp),%rdx
	movq	(%rdx),%rdx
	movw	%ax,4(%rdx)
.Lj20:
.Lj17:
.Lj14:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc7:
.Le1:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE, .Le1 - P$P1$_$CARGARDATOS$ARBOL_$$_AGREGAR$ARBOL$PAQUETE

.section .text.n_p$p1$_$cargardatos$arbol_$$_leerpaquete$paquete
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$ARBOL_$$_LEERPAQUETE$PAQUETE
	.type	P$P1$_$CARGARDATOS$ARBOL_$$_LEERPAQUETE$PAQUETE,@function
P$P1$_$CARGARDATOS$ARBOL_$$_LEERPAQUETE$PAQUETE:
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
	movq	-8(%rbp),%rdx
	movw	-24(%rbp),%ax
	movw	%ax,(%rdx)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	cmpw	$0,(%rax)
	jne	.Lj21
	jmp	.Lj22
.Lj21:
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-24(%rbp),%rsi
	movq	%rbx,%rdi
	call	fpc_read_text_sint
	call	fpc_iocheck
	movq	-8(%rbp),%rax
	movw	-24(%rbp),%dx
	movw	%dx,2(%rax)
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
	movw	%dx,4(%rax)
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
	movw	%dx,6(%rax)
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
	movw	%dx,8(%rax)
	movq	%rbx,%rdi
	call	fpc_readln_end
	call	fpc_iocheck
.Lj22:
	movq	-32(%rbp),%rbx
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc12:
.Le2:
	.size	P$P1$_$CARGARDATOS$ARBOL_$$_LEERPAQUETE$PAQUETE, .Le2 - P$P1$_$CARGARDATOS$ARBOL_$$_LEERPAQUETE$PAQUETE

.section .text.n_main
	.balign 16,0x90
.globl	PASCALMAIN
	.type	PASCALMAIN,@function
PASCALMAIN:
.globl	main
	.type	main,@function
main:
.Lc16:
	pushq	%rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	call	fpc_initializeunits
	call	fpc_do_exit
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc17:
.Le3:
	.size	main, .Le3 - main

.section .text
# End asmlist al_procedures
# Begin asmlist al_globals

.section .data.n_INITFINAL
	.balign 8
.globl	INITFINAL
	.type	INITFINAL,@object
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	0
.Le4:
	.size	INITFINAL, .Le4 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 8
.globl	FPC_THREADVARTABLES
	.type	FPC_THREADVARTABLES,@object
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM$indirect
.Le5:
	.size	FPC_THREADVARTABLES, .Le5 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
	.type	FPC_RESOURCESTRINGTABLES,@object
FPC_RESOURCESTRINGTABLES:
	.quad	0
.Le6:
	.size	FPC_RESOURCESTRINGTABLES, .Le6 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 8
.globl	FPC_WIDEINITTABLES
	.type	FPC_WIDEINITTABLES,@object
FPC_WIDEINITTABLES:
	.quad	0
.Le7:
	.size	FPC_WIDEINITTABLES, .Le7 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 8
.globl	FPC_RESSTRINITTABLES
	.type	FPC_RESSTRINITTABLES,@object
FPC_RESSTRINITTABLES:
	.quad	0
.Le8:
	.size	FPC_RESSTRINITTABLES, .Le8 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 16
	.type	__fpc_ident,@object
__fpc_ident:
	.ascii	"FPC 3.2.3 [2026/02/07] for x86_64 - Linux"
.Le9:
	.size	__fpc_ident, .Le9 - __fpc_ident

.section .data.n___stklen
	.balign 8
.globl	__stklen
	.type	__stklen,@object
__stklen:
	.quad	8388608
.Le10:
	.size	__stklen, .Le10 - __stklen

.section .data.n___heapsize
	.balign 8
.globl	__heapsize
	.type	__heapsize,@object
__heapsize:
	.quad	0
.Le11:
	.size	__heapsize, .Le11 - __heapsize

.section .data.n___fpc_valgrind
	.balign 8
.globl	__fpc_valgrind
	.type	__fpc_valgrind,@object
__fpc_valgrind:
	.byte	0
.Le12:
	.size	__fpc_valgrind, .Le12 - __fpc_valgrind

.section .data.n_FPC_RESLOCATION
	.balign 8
.globl	FPC_RESLOCATION
	.type	FPC_RESLOCATION,@object
FPC_RESLOCATION:
	.quad	0
.Le13:
	.size	FPC_RESLOCATION, .Le13 - FPC_RESLOCATION
# End asmlist al_globals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc21:
	.long	.Lc23-.Lc22
.Lc22:
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
.Lc23:
	.long	.Lc25-.Lc24
.Lc24:
	.quad	.Lc21
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
.Lc25:
	.long	.Lc27-.Lc26
.Lc26:
	.quad	.Lc21
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
.Lc27:
	.long	.Lc29-.Lc28
.Lc28:
	.quad	.Lc21
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
.Lc29:
	.long	.Lc31-.Lc30
.Lc30:
	.quad	.Lc21
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
.Lc31:
# End asmlist al_dwarf_frame
.section .note.GNU-stack,"",%progbits

