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
            
            if (this.getResultado()[0] == 3) {
                double jug_1 = equipo1[0].getGanados();
                double jug_2 = equipo1[1].getGanados();
                double total_ganados = jug_1 + jug_2;
                
                double premio_equipo = premio / total_ganados;
                
                equipo1[0].recibirPremio(premio_equipo * jug_1);
                
                equipo1[1].recibirPremio(premio_equipo  * jug_2);
            }
            else {
                double jug_1 = equipo2[0].getGanados();
                double jug_2 = equipo2[1].getGanados();
                double total_ganados = jug_1 + jug_2 ;
                
                double premio_equipo = premio / total_ganados;
                
                equipo2[0].recibirPremio(premio_equipo * jug_1);
                
                equipo2[1].recibirPremio(premio_equipo  * jug_2); }
        
        }
        
    }
    
    
}
