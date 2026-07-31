/*

**14/03/2023**

De los **tenistas** se desea conocer su nombre, cantidad de partidos ganados y los premios (en pesos) obtenidos en toda su carrera. De los **partidos** interesa conocer la fecha (un *string*), el lugar del partido y el resultado del mismo (solo interesa contabilizar la cantidad de sets ganados *por lado*). Además, interesa poder representar **partidos singles** (dos tenistas, uno contra otro) y **partidos de dobles** (cuatro tenistas, dos juegan contra otros dos).

2. Declare las clases, constructores, atributos y métodos que considere necesario sabiendo que:
*   Un **tenista** debería instanciarse con todos sus datos.
*   Un **partido** debería instanciarse con su fecha, lugar y todos sus participantes (dos tenistas en el caso de singles, cuatro en el caso de dobles). Inicialmente el partido tiene el resultado 0 a 0.
*   Durante el desarrollo del partido interesa ir almacenando el resultado parcial del mismo. Para eso es necesario un método que permita registrar el resultado de cada set finalizado. Este método debe recibir como parámetro los juegos (*games*) obtenidos por lado (dos números) y actualizar el resultado del partido como corresponda. Por ejemplo: recibiendo 6 y 4, debería sumar un set ganado más para el primer lado. Asuma que no hay empate.
*   Un partido debería saber si finalizó o no. El partido finaliza cuando el/los tenista/s de un lado consigue/n ganar tres sets. Para esto, es necesario un método que devuelva un booleano indicando si el partido finalizó o no.
*   Al finalizar un partido, se otorgan los premios al lado ganador. Para esto, implemente un método que reciba el premio en pesos y actualice el atributo *partidos ganados* y *premios* obtenidos de los tenistas que corresponda. Asuma que el partido está finalizado. Tenga en cuenta que:
    *   En el caso de singles, todo el premio se lo lleva el jugador ganador. En el caso de dobles, el premio se reparte entre los tenistas del lado ganador. La repartición se lleva a cabo de manera proporcional al historial de partidos ganados de cada jugador:

`premio_jugador = premio_partido * (partidos_ganados_jugador / (partidos_ganados_jugador + partidos_ganados_compañero))`

2) Implemente una función main que instancie un partido de singles y uno de dobles. Registre resultados de sets a ambos partidos hasta que finalicen. Finalmente, otorgue el premio de $ 100.000 al partido de singles y de $ 500.000 al de dobles.

 */
package e4;


public class E4 {

    public static void main(String[] args) {

        PartidoSingles ps = new PartidoSingles(new Tenista("Jorge", 10, 1000), new Tenista("Raúl", 3, 200.3), "11/11/2011", "Algun lugar");
        
        PartidoDeDobles pd = new PartidoDeDobles(new Tenista("Jorge", 10, 1000), new Tenista("Raúl", 3, 200.3),
                                                  new Tenista("Jorge", 10, 1000), new Tenista("Jorge", 10, 1000),
                                                  "12/12/2012", "Otro lugar");
        ps.actualizarResultado(2, 3);
        ps.actualizarResultado(2, 3);
        ps.actualizarResultado(2, 3);

        pd.actualizarResultado(1, 2);
        pd.actualizarResultado(0, 1);
        pd.actualizarResultado(0, 1);

        ps.otorgarPremios(100000);
        pd.otorgarPremios(500000);
        

    }
    
}
