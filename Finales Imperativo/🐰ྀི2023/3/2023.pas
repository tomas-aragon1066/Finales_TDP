program P1;


type
	subcat = 1..6;
	
	Direccion = record
		calle: integer;
		altura: integer;
	end;
	
	denuncia = record
		cat: subcat;
		dni: integer;
		dir: Direccion;
		mes: integer;
		dia: integer;
		hora: real;		
		
	end;
	
	item_arbol = record
		dni: integer;
		dir: Direccion;
		mes: integer;
		dia: integer;
		hora: real;
	end;
		
	
	arbol = ^nodo_arbol;
	
	nodo_arbol = record
		dato: item_arbol;
		si: arbol;
		sd: arbol;
	end;
	
	vector = array[subcat] of arbol;
	
	lista = ^nodo_lista;
	
	item_lista = record
		calle: integer;
		total_denuncias: integer;
		denuncias_julio: integer;
		
	end;
	
	nodo_lista = record
		dato: item_lista;
		sig: lista;
	end;
	
	 
	
	
	// A
	procedure cargarDatos(var v: vector);
		procedure leerDenuncia(var d: denuncia);
		begin
			readln(d.dni);
			if d.dni <> 0 then
			begin
				readln(d.cat);
				readln(d.dir.calle);
				readln(d.dir.altura);
				readln(d.mes);
				readln(d.dia);
				readln(d.hora);
			end;
		end;
		
		procedure insertar(var a: arbol; d: denuncia);
		begin
			if a = nil then
			begin
				new(a);
				a^.dato.dni := d.dni;
				a^.dato.dir.calle := d.dir.calle;
				a^.dato.dir.altura := d.dir.altura;
				a^.dato.mes := d.mes;
				a^.dato.dia := d.dia;
				a^.dato.hora := d.hora;
				a^.si := nil;
				a^.sd := nil;
			end else if d.dir.calle < a^.dato.dir.calle then
				insertar(a^.si, d)
			else 
				insertar(a^.sd, d);
		
		
		end;
		
		procedure inicializar(var c: vector);
		var
			i: integer;
		begin
			for i := 1 to 6 do
				v[i] := nil;
		
		end;
	
	var
		d: denuncia;
	begin
		inicializar(v);
		leerDenuncia(d);
		while d.dni <> 0 do
		begin
			insertar(v[d.cat], d);
			leerDenuncia(d);
		end;
	end;
	
	
	// B
	procedure listaDenuncias(v: vector; var l: lista);
		
		procedure insertar(item: item_arbol; var l: lista);
		var
			nue, ant, act: lista;
		begin
			ant := nil;
			act := l;
			while (act <> nil) and (act^.dato.calle < item.dir.calle) do
			begin
				ant := act;
				act := act^.sig;
			end;
			
			if (act <> nil) and (act^.dato.calle = item.dir.calle) then
			begin
				act^.dato.total_denuncias := act^.dato.total_denuncias + 1;
				if item.mes = 7 then
					act^.dato.denuncias_julio := act^.dato.denuncias_julio + 1;
			
			end
			else
			begin
				new(nue);
				nue^.dato.calle := item.dir.calle;
				nue^.dato.total_denuncias := 1;
				if item.mes = 7 then
					nue^.dato.denuncias_julio := 1
				else
					nue^.dato.denuncias_julio := 0;
					
				if ant = nil then
					l := nue
				else
					ant^.sig := nue;
				
				nue^.sig := act;		
			
			end;
		
		end;
		
		procedure enOrden(a: arbol; var l: lista);
		begin
			if a <> nil then
			begin
				enorden(a^.si, l);
				insertar(a^.dato, l);
				enOrden(a^.sd, l);
		
			end;
		end;
	
	var
		i: integer;
	begin
		l := nil;
		for i := 1 to 6 do
			enOrden(v[i], l);
	
	
	end;
	
	// C
	procedure nroCalleMasDenuncias(l: lista; var max, nro_max: integer);
	begin
		if l <> nil then
		begin
		
			if l^.dato.total_denuncias > max then
			begin
				nro_max := l^.dato.calle;
				max := l^.dato.total_denuncias;
			end;
		
			nroCalleMasDenuncias(l^.sig, max, nro_max);
		
		end;
	end;
	
	
	
	


var v: vector; l: lista; max, nro_max: integer;
begin
	cargarDatos(v);
	listaDenuncias(v, l);
	
	max := -1;
	
	nroCalleMasDenuncias(l, max, nro_max);
	writeln('nro de calle con mas denuncias ', nro_max);
	


end.

{Aquí tienes la transcripción completa del texto extraído de la imagen:

---

**Final Taller de programación – Práctico – Módulo imperativo**
**4/08/2023**

La municipalidad de la ciudad de La Plata necesita un sistema que le permita recolectar las denuncias realizadas por los ciudadanos. La denuncia la hace cualquier ciudadano y al hacerlo debe proporcionar la categoría de denuncia (1: corte de luz en la vía pública; 2: auto mal estacionado; 3: recolección de residuos; 4: ruidos molestos; 5: semáforo en malfuncionamiento; 6: bache en la calle), su DNI, la dirección (número de calle y número de altura) y el mes, día y hora.

Implemente en pascal:

a) Un módulo que genere el alta de todas las denuncias almacenando toda la información en una estructura agrupada por categoría y ordenada por número de calle. La carga finaliza hasta leer el DNI igual a cero.

b) Un módulo que reciba la estructura generada en a) y devuelva una lista de denuncias donde para cada número de calle se contabilice cantidad de denuncias totales y cantidad de denuncias realizadas en el mes de julio.

c) Un módulo recursivo que reciba la estructura generada en b) y devuelva el número de calle con mayor cantidad de denuncias totales.}
