/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e3;

/**
 *
 * @author ta
 */
public class Examen {
    private int mes;
    private int anio;
    private double nota;
    private String modalidad;
    
    public Examen(int mes, int anio, double nota, String mod){
        this.mes = mes;
        this.anio = anio;
        this.modalidad = mod;
        this.nota = nota;
    }
    
    
    public Examen() {
    }
    
    
    public int getMes() {
        return this.mes;
    
    }
    
    public int getAnio () {
        return this.anio;
    }
    
    public String getMod() {
    
        return this.modalidad;
    }
    
    public double getNota(){
    
        return this.nota;
    }
}
