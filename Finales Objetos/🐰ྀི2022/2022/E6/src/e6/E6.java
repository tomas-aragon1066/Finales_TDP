/*
 Aquí tienes la transcripción completa y formateada del texto extraído de la imagen:

---

**Apellido y Nombre**  
_- Taller de Programación. Septiembre 2022_  
**Nro. Maquina:** 26

> **Módulo Objetos.** Cree un proyecto (File->New Project-> Categoría: Java Projects: Java Application) usando su Apellido como nombre del proyecto. Resuelva en Java.

La UNLP desea representar los diferentes subsidios (de estadías y de bienes) pedidos por sus investigadores.  
De todo subsidio se conoce: el nombre del investigador, el nombre de su plan de trabajo y la fecha de solicitud. Además:

*   De los **subsidios de estadía** se conoce el lugar de destino, el costo en pasajes, la cantidad de días de estadía y el monto de hotel por día.
*   De los **subsidios de bienes** se guardan todos los bienes solicitados (como máximo *N*). De cada bien se conoce: descripción, cantidad y costo por unidad.

1.  Genere las clases. Implemente constructores para iniciar los diferentes subsidios a partir de toda la información necesaria; tenga en cuenta que los subsidios de bienes deben iniciar sin bienes y deben permitir guardar un máximo de *N* bienes.

2.  Implemente todos los métodos necesarios, en las clases que corresponda, para:
    a) agregar un bien a un subsidio de bienes.
    b) devolver el monto total del subsidio, teniendo en cuenta las fórmulas:
        `Monto_total_subsidio_estadía = costo_pasajes + cantidad_días_estadía * monto_hotel_por_día`
        `Monto_total_subsidio_bienes = Σ costo_final_bien_i  donde`
        `costo_final_bien_i = cantidad_bien_i * costo_por_unidad_bien_i`
    c) devolver un String que represente el subsidio, siguiendo los ejemplos:
        *   **Subsidio estadía:** "Nombre del investigador: ... Plan de trabajo: ... Fecha de solicitud: .... Monto total: ....
            Lugar de destino: .... Días de estadía: ..."
        *   **Subsidio bienes:** "Nombre del investigador: ... Plan de trabajo: ... Fecha de solicitud: .... Monto total: ...
            Descripción de los bienes solicitados: descripción bien 1, descripción bien 2 ...."

3.  Escriba un programa que instancie un subsidio de estadía y un subsidio de bienes, establezca todos los datos necesarios para cada uno de ellos y muestre por consola la representación String de cada uno.

 */
package e6;


public class E6 {

    public static void main(String[] args) {
        
        //     public SubsidioDeBienes(int N, String nombre_investigador, String nombre_plan, String fecha_sol) {

        SubsidioDeBienes sb = new SubsidioDeBienes(10, "Alfredo Jimenez", "Extension en informatica", "11/11/2011");
        // SubsidioDeEstadia(String lugar_destino, double costo_pasajes, int dias_estadia, double monto_diario_hot, String nombre_investigador, String nombre_plan, String fecha_sol) {
        
        SubsidioDeEstadia se  = new SubsidioDeEstadia("Chascomus", 200.5, 10, 125.4, "Juan jimenez", "Extension computacion cuantica", "12/12/2012");
        sb.agregarBien(new Bien("ABC", 12, 200));
        sb.agregarBien(new Bien("Compu cuantica", 12, 1.05));
        
        System.out.println(sb);
        System.out.println(se);

    }
    
}
