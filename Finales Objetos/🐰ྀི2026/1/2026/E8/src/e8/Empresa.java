
package e8;

public class Empresa {
    
    private String nombre;
    private String direccion;
    
    private Oficina[][] oficinas;
    
    private final int n_pisos = 3;
    private final int n_oficinas = 10;
    
    public Empresa(String nombre, String direccion){
        this.nombre = nombre;
        this.direccion = direccion;
        this.oficinas = new Oficina[n_pisos][n_oficinas];

        for (int i = 0; i < n_pisos; i++) {
            for (int j = 0; j < n_oficinas; j++)
                this.oficinas[i][j] = new Oficina();
        }
    }
    
    public boolean realizarAlquiler(Persona inquilino, double monto, int n_piso, int n_oficina){
        boolean esPosible = false;
        
        if (n_piso >= 1 && n_piso <= n_pisos && n_oficina >= 1 && n_oficina <= n_oficinas) {
            boolean alquilada = this.oficinas[n_piso - 1][n_oficina -1].esAlquilada();
            if (!alquilada) {
                this.oficinas[n_piso - 1][n_oficina -1].alquilar(inquilino, monto);
                esPosible = true;
            }
            
        
        }
        return esPosible;
    }
    
    
    public boolean liberarOficina(String dni, boolean dejarAmueblada){
        boolean encontrado = false;
        
        int i = 0;
        int j = 0;
        
        while (!encontrado && i < n_pisos) {
            while (!encontrado && j < n_oficinas) {
                Oficina oficina  = this.oficinas[i][j];
                Persona inquilino = oficina.getInquilino();
                if (oficina.esAlquilada() && inquilino.getDNI().equals(dni)) {
                    encontrado = true;
                    oficina.liberar(dejarAmueblada);
                
                }
                j++;
            
            }
            i++;
            j = 0;
        }
        
        return encontrado;
    }
    
    private void incrementarPiso(int n_piso, double porcentaje){
        if (n_piso >= 1 && n_piso <= n_pisos) {
            for (int i = 0; i < n_oficinas; i++) {
                Oficina oficina = this.oficinas[n_piso - 1][i];
                boolean alquilada = oficina.esAlquilada();
                if (alquilada)
                    oficina.incrementarPorcentaje(porcentaje);
            
            }
        
        }
        
    }
    
    public void incrementarAlquileres(){
        this.incrementarPiso(1, 0.05);
        this.incrementarPiso(2, 0.1);
        this.incrementarPiso(3, 0.15);
    
    }
    
    public int contarOficinas(int n_piso){
        int suma = 0;
        
        if (n_piso >= 1 && n_piso <= n_pisos) {
            for (int i = 0; i < n_oficinas; i++) {
                Oficina oficina = this.oficinas[n_piso - 1][i];
                boolean cumple = oficina.esAlquilada() && oficina.estaAmueblada();
                if (cumple)
                    suma++;
                
            
            }
        
        }
        
        
        return suma;
    
    }
    
    
    
    
}
