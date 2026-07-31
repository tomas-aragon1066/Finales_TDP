program P1;

type

	str = string[10];
	encomienda = record
		dni_emisor: integer;
		dni_receptor: integer;
		destino:str;
		peso_gramos: integer;
	end;
	
	itemArbol = record
		destino: str;
		suma_pesos: integer;
		c_encomiendas: integer;
	end;
	
	arbol = ^nodo_arbol;
	
	nodo_arbol = record
		dato: itemArbol;
		si: arbol;
		sd: arbol;
	end;
	
	lista = ^nodo_lista;
	
	nodo_lista = record
		dato: itemArbol;
		sig: lista;
	end;
	
	resultado = record
		suma_pesos: integer;
		c_encomiendas: integer;
	end;
	
	
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
			a^.dato.suma_pesos := e.peso_gramos;
			a^.dato.c_encomiendas := 1;
		end
		else if e.destino < a^.dato.destino then
			agregar(a^.si, e)
		else if e.destino > a^.dato.destino then
			agregar(a^.sd, e)
		else
		begin
		
			a^.dato.c_encomiendas := a^.dato.c_encomiendas + 1;
			a^.dato.suma_pesos := a^.dato.suma_pesos + e.peso_gramos;
		end;
		
	
	end;
	// A
	procedure cargar(var a: arbol);
	var e: encomienda;
	begin
		leerEncomienda(e);
		while e.peso_gramos <> 0 do
		begin
		
			agregar(a, e);
			leerEncomienda(e);
		end;
	
	
	
	end;

	// B
	procedure ciudadesCantMayor(a: arbol; var l: lista; x: integer);
		procedure insertar_ordenado(var l: lista; e: itemArbol);
		var ant, act, nue: lista;
		begin
			new(nue);
			nue^.dato := e;
			ant := nil;
			act := l;
			
			while (act <> nil) and (act^.dato.suma_pesos < e.suma_pesos) do
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
			ciudadesCantMayor(a^.si, l, x);
			
			if a^.dato.c_encomiendas > x then
				insertar_ordenado(l, a^.dato);
			
			ciudadesCantMayor(a^.sd, l, x);
		
		
		end;
	end;


	// C
	procedure buscarCiudad(a: arbol; N: str; var i: resultado);
	begin
		if a = nil then
		begin
			i.suma_pesos := -1;
			i.c_encomiendas := -1;
		end
		else if a^.dato.destino = N then
		begin
		
			i.suma_pesos := a^.dato.suma_pesos;
			i.c_encomiendas := a^.dato.c_encomiendas;
		
		end else if N < a^.dato.destino then
			buscarCiudad(a^.si, N, i)
		else
			buscarCiudad(a^.sd, N, i);
	
	
	end;
	
	
	procedure iniciar(var a: arbol; var l: lista);
	begin
		a := nil;
		l := nil;
	end;

var 
	a: arbol; l: lista; i: resultado;

begin

	iniciar(a, l);
	
	cargar(a);
	ciudadesCantMayor(a, l, 10);
	
	buscarCiudad(a, 'ciudad', i);
end.

{Aquí tienes la transcripción del texto de la imagen:

**Final Taller de Programación – Práctico - Módulo Imperativo**
**22/08/2025**

Una empresa de transportes de encomiendas desea analizar la información de las encomiendas transportadas durante 2025. De cada encomienda transportada se conoce: DNI del emisor, DNI del receptor, ciudad de destino y peso de la encomienda en gramos. Realice un programa que contenga e invoque a:

a. Un módulo que lea la información de las encomiendas y retorne una estructura eficiente para buscar por ciudad de destino, que guarde para cada ciudad la *suma de los pesos* de todas las encomiendas y la *cantidad total* de encomiendas. La lectura finaliza al leer una encomienda con peso 0.

b. Un módulo que reciba la estructura generada en a) y un valor X, y retorne una lista con toda la información de las ciudades cuya *cantidad total* de encomiendas recibidas sea mayor a X. La lista debe quedar ordenada por *suma de pesos*.

c. Un módulo que reciba la estructura generada en a) y un nombre N, y retorne toda la información de la ciudad llamada N. Considere que el nombre de ciudad puede no existir y que no existen dos ciudades con el mismo nombre.}
