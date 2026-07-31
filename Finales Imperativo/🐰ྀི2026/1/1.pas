program P1;
type
compra = record
	dni: integer;
	c_prod: integer;
	monto: real;
end;

arbol = ^nodo;

nodo = record
	dato: compra;
	si: arbol;
	sd: arbol;
end;

lista = ^nodo_lista;

nodo_lista = record
	dato: compra;
	sig: lista;
end;

resultado = record
	c_total: integer;
	monto_total: real;
end;


procedure leerCompra(var c: compra);
begin
	readln(c.dni);
	if c.dni <> 0 then
	begin
	
		readln(c.c_prod);
		readln(c.monto);
	
	end;
end;


procedure agregar(var a: arbol; c: compra);
begin
	if a = nil then
	begin
		new(a);
		a^.dato := c;
		a^.si := nil;
		a^.sd := nil;
	end else if c.dni < a^.dato.dni then
		agregar(a^.si, c)
	else if c.dni > a^.dato.dni then
		agregar(a^.sd, c)
	else
	begin
		a^.dato.monto := a^.dato.monto + c.monto;
		a^.dato.c_prod := a^.dato.c_prod + c.c_prod;
	end;


end;
// A
procedure agregarCompras(var a: arbol);
var c: compra;
begin
	leerCompra(C);
	while c.dni <> 0 do
	begin
		agregar(a, c);
		leerCompra(c);
	end;

end;

procedure insertar_ordenado(var l: lista; c: compra);
var ant, act, nue: lista;
begin

	new(nue);
	nue^.dato := c;
	ant := nil;
	act := l;
	
	while (act <> nil) and (act^.dato.dni < c.dni) do
	begin
		ant := act;
		act := act^.sig;
	
	end;
	
	if ant = nil then
		l := nue
	else
		ant^.sig := nue;
	
	nue^.sig := act;
	

end;

// B
procedure clientesMasCompras(a: arbol; var l: lista; x: integer);
begin
	clientesMasCompras(a^.si, l, x);
	
	if a^.dato.c_prod > x then
		insertar_ordenado(l, a^.dato);
		
	clientesMasCompras(a^.sd, l, x);



end;

// C
procedure buscarCliente(a: arbol; dni: integer; var informacion: resultado);
begin
	if a = nil then
	begin
		informacion.c_total := -1;
		informacion.monto_total := -1;
	end else if a^.dato.dni = dni then
	begin
		informacion.c_total := a^.dato.c_prod;
		informacion.monto_total := a^.dato.monto;
	
	end else if dni < a^.dato.dni then
		buscarCliente(a^.si, dni, informacion)
	else
		buscarCliente(a^.sd, dni, informacion);
end;



var a: arbol; l: lista; i: resultado;
begin
	agregarcompras(a);
	clientesMasCompras(a, l, 10);
	buscarCliente(a, 10, i);
	if i.c_total <> -1 then
		writeln(i.c_total, i.monto_total)
	else 
		writeln('DNI no encontrado');

end.

{Aquí tienes la transcripción del texto de la imagen:

**Final Taller de programación – Práctico – Módulo imperativo**
**24/02/2026**

Un supermercado desea un sistema que le permita organizar la información de las compras de sus clientes. El supermercado tiene registrada en papel todas las compras de sus clientes, de las cuales se conoce el DNI del cliente, cantidad de productos comprados y monto de la compra. Un mismo cliente pudo haber hecho más de una compra.

Implemente un programa en pascal que contenga e invoque a:

a) Un módulo que lea información de las compras (hasta ingresar una con DNI igual a cero) y genere una estructura que permita la búsqueda eficiente por DNI y que, para un mismo DNI de cliente, contabilice el total de compras realizadas y el monto total abonado en concepto de compras.

b) Un módulo que reciba la estructura generada en a) y un número X, y devuelva una lista ordenada por DNI que contenga todos los clientes que hayan efectuado un número de compras mayor a X.

c) Un módulo que reciba la estructura generada en a) y el DNI de un cliente, y retorne toda la información contabilizada para dicho cliente.}
