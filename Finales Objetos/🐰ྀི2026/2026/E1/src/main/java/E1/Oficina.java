/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package E1;

/**
 *
 * @author ta
 */
public class Oficina {
    private boolean estaAmueblada;
    private boolean estaAlquilada;
    private Persona inquilino;
    private double montoAlquiler;
    
    public Oficina(){
        this.estaAlquilada = false;
        this.estaAmueblada = false;
    }
    
    public boolean getEstaAlquilada(){
        return estaAlquilada;
       
    }
    
    public void setInquilino(Persona p, double monto){
        this.inquilino = p;
        this.montoAlquiler = monto;
        this.estaAlquilada = true;
    }
    
    public Persona getInquilino() {
        return inquilino;
    }
    
    public void setAmueblado(boolean amueblado){
        this.estaAmueblada = amueblado;
    }
    
    public void setAlquilado(boolean alquilado){
        this.estaAlquilada = alquilado;
    }
    
    public void setMonto(double monto){
        this.montoAlquiler = monto;
    }
    
    public double getMonto(){
        return this.montoAlquiler;
    }
    
   public boolean getEstaAmueblada() {
       return this.estaAmueblada;
   }
    
}
