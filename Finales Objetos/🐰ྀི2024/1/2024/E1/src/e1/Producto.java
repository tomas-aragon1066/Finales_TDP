/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e1;

/**
 *
 * @author ta
 */
public class Producto {
    
    private int cod;
    private double costoTotal;
    private int etapa;
    
    public Producto(int cod){
        this.cod = cod;
        this.costoTotal = 0;
        this.etapa = 1;
    }
    
    public double getCosto(){
        return costoTotal;
    }
    public double getEtapa() {
        return this.etapa;
    }
    
    public void setEtapa(int etapa){
        this.etapa = etapa;
    }
    
    public void setCosto(double costo){
        this.costoTotal = costo;
    }
    
    public void incEtapa(){
        this.etapa++;
    }
    
    public void incCosto(double costo) {
        this.costoTotal += costo;
    }
    
    public int getCod(){
        return this.cod;
    }
}
