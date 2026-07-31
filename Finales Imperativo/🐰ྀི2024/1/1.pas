program P1;

type
	str = string[17];
	
	alumno = record
		nombre: str;
		dni: integer;
		tiempo: real;
	end;
	
	arbol = ^nodo_arbol;
	nodo_arbol = record
		dato: alumno;
		si: arbol;
		sd: arbol;
	end;
	
	lista = ^nodo_lista;
	
	nodo_lista = record
		dato: alumno;
		sig: lista;
	end;
	
	
	resultado = record
		dni: integer;
		nombre: str;
	end;
	
	
	// A
	procedure cargarDatos(var a : arbol);
		procedure leerAlumno(var alu: alumno);
		begin
			readln(alu.dni);
			if alu.dni  <> 0 then
			begin
			
				readln(alu.nombre);
				readln(alu.tiempo);			
			end;
		
		end;
	
		procedure agregar(var a: arbol; alu: alumno);
		begin
		
			if a = nil then
			begin
				new(a);
				a^.dato := alu;
				a^.si := nil;
				a^.sd := nil;
			end else if alu.tiempo < a^.dato.tiempo then
				agregar(a^.si, alu)
			else
				agregar(a^.sd, alu);
				
		
		
		end;
	var alu: alumno;
	begin
	
		leerAlumno(alu);
		while alu.dni <> 0 do
		begin
		
			agregar(a, alu);
			leerAlumno(alu);
		
		end;
	
	end;
	// B
	
	
	procedure alumnosEntre(a: arbol; var l, ult: lista; c, d: real );
		procedure insertar_atras(var l, ult: lista; alu: alumno);
		var  nue: lista;
		begin
			new(nue);
			nue^.dato := alu;
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
			if a^.dato.tiempo < c then
				alumnosEntre(a^.sd, l, ult, c, d)
			else if a^.dato.tiempo > d then
				alumnosEntre(a^.si, l, ult, c, d)
			else
			begin
				 // Hacer in orden e insertar al final
				alumnosEntre(a^.si, l, ult, c, d);
				insertar_atras(l, ult, a^.dato);
				alumnosEntre(a^.sd, l, ult, c, d);
			end;
		
		end;
	
	
	end;
	
	// C
	
	procedure alumnoMasRapido(a: arbol; var datos: resultado);
	begin
		datos.dni := -1;
		datos.nombre := 'ZZZ';
		if a <>  nil then
		begin
			
			while a^.si <> nil do
				a := a^.si;
			
			datos.dni := a^.dato.dni;
			datos.nombre := a^.dato.nombre;
		
		
		end;
	
	
	end;

var a: arbol; l, ult: lista; res: resultado;
begin
	a := nil;
	l := nil;
	ult := nil;
	cargarDatos(a);
	alumnosEntre(a, l, ult, 10, 20);
	alumnoMasRapido(a, res);

	


end.

{Aquí tienes la transcripción del texto de la imagen:

**Final Taller de programación – Práctico – Módulo imperativo**
**06/02/2024**

Una escuela secundaria organiza un concurso de atletismo entre todos sus alumnos. Cada alumno debe correr 400 metros y se le toma el tiempo en minutos (un número real) que llevó realizar el recorrido. De los alumnos se desea registrar su nombre, DNI y el tiempo registrado.

Implemente en Pascal un programa que invoque a:

a) Un módulo que realice la registración de los alumnos almacenando toda la información en una estructura que permita la búsqueda eficiente de alumnos por tiempo registrado. La carga finaliza al leer el alumno con DNI igual a cero.

b) Un módulo que reciba la estructura generada en a), un rango de tiempo en minutos (dos números reales, por ejemplo: 2,5 y 3,2) y devuelva una lista ordenada por tiempo registrado; donde en esta lista se encuentren todos los alumnos cuyo tiempo registrado esté incluido en el rango recibido. *Nota: este módulo debe ser lo más eficiente posible en cuanto a tiempo de ejecución.*

c) Un módulo que reciba la estructura generada en a) y devuelva el nombre y DNI del alumno más rápido (el que menos tiempo tardó).}
