/*
Aquí tienes la transcripción completa del texto extraído de la imagen, respetando el formato original y los ítems del examen:

---

**Final Taller de programación - Módulo POO**
**3/10/2024**

Un hospital posee un nombre, dirección y cuenta con 10 pisos y 20 camas en cada piso. Cada cama conoce su número único de identificación dentro del hospital (ID), si está ocupada o no y en caso de estar ocupada tiene la información del paciente que la ocupa (DNI, nombre y obra social) y la cantidad de días que lleva ocupada por su último paciente.

1) Modele el problema generando las clases, cada una con los constructores, estado, getters y setters que considere necesarios. Tenga en cuenta que el hospital debe ser iniciado con todas sus camas desocupadas, y que las camas tendrán IDs consecutivos del 1 a 200.

2) Incorpore a las clases implementadas los métodos necesarios para:
a) Ingresar un paciente (se recibe el paciente, el número de piso y el número de cama dentro del piso donde se lo va a internar). Asuma que el número de piso está en rango (1..10) y el número de cama está en rango (1..20).
b) Dar de alta un paciente liberando la cama que ocupa (se recibe el DNI del paciente que seguro existe).
c) Incrementar en uno la cantidad de días de ocupación de todas las camas que estén ocupadas.
d) Devolver la cantidad de pisos llenos, es decir, que tienen todas sus camas ocupadas.

3) Implemente una función main que instancie un hospital, simule el ingreso de cinco pacientes, invoque al método que incrementa la cantidad de días de ocupación, imprima la cantidad de pisos llenos y que finalmente le dé el alta a un paciente cuyo DNI se ingresa por teclado.
 */
package e2;
import PaqueteLectura.Lector;
public class E2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Hospital h = new Hospital("Don bosco", "La Matanza, Calle Rios y Ayacucho");
        h.ingresarPaciente(new Persona("Juan", "222", "IOMA"), 1, 1);
        h.ingresarPaciente(new Persona("Pedro", "111", "IOMA"), 2, 1);
        h.ingresarPaciente(new Persona("Juan", "333", "IOMA"), 3, 1);
        h.ingresarPaciente(new Persona("Juan", "444", "IOMA"), 4, 1);
        h.ingresarPaciente(new Persona("Juan", "555", "IOMA"), 5, 1);
        
        h.incrementarDias();
        System.out.println(h.cantPisosLlenos());
        String dni = Lector.leerString();
        
        h.altaPaciente(dni);
        

    }
    
}
