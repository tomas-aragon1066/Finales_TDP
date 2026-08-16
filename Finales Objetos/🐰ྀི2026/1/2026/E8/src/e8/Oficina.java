
package e8;

public class Oficina {
    private boolean estaAmueblada;
    private boolean esAlquilada;
    private Persona inquilino;
    private double montoAlquiler;

    public Oficina() {
        this.estaAmueblada = false;
        this.esAlquilada = false;
        this.inquilino = null;
        this.montoAlquiler = -1;
    }
    
    public boolean esAlquilada(){
        return this.esAlquilada;
    }
    
    public boolean estaAmueblada(){
        return this.estaAmueblada;
    }
    
    public void alquilar(Persona inquilino, double monto){
        this.inquilino = inquilino;
        this.esAlquilada = true;
        this.montoAlquiler = monto;
    
    }

    public Persona getInquilino() {
        return inquilino;
    }
    
    public void liberar(boolean dejarAmueblada){
        this.esAlquilada = false;
        this.inquilino = null;
        this.montoAlquiler = -1;
        this.estaAmueblada = dejarAmueblada;
    
    }
    
    public void incrementarPorcentaje(double porcentaje){
        this.montoAlquiler += this.montoAlquiler * porcentaje;
    
    }
    
    
    
}
