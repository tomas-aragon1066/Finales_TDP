/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e1;

/**
 *
 * @author ta
 */
public class Empleado {
    
    private String nombre;
    private String apellido;
    private int antiguedad;
    
    
    public Empleado(String nombre, String apellido, int antiguedad){
        this.nombre = nombre;
        this.antiguedad = antiguedad;
        this.apellido = apellido;
        
    }
    public int getAnt(){
        return this.antiguedad;
    }
    
    @Override
    public String toString(){
        return nombre + ", " + apellido + ", ant. " + antiguedad;
    }
}
