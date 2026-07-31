program P1;

type
	str = string[19];
	
	subfacultades = 1..17;
	
	egresado = record
		nombre: str;
		legajo: integer;
		id_facultad: subfacultades;
		promedio: real;
	end;
	
	arbol_por_legajo = ^nodo_por_legajo;
	
	nodo_por_legajo = record
		dato: egresado;
		si: arbol_por_legajo;
		sd: arbol_por_legajo;
	end;
	
	
	item = record
		nombre: str;
		legajo: integer;
		promedio: real;
	end;
	
	arbol_por_promedio = ^nodo_por_promedio;
	
	nodo_por_promedio = record
		dato: item;
		si : arbol_por_promedio;
		sd: arbol_por_promedio;
	end;
	
	vector = array[subfacultades] of arbol_por_promedio;
	
	
	
	
	procedure leerEgresado(var e: egresado);
	begin
		readln(e.promedio);


		if e.promedio >= 0 then
		begin
			readln(e.nombre);
			readln(e.id_facultad);
			readln(e.legajo);		
		
		end;
	
	end;
	
	procedure agregar(var a: arbol_por_legajo; e: egresado);
	begin
		if a = nil then
		begin
		
			new(a);
			a^.dato := e;
			a^.si := nil;
			a^.sd := nil;
			
		end else if e.legajo < a^.dato.legajo then
			agregar(a^.si, e)
		else
			agregar(a^.sd, e);
	
	end;
	// A
	procedure cargarEgresados(var a: arbol_por_legajo);
	var e: egresado;
	begin
		leerEgresado(e);
		while e.promedio >= 0 do
		begin
			agregar(a, e);
			leerEgresado(e);
		
		end;
	
	
	end;
	
	// B
	procedure egresadosPorPromedio(a: arbol_por_legajo; var v: vector);
		procedure agregar(var a: arbol_por_promedio; e: egresado);
		begin
			if a  = nil then
			begin
				new(a);
				a^.dato.nombre := e.nombre;
				a^.dato.promedio := e.promedio;
				a^.dato.legajo := e.legajo;
			end else if e.promedio < a^.dato.promedio then
				agregar(a^.si, e)
			else 
				agregar(a^.sd, e);
		
		
		end;
	begin
		if  a <> nil then
		begin
			egresadosPorPromedio(a^.si, v);
			
			agregar(v[a^.dato.id_facultad], a^.dato); 
			
			egresadosPorPromedio(a^.sd, v);
		
		
		
		end;
	
	
	end;
	
	// C
	procedure egresadoMejorPormedio(v: vector; id: integer);
	var act: arbol_por_promedio;
	begin
		act := v[id];
		
		while act^.sd <> nil do
		begin
			act := act^.sd;
		
		end;
		
		if act <> nil then writeln('Nombre y apellido ', act^.dato.nombre);
	
	
	
	end;
	
	procedure iniciar(var a: arbol_por_legajo; var v: vector);
	var i: integer;
	begin
		a := nil;
		for i := 1 to 17 do 
			v[i] := nil;
	
	end;
	
var a: arbol_por_legajo; v: vector;
begin
	iniciar(a, v);
	cargarEgresados(a);
	egresadosPorPromedio(a, v);
	
	egresadoMejorPormedio(v, 1);

end.

{Aquí tienes la transcripción del texto de la imagen:

**Final Taller de programación – Práctico – Módulo imperativo**
**26/02/2025**

Una universidad desea organizar toda la información referida a sus estudiantes egresados. Para cada egresado se desea registrar su nombre, legajo (un número entero único para cada estudiante), ID de facultad a la que asistió (1..17) y promedio académico.

Implemente en pascal un programa que contenga e invoque a los siguientes módulos:

a) Un módulo que almacene todos los estudiantes egresados en una estructura que permita la búsqueda eficiente de estudiantes por legajo. La lectura finaliza hasta leer el estudiante con promedio negativo.

b) Un módulo que reciba la estructura generada en a) y devuelva para cada facultad una estructura eficiente para la búsqueda por promedio.

c) Un módulo que reciba la estructura generada en b), un ID de facultad e imprima nombre y apellido del estudiante con mejor promedio de esa facultad.}
