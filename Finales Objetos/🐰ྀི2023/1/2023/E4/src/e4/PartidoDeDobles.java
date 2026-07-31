/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e4;

/**
 *
 * @author ta
 */
public class PartidoDeDobles extends Partido {
    private Tenista[] equipo1;
    private Tenista[] equipo2;

    public PartidoDeDobles(Tenista t1, Tenista t2, Tenista t3, Tenista t4, String fecha, String lugar) {
        super(fecha, lugar);
        this.equipo1 = new Tenista[2];
        this.equipo2 = new Tenista[2];
        this.equipo1[0] = t1;
        this.equipo1[1] = t2;
        this.equipo2[0] = t3;
        this.equipo2[1] = t4;
    }
    
    
    
    @Override
    public void otorgarPremios(double premio) {
        if (this.haFinalizado()) {
            double premio_jug;
            if (this.getResultado()[0] == 3) {
                premio_jug = (double) premio * equipo1[0].getGanados() / (equipo1[0].getGanados() + equipo1[1].getGanados());
                // se puede simplificar el cod.
                equipo1[0].recibirPremio(premio_jug);
                premio_jug = (double) premio * equipo1[1].getGanados() / (equipo1[0].getGanados() + equipo1[1].getGanados());

                equipo1[1].recibirPremio(premio_jug);
            }
            else {
                premio_jug = (double) premio * equipo2[0].getGanados() / (equipo2[0].getGanados() + equipo2[1].getGanados());

                equipo2[0].recibirPremio(premio_jug);
                premio_jug = (double) premio * equipo2[1].getGanados() / (equipo2[0].getGanados() + equipo2[1].getGanados());
                equipo2[1].recibirPremio(premio_jug);            }
        
        }
        
    }
    
    
}
