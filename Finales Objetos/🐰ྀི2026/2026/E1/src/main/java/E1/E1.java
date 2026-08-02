/*
 Aquí tienes la transcripción completa del texto extraído de la imagen, respetando el formato y los ítems tal como aparecen en el examen:

---

**Final Taller de programación - Módulo POO**
**31/03/2026**

Una empresa de alquiler de oficinas posee un nombre, dirección y cuenta con 30 oficinas repartidas en tres pisos (10 oficinas por piso). En cada piso las oficinas están numeradas del 1 al 10. De cada oficina se conoce si está amueblada o no y al ser alquilada conoce la información de la persona que realizó el alquiler (DNI, nombre) y el monto diario del alquiler.

1) Modele el problema generando las clases que considere necesarias, cada una con los constructores, estado, getters y setters que considere necesarios. Tenga en cuenta que la empresa debe ser iniciada con todas sus oficinas libres y no amuebladas.

2) Implemente en las clases que corresponda los métodos necesarios para incorporar la siguiente funcionalidad:
a) Realizar un alquiler. Se recibe la persona que realiza el alquiler, el monto diario del alquiler, el número de piso y de oficina que alquila.
b) Liberar una oficina. Se recibe el DNI de la persona que realizó el alquiler, que podría no existir; y un parámetro booleano que indica si la oficina se deja amueblada, en cuyo caso cambia su estado.
c) Incrementar el monto diario de alquiler de todas las oficinas alquiladas. Las oficinas del primer piso se aumentan un 5%, las del segundo piso un 10% y las del tercer piso un 15%.
d) Devolver la cantidad de oficinas alquiladas y amuebladas de un determinado piso. Se recibe el número de piso.

3) Implemente una función main que instancie una empresa de alquiler de oficinas, simule el alquiler de cuatro oficinas, invoque al método que incrementa el monto diario de alquiler, imprima la cantidad de oficinas alquiladas del tercer piso y finalmente liberar la oficina alquilada la persona cuyo DNI se ingresa por teclado.
 */

package E1;
import java.util.*;
public class E1 {

    public static void main(String[] args) {

        Empresa e  = new Empresa("NOMBRE", "DIRECCION");
        
        e.realizarAlquiler(new Persona(2222222, "NOMBRE_PERSONA"), 100, 1, 6);
        e.realizarAlquiler(new Persona(2222222, "NOMBRE_PERSONA"), 100, 1, 7);
        e.realizarAlquiler(new Persona(2222222, "NOMBRE_PERSONA"), 100, 1, 8);
        e.realizarAlquiler(new Persona(2222222, "NOMBRE_PERSONA"), 100, 1, 9);

        e.incrementarAlquiler();
        System.out.println(e.nroOficinas(3));
        
        Scanner c = new Scanner(System.in);
        
        int i = c.nextInt();
        
        e.liberarOficina(i, true);
        


    }
}
