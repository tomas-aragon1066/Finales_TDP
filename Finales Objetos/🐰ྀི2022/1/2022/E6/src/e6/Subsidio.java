
package e6;


public abstract class Subsidio {
    private String nombre_investigador;
    
    private String nombre_plan;
    
    private String fecha_sol;

    public Subsidio(String nombre_investigador, String nombre_plan, String fecha_sol) {
        this.nombre_investigador = nombre_investigador;
        this.nombre_plan = nombre_plan;
        this.fecha_sol = fecha_sol;
    }
    public abstract double montoTotal();
    
    @Override
    public String toString() {
        String str = "";
        str += "Nombre del investigador: " + nombre_investigador;
        str += ", Plan de trabajo: " + nombre_plan;
        str += ", Fecha de solicitud: " + fecha_sol;
        str += ", Monto total " + this.montoTotal() + "\n";
        
        return str;
    }
    
    
}
