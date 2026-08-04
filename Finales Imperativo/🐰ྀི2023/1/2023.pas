program P1;

type
	
	str = string[17];
	
	recital = record
		nombre: str;
		fecha: str;
		c_canciones: integer;
		monto: real;
	end;
	arbol = ^nodo_arbol;
	
	nodo_arbol = record
		dato: recital;
		si: arbol;
		sd: arbol;
	end;
	
	lista = ^nodo_lista;
	
	nodo_lista = record
		dato: recital;
		sig: lista;
	end;
	
	


// A
procedure cargarDatos(var a: arbol);
	procedure leerRecital(var r: recital);
	begin
		readln(r.nombre);
		if r.nombre <> 'ZZZ' then
		begin
			readln(r.fecha);
			readln(r.c_canciones);
			readln(r.monto);
		
		end;
		
	end;
	
	procedure insertar(var a: arbol; r: recital);
	begin
		if a = nil then
		begin
			new(a);
			a^.dato := r;
			a^.si := nil;
			a^.sd := nil;
				
		end else if (r.monto < a^.dato.monto) then
			insertar(a^.si, r)
		else
			insertar(a^.sd, r);
	
	end;

var
	r: recital;
begin
	a := nil;
	leerRecital(r);
	while r.nombre <> 'ZZZ' do
	begin
		insertar(a, r);
		leerRecital(r);
	
	end;

end;

// B

procedure listaRecitalesEntre(a: arbol; var l,ult: lista; v1, v2: real); 
	procedure agregar_atras(r: recital; var l, ult: lista);
	var
		nue: lista;
	begin
		new(nue);
		nue^.dato := r;
		nue^.sig := nil;
		
		if l = nil then
			l := nue
		else
			ult^.sig := nue;
		
		ult := nue;	
	end;

begin
	if a <> nil then
	begin
		if a^.dato.monto < v1 then
			listaRecitalesEntre(a^.sd, l, ult, v1, v2)
		else if a^.dato.monto > v2 then
			listaRecitalesEntre(a^.si, l, ult, v1, v2)
		else
		begin
			listaRecitalesEntre(a^.sd, l, ult, v1, v2);
			agregar_atras(a^.dato, l, ult);
			listaRecitalesEntre(a^.si, l, ult, v1, v2);
		
		end;
	
	end;

end;


// C
function contarRecitales(l : lista): integer;
	function evaluar(r: recital): integer;
	begin 
		if r.c_canciones > 12 then
			evaluar := 1
		else
			evaluar := 0;
	
	
	end;

begin
	if l = nil then
		contarRecitales := 0
	else
		contarRecitales := evaluar(l^.dato) + contarRecitales(l^.sig);
	

end;

// Probar
procedure imprimir_arbol(a: arbol);
begin
	if a <> nil then
	begin
		imprimir_arbol(a^.si);
		writeln(a^.dato.monto, ', ', a^.dato.c_canciones, ', ', a^.dato.nombre, ', ', a^.dato.fecha);
		imprimir_arbol(a^.sd);
	end;
end;

procedure imprimir_lista(l : lista);
begin
	while l <> nil do
	begin
		writeln(l^.dato.monto, ', ', l^.dato.c_canciones, ', ', l^.dato.nombre, ', ', l^.dato.fecha);
		l := l^.sig;
	end;

end;

var
	a: arbol;
	l, ult: lista;

begin
	a := nil;
	cargarDatos(a);
	writeln('arbol');
	imprimir_arbol(a);
	l := nil;
	ult := nil;
	listaRecitalesEntre(a, l, ult, 1, 2);
	writeln();
	writeln('lista');
	imprimir_lista(l);
	writeln(contarRecitales(l));

end.
{Aquí tienes la transcripción completa del texto extraído de la imagen:

---

**Taller de Programación. Programación Imperativa**
**12-10-2023**

El teatro Musicalísimo ofrece sus instalaciones para que bandas de música puedan dar sus recitales. De cada recital se conoce: el nombre de la banda, la fecha del recital, la cantidad de canciones tocadas y el monto recaudado por la venta de entradas.

a. Implemente un módulo que lea registros de recitales de manera sucesiva hasta que se ingrese “ZZZ” como nombre de banda. Los recitales se pueden leer en cualquier orden. Todos los recitales leídos deben almacenarse en una estructura que permita el recorrido óptimo por monto recaudado.

b. Implemente un módulo que reciba la estructura cargada y dos valores (ej: 200 y 500) y devuelva una lista con todos los recitales cuyo monto recaudado se encuentra entre esos dos valores leídos (ambos inclusive). La lista resultante debe estar ordenada por monto de mayor a menor.

c. Implemente un módulo recursivo que reciba la lista creada en b) y devuelva la cantidad de recitales que tocaron más de 12 canciones.}
