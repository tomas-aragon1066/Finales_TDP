/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e3;

/**
 *
 * @author ta
 */
public class Alumno {
    private String nombre;
    private String apellido;
    private int legajo;
    private Examen[] examenesRendidos;
    private int M;
    private int DL = 0;
    
    
    public Alumno(int M, String nombre, String apellido, int legajo){
        this.M = M;
        this.examenesRendidos = new Examen[M];
        this.nombre = nombre;
        this.apellido = apellido;
        this.legajo = legajo;
    }
    
    public int getLegajo(){
        return this.legajo;
    }
    
    public boolean agregarExamen(Examen e){
        if (DL < M) {
            this.examenesRendidos[DL++] = e;
            return true;
        
        }
        return false;
        
    }
    
    public int contar(int mes, int anio, String mod){
        int cant = 0;
        for (int i = 0; i < DL; i++) {
            Examen e = this.examenesRendidos[i];
            if ((e.getMes() == mes) && (e.getAnio() == anio) && e.getMod().equals(mod)) {
                cant++;
            }
        }
        return cant;
    }
    
    public double calcPromedio(){
       
        double suma = 0;
        
        for (int i = 0; i < DL; i++) {
            suma += this.examenesRendidos[i].getNota();
        
        }
    
        return DL == 0? 0: (double) suma/ DL;
    }
    
    public String getNombre(){
        return this.nombre;
    }
    
    public String getApellido() {
        return this.apellido;
    }
    
}
