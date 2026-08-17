
package e9;


public class Partido {
    private String local;
    private String visitante;
    private String resultado;
    private double[] factores;

    public Partido(String local, String visitante, String resultado, double f1, double f2, double f3) {
        this.local = local;
        this.visitante = visitante;
        this.resultado = resultado;
        this.factores = new double[3];
        this.factores[0] = f1;
        this.factores[1] = f2;
        this.factores[2] = f3;
    }

    public String getResultado() {
        return resultado;
    }

    public double getFactor(int i) {
        return factores[i];
    }
    
    public void setResultado(String resultado){
        this.resultado = resultado;
    }
    
    
    
}
