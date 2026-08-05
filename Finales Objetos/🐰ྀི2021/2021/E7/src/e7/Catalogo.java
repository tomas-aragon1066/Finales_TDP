
package e7;


public class Catalogo {
    
    private Artista[] catalogo;
    private final int DF = 15;
    
    private int DL;

    public Catalogo() {
        
        this.DL = 0;
        this.catalogo = new Artista[DF];
    }
    
    public boolean agregarArtista(Artista a){
        boolean esPosible = false;
        if (DL < DF)
        {
            esPosible = true;
            this.catalogo[DL++] = a;
        }
        return esPosible;
    }
    
    public int cantidadCategoria(String cat) {
        int suma = 0;
        for (int i = 0; i < DL; i++)
        {
            String cat_i = this.catalogo[i].getCat();
            suma += (cat_i.equals(cat))? 1: 0;
        }
        
        
        return suma;
    }
    
}
