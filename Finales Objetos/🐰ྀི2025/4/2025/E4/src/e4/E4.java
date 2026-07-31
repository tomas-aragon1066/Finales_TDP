/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package e4;

/**
 *
 * @author ta
 */
public class E4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        Aseguradora a = new Aseguradora();
        // public Poliza(double monto, double cuota, boolean vigente, Fecha ini, Fecha fin, Cliente c){
        a.agregarPoliza(new Poliza(100.5, 200.4, false, new Fecha(1, 1, 2020), new Fecha(2, 2, 2020),  new Cliente("ABC", "DEF", 2)), 1);
        
        a.agregarPoliza(new Poliza(100.5, 200.4, true, new Fecha(1, 1, 2020), new Fecha(2, 2, 2020),  new Cliente("UUU", "DEF", 3)), 0);
        a.agregarPoliza(new Poliza(100.5, 200.4, true, new Fecha(1, 1, 2020), new Fecha(2, 2, 2020),  new Cliente("PPP", "DEF", 4)), 0);
        a.agregarPoliza(new Poliza(100.5, 200.4, true, new Fecha(1, 1, 2020), new Fecha(2, 2, 2020),  new Cliente("QQQ", "DEF", 2)), 0);
        a.agregarPoliza(new Poliza(100.5, 200.4, true, new Fecha(1, 1, 2020), new Fecha(2, 2, 2020),  new Cliente("RRR", "DEF", 5)), 1);
        System.out.println(a.infoCliente(2));
        
        a.aumentarCuotas(1.11, 3);
        System.out.println(a.cantidadAVencer(10, 2025));
    }
    
}
