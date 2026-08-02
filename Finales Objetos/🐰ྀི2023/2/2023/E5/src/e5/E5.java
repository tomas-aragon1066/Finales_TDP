/*

Aquí tienes la transcripción completa del texto extraído de la imagen, respetando el formato original:

---

**Final Taller de programación – Práctico – Módulo POO**
**7/09/2023**

El servicio meteorológico nacional necesita un sistema para sus estaciones que permita registrar la temperatura promedio mensual durante los últimos N años. Además, según la estación, necesita dos versiones del sistema que permita o bien reportar el promedio histórico por años, o bien reportar el promedio histórico por meses. Esto se detalla más adelante.

Todas las estaciones se caracterizan por un nombre y las coordenadas latitud y longitud donde se encuentra.

Implemente las clases, constructores y métodos que considere necesario para realizar lo siguiente:

a) Crear el sistema de registro/informes que permita almacenar la temperatura promedio de cada mes del año en los últimos N años.

b) Registrar (almacenar) una temperatura de un mes y año recibidos por parámetro.

c) Devolver la temperatura de un determinado mes y año recibidos por parámetro.

d) Devolver un String que concatena el mes y año en que se registró la mayor temperatura. **Nota:** Suponga que ya estarán registradas las temperaturas de todos los meses y años.

e) Devolver un string con el nombre de la estación, sus coordenadas y los promedios históricos anuales o mensuales según corresponda:
   a. La versión del sistema que reporta por años deberá calcular el promedio para cada año (el promedio del año A se calcula usando los datos mensuales de ese año).
   Ej: "La Plata (34,921 S - 57,955 O): Año 2020: 23,8 °C; Año 2021: 26,1 °C; Año 2022: 25,3 °C."
   b. La versión del sistema que reporta por meses deberá calcular el promedio para cada mes (el promedio del mes M se calcula usando los datos de ese mes de todos los años).
   Ej: "La Plata (34,921 S - 57,955 O): Enero: 28,2 °C; Febrero: 26,8 °C; Marzo: 24,3 °C....."

**Nota:** Suponga que ya estarán registradas las temperaturas de todos los meses y años.

f) Realice un programa principal que cree un Sistema con informe anual para los últimos 3 años. Cargue todas las temperaturas (para todos los meses y años). Informe los promedios anuales, y el mes y año en que se registró la mayor temperatura.
Luego cree un Sistema con informe mensual para los últimos 4 años. Cargue todas las temperaturas (para todos los meses y años). Informe los promedios mensuales, y el mes y año en que se registró la mayor temperatura.
 */
package e5;


public class E5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        SistemaAnual sa = new SistemaAnual("La Plata", 111.2, 222.3, 3);
        
        sa.registrarTemperatura(1, 1, 1);
        sa.registrarTemperatura(4, 1, 1);
        sa.registrarTemperatura(2, 1, 1);
        sa.registrarTemperatura(3, 1, 1);
        sa.registrarTemperatura(5, 1, 1);
        sa.registrarTemperatura(6, 1, 1);
        sa.registrarTemperatura(7, 1, 1);
        sa.registrarTemperatura(8, 1, 1);
        sa.registrarTemperatura(9, 1, 1);
        sa.registrarTemperatura(10, 1, 1);
        sa.registrarTemperatura(11, 1, 1);
        sa.registrarTemperatura(12, 1, 1);
        
        sa.registrarTemperatura(1, 2, 1);
        sa.registrarTemperatura(4, 2, 1);
        sa.registrarTemperatura(2, 2, 1);
        sa.registrarTemperatura(3, 2, 1);
        sa.registrarTemperatura(5, 2, 1);
        sa.registrarTemperatura(6, 2, 1);
        sa.registrarTemperatura(7, 2, 1);
        sa.registrarTemperatura(8, 2, 1);
        sa.registrarTemperatura(9, 2, 1);
        sa.registrarTemperatura(10, 2, 1);
        sa.registrarTemperatura(11, 2, 1);
        sa.registrarTemperatura(12, 2, 1);

sa.registrarTemperatura(1, 3, 1);
        sa.registrarTemperatura(4, 3, 1);
        sa.registrarTemperatura(2, 3, 1);
        sa.registrarTemperatura(3, 3, 1);
        sa.registrarTemperatura(5, 3, 1);
        sa.registrarTemperatura(6, 3, 1);
        sa.registrarTemperatura(7, 3, 1);
        sa.registrarTemperatura(8, 3, 1);
        sa.registrarTemperatura(9, 3, 1);
        sa.registrarTemperatura(10, 3, 1);
        sa.registrarTemperatura(11, 3, 1);
        sa.registrarTemperatura(12, 3, 1);

        
        System.out.println(sa.informe());
        System.out.println(sa.maximaTemperatura());
    
        SistemaMensual sm = new SistemaMensual("Bariloche", 4444.5, 5555.6, 4);
        
                
        sm.registrarTemperatura(1, 1, 1);
        sm.registrarTemperatura(4, 1, 1);
        sm.registrarTemperatura(2, 1, 1);
        sm.registrarTemperatura(3, 1, 1);
        sm.registrarTemperatura(5, 1, 1);
        sm.registrarTemperatura(6, 1, 1);
        sm.registrarTemperatura(7, 1, 1);
        sm.registrarTemperatura(8, 1, 1);
        sm.registrarTemperatura(9, 1, 1);
        sm.registrarTemperatura(10, 1, 1);
        sm.registrarTemperatura(11, 1, 10);
        sm.registrarTemperatura(12, 1, 1);
        
        sm.registrarTemperatura(1, 2, 1);
        sm.registrarTemperatura(4, 2, 1);
        sm.registrarTemperatura(2, 2, 1);
        sm.registrarTemperatura(3, 2, 11);
        sm.registrarTemperatura(5, 2, 1);
        sm.registrarTemperatura(6, 2, 1);
        sm.registrarTemperatura(7, 2, 1);
        sm.registrarTemperatura(8, 2, 1);
        sm.registrarTemperatura(9, 2, 1);
        sm.registrarTemperatura(10, 2, 1);
        sm.registrarTemperatura(11, 2, 1);
        sm.registrarTemperatura(12, 2, 1);

        sm.registrarTemperatura(1, 3, 1);
        sm.registrarTemperatura(4, 3, 1);
        sm.registrarTemperatura(2, 3, 1);
        sm.registrarTemperatura(3, 3, 1);
        sm.registrarTemperatura(5, 3, 1);
        sm.registrarTemperatura(6, 3, 1);
        sm.registrarTemperatura(7, 3, 1);
        sm.registrarTemperatura(8, 3, 1);
        sm.registrarTemperatura(9, 3, 1);
        sm.registrarTemperatura(10, 3, 1);
        sm.registrarTemperatura(11, 3, 1);
        sm.registrarTemperatura(12, 3, 13);
        
        
        sm.registrarTemperatura(1, 4, 1);
        sm.registrarTemperatura(4, 4, 1);
        sm.registrarTemperatura(2, 4, 1);
        sm.registrarTemperatura(3, 4, 1);
        sm.registrarTemperatura(5, 4, 1);
        sm.registrarTemperatura(6, 4, 1);
        sm.registrarTemperatura(7, 4, 1);
        sm.registrarTemperatura(8, 4, 1);
        sm.registrarTemperatura(9, 4, 1);
        sm.registrarTemperatura(10, 4, 3);
        sm.registrarTemperatura(11, 4, 1);
        sm.registrarTemperatura(12, 4, 1);
        System.out.println(sm.informe());
        System.out.println(sm.maximaTemperatura());
    }
    
}
