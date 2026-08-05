
package e7;


public class Artista {
    private String nombre_artistico;
    private String categoria;

    public Artista(String nombre_artistico, String categoria) {
        this.nombre_artistico = nombre_artistico;
        this.categoria = categoria;
    }
    
    public String getCat() {
        return this.categoria;
    
    }
}
