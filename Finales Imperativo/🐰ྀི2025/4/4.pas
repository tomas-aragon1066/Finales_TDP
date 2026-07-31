
program P1;

type
	paquete = record
		cod: integer;
		dni_emisor: integer;
		dni_receptor: integer;
		c_objetos: integer;
		peso: integer;
	end;
	
	itemArbol = record
		dni_emisor: integer;
		suma_pesos: integer;
		total_paq: integer;
	end;
	
	arbol = ^nodo_arbol;
	nodo_arbol = record
		dato: itemArbol;
		si: arbol;
		sd: arbol;
	end;
	
	procedure cargarDatos(var a: arbol);
		procedure leerPaquete(var p: paquete);
		begin
			readln(p.cod);
			if p.cod <> 0 then
			begin
				readln(p.dni_emisor);
				readln(p.dni_receptor);
				readln(p.c_objetos);
				readln(p.peso);
			
			end;
		
		
		end;
		procedure agregar(var a: arbol; p: paquete);
		begin
			if a = nil then
			begin
				new(a);
				a^.dato.dni_emisor := p.dni_emisor;
				a^.dato.suma_pesos := p.peso;
				a^.dato.total_paq := 1;
				a^.si := nil;
				a^.sd := nil;
			end else if p.dni_emisor < a^.dato.dni_emisor then
				agregar(a^.si, p)
			else if p.dni_emisor > a^.dato.dni_emisor then
				agregar(a^.sd, p)
			else
			begin
				a^.dato.suma_pesos := a^.dato.suma_pesos + p.peso;
				a^.dato.total_paq := a^.dato.total_paq + 1;
			
			end;
		end;
	
	var p: paquete;
	begin
		leerPaquete(p);
		while p.cod <> 0 do
		begin
			agregar(a, p);
			leerPaquete(p);
		
		
		end;
	
	
	end;
	
	// b
	procedure emisoresMenospaquetes(a: arbol; var l, ult: lista; x: integer);
	
	
	

begin



end.
