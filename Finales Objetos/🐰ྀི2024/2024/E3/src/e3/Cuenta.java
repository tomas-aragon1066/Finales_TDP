/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e3;

/**
 *
 * @author ta
 */
public abstract class Cuenta {
    
    private int nro;
    private String dni;
    private double saldo;
    private String estado;
    private double[] movimientos;
    private final int DF = 20;
    private int DL = 0;
    
    
    public Cuenta(int nro, String dni){
        this.nro = nro;
        this.dni = dni;
        this.saldo = 0;
        this.estado = "activa";

        this.movimientos = new double[DF];
        
    }
    
    public void depositar(double unMonto) {
        if (DL < DF) {
            this.movimientos[DL++] = unMonto;
            this.saldo += unMonto;
        }
    }
    
    public double getSaldo(){
        return this.saldo;
    }
    
    public void setSaldo(double saldo){
        this.saldo = saldo;
    }
    
    public void setEstado(String estado){
        this.estado = estado;
    }
    
    public abstract boolean esPosibleExtraer(double unMonto);
    
    public boolean extraer(double unMonto){
        if (DL < DF) {
            if (this.esPosibleExtraer(unMonto)) {
                this.movimientos[DL++] = -unMonto;
                this.saldo -= unMonto;
                return true;
            }
        }
        return false;
    }
    
    public abstract void cobrarMantenimiento();
    
    public String resumen() {
        String str = "";
        
        str += "nro de cuenta " + this.nro + "\n";
        str += "DNI cliente " + this.dni + "\n";
        str += "movimientos : ";
        
        for (int i =0; i < DL; i++) {
            str += this.movimientos[i] + ",";
        }
        
        str += "Saldo " + this.saldo + "\n";
        str += "Estado " + this.estado + "\n";
        return str;
    }
}
