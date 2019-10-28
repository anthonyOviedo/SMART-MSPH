/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domRestful.api;

import Smart_msph.logic.Model;
import Smart_msph.logic.News;
import java.util.List;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author leine
 */
@Path("news")
public class NewsResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of NewsResource
     */
    public NewsResource() {
    }

    /**
     * Retrieves representation of an instance of domRestful.api.NewsResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
      public List<News> list() { 
            List<News> ps= Model.instance().alNews();
        return ps;
    } 

    /**
     * PUT method for updating or creating an instance of NewsResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }

@DELETE
    @Path("{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public List<News> del(@PathParam("id") int id) {
        try {
            Model.instance().deleteNews(id);
            return Model.instance().alNews();
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
    }

    @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public News get(@PathParam("id") int id) {
        try {
            return Model.instance().getNews(id);
        } catch (Exception ex) {
            throw new NotFoundException(); 
        }
    }






}
