/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e2;

/**
 *
 * @author ta
 */
public class Persona {
    private String dni;
    private String nombre;
    private String obraSocial;
    
    public Persona(String nombre, String dni, String obra){
        this.nombre = nombre;
        this.obraSocial = obra;
        this.dni = dni;
    }
    
    
    public String getDNI(){
    
        return this.dni;
    }
    
}
