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
    private String nombre;
    private String dni;
    
    public Persona(String nombre, String dni){
        this.nombre = nombre;
        this.dni = dni;
    }
    
    @Override
    public String toString() {
        return "DNI " + this.dni + ", nombre " + this.nombre;
    
    }
    
}
