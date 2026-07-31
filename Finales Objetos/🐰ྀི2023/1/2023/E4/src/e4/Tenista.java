
package e4;

public class Tenista {
    
    private String nombre;
    private int totGanados;
    private double totEnPremios;

    public Tenista(String nombre, int totGanados, double totEnPremios) {
        this.nombre = nombre;
        this.totGanados = totGanados;
        this.totEnPremios = totEnPremios;
    }
    
    public int getGanados(){
        return this.totGanados;
    }
    
    public void recibirPremio(double premio){
        this.totEnPremios += premio;
        this.totGanados++;
    }
    
    
    
    
    
}
