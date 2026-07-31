/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e2;

/**
 *
 * @author ta
 */
public class Hospital {
    
    private String nombre;
    private String direccion;
    private final int nroPisos = 10;
    private final int nroCamas = 20;
    private Cama[][] camas;
    
    public Hospital(String nombre, String direccion){
        this.nombre = nombre;
        this.direccion = direccion;
        
        this.camas = new Cama[nroPisos][nroCamas];
        
        for (int i = 0; i < nroPisos; i++) {
            for (int j = 0; j <nroCamas; j++) {
                this.camas[i][j] = new Cama(i*nroCamas + j + 1);
            }
        }
    
    }
    
    public void imprimirIds(){
        for (int i = 0; i < nroPisos; i++) {
            for (int j = 0; j <nroCamas; j++) {
                System.out.println(this.camas[i][j].getID());
            }
        }
    }
    
    public boolean ingresarPaciente(Persona p, int piso, int cama){
        if (piso >= 1 && piso <= 10) {
            if (cama >= 1 && cama <= 20) {
                
                if (!this.camas[piso -1][cama -1].estaOcupada()) {
                this.camas[piso -1][ cama - 1].setPaciente(p);
                this.camas[piso - 1][cama -1].setOcupada(true);
                this.camas[piso -1][ cama - 1].setDias(0);
                return true;
                }
            }
        
        }
        return false;
    }
    
    public boolean altaPaciente(String dni){
        boolean encontrado = false;
        int i = 0;
        int j = 0;
        
        while (i < nroPisos && !encontrado) {
            while ( j < nroCamas && !encontrado) {
                if (this.camas[i][j].estaOcupada() && this.camas[i][j].getPaciente().getDNI().equals(dni)) {
                    encontrado = true;
                    this.camas[i][j].setOcupada(false);
                    this.camas[i][j].setPaciente(null);
                    this.camas[i][j].setDias(0);
                   
                }
                j++;
            } 
            i++;
        }
        return encontrado;
        
    }
    
    public void incrementarDias(){
        for (int i = 0; i < nroPisos; i++) {
            for (int j =0; j < nroCamas; j++) {
                if (this.camas[i][j].estaOcupada()) {
                    int dias = this.camas[i][j].getDias() + 1;
                    
                    this.camas[i][j].setDias(dias);
                }
            }
        }
    }
    private boolean estaLleno(int i){
        
        int c = 0;
        for (int j = 0; j < nroCamas; j++) {
            if (this.camas[i][j].estaOcupada()) {
                c++;
            }
        }
        return (c == nroCamas);
    }
    
    public int cantPisosLlenos(){
        int cant = 0;
        
        for (int i =0; i < nroPisos; i++) {
            if (estaLleno(i)) {
                cant++;
            }
        }
        
        return cant;
    }
    
}
