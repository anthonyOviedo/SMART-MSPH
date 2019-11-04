/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domRestful.api;

import Smart_msph.logic.Model;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author anton
 */
@Path("formManagment")
public class FormManagmentResourse {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of FormManagment
     */
    public FormManagmentResourse() {
    }

    @POST
    @Produces({MediaType.TEXT_HTML})
    public void addForm(String campos) throws Exception {
        String [] arrayCampos = campos.split(",");
        Model.instance().addForm(arrayCampos);
    }
    
}
