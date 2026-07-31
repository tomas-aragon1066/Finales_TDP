

program P1;

type
	subimportancia = 1..5;
	subsector = 1..50;
	llamada = record
	
		importancia: subimportancia;
		sector: subsector;
		nro_empleados: integer;
	end;
	
	
	lista = ^nodo_lista;
	nodo_lista = record
		dato: llamada;
		sig: lista;
	end;
	
	
	arbol = ^nodo_arbol;
	
	nodo_arbol = record
		dato: llamada;
		si: arbol;
		sd: arbol;
	end;
	
	vector = array[subimportancia] of lista;
	
	
	
	procedure cargarDatos(var v: vector);
		procedure leerLlamada(var ll: llamada);
		begin
			ll.importancia := random(5) + 1;
			ll.sector := random(50) + 1;
			ll.nro_empleados := random(1000) + 1;		
		
		end;
		
		procedure agregar(var l:lista; ll: llamada);
		var ant, act, nue: lista;
		begin
		
			new(nue);
			nue^.dato := ll;
			ant := nil;
			act := l;
			while (act <> nil) and (act^.dato.sector < ll.sector) do
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
		
		
		procedure inicializar(var v: vector);
		var i: integer;
		begin
			for i := 1 to 5 do
				v[i] := nil;
		
		end;
	var ll: llamada; i: integer;
	begin
		inicializar(v);
		for i := 1 to 100 do 
		begin
		
			leerLlamada(ll);
			agregar(v[ll.importancia], ll);
		end;	
	
	end;
	
	// B
	
	procedure llamadasNivel(v: vector; var a: arbol; n: subimportancia);
		procedure agregar(var a: arbol; ll: llamada);
		begin
			if a = nil then
			begin
			
				new(a);
				a^.dato := ll;
				a^.si := nil;
				a^.sd := nil;
			
			end else if ll.nro_empleados < a^.dato.nro_empleados then
				agregar(a^.si, ll)
			else
				agregar(a^.sd, ll);
		
		end;
	
	var l: lista;
	begin
		l := v[n];
		a := nil;
		while l <> nil do
		begin
			agregar(a, l^.dato);
			l := l^.sig;
		
		end;
		
	
	end;
	
	
	// C
	function sectorMasAfectados(a: arbol): subsector;
	begin
	
		if a <> nil then
		begin
			while a^.sd <> nil do
				a := a^.sd;
			
			sectorMasAfectados := a^.dato.sector;
		
		end
		else
			sectorMasAfectados := 0;
	
	end;
	



var v: vector; a: arbol; sector: subsector;
begin
	cargarDatos(v);
	llamadasNivel(v, a, 2);
	sector := sectorMasAfectados(a);
	writeln(sector);

end.

{Aquí tienes la transcripción completa del texto de la imagen, respetando el formato y la puntuación original:

---

**Final Taller de programación – Práctico – Módulo imperativo**
**02/07/2024**

La oficina de mantenimiento de una empresa recibe llamadas telefónicas con problemas reportados por distintos empleados de la empresa. En cada llamada recibe: nivel de la importancia del problema (un número entre 1..5), sector de la empresa donde se detectó el problema (un número entre 1..50), número de empleados afectados por el problema.

Implemente en Pascal un programa que invoque a:

a) Un módulo que simule la recepción de 100 llamadas en total con problemas reportados (puede generar números random) y almacene toda la información generada en una estructura agrupada por nivel de importancia y ordenada por sector de la empresa donde se detectó el problema.

b) Un módulo que reciba la estructura generada en a) y un nivel de importancia N y devuelva una estructura eficiente para la búsqueda, ordenada por número de empleados afectados, con todos los problemas del nivel N.

c) Un módulo que reciba la estructura generada en b) y devuelva el número de sector del problema con mayor cantidad de empleados afectados.}
