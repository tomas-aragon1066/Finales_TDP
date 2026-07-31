/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e3;

/**
 *
 * @author ta
 */
public class CajaDeAhorro extends Cuenta {
    private boolean tieneTarjeta;
    
    public CajaDeAhorro(int nro, String dni, boolean tieneTarjeta){
        super(nro, dni);
        this.tieneTarjeta = tieneTarjeta;
    
    }
    
    @Override
    public boolean esPosibleExtraer(double unMonto){
        return (this.getSaldo() > unMonto);
    }
    
    @Override
    public void cobrarMantenimiento(){
        double base = this.tieneTarjeta? 2000: 1000;
        double mantenimiento = base + (1/(this.getSaldo() + 1));
        if (esPosibleExtraer(mantenimiento)) {
            double saldoAct = this.getSaldo() - mantenimiento;
            
            this.setSaldo(saldoAct);
        } else {
            this.setEstado("cancelada");
        }
        
    }
    @Override 
    public String resumen() {
        String str = super.resumen();
        str += ". Tiene tarjeta " + this.tieneTarjeta;
        return str;
    
    }
    
}
