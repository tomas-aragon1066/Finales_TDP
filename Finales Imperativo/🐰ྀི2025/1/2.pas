program P2;


type
	str = string[20];
	encomienda = record
		dni_emisor: integer;
		dni_receptor: integer;
		destino: str;
		peso_gramos: integer;
	end;
	
	
	item = record
		destino: str;
		peso_total: integer;
		c_total: integer;
	end;
	
	arbol = ^nodo_arbol;
	
	nodo_arbol = record
		dato: item;
		si: arbol;
		sd: arbol;
	end;
	
	lista = ^nodo_lista;
	
	
	nodo_lista = record
		dato: item;
		sig: lista;
	end;
	
	
	
// A
procedure cargarDatos(var a: arbol);
	procedure leerEncomienda(var e: encomienda);
	begin
		readln(e.peso_gramos);
		if e.peso_gramos <> 0 then
		begin
			readln(e.dni_emisor);
			readln(e.dni_receptor);
			readln(e.destino);		
		end;
	end;
	
	procedure agregar(var a: arbol; e: encomienda);
	begin
		if a = nil then
		begin
			new(a);
			a^.dato.destino := e.destino;
			a^.dato.peso_total := e.peso_gramos;
			a^.dato.c_total := 1;
			a^.si := nil;
			a^.sd := nil;
		
		end else if e.destino < a^.dato.destino then
			agregar(a^.si, e)
		else if e.destino > a^.dato.destino then
			agregar(a^.sd, e)
		else
		begin
			a^.dato.peso_total := a^.dato.peso_total + e.peso_gramos;
			a^.dato.c_total := a^.dato.c_total + 1;
		end;
	end;

var
	e: encomienda;
begin
	leerEncomienda(e);
	while e.peso_gramos <> 0 do
	begin
		agregar(a, e);
		leerEncomienda(e);
	end;
end;

// B
procedure listaCantidadMayor(a: arbol; var l: lista; x: integer);
	
	procedure insertar_ordenado(var l: lista; i: item);
	var
		ant, act, nue: lista;
	begin
		new(nue);
		nue^.dato := i;
		ant := nil;
		act := l;
		while (act <> nil) and (act^.dato.peso_total < i.peso_total) do
		begin
			ant := act; act := act^.sig;		
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
		listaCantidadMayor(a^.si, l, x);
		
		if a^.dato.c_total > x then
			insertar_ordenado(l, a^.dato);
		
		listaCantidadMayor(a^.sd, l, x);
	
	
	end;

end;

// C
function buscarCiudad(a: arbol; N: str): arbol;
begin
	if a = nil then
		buscarCiudad := nil
	else if N < a^.dato.destino then
		buscarCiudad := buscarCiudad(a^.si, N)
	else if N > a^.dato.destino then
		buscarCiudad := buscarCiudad(a^.sd, N)
	else
		buscarCiudad := a;

end;


var
	a: arbol; l: lista; nodo: arbol; 
begin
	a := nil;
	l := nil;
	cargarDatos(a);
	listaCantidadMayor(a, l, 2);
	nodo := buscarCiudad(a, 'Una ciudad');
	if nodo <> nil then
		writeln(nodo^.dato.destino, nodo^.dato.peso_total, nodo^.dato.c_total)
	else
		writeln('la ciudad no existe');


end.


{Aquí tienes la transcripción del texto de la imagen:

**Final Taller de Programación – Práctico - Módulo Imperativo**
**22/08/2025**

Una empresa de transportes de encomiendas desea analizar la información de las encomiendas transportadas durante 2025. De cada encomienda transportada se conoce: DNI del emisor, DNI del receptor, ciudad de destino y peso de la encomienda en gramos. Realice un programa que contenga e invoque a:

a. Un módulo que lea la información de las encomiendas y retorne una estructura eficiente para buscar por ciudad de destino, que guarde para cada ciudad la *suma de los pesos* de todas las encomiendas y la *cantidad total* de encomiendas. La lectura finaliza al leer una encomienda con peso 0.

b. Un módulo que reciba la estructura generada en a) y un valor X, y retorne una lista con toda la información de las ciudades cuya *cantidad total* de encomiendas recibidas sea mayor a X. La lista debe quedar ordenada por *suma de pesos*.

c. Un módulo que reciba la estructura generada en a) y un nombre N, y retorne toda la información de la ciudad llamada N. Considere que el nombre de ciudad puede no existir y que no existen dos ciudades con el mismo nombre.}

