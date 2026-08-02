/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ta
 */
    

/**
 *
 * @author ta
 */

    /**
     * @param args the command line arguments
     */
   

public class Agencia {
    private int DP = 20;
    private int DF1 = 0;
    
    private int DA = 100;
    private int DF2 = 0;
    
    private Partido[] partidos;
    private Apuesta[] apuestas;
    
    public Agencia(){
        this.apuestas = new Apuesta[DA];
        this.partidos = new Partido[DP];
    }
    
    
    public int agregarPartido(Partido p){
        if (DF1 < DP) {
            partidos[DF1++] = p;
            return DF1;

        }
        return -1;
    }
    
    
    public boolean agregarApuesta(Apuesta a){
        if (DF2 < DA) {
            apuestas[DF2++] = a;
            return true;
        }
        return false;
    }
    
    
    public boolean ingresarResultadoPartido(int id, String resultado){
        if ((id >= 1) && (id <= DF1)) {
            partidos[id - 1].setResultado(resultado);
            return true;
        }
        return false;
    }
    
    
    public void cerrarApuestas(int id){
        if ((id >= 1) && (id <= DF1)) {
        Partido p = partidos[id - 1];
        String resultado  =  p.getResultado();
        
        for (int i = 0; i < DF2; i++) {
            if (apuestas[i].getApuesta().equals(resultado) && apuestas[i].getID() == id) {
                Apuesta apuesta = apuestas[i];
                System.out.println(apuesta.getPersona().toString());
                System.out.println("Monto ganado " + (apuesta.getMonto()*p.getFactor(apuesta.getApuesta())));
            }
        }
        }
    }
    
    public void limpiarSistema(){
        for (int i = 0; i < DF1; i++) {
            partidos[i].limpiar();
        }
        DF1 = 0;

        
        for (int i = 0; i < DF2; i++) {
            apuestas[i].limpiar();
        
        }
        DF2 = 0;
    }
    
    
}

public class Apuesta {
    
    private Persona cliente;
    private int id;
    
    private String apuesta;
    private double montoApostado;
    
    public Apuesta(Persona cliente, int id, String apuesta, double montoApostado){
        this.cliente = cliente;
        this.apuesta = apuesta;
        this.id = id;
        this.montoApostado = montoApostado;
    }
    
    public void limpiar() {
        this.apuesta = null;
        this.cliente = null;
        this.id = -1;
        this.montoApostado = -1;
    }
    
    
    public String getApuesta(){
        return this.apuesta;
    }
    
    public Persona getPersona(){
        return this.cliente;
    }
    
    public double getMonto(){
    
        return this.montoApostado;
    }
    
    public int getID(){
        return this.id;
    }
    
}

public class Partido {
    private String local;
    private String visitante;
    
    
    private String resultado = "";
    private double[] facPago;
    
    public Partido(String local, String visitante, double f1, double f2, double f3){
        this.local = local;
        this.visitante = visitante;
        this.facPago = new double[3];
        this.facPago[0] = f1;
        this.facPago[1] = f2;
        this.facPago[2] = f3;
        
    
    }
    
    public void limpiar(){
        this.local = null;
        this.visitante = null;
        this.resultado = null;
        this.facPago = null;
    }
    
    public void setResultado(String resultado){
        this.resultado = resultado;
    }
    
    public String getResultado() {
        return this.resultado;
    }
    
    
    public double getFactor(String apuesta){
        
        double factor = 0;
        if (apuesta.equals("victoria local")) {
            factor = facPago[0];
        } else if (apuesta.equals("empate")) {
            factor =  facPago[1];
        } else if (apuesta.equals("victoria visitante")) {
            factor = facPago[2];
        } 
        return factor;
    }
    
}
public class Persona {
    private String nombre;
    private String dni;
    
    public Persona(String nombre, String dni){
        this.nombre = nombre;
        this.dni = dni;
    }
    
    @Override
    public String toString() {
        return "DNI " + this.dni + ", nombre " + this.nombre;
    
    }
    
}
public class E2 {
    public static void main(String[] args) {
        
    }
}
/*
 Aquí tienes la transcripción completa del texto extraído de la imagen:

---

**Taller de programación – Módulo POO - Final**
**22/04/2025**

Una agencia de apuestas de partidos de fútbol desea un sistema para manejar las apuestas que realizan sus clientes, los partidos que usa para las apuestas y todo lo necesario para pagar a los clientes ganadores.

Se desea conocer la siguiente información. **De los partidos:** el nombre del equipo local, el nombre del equipo visitante, el resultado (un *string* con "victoria local", "empate" o "victoria visitante" – inicialmente en "") y tres factores de pago (es decir, tres valores *double* que son el factor de pago para *victoria local*, el factor de pago para *empate* y el factor de pago para *victoria visitante*, respectivamente). **De las apuestas:** el nombre y DNI del cliente, ID único de partido, la apuesta en sí (un *string* con "victoria local", "empate" o "victoria visitante") y monto apostado.

La agencia maneja hasta 20 partidos de fútbol y hasta 100 apuestas.

Implemente las clases del sistema con sus constructores y métodos para:

- Agregar un nuevo partido y retornar su ID único en el sistema. El ID es un nro. entre 1 y 20.
- Agregar una apuesta.
- Dado el ID de un partido, ingresarle un resultado (String) a dicho partido. El ID es un nro. entre 1 y 20.
- Cerrar apuestas, esto es: para cada apuesta *acertada* para el partido en cuestión, debe informar: nombre, DNI y dinero ganado.
  Ejemplo: si un cliente apostó "empate" para el partido con ID 3, y el resultado de ese partido fue "empate", la apuesta es acertada, por lo que debe informar lo pedido. El dinero ganado en ese caso será:
  `monto_apostado_por_cliente * factor_de_pago_por_empate`
  **NOTA:** Asuma que se ingresaron todos los resultados para todos los partidos cargados.
- Limpiar el sistema de apuestas, es decir borra los partidos y apuestas del sistema para el comienzo de una nueva fecha del campeonato.

Realice un programa para probar el correcto funcionamiento del sistema.
 */
    



