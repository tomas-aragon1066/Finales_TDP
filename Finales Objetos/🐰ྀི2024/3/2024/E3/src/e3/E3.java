/*
Aquí tienes la transcripción completa del texto extraído de la imagen, respetando el formato y los ítems del examen:

---

**Final Taller de programación – Práctico – Módulo POO**
**05/09/2024**

Un banco necesita representar las cuentas de los clientes, en formato caja de ahorro y cuenta corriente. Estos dos servicios se destacan por tener un número de cuenta, el DNI del cliente propietario del servicio, el saldo (dinero que posee la cuenta), y el estado de la cuenta (*activo* o *cancelada*). Además una caja de ahorro, opcionalmente, puede tener asociada una tarjeta de crédito; mientras que la cuenta corriente posee un *acuerdo*, esto es, la cantidad de saldo negativo que se le permite tener a la cuenta.

Además, cualquier cuenta debe recordar, como máximo, los últimos 20 movimientos realizados (extracciones y depósitos).

1) Modele el problema generando las clases que considere necesarias, cada una con los constructores, estado, getters y setter que considere necesarios. Sabiendo que toda cuenta debe poder crearse con el número de cuenta y el DNI del cliente. La caja de ahorro además se crea sabiendo si tiene una tarjeta de crédito asociada; mientras que la cuenta corriente se crea también conociendo el *acuerdo*. Toda cuenta recién creada tiene saldo 0 y un estado de *activa*.

2) Implemente en las clases realizadas los métodos necesarios para incorporar la siguiente funcionalidad:
a) `void depositar(double unMonto)`
   // Deposita la cantidad de dinero recibido por parámetro en la cuenta, actualizando el saldo y el historial de los últimos movimientos.
b) `boolean esPosibleExtraer(double unMonto)`
   // Devuelve true si el saldo de la caja de ahorro es mayor a unMonto o false en caso contrario. En el caso de las cuentas corriente, devuelve true si (saldo + acuerdo) es mayor a unMonto, false en caso contrario.
c) `boolean extraer(double unMonto)`
   // Extrae la cantidad de dinero recibido por parámetro de la cuenta, actualizando el saldo y el historial de los últimos movimientos. Esta operación debe hacerse sólo si es posible la extracción.
   // Devuelve true si se pudo completar la transacción o false en caso contrario.
d) `void cobrarMantenimiento()`
   // Cobra el mantenimiento de la cuenta descontando del saldo el valor del mantenimiento.
   // En el caso de las cajas de ahorro el mantenimiento se calcula como: base + (1 / (saldo+1)). Donde base es un valor que vale 1000 si la cuenta no posee tarjeta de crédito asociada, o 2000 si la posee.
   // En el caso de las cuentas corrientes el mantenimiento se calcula como: 50 * acuerdo.
   // Esta operación debe hacerse sólo si es posible el débito del mantenimiento. En caso contrario el estado de la cuenta pasa a *cancelada*.
e) `String resumen()`
   // Devuelve un string con toda la información de la cuenta: número de cuenta, DNI del cliente, últimos movimientos, estado y saldo disponible. Además, en el caso de las cajas de ahorro, si tiene o no tarjeta de crédito asociada; y en el caso de las cuentas corrientes el *acuerdo*.

3) Implemente una función main que instancie una caja de ahorro y una cuenta corriente. Haga un depósito en cada una de ellas y luego una extracción. Finalmente imprima el resumen de ambas cuentas.
 */
package e3;

public class E3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        CajaDeAhorro ca = new CajaDeAhorro(1,"11111", true);
        
        CuentaCorriente cc = new CuentaCorriente(2, "222222", 10002.5);
        
        ca.depositar(1000);
        ca.depositar(2000);
        cc.depositar(3000);
        cc.depositar(4000);
        
        cc.extraer(1000);
        cc.extraer(100);
        ca.extraer(1000);
        ca.extraer(300);
        System.out.println(cc.resumen());
        System.out.println(ca.resumen());


    }
    
}
