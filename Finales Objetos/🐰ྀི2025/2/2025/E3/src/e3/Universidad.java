/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e3;

/**
 *
 * @author ta
 */
public class Universidad {
    
    private Alumno[] alumnos;
    private int N;
    
    private int DL = 0;
    
    public Universidad(int N){
        this.N = N;
        this.alumnos = new Alumno[N];
    }
    
    public boolean agregarAlumno(Alumno a) {
        if (DL < N) {
            alumnos[DL++] = a;
            return true;
        
        }
        return false;
    }
    
    public boolean agregarExamen(Examen e, int leg){
        boolean encontrado = false;
        
        int i = 0;
        while ((i < DL) && !encontrado) {
            if (this.alumnos[i].getLegajo() == leg) {
            
                this.alumnos[i].agregarExamen(e);
                encontrado = true;
            }
            i++;
        }
        return encontrado;
    
    }
    
    public int cantidadExamenes(int mes, int anio, String mod) {
        int cant = 0;
        for (int i = 0; i < DL; i++) {
            cant += alumnos[i].contar(mes, anio, mod);
        
        }
        
        return cant;
    }
    
    
    public Alumno alumnoMejorPromedio(){
        double prom;
        double promMax = -1;
        Alumno mejorAlumno = null;
        
        for (int i = 0; i < DL; i++) {
            prom = alumnos[i].calcPromedio();
            if (prom > promMax) {
                promMax = prom;
                mejorAlumno = alumnos[i];
                
            }
        }
        return mejorAlumno;
    }
    
    
}
