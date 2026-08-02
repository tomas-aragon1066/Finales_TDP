package e2;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ta
 */
public class Partido {
    private String local;
    private String visitante;
    
    
    private String resultado;
    private double[] facPago;
    
    public Partido(String local, String visitante, String resultado, double f1, double f2, double f3){
        this.local = local;
        this.visitante = visitante;
        this.resultado = resultado;
        this.facPago = new double[3];
        this.facPago[0] = f1;
        this.facPago[1] = f2;
        this.facPago[2] = f3;
        
    
    }
    
    public void limpiar(){
        this.local = null;
        this.visitante = null;
        this.resultado = null;
        this.facPago = null;
    }
    
    public void setResultado(String resultado){
        this.resultado = resultado;
    }
    
    public String getResultado() {
        return this.resultado;
    }
    
    
    public double getFactor(String apuesta){
        
        double factor;
        if (apuesta.equals("victoria local")) {
            factor = facPago[0];
        } else if (apesta.equals("empate")) {
            factor =  facPago[1];
        } else if (apuesta.equals("victoria visitante")) {
            factor = facPago[2];
        } 
        return factor;
    }
    
}
