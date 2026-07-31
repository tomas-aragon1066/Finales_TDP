
package e4;

public abstract class Partido {
    private String fecha;
    private String lugar;
    private int[] resultado;

    public Partido(String fecha, String lugar) {
        this.fecha = fecha;
        this.lugar = lugar;
        this.resultado =  new int[2];
        this.resultado[0] = 0;
        this.resultado[1] = 0;

    }
    
    public int[] getResultado(){
        return this.resultado;
    }
    
    public void actualizarResultado(int n1, int n2){
       if (n1 > n2) {
           this.resultado[0]++; 
       } else {
           this.resultado[1]++;

       }
    }
    
    public boolean haFinalizado(){
        return ((this.resultado[0] == 3) || (this.resultado[1] == 3));
    
    }
    
    public abstract void otorgarPremios(double premio);
    
    
    
}
