
package e4;

public class PartidoSingles extends Partido {
    
    private Tenista tenista1; 
    private Tenista tenista2;

    public PartidoSingles(Tenista t1, Tenista t2, String fecha, String lugar) {
        super(fecha, lugar);
        this.tenista1 = t1;
        this.tenista2 = t2;
    }
    
    @Override
    public void otorgarPremios(double premio) {
        if (this.haFinalizado()) {
            if (this.getResultado()[0] == 3) {
                tenista1.recibirPremio(premio);
            }
            else {
                tenista2.recibirPremio(premio);
            }
        
        }
        
    }
    
}
