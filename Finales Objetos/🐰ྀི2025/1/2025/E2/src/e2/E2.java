/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package e2;

/**
 *
 * @author ta
 */
public class E2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Agencia age = new Agencia();
        age.agregarPartido(new Partido("ABC", "DEF","EEE", 1.0, 20.0, 30.0));
        age.agregarPartido(new Partido("UUU", "DEF","EEE", 1.0, 20.0, 30.0));
        
        //Apuesta(Persona cliente, int id, String apuesta, double montoApostado){
        age.agregarApuesta(new Apuesta(new Persona("ABC", "11111"), 111, "visitante", 100.0 ));
        age.agregarApuesta(new Apuesta(new Persona("DEF", "11111"), 111, "visitante", 100.0 ));
        
        age.ingresarResultadoPartido(1, "visitante");
        
        age.cerrarApuestas(1);

        age.limpiarSistema();
    }
    
}
