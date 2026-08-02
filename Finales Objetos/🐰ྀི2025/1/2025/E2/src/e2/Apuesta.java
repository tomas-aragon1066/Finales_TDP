/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e2;

/**
 *
 * @author ta
 */
public class Apuesta {
    
    private Persona cliente;
    private int id;
    
    private String apuesta;
    private double montoApostado;
    
    public Apuesta(Persona cliente, int id, String apuesta, double montoApostado){
        this.cliente = cliente;
        this.apuesta = apuesta;
        this.id = id;
        this.montoApostado = montoApostado;
    }
    
    public void limpiar() {
        this.apuesta = null;
        this.cliente = null;
        this.id = -1;
        this.montoApostado = -1;
    }
    
    
    public String getApuesta(){
        return this.apuesta;
    }
    
    public Persona getPersona(){
        return this.cliente;
    }
    
    public double getMonto(){
    
        return this.montoApostado;
    }
    
}
