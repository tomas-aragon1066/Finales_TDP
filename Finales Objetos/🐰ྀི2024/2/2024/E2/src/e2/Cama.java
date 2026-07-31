/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e2;

/**
 *
 * @author ta
 */
public class Cama {
    private int id;
    private boolean ocupada;
    private Persona paciente;
    private int diasOcupada;
    
    public Cama(int id){
        this.id = id;
        this.ocupada = false;
        this.paciente = null;
        this.diasOcupada = -1;
    }
    
    public int getID(){
        return this.id;
    }
    
    public void setOcupada(boolean ocupada){
        this.ocupada = ocupada;
    }
    
    public void setPaciente(Persona paciente){
        this.paciente = paciente;
    }
    
    public void setDias(int dias){
        this.diasOcupada = dias;
    }
    public boolean estaOcupada(){
        return this.ocupada;
    }
   
    public Persona getPaciente(){
        return this.paciente;
    }
    public int getDias() {
        return this.diasOcupada;
    }
    
}
