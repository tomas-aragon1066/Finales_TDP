	.file "1.pas"
# Begin asmlist al_procedures

.section .text.n_p$p1_$$_cargardatos$vector
	.balign 16,0x90
.globl	P$P1_$$_CARGARDATOS$VECTOR
	.type	P$P1_$$_CARGARDATOS$VECTOR,@function
P$P1_$$_CARGARDATOS$VECTOR:
.Lc1:
	pushq	%rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-16(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	movq	-8(%rbp),%rax
	movq	%rax,%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$VECTOR_$$_INICIALIZAR$VECTOR
	movw	$0,-16(%rbp)
	.balign 8,0x90
.Lj11:
	movw	-16(%rbp),%ax
	addw	$1,%ax
	movw	%ax,-16(%rbp)
	leaq	-12(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$VECTOR_$$_LEERLLAMADA$LLAMADA
	movq	-8(%rbp),%rdx
	movzbl	-12(%rbp),%eax
	leaq	-8(%rdx,%rax,8),%rsi
	movl	-12(%rbp),%edx
	movq	%rbp,%rdi
	call	P$P1$_$CARGARDATOS$VECTOR_$$_AGREGAR$LISTA$LLAMADA
	cmpw	$100,-16(%rbp)
	jge	.Lj13
	jmp	.Lj11
.Lj13:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc2:
.Le0:
	.size	P$P1_$$_CARGARDATOS$VECTOR, .Le0 - P$P1_$$_CARGARDATOS$VECTOR

.section .text.n_p$p1$_$cargardatos$vector_$$_inicializar$vector
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$VECTOR_$$_INICIALIZAR$VECTOR
	.type	P$P1$_$CARGARDATOS$VECTOR_$$_INICIALIZAR$VECTOR,@function
P$P1$_$CARGARDATOS$VECTOR_$$_INICIALIZAR$VECTOR:
.Lc6:
	pushq	%rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-32(%rsp),%rsp
	movq	%rdi,-16(%rbp)
	movq	%rsi,-8(%rbp)
	movw	$0,-20(%rbp)
	.balign 8,0x90
.Lj14:
	movw	-20(%rbp),%ax
	addw	$1,%ax
	movw	%ax,-20(%rbp)
	movq	-8(%rbp),%rdx
	movzwl	-20(%rbp),%eax
	movq	$0,-8(%rdx,%rax,8)
	cmpw	$5,-20(%rbp)
	jge	.Lj16
	jmp	.Lj14
.Lj16:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc7:
.Le1:
	.size	P$P1$_$CARGARDATOS$VECTOR_$$_INICIALIZAR$VECTOR, .Le1 - P$P1$_$CARGARDATOS$VECTOR_$$_INICIALIZAR$VECTOR

.section .text.n_p$p1$_$cargardatos$vector_$$_agregar$lista$llamada
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$VECTOR_$$_AGREGAR$LISTA$LLAMADA
	.type	P$P1$_$CARGARDATOS$VECTOR_$$_AGREGAR$LISTA$LLAMADA,@function
P$P1$_$CARGARDATOS$VECTOR_$$_AGREGAR$LISTA$LLAMADA:
.Lc11:
	pushq	%rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-48(%rsp),%rsp
	movq	%rdi,-24(%rbp)
	movq	%rsi,-8(%rbp)
	movl	%edx,-16(%rbp)
	movq	$16,%rdi
	call	fpc_getmem
	movq	%rax,-48(%rbp)
	movq	-48(%rbp),%rdx
	movl	-16(%rbp),%eax
	movl	%eax,(%rdx)
	movq	$0,-32(%rbp)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movq	%rax,-40(%rbp)
	jmp	.Lj18
	.balign 8,0x90
.Lj17:
	movq	-40(%rbp),%rax
	movq	%rax,-32(%rbp)
	movq	-40(%rbp),%rax
	movq	8(%rax),%rax
	movq	%rax,-40(%rbp)
.Lj18:
	cmpq	$0,-40(%rbp)
	jne	.Lj20
	jmp	.Lj21
.Lj20:
	movq	-40(%rbp),%rax
	movb	1(%rax),%al
	cmpb	-15(%rbp),%al
	jb	.Lj22
	jmp	.Lj21
.Lj22:
	jmp	.Lj17
.Lj21:
	jmp	.Lj19
.Lj19:
	cmpq	$0,-32(%rbp)
	je	.Lj23
	jmp	.Lj24
.Lj23:
	movq	-8(%rbp),%rax
	movq	-48(%rbp),%rdx
	movq	%rdx,(%rax)
	jmp	.Lj25
.Lj24:
	movq	-32(%rbp),%rax
	movq	-48(%rbp),%rdx
	movq	%rdx,8(%rax)
.Lj25:
	movq	-48(%rbp),%rax
	movq	-40(%rbp),%rdx
	movq	%rdx,8(%rax)
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc12:
.Le2:
	.size	P$P1$_$CARGARDATOS$VECTOR_$$_AGREGAR$LISTA$LLAMADA, .Le2 - P$P1$_$CARGARDATOS$VECTOR_$$_AGREGAR$LISTA$LLAMADA

.section .text.n_p$p1$_$cargardatos$vector_$$_leerllamada$llamada
	.balign 16,0x90
.globl	P$P1$_$CARGARDATOS$VECTOR_$$_LEERLLAMADA$LLAMADA
	.type	P$P1$_$CARGARDATOS$VECTOR_$$_LEERLLAMADA$LLAMADA,@function
P$P1$_$CARGARDATOS$VECTOR_$$_LEERLLAMADA$LLAMADA:
.Lc16:
	pushq	%rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-16(%rsp),%rsp
	movq	%rdi,-16(%rbp)
	movq	%rsi,-8(%rbp)
	movl	$5,%eax
	movl	%eax,%edi
	call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
	leal	1(%eax),%eax
	movq	-8(%rbp),%rdx
	movb	%al,(%rdx)
	movl	$50,%edi
	call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
	leal	1(%eax),%eax
	movq	-8(%rbp),%rdx
	movb	%al,1(%rdx)
	movl	$1000,%edi
	call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
	leal	1(%eax),%eax
	movq	-8(%rbp),%rdx
	movw	%ax,2(%rdx)
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc17:
.Le3:
	.size	P$P1$_$CARGARDATOS$VECTOR_$$_LEERLLAMADA$LLAMADA, .Le3 - P$P1$_$CARGARDATOS$VECTOR_$$_LEERLLAMADA$LLAMADA

.section .text.n_p$p1_$$_llamadasnivel$vector$arbol$subimportancia
	.balign 16,0x90
.globl	P$P1_$$_LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA
	.type	P$P1_$$_LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA,@function
P$P1_$$_LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA:
.Lc21:
	pushq	%rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-80(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	movq	%rsi,-16(%rbp)
	movb	%dl,-24(%rbp)
	movq	-8(%rbp),%rax
	leaq	-72(%rbp),%rdi
	movq	%rax,%rsi
	movq	$5,%rcx
	rep
	movsq
	movzbl	-24(%rbp),%eax
	movq	-80(%rbp,%rax,8),%rax
	movq	%rax,-32(%rbp)
	movq	-16(%rbp),%rax
	movq	$0,(%rax)
	jmp	.Lj31
	.balign 8,0x90
.Lj30:
	movq	-32(%rbp),%rax
	movl	(%rax),%edx
	movq	-16(%rbp),%rsi
	movq	%rbp,%rdi
	call	P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA
	movq	-32(%rbp),%rax
	movq	8(%rax),%rax
	movq	%rax,-32(%rbp)
.Lj31:
	cmpq	$0,-32(%rbp)
	jne	.Lj30
	jmp	.Lj32
.Lj32:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc22:
.Le4:
	.size	P$P1_$$_LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA, .Le4 - P$P1_$$_LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA

.section .text.n_p$p1$_$llamadasnivel$vector$arbol$subimportancia_$$_agregar$arbol$llamada
	.balign 16,0x90
.globl	P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA
	.type	P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA,@function
P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA:
.Lc26:
	pushq	%rbp
.Lc28:
.Lc29:
	movq	%rsp,%rbp
.Lc30:
	leaq	-32(%rsp),%rsp
	movq	%rdi,-24(%rbp)
	movq	%rsi,-8(%rbp)
	movl	%edx,-16(%rbp)
	movq	-8(%rbp),%rax
	cmpq	$0,(%rax)
	je	.Lj33
	jmp	.Lj34
.Lj33:
	movq	$24,%rdi
	call	fpc_getmem
	movq	-8(%rbp),%rdx
	movq	%rax,(%rdx)
	movq	-8(%rbp),%rax
	movq	(%rax),%rdx
	movl	-16(%rbp),%eax
	movl	%eax,(%rdx)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,8(%rax)
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movq	$0,16(%rax)
	jmp	.Lj35
.Lj34:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	movw	2(%rax),%ax
	cmpw	-14(%rbp),%ax
	jg	.Lj36
	jmp	.Lj37
.Lj36:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	leaq	8(%rax),%rsi
	movl	-16(%rbp),%edx
	movq	-24(%rbp),%rdi
	call	P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA
	jmp	.Lj38
.Lj37:
	movq	-8(%rbp),%rax
	movq	(%rax),%rax
	leaq	16(%rax),%rsi
	movl	-16(%rbp),%edx
	movq	-24(%rbp),%rdi
	call	P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA
.Lj38:
.Lj35:
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc27:
.Le5:
	.size	P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA, .Le5 - P$P1$_$LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA_$$_AGREGAR$ARBOL$LLAMADA

.section .text.n_p$p1_$$_sectormasafectados$arbol$$subsector
	.balign 16,0x90
.globl	P$P1_$$_SECTORMASAFECTADOS$ARBOL$$SUBSECTOR
	.type	P$P1_$$_SECTORMASAFECTADOS$ARBOL$$SUBSECTOR,@function
P$P1_$$_SECTORMASAFECTADOS$ARBOL$$SUBSECTOR:
.Lc31:
	pushq	%rbp
.Lc33:
.Lc34:
	movq	%rsp,%rbp
.Lc35:
	leaq	-16(%rsp),%rsp
	movq	%rdi,-8(%rbp)
	cmpq	$0,-8(%rbp)
	jne	.Lj41
	jmp	.Lj42
.Lj41:
	jmp	.Lj44
	.balign 8,0x90
.Lj43:
	movq	-8(%rbp),%rax
	movq	16(%rax),%rax
	movq	%rax,-8(%rbp)
.Lj44:
	movq	-8(%rbp),%rax
	cmpq	$0,16(%rax)
	jne	.Lj43
	jmp	.Lj45
.Lj45:
	movq	-8(%rbp),%rax
	movb	1(%rax),%al
	movb	%al,-12(%rbp)
	jmp	.Lj46
.Lj42:
	movb	$0,-12(%rbp)
.Lj46:
	movzbl	-12(%rbp),%eax
	movq	%rbp,%rsp
	popq	%rbp
	ret
.Lc32:
.Le6:
	.size	P$P1_$$_SECTORMASAFECTADOS$ARBOL$$SUBSECTOR, .Le6 - P$P1_$$_SECTORMASAFECTADOS$ARBOL$$SUBSECTOR

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
	leaq	-16(%rsp),%rsp
	movq	%rbx,-8(%rbp)
	call	fpc_initializeunits
	movq	$U_$P$P1_$$_V,%rax
	movq	%rax,%rdi
	call	P$P1_$$_CARGARDATOS$VECTOR
	movq	$U_$P$P1_$$_A,%rsi
	movq	$U_$P$P1_$$_V,%rdi
	movl	$2,%edx
	call	P$P1_$$_LLAMADASNIVEL$VECTOR$ARBOL$SUBIMPORTANCIA
	movq	U_$P$P1_$$_A,%rdi
	call	P$P1_$$_SECTORMASAFECTADOS$ARBOL$$SUBSECTOR
	movb	%al,U_$P$P1_$$_SECTOR
	call	fpc_get_output
	movq	%rax,%rbx
	movzbl	U_$P$P1_$$_SECTOR,%edx
	movq	%rbx,%rsi
	movl	$0,%edi
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	%rbx,%rdi
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_do_exit
	movq	-8(%rbp),%rbx
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
	.type U_$P$P1_$$_V,@object
	.size U_$P$P1_$$_V,40
U_$P$P1_$$_V:
	.zero 40

.section .bss
	.balign 8
	.type U_$P$P1_$$_A,@object
	.size U_$P$P1_$$_A,8
U_$P$P1_$$_A:
	.zero 8

.section .bss
	.type U_$P$P1_$$_SECTOR,@object
	.size U_$P$P1_$$_SECTOR,1
U_$P$P1_$$_SECTOR:
	.zero 1

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

