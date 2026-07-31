program P1;

type
subids = 1..10;
subciudad = 1..100;

mensaje = record
	id: subids;
	c_flores: integer;
	c_papeles: integer;
	avenida: subciudad;
	calle: subciudad;
	
end;

arbol = ^nodo_arbol;

nodo_arbol = record
	dato: mensaje;
	si: arbol;
	sd: arbol;
end;

lista = ^nodo_lista;

nodo_lista = record
	dato: mensaje;
	sig: lista;
end;

vector = array[subids] of lista;

procedure crear_mensaje(var msj: mensaje);
begin

	msj.id := random(10) + 1;
	msj.c_flores := random(1000) + 1;
	msj.c_papeles := random(1000) + 1;
	msj.avenida := random(100) + 1;
	msj.calle := random(100) + 1; 

end;

procedure agregar(var a : arbol; msj: mensaje);
begin
	if a = nil then
	begin
		new(a);
		a^.dato := msj;
		a^.si := nil;
		a^.sd := nil;
			
	end else if msj.c_flores < a^.dato.c_flores then
		agregar(a^.si, msj)
	else 
		agregar(a^.sd, msj);

end;

// A
procedure cargarMensajes(var a: arbol);
var msj: mensaje; i: integer;
begin
	for i := 1 to 100 do
	begin
		crear_mensaje(msj);
		agregar(a, msj);
	
	end;

end;


// B
function contarMensajes(a: arbol; c, d: integer): integer;
begin
	if a  = nil then
		contarMensajes := 0
	else if a^.dato.c_flores < c then
		contarMensajes := contarMensajes(a^.sd, c, d)
	else if a^.dato.c_flores > d then
		contarMensajes := contarMensajes(a^.si, c, d)
	else
		contarMensajes := 1 + contarMensajes(a^.si, c, d) + contarMensajes(a^.sd, c, d);

end;


// C
procedure mensajesMasPapeles(a: arbol; x: integer; var v: vector);
	procedure insertar_ordenado(var l: lista; msj: mensaje);
	var ant, act, nue: lista;
	begin
		new(nue);
		nue^.dato := msj;
		
		ant := nil;
		act := l;
		
		while (act <> nil) and (act^.dato.c_flores > msj.c_flores) do
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
	
	
begin 
	if a <> nil then
	begin
		mensajesMasPapeles(a^.si, x, v);
		
		if a^.dato.c_papeles > x then
		begin
			insertar_ordenado(v[a^.dato.id], a^.dato);
		
		end;
		
		mensajesMasPapeles(a^.sd, x, v);
	
	
	end;

end;

procedure inicializar(var a: arbol; var v: vector);
var i: integer;
begin
	a := nil;
	for i := 1 to 10 do
		v[i] := nil;

end;

var a: arbol; v: vector; c: integer;
begin
	inicializar(a, v);
	cargarMensajes(a);
	c := contarMensajes(a, 10, 15);
	writeln(c);
	mensajesMasPapeles(a, 10, v);
	
end.

{
Aquí tienes la transcripción del texto de la imagen:

**Final Taller de Programación – Práctico – Módulo imperativo**
**10/02/2026**

Un robot fiscalizador recibe mensajes de diez robots trabajadores. En cada mensaje recibe: id del robot trabajador (1..10), cantidad de flores juntadas, cantidad de papeles juntados y esquina (calle (1..100), avenida (1..100)) donde se llevó a cabo la recolección. Los robots trabajadores envían un mensaje por cada esquina visitada. Cada robot puede visitar más de una esquina, incluso la misma esquina más de una vez.

Implemente en pascal un programa que contenga:

a) Un módulo que simule al azar la llegada de 100 mensajes en total. Almacene toda la información en una estructura que permita la búsqueda eficiente de mensajes por cantidad de flores juntadas.

b) Un módulo que reciba la estructura generada en a) y devuelva la cantidad de mensajes cuya cantidad de flores juntadas está dentro de un rango recibido por parámetro.

c) Un módulo que reciba la estructura generada en a) y devuelva otra estructura agrupada por id de robot, donde para cada robot se almacenen los mensajes cuya cantidad de papeles supera un valor recibido por parámetro. Para cada robot, sus mensajes deben quedar ordenados por cantidad de flores juntadas de manera decreciente.
}
