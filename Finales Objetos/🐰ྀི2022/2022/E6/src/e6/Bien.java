
package e6;


public class Bien {
    
    private String desc;
    private int cantidad;
    private double pu;

    public Bien(String desc, int cantidad, double pu) {
        this.desc = desc;
        this.cantidad = cantidad;
        this.pu = pu;
    }
    
    public double totalBien(){
        return (double)(cantidad * pu);
    }
    
    public String getDesc(){
        return desc;
    }
    
}
