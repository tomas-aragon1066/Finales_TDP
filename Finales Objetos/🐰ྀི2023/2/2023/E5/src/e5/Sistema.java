/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e5;

/**
 *
 * @author ta
 */
public abstract class Sistema {
    
    private String nombre;
    private double lat;
    private double lon;
    
    private int N;
    private double[][] temperaturas;

    public Sistema(String nombre, double lat, double lon, int N) {
        this.nombre = nombre;
        this.lat = lat;
        this.lon = lon;
        this.N = N;
        this.temperaturas = new double[N][12];
        
    }
    
    public int getAnios(){
        return this.N;
    }
    
    public void registrarTemperatura(int mes, int anio, double t){
        if (mes >= 1 && mes <= 12) {
            this.temperaturas[anio - 1][mes - 1] = t;
            
        }
    
    }
    
    public double devolverTemperatura(int mes, int anio){
        if (mes >= 1 && mes <= 12) {
           return this.temperaturas[anio - 1][mes - 1];
        }
        return Double.MAX_VALUE;
    }
    
    public String maximaTemperatura(){
        String str = "";
        double temperaturaMax = -1;
        int anio = -1;
        int mes = -1;
        for (int i = 0; i < this.N; i++) {
            for (int j = 0; j < 12; j++) {
                double temperatura = this.temperaturas[i][j];
                if (temperatura > temperaturaMax) {
                    temperaturaMax = temperatura;
                    anio = i;
                    mes = j;
                }
            }
        }
        str += (anio + 1) + "-" + (mes + 1);
        return str;
    
    }
    
    public String informe(){
        return this.nombre + ", " + this.lat + ", " + this.lon + "\n";
    }
    
    
    
    
}
