program P1;

type
	str = string[17];
	
	vehiculo = record 
		patente: str;
		marca: str;
		anio_fab: integer;
		valor: real;
		dni_propietario: integer;
	end;
	
	arbol = ^nodo_arbol;
	
	
	nodo_arbol = record
		dato: vehiculo;
		si: arbol;
		sd: arbol;
	end;
	
	lista = ^nodo_lista;
	
	nodo_lista = record
		dato: vehiculo;
		sig: lista;
	end;
	
	procedure leerVehiculo(var v: vehiculo);
	begin
		readln(v.patente);
		if v.patente <> 'ZZZ' then 
		begin
			readln(v.marca);
			readln(v.anio_fab);
			readln(v.valor);
			readln(v.dni_propietario);
		
		end;
	
	end;

	procedure cargarDatos(var a: arbol);
		procedure agregar(var a: arbol; v: vehiculo);
		begin
			if a =  nil then 
			begin
				new(a);
				a^.dato := v;
				a^.si := nil;
				a^.sd := nil;
			end else if v.valor < a^.dato.valor then
				agregar(a^.si, v)
			else 
				agregar(a^.sd, v);
		
		end;
	var v: vehiculo;
	begin
		a := nil;
		leerVehiculo(v);
		while v.patente <> 'ZZZ' do
		begin
			agregar(a, v);
			leerVehiculo(v);
		
		end;
	end;
	
	// B
	
	function contarEntre(a: arbol; c,d : real): integer;
	begin
		if a = nil then
			contarEntre := 0
		else if a^.dato.valor < c then
			contarEntre := contarEntre(a^.sd, c, d)
		else if a^.dato.valor > d then
			contarEntre := contarEntre(a^.si, c, d)
		else
			contarEntre := 1 + contarEntre(a^.si, c, d) + contarEntre(a^.sd, c, d);
	end;
	
	// C
	
	procedure vehiculosAnioMenor(a: arbol; var l: lista; x: integer);
		procedure insertar_ordenado(var l: lista; v: vehiculo);
		var ant, act, nue: lista;
		begin
			new(nue);
			nue^.dato := v;
			ant := nil;
			act := l;
			while (act <> nil) and (act^.dato.valor < v.valor) do
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
			vehiculosAnioMenor(a^.si, l, x);
			
			if a^.dato.anio_fab < x then
				insertar_ordenado(l, a^.dato);
			
			vehiculosAnioMenor(a^.sd, l, x);
		
		
		end;
	
	end;


var a: arbol;
begin
	cargarDatos(a);
	contarEntre(a, 1, 2);

end.

{Aquí tienes la transcripción del texto de la imagen:

**Taller de programación - Módulo Imperativo**
**01-04-2025**

La municipalidad de la ciudad de La Plata desea mantener la información de todos los vehículos municipalizados. De cada vehículo se desea conocer: la patente, marca, año de fabricación, valor fiscal y el DNI del propietario.

1) Realice un módulo que permita el ingreso de datos de vehículos municipalizados. Los datos de los vehículos se ingresan sin orden alguno hasta leer el vehículo con patente "ZZZ". Almacene los vehículos en una estructura eficiente para la búsqueda por valor fiscal.

2) Realice un módulo que reciba la estructura creada en 1) y dos valores fiscales, y devuelva la cantidad de vehículos cuyo valor fiscal esté entre los dos valores recibidos.

3) Realice un módulo que reciba la estructura creada en 1) y devuelva en una lista los vehículos cuyo año de fabricación sea menor a uno recibido por parámetro. La lista debe quedar ordenada por valor fiscal de propietario.

Escriba un programa que invoque a los módulos implementados y compruebe el correcto funcionamiento del mismo.}
