/*
Aquí tienes la transcripción completa del texto extraído de la imagen, respetando el formato, los ítems y el contenido original del examen:

---

**Taller de programación – Final práctico**
**12-03-2024**

**Programación orientada a objetos**

Queremos representar sectores de una fábrica automotriz, sus empleados y productos. Un sector posee un nombre, un empleado jefe y los empleados que trabajan en el sector (hasta 50 como máximo). Cualquier sector puede estar trabajando hasta en un máximo de N productos al mismo tiempo.

De cada empleado (incluyendo los jefes de sectores) se desea saber su nombre, apellido y antigüedad.

De cada producto se desea saber su código, el costo total y la etapa en la cual se encuentra (un número de 1 a 5).

1) Implemente el modelo de clases teniendo en cuenta:
*   Un sector solo debería poder construirse con el nombre y la cantidad máxima N de productos en los que puede trabajar.
*   Un trabajador solo debería poder construirse con su nombre, apellido y antigüedad.
*   Todo producto debe ser creado a partir de un código, costo igual a cero y etapa igual a uno.

2) Implemente los siguientes métodos (en las clases donde corresponda) que permitan realizar la tarea indicada:
*   `void agregarEmpleado(unEmpleado, esJefe);`
    // agrega un empleado a un sector. Si esJefe es verdadero entonces el empleado se
    // agrega como jefe del sector, en caso contrario se agrega como empleado ordinario.
    // NOTA: asuma que hay lugar disponible.
*   `void agregarProducto(unProducto);`
    // agrega un producto a un sector.
    // NOTA: asuma que hay lugar disponible.
*   `double costoTotal(unaEtapa);`
    // devuelve el costo total de los productos que están en el número de etapa pasado
    // como parámetro.
*   `void cambiarEtapa(unCodProducto, unCosto);`
    // aumenta en una unidad la etapa del producto con el código pasado por parámetro.
    // Además, a ese producto también le suma el costo pasado por parámetro.
*   `String toString();`
    // Devuelve un String que tiene el nombre del sector, todos los datos del jefe, la
    // cantidad total de productos en los que está trabajando, el costo total de todos los
    // productos finalizados (los que están en etapa 5) y todos los datos de los
    // trabajadores cuya antigüedad sea mayor a 10.

NOTA: puede crear todos los métodos auxiliares que considere necesario.

3) Escriba un programa principal que cree un sector, agréguele un jefe y dos trabajadores. Agregue dos productos y haya avanzar hasta la última etapa a uno de ellos. Luego imprima por consola la representación del sector.
 */
package e1;


public class E1 {


    public static void main(String[] args) {

        Sector s = new Sector("SECTOR A",10);
        s.agregarEmpleado(new Empleado("Jorje", "Borges", 100), true);
        s.agregarEmpleado(new Empleado("ABC", "BEF", 11), false);
        s.agregarEmpleado(new Empleado("PQR", "STU", 1), false);
        s.agregarProducto(new Producto(1));
        s.agregarProducto(new Producto(2));
        s.cambiarEtapa(1, 1000.1);
        for (int i = 0; i < 3; i++)
            s.cambiarEtapa(1, 150.5);
        
        System.out.println(s);
        
    }
    
}
