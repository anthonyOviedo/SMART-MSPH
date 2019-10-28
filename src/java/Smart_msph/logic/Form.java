/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Smart_msph.logic;

/**
 *
 * @author anton
 */
public class Form {
    private String id;
    private String htmlForm;
    private String name;
    
    public Form(){}
    
    public Form(String htmlForm, String name) {
        this.htmlForm = htmlForm;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public String getHtmlForm() {
        return htmlForm;
    }

    public String getName() {
        return name;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setHtmlForm(String htmlForm) {
        this.htmlForm = htmlForm;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
