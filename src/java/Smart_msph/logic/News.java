/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Smart_msph.logic;

/**
 *
 * @author leine
 */
public class News {
 
    private String Imagen;
    private String Descripcion;
    private int id;
    public News() {
    }
    
    

    public News(String Imagen, String Descripcion,int id) {
        this.Imagen = Imagen;
        this.Descripcion = Descripcion;
        this.id = id;
        }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    
    
}
