
package e9;


public class Apuesta {
    private String nombre_cliente;
    private String dni_cliente;
    private int ID_partido;
    
    private String apuesta;
    private double montoApostado;

    public Apuesta(String nombre_cliente, String dni_cliente, int ID_partido, String apuesta, double montoApostado) {
        this.nombre_cliente = nombre_cliente;
        this.dni_cliente = dni_cliente;
        this.ID_partido = ID_partido;
        this.apuesta = apuesta;
        this.montoApostado = montoApostado;
    }

    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public String getDNI() {
        return dni_cliente;
    }

    public int getID() {
        return ID_partido;
    }

    public String getApuesta() {
        return apuesta;
    }

    public double getMontoApostado() {
        return montoApostado;
    }
    
    
}
