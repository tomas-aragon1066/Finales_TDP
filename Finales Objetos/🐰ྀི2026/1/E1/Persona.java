/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package E1;

/**
 *
 * @author ta
 */
public class Persona {
    
    private int DNI ;
    private String nombre;
    
    public Persona(int DNI, String nombre){
        this.DNI = DNI;
        this.nombre = nombre;
    }
    
    public int getDNI(){
    
        return this.DNI;
    }
}
