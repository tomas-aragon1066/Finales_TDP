
program P1;

type
	str = string[17];
	alumno = record
		nombre: str;
		dni: integer;
		puntaje_fotografia: real;
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
	
	
	// A
	procedure cargarDatos(var a: arbol);
	
		procedure leerAlumno(var alu: alumno);
		begin
			readln(alu.dni);
			if alu.dni <> 0 then
			begin
				readln(alu.nombre);
				readln(alu.puntaje_fotografia);
			end;
		end;
		
		procedure insertar(var a: arbol; alu: alumno);
		begin 
			if a = nil then
			begin
				new(a);
				a^.dato := alu;
				a^.si := nil;
				a^.sd := nil;
			end else if alu.puntaje_fotografia < a^.dato.puntaje_fotografia then
				insertar(a^.si, alu)
			else
				insertar(a^.sd, alu);
			
		end;
	
	var
		alu: alumno;
	begin
		leerAlumno(alu);
		while alu.dni <> 0 do
		begin
			insertar(a, alu);
			leerAlumno(alu);
		end;
	end;
	
	
	// B
	procedure alumnosEntre(a: arbol; var l, ult: lista; v1, v2: real);
		
		procedure agregar_atras(var l, ult: lista; alu: alumno);
		var
			nue: lista;
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
			if a^.dato.puntaje_fotografia < v1 then
				alumnosEntre(a^.sd, l, ult, v1, v2)
			else if a^.dato.puntaje_fotografia > v2 then
				alumnosEntre(a^.si, l, ult, v1, v2)
			else
			begin
				alumnosEntre(a^.si, l, ult, v1, v2);
				agregar_atras(l, ult, a^.dato);
				alumnosEntre(a^.sd, l, ult, v1, v2);
			end;
		
		end;	
	
	end;
	
	// C
	function puntajeDNIMenor(a: arbol): real;
		
		procedure enOrden(a: arbol; var puntaje: real; var min: integer);
		begin
			if a <> nil then
			begin
				enOrden(a^.si, puntaje, min);
				
				if a^.dato.dni < min then
				begin
					puntaje := a^.dato.puntaje_fotografia;
					min := a^.dato.dni;
				
				end;
				
				enOrden(a^.sd, puntaje, min);
			end;
		end;
	
	var
		puntaje: real;
		min: integer;
	begin
		min := MAXINT;
		puntaje := -1;
		enOrden(a, puntaje, min);
		puntajeDNIMenor := puntaje;
	end;
	


var a: arbol; l, ult: lista; puntaje: real;
begin
	a := nil;
	l := nil;
	ult := nil;
	
	cargarDatos(a);
	
	alumnosEntre(a, l, ult, 60.5, 80.2);
	
	puntaje := puntajeDNIMenor(a);
	if puntaje = -1 then
		writeln('Arbol vacio')
	else
		writeln(puntaje);


end.

{Aquí tienes la transcripción completa del texto extraído de la imagen, respetando el formato y la puntuación del documento original:

---

**Final Taller de programación – Práctico – Módulo imperativo**
**09/02/2023**

Una escuela secundaria organiza un concurso de fotografía entre todos sus alumnos. Cada alumno presenta una fotografía, la cual es valorada por un jurado experto el cuál le asigna un puntaje (número real) entre 0 y 100. De los alumnos se desea registrar su nombre, DNI y puntaje otorgado a su fotografía.

Implemente en pascal:

a) Un módulo que realice la inscripción de los alumnos almacenando toda la información en una estructura que permita la búsqueda eficiente de alumnos por puntaje otorgado. La carga finaliza hasta leer el alumno con DNI igual a cero.

b) Un módulo que reciba la estructura generada en a), un rango de puntajes (dos números reales, por ejemplo, 60,5 y 80,2) y devuelva una lista ordenada por puntaje; donde en esta lista se encuentren todos los alumnos cuyo puntaje esté incluido en el rango recibido. **Nota:** este módulo debe ser lo más eficiente posible en cuanto a tiempo de ejecución.

c) Un módulo que reciba la estructura generada en a) y devuelva el puntaje del alumno con DNI más chico.}
