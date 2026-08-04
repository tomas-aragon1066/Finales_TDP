
package e6;

public class SubsidioDeBienes extends Subsidio {
    private int N;
    private int DL;
    private Bien[] bienes;

    public SubsidioDeBienes(int N, String nombre_investigador, String nombre_plan, String fecha_sol) {
        super(nombre_investigador, nombre_plan, fecha_sol);
        this.N = N;
        this.DL = 0;
        this.bienes = new Bien[N];
    }
    
    public boolean agregarBien(Bien b){
        boolean esPosible = false;
        if (DL < N) {
            this.bienes[DL++] = b;
            esPosible = true;
        }
        return esPosible;
    }
    
    @Override
    public double montoTotal() {
        double suma = 0;
        for (int i = 0; i < DL; i++)
        {
            suma += this.bienes[i].totalBien();
        }
        
        return suma;
    }
    
    @Override
    public String toString(){
        String str = "";
        
        str += "Subsidio bienes: " + super.toString() + "\nDescripcion de los bienes solicitados: ";
        for (int i = 0; i < DL; i++) {
            str += this.bienes[i].getDesc() + ", ";
        }
        
        return str;
    
    }
    
    
    
}
