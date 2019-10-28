/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domRestful.api;

import Smart_msph.logic.Complain;
import Smart_msph.logic.Model;
import Smart_msph.logic.departamento;
import java.util.List;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author leine
 */
@Path("complain")
public class ComplainResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of ComplainResource
     */
    public ComplainResource() {
    }

    /**
     * Retrieves representation of an instance of domRestful.api.ComplainResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
      public List<departamento> list() { 
            List<departamento> ps= Model.instance().alldepartments();
        return ps;
        
        
    }


    /**
     * PUT method for updating or creating an instance of ComplainResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
    
    @POST
    @Produces({MediaType.APPLICATION_JSON})
    @Consumes(MediaType.APPLICATION_JSON)
    public void createComplain(Complain complain) throws Exception {
    
        departamento d = new departamento(1,"Recursos Humanos" ,111);
        
        Complain newcomplain = new Complain();
        newcomplain.setDescription(complain.getDescription());
        newcomplain.setState("Enviada");
        newcomplain.setEmployee(complain.getEmployee());
        newcomplain.setEmployeeDepartment(complain.getEmployeeDepartment());
        newcomplain.setDepartmentId(d);
        newcomplain.setCitizen_id(complain.getCitizen_id());
       
        Model.instance().insertComplain(newcomplain);
         
    }
    
    
    
    
    
    
    
}
