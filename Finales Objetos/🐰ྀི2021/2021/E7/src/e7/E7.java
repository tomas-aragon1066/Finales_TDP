/*
 
Aquí tienes la transcripción completa del texto extraído de la imagen:

---

**2da Mesa Febrero 2021** 

Cree un proyecto en Netbeans (File → New Project → Categories: Java - Projects: Java Application → Project Name: ApellidoNombre – Location: elegir escritorio → Finish ) y resuelva. 

Entrega: comprima el desarrollo en .zip (no debe incluir ningún archivo .jar) 

1- Una galería de arte quiere reunir información de sus artistas en un catálogo. El catálogo almacena a lo sumo 15 artistas. De los artistas se registra el nombre artístico y la categoría. 

a) Genere las clases necesarias. Provea constructores para iniciar: el catálogo (sin artistas); los artistas a partir de toda su información. 

b) Implemente los métodos necesarios, en las clases que correspondan, para permitir: 

- Agregar un artista al catálogo. Asuma que hay espacio. 

- Devolver la cantidad de artistas cuya categoría coincide con una recibida. 

2- Implemente un programa que instancie un catálogo y agreguele dos artistas. A partir del catálogo: obtenga y muestre la cantidad de artistas de la categoría “pintura”.


 */
package e7;

public class E7 {

    public static void main(String[] args) {
        Catalogo cat  = new Catalogo();
        
        
        cat.agregarArtista(new Artista("Fernandez", "pintura"));
        cat.agregarArtista(new Artista("Matadita", "escultura"));
        System.out.println(cat.cantidadCategoria("pintura"));
        

    }
    
}
