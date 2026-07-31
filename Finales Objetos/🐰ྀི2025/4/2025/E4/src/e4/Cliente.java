/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e4;

/**
 *
 * @author ta
 */
public class Cliente {
    private String nombre;
    private String apellido;
    private int dni;

    public Cliente(String nombre, String apellido, int dni) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
    }
    
    
    
    
    public int getDNI(){
        return this.dni;
    }
    @Override
    public String toString(){
        return this.nombre + ", " + this.apellido + ", " + this.dni + "\n";
    
    }
    
}
