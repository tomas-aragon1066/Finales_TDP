
package e6;


public class SubsidioDeEstadia extends Subsidio {
    private String lugar_destino;
    private double costo_pasajes;
    
    private int dias_estadia;
    private double monto_diario_hot;

    public SubsidioDeEstadia(String lugar_destino, double costo_pasajes, int dias_estadia, double monto_diario_hot, String nombre_investigador, String nombre_plan, String fecha_sol) {
        super(nombre_investigador, nombre_plan, fecha_sol);
        this.lugar_destino = lugar_destino;
        this.costo_pasajes = costo_pasajes;
        this.dias_estadia = dias_estadia;
        this.monto_diario_hot = monto_diario_hot;
    }
    
    @Override
    public double montoTotal(){
        return (double) (costo_pasajes + monto_diario_hot * dias_estadia);
    }
    
    @Override
    public String toString(){
        String str = "";
        str += "Subsidio estadia: " + super.toString();
        str += "Lugar de destino: " + lugar_destino + ", dias de estadia: " + dias_estadia;
        
        return str;
    }
    
    
}
