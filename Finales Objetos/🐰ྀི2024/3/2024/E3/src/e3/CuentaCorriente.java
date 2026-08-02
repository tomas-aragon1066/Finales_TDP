/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e3;

/**
 *
 * @author ta
 */
public class CuentaCorriente extends Cuenta {
 
    private double acuerdo;
    
    public CuentaCorriente(int nro, String dni, double acuerdo){
        super(nro, dni);
        this.acuerdo = acuerdo;
    }
    
    @Override
    public boolean esPosibleExtraer(double unMonto){
        return (this.getSaldo() + acuerdo < unMonto);
    }
    
    @Override
    public void cobrarMantenimiento(){
        double mantenimiento = 50 * this.acuerdo;
        
        if (esPosibleExtraer(mantenimiento)) {
            double saldoAct = this.getSaldo() - mantenimiento;
            this.setSaldo(saldoAct);
            
        } else {
            this.setEstado("cancelada");
        }
        
        
    }
    
    @Override
    public String resumen(){
        String str = super.resumen();
        str += ". Acuerdo " + this.acuerdo;
        return str;
    
    }
    
}
