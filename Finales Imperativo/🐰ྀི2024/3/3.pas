program P1;

type
	alumno = record
		nombre: string;
		legajo: integer;
		c_autoev: integer;
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
		readln(alu.legajo);
		if alu.legajo <> 0 then
		begin
			readln(alu.nombre);
			alu.c_autoev := 0;
		end;
	
	end;
	
	procedure cargar(var a: arbol; alu: alumno);
	begin
		if a = nil then
		begin
			new(a);
			a^.dato := alu;
			a^.si := nil;
			a^.sd := nil;
			
		end else if alu.legajo < a^.dato.legajo then
			cargar(a^.si, alu)
		else
			cargar(a^.sd, alu);
	
	end;

var alu: alumno;
begin
	leerAlumno(alu);
	while alu.legajo <> 0 do
	begin
		cargar(a, alu);
		leerAlumno(alu);
	end;

end;

// B
function aumentarAutoevaluaciones(a: arbol; leg: integer): boolean;
begin
	if a = nil then
		aumentarAutoevaluaciones := false
	else if leg < a^.dato.legajo then
		aumentarAutoevaluaciones := aumentarAutoevaluaciones(a^.si, leg) // ERROR
	else if leg > a^.dato.legajo then
		aumentarAutoevaluaciones := aumentarAutoevaluaciones(a^.sd, leg) // ERROR
	else
	begin
		a^.dato.c_autoev := a^.dato.c_autoev + 1;
		aumentarAutoevaluaciones := true;
	end;
	

end;

// C
procedure alumnosConMasDeTresAut(a: arbol; var l: lista);
	procedure insertar_ordenado(var l: lista; alu: alumno);
	var ant, act, nue: lista;
	begin
		new(nue);
		nue^.dato := alu;
		ant := nil;
		act := l;
		
		while (act <> nil) and (act^.dato.nombre < alu.nombre) do
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
	
		alumnosConMasDeTresAut(a^.si, l);
		
		if a^.dato.c_autoev >= 3 then
			insertar_ordenado(l, a^.dato);
		alumnosConMasDeTresAut(a^.sd, l);
	
	end;


end;

var a: arbol; l: lista;
begin
	a := nil;
	l := nil;
	cargarDatos(a);
	aumentarAutoevaluaciones(a, 1);
	aumentarAutoevaluaciones(a, 2);
	alumnosConMasDeTresAut(a, l);


end.

{Aquí tienes la transcripción del texto de la imagen:

**Final Taller de programación – Práctico – Módulo imperativo**
**20/02/2024**

La cátedra de Algoritmos y Programación I necesita un sistema para inscribir a todos los alumnos que vayan a cursar en el próximo semestre. De cada alumno se desea registrar su nombre, legajo y cantidad de autoevaluaciones aprobadas (inicialmente en cero).

Implemente en Pascal un programa que posea los siguientes módulos:

a) Un módulo que realice el registro de los alumnos almacenando toda la información en una estructura que permita la búsqueda eficiente de alumnos por legajo. La carga finaliza al leer el alumno con legajo igual a cero.

b) Un módulo que reciba la estructura generada en a), un número de legajo y aumente en una unidad la cantidad de autoevaluaciones aprobadas para el alumno. Nota: el número de legajo podría no pertenecer a ningún alumno previamente almacenado.

c) Un módulo que reciba la estructura generada en a) y devuelva una lista de alumnos ordenada por nombre de todos los alumnos que aprobaron al menos tres autoevaluaciones.}
