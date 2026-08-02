/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package E1;

/**
 *
 * @author ta
 */
public class Empresa {
    private String nombre;
    private String direccion;
    private Oficina[][] oficinas;
    
    public Empresa(String nombre, String direccion) {
        this.nombre = nombre;
        this.direccion = direccion;        
        this.oficinas = new Oficina[3][10];
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 10; j++) {
                this.oficinas[i][j] = new Oficina();
            }
        
        }
        
    }
    
    
    public boolean realizarAlquiler(Persona p, double monto, int piso, int oficina ) {
        boolean esPosible = false;
        if (!oficinas[piso - 1][oficina - 1].getEstaAlquilada()) {
        
            esPosible = true;
            oficinas[piso - 1][oficina - 1].setInquilino(p, monto);
        }
        
        
    return esPosible;
    }
    
    public void liberarOficina(int DNI, boolean seDejaAmueblada){
        boolean encontrado = false;
        int i = 0;
        int j = 0;
        while (!encontrado && i < 3) {
            while (!encontrado && j < 10) {
            
                if (oficinas[i][j].getEstaAlquilada() && oficinas[i][j].getInquilino().getDNI() == DNI) {
                    encontrado = true;
                    oficinas[i][j].setAlquilado(false);
                    oficinas[i][j].setAmueblado(seDejaAmueblada);
                }
                i++;
                j++;
            
            }
               
        
        }
        
    
    }
    
    
    public void incrementarAlquiler(){
        
        double incremento = 1.05;
        for (int i = 0; i< 3; i++) {
            for (int j = 0; j < 10; j++) {
                
                if (oficinas[i][j].getEstaAlquilada())
                    oficinas[i][j].setMonto(oficinas[i][j].getMonto()*incremento);
            }
            incremento += 0.05;
        }
    
    }
    
    public int nroOficinas(int piso){
        int cant = 0;
        for (int j = 0; j < 10; j++) {
            if (oficinas[piso -1][j].getEstaAlquilada() && oficinas[piso -1][j].getEstaAmueblada()) {
                cant++;
            }
        }
        return cant; 
    }
    
}
