/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package e4;

/**
 Aquí tienes la transcripción completa del examen de la imagen:

---

**Final Taller de programación - Módulo POO**
**16/10/2025**

Una compañía de seguros necesita un sistema para manejar las pólizas de sus clientes. La compañía maneja 10 seguros de rubros diferentes (0: de auto, 1: de motos, 2: de casas, 3: de vida, ..., etc.) y en cada uno de ellos puede proveer hasta 200 pólizas. De cada póliza se conoce el monto asegurado, el valor de la cuota mensual, si está vigente y la fecha de comienzo y fin de la cobertura. Además una póliza corresponde a un cliente de quien se conoce DNI, nombre y apellido. Un mismo cliente puede tener más de una póliza, incluso en el mismo rubro.

1) Modele el problema generando las clases que considere necesarias, cada una con los constructores, estado, getters y setter que considere necesarios.

2) Implemente en las clases realizadas los métodos necesarios para incorporar la siguiente funcionalidad:
   a) `void agregarPoliza(Poliza unaPoliza, int unRubro)`
      // Ingresa una nueva póliza en el rubro recibido.
   b) `String infoCliente(int unDNI)`
      // Devuelve un string con toda la información de todas las pólizas del cliente cuyo DNI se recibe.
   c) `void aumentarCuotas(double unPorcentaje, int unRubro)`
      // Aumenta el valor de las cuotas de todas las pólizas vigentes de un rubro.
      // El nuevo valor de la cuota se calcula como valorActual * unPorcentaje.
   d) `int cantidadAVencer(int mes, int anio)`
      // Devuelve la cantidad de pólizas cuya fecha de finalización coincide con el mes // y año recibido.

3) Implemente una función main que simule el ingreso de cinco pólizas, imprima la información de un cliente cuyo DNI se lee por teclado, aumente el valor de las cuotas un 1.11 en el rubro seguro de vida (código 3) e imprima la cantidad de pólizas que se vencen en octubre de 2025.
 */
public class Aseguradora {
    
    private Poliza[][] polizas;
    private int[] DL;
    
    public Aseguradora(){
        this.polizas = new Poliza[10][200];
        this.DL = new int[10];
        for (int i = 0; i < 10; i++) {
            DL[i] = 0;
        }
    }
    
    
    public void agregarPoliza(Poliza unaPoliza, int unRubro){
        if (unRubro >= 0 && unRubro < 10) {
        
        if (DL[unRubro] < 200) {
            this.polizas[unRubro][DL[unRubro]] = unaPoliza;
            DL[unRubro] = DL[unRubro] + 1;
        }
        }
    }
    
    public String infoCliente(int unDNI) {
        String aux = "";
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < DL[i]; j++) {
                
                Poliza p = this.polizas[i][j];
                if (p.getCliente().getDNI() == unDNI) {
                    aux += p.getCliente().toString();
                }
            
            }
        }
        return aux;
    }
    
    public void aumentarCuotas(double unPorcentaje, int unRubro){
        if (unRubro >= 0 && unRubro < 10) {
            for (int i =0; i < DL[unRubro]; i++) {

                if (this.polizas[unRubro][i].esVigente()) {
                    double cuota = this.polizas[unRubro][i].getCuota()*unPorcentaje;
                    this.polizas[unRubro][i].setCuota(cuota);
                
                }
            }
        
        }
    
    }
    
    public int cantidadAVencer(int mes, int anio){
        int cant = 0;
        
        for (int i =0; i < 10; i++) {
        
            for (int j =0; j < DL[i]; j++) {
                Poliza p = this.polizas[i][j];
                if ((p.getFechaFin().getAnio() == anio) && (p.getFechaFin().getMes() == mes)) {
                    cant++;
                }
            }
        }
        
        
        return cant;
    
    }
    
}
