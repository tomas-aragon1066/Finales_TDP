/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e2;

/**
 *
 * @author ta
 */
public class Agencia {
    private int DP = 20;
    private int DF1 = 0;
    
    private int DA = 100;
    private int DF2 = 0;
    
    private Partido[] partidos;
    private Apuesta[] apuestas;
    
    public Agencia(){
        this.apuestas = new Apuesta[DA];
        this.partidos = new Partido[DP];
    }
    
    
    public int agregarPartido(Partido p){
        if (DF1 < DP) {
            partidos[DF1++] = p;
        
        }
        return DF1;
    }
    
    
    public boolean agregarApuesta(Apuesta a){
        if (DF2 < DA) {
            apuestas[DF2++] = a;
            return true;
        }
        return false;
    }
    
    
    public boolean ingresarResultadoPartido(int id, String resultado){
        if (id < DF1) {
            partidos[id - 1].setResultado(resultado);
            return true;
        }
        return false;
    }
    
    
    public void cerrarApuestas(int id){
        Partido p = partidos[id];
        String resultado  =  p.getResultado();
        
        for (int i = 0; i < DF2; i++) {
            if (apuestas[i].getApuesta().equals(resultado)) {
                Apuesta apuesta = apuestas[i];
                System.out.println(apuesta.getPersona().toString());
                System.out.println("Monto ganado " + (apuesta.getMonto()*p.getFactor(apuesta.getApuesta())));
            }
        }
        
    }
    
    public void limpiarSistema(){
        for (int i = 0; i < DF1; i++) {
            partidos[i].limpiar();
            DF1--;
        }
        
        
        for (int i = 0; i < DF2; i++) {
            apuestas[i].limpiar();
            DF2--;
        
        }
    }
    
    
}
