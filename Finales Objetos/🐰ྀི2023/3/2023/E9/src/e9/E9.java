/*
 Aquí tienes la transcripción completa del texto extraído de la imagen:

---

**Taller de programación – Final**
**12/12/2023**
**Módulo Programación Orientada a Objetos**

Una agencia de apuestas de partidos de fútbol desea un sistema para manejar las apuestas que realizan sus clientes, los partidos que usa para las apuestas y todo lo necesario para pagar a los clientes ganadores.

Se desea conocer la siguiente información. **De los partidos:** el nombre del local, el nombre del visitante, resultado (String con “victoria local”, “empate” o “victoria visitante” – inicialmente en “”) y 3 factores de pago (es decir, 3 valores double que son el factor de pago para *victoria local*, el factor de pago para *empate* y el factor de pago para *victoria visitante*, respectivamente). **De las apuestas:** el nombre y DNI del cliente, ID único de partido, la apuesta en sí (String con “victoria local”, “empate” o “victoria visitante”) y monto apostado.

La agencia maneja hasta 20 partidos de fútbol y hasta 100 apuestas.

Implemente las clases del sistema con sus constructores y métodos para:

- Agregar un nuevo partido y retornar su ID único en el sistema. El ID es un nro. entre 1 y 20.
- Agregar una apuesta.
- Dado el ID de un partido, ingresarle un resultado (String) a dicho partido. El ID es un nro. entre 1 y 20.
- Cerrar apuestas, esto es: para cada apuesta acertada para el partido en cuestión, debe informar: nombre, DNI y dinero ganado.
  Ejemplo: si apostó “empate” para el partido con ID 3, y el resultado de ese partido fue “empate”, la apuesta es acertada, por lo que debe informar lo pedido. El dinero ganado en ese caso será: `monto_apostado * factor_de_pago_por_empate_del_partido`
  **NOTA:** Asuma que se ingresaron todos los resultados para todos los partidos cargados.
- Limpiar el sistema de apuestas, es decir borra los partidos y apuestas del sistema para el comienzo de una nueva fecha del campeonato.

Realice un programa para probar el correcto funcionamiento del sistema.
 */
package e9;


public class E9 {

    public static void main(String[] args) {
        Agencia a = new Agencia();
        
        a.agregarApuesta(new Apuesta("Un  nombre", "Un DNI", 1,"empate", 200.5));
        a.agregarApuesta(new Apuesta("Un  nombre", "Un DNI", 1,"empate", 200.5));
        a.agregarApuesta(new Apuesta("Un  nombre", "Un DNI", 1,"empate", 200.5));
        a.agregarPartido(new Partido("River", "Boca", "victoria visitante", 200, 300, 400));
       
        a.agregarPartido(new Partido("River", "Boca", "empate", 200, 300, 400));
        a.agregarPartido(new Partido("River", "Boca", "victoria local", 200, 300, 400));
        a.cerrarApuestas();
        a.limpiarSistema();
    }
    
}
