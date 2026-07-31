
program P1;

type
	str = string[17];
	vehiculo = record
		patente: str;
		marca: str;
		anio: integer;
		color: str;
		dni_prop: integer;
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
	
	// A
	procedure cargarDatos(var a: arbol);
		procedure leerVehiculo(var v: vehiculo);
		begin
			readln(v.patente);
			if v.patente <> 'ZZZ' then
			begin
				readln(v.marca);
				readln(v.anio);
				readln(v.color);
				readln(v.dni_prop);
					
			end;
				
		end;
	
		procedure agregar(var a: arbol; v: vehiculo);
		begin
			if a = nil then
			begin
			
				new(a);
				a^.dato := v;
				a^.si := nil;
				a^.sd := nil;
				
			end else if v.dni_prop < a^.dato.dni_prop then
				agregar(a^.si, v)
			else
				agregar(a^.sd, v);
		
		
		end;
	var v: vehiculo;
	begin
		leerVehiculo(v);
		while v.patente <> 'ZZZ' do
		begin
			agregar(a, v);
			leerVehiculo(v);
		end;
	
	end;
	
	
	// B
	function cantidadEntre(a: arbol; c, d : integer): integer;
	begin
		if a = nil then
			cantidadEntre := 0
		else if (a^.dato.anio >= c) and (a^.dato.anio <= d) then // ERRoR
			cantidadEntre := 1 + cantidadEntre(a^.si, c, d) + cantidadEntre(a^.sd, c, d)
		else
			cantidadEntre := cantidadEntre(a^.si, c, d) + cantidadEntre(a^.sd, c, d);
	end;
	
	// C
	
	procedure DNIMenoresA(a: arbol; var l, ult: lista; x : integer);
		procedure insertar_atras(var l, ult: lista; v: vehiculo);
		var nue: lista;
		begin
			new(nue);
			nue^.dato := v;
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
			if a^.dato.dni_prop >= x then
				DNIMenoresA(a^.si, l, ult, x)
			else
			begin
				DNIMenoresA(a^.si, l, ult, x);
				insertar_atras(l, ult, a^.dato);
				
				DNIMenoresA(a^.sd, l, ult, x);
			
			
			end;
			
			
		
		
		end;
	
	end;
	
	
var a: arbol; l, ult: lista;
begin
	a := nil;
	l := nil;
	ult := nil;
	cargarDatos(a);
	writeln(cantidadEntre(a, 1, 2));
	DNIMenoresA(a, l, ult, 10);


end.
{
Aquí tienes la transcripción completa del texto de la imagen, respetando el formato original y los números de los ítems:

---

**Taller de programación - Módulo Imperativo**
**17-12-2024**

La municipalidad de la ciudad de Ensenada desea mantener la información de todos los vehículos municipalizados. De cada vehículo se desea conocer: la patente, marca, año de fabricación, color de pintura y el DNI del propietario.

4) Realice un módulo que permita el ingreso de datos de vehículos municipalizados. Los datos de los vehículos se ingresan sin orden alguno hasta leer el vehículo con patente "ZZZ". Almacene los vehículos en una estructura eficiente para la búsqueda por DNI de propietario.

5) Realice un módulo que reciba la estructura creada en 1) y dos años de fabricación, y devuelva la cantidad de vehículos con año de fabricación entre los dos valores recibidos.

6) Realice un módulo que reciba la estructura creada en 1) y devuelva en una lista los vehículos cuyos DNI de propietarios sea menor a uno recibido por parámetro. La lista debe quedar ordenada por DNI de propietario.

Escriba un programa que invoque a los módulos implementados y compruebe el correcto funcionamiento del mismo.}
