/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e1;

/**
 *
 * @author ta
 */
public class Sector {
    
    private String nombre;
    private Empleado jefe;
    private Empleado[] empleados;
    private Producto[] productos;
    private int N;
    
    private int DL1 = 0;
    private int DL2 = 0;
    
    public Sector(String nombre, int N){
        this.N = N;
        this.empleados = new Empleado[50];
        this.productos = new Producto[N];
        this.nombre = nombre;
        
    }
    
    
    public void agregarEmpleado(Empleado unEmpleado, boolean esJefe){
        if (!esJefe && DL1 < 50) {
            this.empleados[DL1++] = unEmpleado; 
        }
        
        if (esJefe) {
        
            this.jefe = unEmpleado;
        }
    }
    
    public void agregarProducto(Producto unProducto){
        if (DL2 < N) {
            this.productos[DL2++] = unProducto;
        }
    }
    
    public double costoTotal(int unaEtapa){
        double tot = 0;
        for (int i = 0; i < DL2; i++) {
            if (this.productos[i].getEtapa() == unaEtapa)
                tot += this.productos[i].getCosto();
        }
       
        
        return tot;
    }
    
    public void cambiarEtapa(int unCodProducto, double unCosto){
        int i = 0;
        boolean encontrado = false;
        while (i < DL2 && !encontrado) {
            if (this.productos[i].getCod() == unCodProducto) {
                this.productos[i].incCosto(unCosto);
                this.productos[i].incEtapa();
                encontrado = true;
            }
            i++;
        }
    
    }
    
    @Override
    public String toString(){
        String str = "";
        str += this.nombre + ", jefe: " + this.jefe + "\n";
        
        str += "C. tot prod. " + this.DL2 + "\n";
        str += "C. tot prod finalizados " + this.costoTotal(5) + "\n";
        str += "Empleados con antigiuedad mayor a dies anos: ";
        for (int i = 0; i < DL1; i++) {
            if (this.empleados[i].getAnt() > 10) {
                str += this.empleados[i].toString();
            }
        } 
        
        return str;
    }
}
