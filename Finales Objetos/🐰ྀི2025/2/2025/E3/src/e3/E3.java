/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package e3;
import PaqueteLectura.Lector;

/**
 *
 * @author ta
 */
public class E3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Universidad u = new Universidad(1000);
        
        u.agregarAlumno(new Alumno(10, "Perez", "Juancho", 199928));
        
                u.agregarAlumno(new Alumno(10, "Sofia", "Martin", 1));

        u.agregarExamen(new Examen(1, 1, 10, "Oral"), 1);
                u.agregarExamen(new Examen(1, 1, 10, "Escrito"), 1);
                
                
    u.agregarExamen(new Examen(1, 1, 7, "Oral"), 199928);
                u.agregarExamen(new Examen(1, 1, 7, "Escrito"), 199928);
          
                
                int mes = Lector.leerInt();
                int anio = Lector.leerInt();
                String mod = Lector.leerString();
                
                u.cantidadExamenes(mes, anio, mod);
                
                Alumno alu = u.alumnoMejorPromedio();
                
                System.out.println(alu.getNombre() + " " + alu.getApellido());

    }
    
}
