/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e5;

/**
 *
 * @author ta
 */
public class SistemaAnual extends Sistema {

    public SistemaAnual(String nombre, double lat, double lon, int N) {
        super(nombre, lat, lon, N);
    }
    
    
    
    
    public double calcPromedio(int anio){
        double suma = 0;
        
        for (int i = 0; i < 12; i++) {
            suma += this.devolverTemperatura(i + 1, anio + 1);
            
        }
        return (double) suma/12.0;
    
    }
    
    
    @Override
    public String informe(){
        String str = super.informe();
        int anios = this.getAnios();
        for (int i = 0; i < anios; i++) {
            str += this.calcPromedio(i) + "\n";
        
        }
        return str;
    }
    
}
