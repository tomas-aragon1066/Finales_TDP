/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e4;

/**
 *
 * @author ta
 */
public class Poliza {
    
    private double monto;
    private double cuotaMensual;
    private boolean estaVigente;
    private Fecha inicioCobertura;
    private Fecha finCobertura;
    Cliente cliente;
    
    public Poliza(double monto, double cuota, boolean vigente, Fecha ini, Fecha fin, Cliente c){
        this.monto = monto;
        this.cuotaMensual = cuota;
        this.estaVigente = vigente;
        this.inicioCobertura = ini;
        this.finCobertura = fin;
        
    
    }
    
    public double getCuota(){
        return this.cuotaMensual;
    }
    public void setCuota(double cuota){
        this.cuotaMensual = cuota;
    }
    
    public boolean esVigente(){
        return this.estaVigente;
    }
    
    public Fecha getFechaFin() {
        return this.finCobertura;
    }
    
    
    
    public Cliente getCliente(){
        return this.cliente;
    
    }
    
    
    
}
