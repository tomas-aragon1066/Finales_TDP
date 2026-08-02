/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e5;

/**
 *
 * @author ta
 */
public class SistemaMensual extends Sistema {

    public SistemaMensual(String nombre, double lat, double lon, int N) {
        super(nombre, lat, lon, N);
    }
    
    
    public double calcPromedio(int mes){
        int anios  = this.getAnios();
        double suma = 0;
        
        for (int i = 0; i < anios; i++) {
            suma += this.devolverTemperatura(mes + 1, i + 1);
           
        }
        return (double) suma / anios;
        
    
    }
    
    @Override
    public String informe(){
        String str = super.informe();
        
        for (int i = 0; i < 12; i++) {
            str += this.calcPromedio(i);
        }
        return str;
    }
    
}
