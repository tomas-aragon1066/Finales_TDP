program P2;
	
type
	str = string[20];

	alumno = record
		nombre: str;
		dni: integer;
		puntaje: real;
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
			readln(alu.puntaje);
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
		
		end else if alu.puntaje < a^.dato.puntaje then
			agregar(a^.si, alu)
		else
			agregar(a^.sd, alu)
	end;
	
var
	alu: alumno;
begin
	
	leerAlumno(alu);
	while alu.dni <> 0 do
	begin
		agregar(a, alu);
		leerAlumno(alu);
	end;
end;


// B


procedure listaEntre(a: arbol; var l: lista; v1, v2: real);
	procedure insertar_adelante(var l: lista; alu: alumno);
	var
		nue: lista;
	begin
		new(nue);
		nue^.dato := alu;
		nue^.sig := l;
		l := nue;
	end;

begin
	if a <> nil then
	begin
		if a^.dato.puntaje < v1 then
			listaEntre(a^.sd, l, v1, v2)
		else if a^.dato.puntaje > v2 then
			listaEntre(a^.si, l, v1, v2)
		else
		begin
			listaEntre(a^.si, l, v1, v2);
			insertar_adelante(l, a^.dato);
			listaEntre(a^.sd, l, v1, v2);
		end;
	end;
end;


procedure alumnosEntre(a: arbol; var l: lista; v1, v2: real);
	
	procedure swap(var v1, v2: real);
	var
		a: real;
	begin
		a := v1;
		v1 := v2;
		v2 := a;
	end;
	
begin
	if v1 > v2 then
		swap(v1, v2);
	listaEntre(a, l, v1, v2);

end;

// C
function puntajeMenorDNI(a: arbol): real;
	
	function obtenerAlumno(a: arbol): arbol;
	var
		minIzq, minDer, minAct: arbol;
	
	begin
		if a = nil then
			obtenerAlumno := nil
		else
		begin
			minAct := a;
			minIzq := obtenerAlumno(a^.si);
			minDer := obtenerAlumno(a^.sd); 
			if (minIzq <> nil) and (minIzq^.dato.dni < minAct^.dato.dni) then
				minAct := minIzq;
				
			if (minDer <> nil) and (minDer^.dato.dni < minAct^.dato.dni) then
				minAct := minDer;
			
			obtenerAlumno := minAct;
		end;
	end;


var
	pnodo: arbol;
begin
	pnodo := obtenerAlumno(a);
	if pnodo <> nil then
		puntajeMenorDNI := pnodo^.dato.puntaje
	else
		puntajeMenorDNI := -1;
end;


var a: arbol; l: lista;
begin
	a := nil;
	l := nil;
	cargarDatos(a);
	alumnosEntre(a, l, 1, 2);
	writeln(puntajeMenorDNI(a));
	

end.
