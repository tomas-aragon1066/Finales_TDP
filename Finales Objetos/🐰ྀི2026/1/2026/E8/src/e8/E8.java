/*
 Aquí tienes la transcripción completa del texto extraído de la imagen:

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
package e8;

import PaqueteLectura.Lector;

public class E8 {

    public static void main(String[] args) {
        Empresa e = new Empresa("Un nombre", "Una direccion");
        
        e.realizarAlquiler(new Persona("Un nombre", "Un dni"), 200.5, 1, 1);
        e.realizarAlquiler(new Persona("nombre 2", "dni 2"), 200.5, 2, 2);
        e.realizarAlquiler(new Persona("Un nombre", "dni 3"), 200.5, 1, 3);
        e.realizarAlquiler(new Persona("Un nombre", "dni 4"), 300.5, 1, 2);
        e.incrementarAlquileres();
        System.out.println(e.contarOficinas(3));
        
        String dni = Lector.leerString();
        boolean dejarAmueblada = Lector.leerBoolean();
        
        e.liberarOficina(dni, dejarAmueblada);
        
        
        
        
        
    }
    
}
