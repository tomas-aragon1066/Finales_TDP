
package e9;

public class Agencia {
    
    
    private Partido[] partidos;
    private Apuesta[] apuestas;
    
    private final int c_apuestas = 100;
    private final int c_partidos = 20;
    
    private int IDP = 0;
    private int IDA = 0;
    
    public Agencia(){
        this.partidos = new Partido[c_partidos];
        this.apuestas = new Apuesta[c_apuestas];
    }
    
    public int agregarPartido(Partido p){
        if (IDP < c_partidos) {
            this.partidos[IDP++] = p;
            return IDP;
            
        }
        return -1;
    }
    
    public boolean agregarApuesta(Apuesta a)  {
        if (IDA < c_apuestas) {
            this.apuestas[IDA++] = a;
            return true;
        }
        return false;
    }
    
    public boolean ingresarResultado(String resultado, int id){
        if (id >= 1 && id <= c_partidos) {
            this.partidos[id - 1].setResultado(resultado);
            return true;
            
        } 
        return false;
    }
    
    public void cerrarApuestas(){
        for (int i = 0; i < IDA; i++) {
            Apuesta apuesta = this.apuestas[i];
            int id_partido = apuesta.getID();
            String aposto = apuesta.getApuesta();
            Partido partido = this.partidos[id_partido - 1];
            
            if (partido.getResultado().equals(aposto)) {
                double factor = 0;
                if (aposto.equals("victoria local"))
                    factor = partido.getFactor(0);
                else if (aposto.equals("empate"))
                    factor = partido.getFactor(1);
                else if (aposto.equals("victoria visitante"))
                    factor = partido.getFactor(2);
                
                double montoApostado = apuesta.getMontoApostado();
                double dinero = factor * montoApostado;
                String dni = apuesta.getDNI();
                String nombre = apuesta.getNombre_cliente();
                System.out.println(nombre + ", " + dni + ", " + dinero);
                    
                
            }
        }
    
    }
    
    public void limpiarSistema(){
        this.apuestas = new Apuesta[c_apuestas];
        IDA = 0;
        this.partidos = new Partido[c_partidos];
        IDP = 0;
    
        
    }
    
}
