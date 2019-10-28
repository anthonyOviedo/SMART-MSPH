/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Smart_msph.data;

import Smart_msph.logic.Ciudadano;
import Smart_msph.logic.Complain;
import Smart_msph.logic.Form;
import Smart_msph.logic.Funcionario;
import Smart_msph.logic.News;
import Smart_msph.logic.Usuario;
import Smart_msph.logic.citizen_user;
import Smart_msph.logic.departamento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author leiner
 */
public class Dao {

    RelDatabase db;

    public Dao() {
        db = new RelDatabase();
    }

    // creacion de los objetos desde la base
    private departamento departamento(ResultSet rs) {
        try {
            departamento dep = new departamento();
            dep.setId(rs.getInt("id"));
            dep.setNombre(rs.getString("departmentname"));
            dep.setAdministrador(rs.getInt("administrator_id"));
            return dep;
        } catch (SQLException ex) {
            return null;
        }
    }

    private Funcionario funcionario(ResultSet rs) {
        try {
            System.out.println("aaa");
            Funcionario fun = new Funcionario();
            fun.setId(rs.getInt("id"));
            fun.setNombre(rs.getString("administratorname"));
            fun.setApellido(rs.getString("surname1"));
            fun.setApellido(rs.getString("surname2"));
            fun.setCorreo(rs.getString("e-mail"));
            fun.setTelefono(rs.getString("phoneNumber"));
            fun.setDepartamento(departamento(rs));
            return fun;

        } catch (SQLException ex) {
            return null;
        }
    }

    private Ciudadano ciudadano(ResultSet rs) {
        try {
            Ciudadano ciu = new Ciudadano();
            ciu.setId(rs.getInt("Id"));
            ciu.setNombre(rs.getString("citizenname"));
            ciu.setApellido(rs.getString("surname1"));
            ciu.setApellido(rs.getString("surname2"));
            ciu.setCorreo(rs.getString("e-mail"));
            ciu.setTelefono(rs.getString("phoneNumber"));

            return ciu;

        } catch (SQLException ex) {
            return null;
        }
    }

//     private Usuario citizen_user(ResultSet rs){
//         try {
//             Usuario us = new Usuario();
//             us.setId(rs.getInt("id"));
//             us.setNombreUsuario(rs.getString("username"));
//             us.setContrasenya(rs.getString("password"));
//             us.setContrasenya(rs.getString("'role'"));
//             us.setCiudadano(ciudadano(rs));            
//             return us;
//            } catch (SQLException ex) {
//         return null;
//         }    
//     }
    private citizen_user citizen_user(ResultSet rs) {
        try {
            citizen_user us = new citizen_user();
            us.setId(rs.getInt("id"));
            us.setUsername(rs.getString("username"));
            us.setPassword(rs.getString("password"));
            us.setRole(rs.getString("'role'"));
            us.setCitizen_id(ciudadano(rs));
            return us;
        } catch (SQLException ex) {
            return null;
        }
    }

    private Ciudadano citizen(ResultSet rs) {
        try {
            Ciudadano ciu = new Ciudadano();
            ciu.setId(rs.getInt("idcitizen"));
            ciu.setNombre(rs.getString("citizenname"));
            ciu.setApellido(rs.getString("surname1"));
            ciu.setApellido2(rs.getString("surname2"));
            ciu.setCorreo(rs.getString("mail"));
            ciu.setTelefono(rs.getString("phoneNumber"));

            return ciu;

        } catch (SQLException ex) {
            return null;
        }
    }

    // crear un ciudadano
    public void insertarCiudadano(Ciudadano c) throws Exception {
        String sql = "insert into citizen (id,citizenname,surname1,surname2,mail,phoneNumber)"
                + " values ('%d','%s','%s','%s','%s','%s')";

        sql = String.format(sql, c.getId(), c.getNombre(), c.getApellido(), c.getApellido2(), c.getCorreo(), c.getTelefono());
        int count = db.executeUpdate(sql);
        if (count == 0) {
            throw new Exception("Ciudadano ya existe");
        }

    }

    // crear el Usuario para el Ciudadano
    public void insertarUsuarioCiudadano(citizen_user u) throws Exception {
        String sql = "insert into citizen_user(username,password,role,citizen_id) "
                + "values ('%s','%s','%s','%d')";
        sql = String.format(sql, u.getUsername(), u.getPassword(), u.getRole(), u.getCitizen_id().getId());
        int count = db.executeUpdate(sql);
        if (count == 0) {
            throw new Exception("Usuario ya existe");
        }
    }

    // obtener un usuario
    private citizen_user citizen_user2(ResultSet rs) {
        try {
            citizen_user us = new citizen_user();
            us.setId(rs.getInt("iduser"));
            us.setUsername(rs.getString("username"));
            us.setPassword(rs.getString("password"));
            us.setRole(rs.getString("role"));
            us.setCitizen_id(citizen(rs));
            return us;
        } catch (SQLException ex) {
            return null;
        }
    }

    public citizen_user getcitizenuser(String username) throws Exception {
        String sql = "select * from  rep_citizen_user where username = '%s'";
        sql = String.format(sql, username);
        ResultSet rs = db.executeQuery(sql);
        if (rs.next()) {
            return citizen_user2(rs);
        } else {
            throw new Exception("Usuario no Existe");
        }
    }

    private Complain complain(ResultSet rs) {
        try {
            Complain comp = new Complain();
            comp.setId(rs.getInt("id"));
            comp.setDescription(rs.getString("description"));
            comp.setState(rs.getString("state"));
            comp.setCitizen(citizen(rs));
            comp.setEmployee(rs.getString("employee"));
            comp.setEmployeeDepartment(rs.getString("employee_department"));
            comp.setDepartmentId(departamento(rs));

            return comp;

        } catch (SQLException ex) {
            return null;
        }
    }

    public void insertComplain(Complain c) throws Exception {
        String sql = "insert into complain (description,state,citizen_id,employee,employee_department,department_id) "
                + "values ('%s','%s','%d','%s','%s','%d')";
        sql = String.format(sql, c.getDescription(), c.getState(), c.getCitizen_id(), c.getEmployee(), c.getEmployeeDepartment(), c.getDepartmentId().getId());
        int count = db.executeUpdate(sql);
        if (count == 0) {
            throw new Exception("ya existe la queja");
        }
    }

    private News news(ResultSet rs) {
        try {
            News n = new News();

            n.setId(rs.getInt("id"));
            n.setImagen(rs.getString("photo1"));
            n.setDescripcion(rs.getString("description"));

            return n;

        } catch (SQLException ex) {
            return null;
        }
    }

    public void insertNews(News c) throws Exception {
        String sql = "insert into news (description,photo1) values ('%s','%s')";
        sql = String.format(sql, c.getDescripcion(), c.getImagen());
        int count = db.executeUpdate(sql);
        if (count == 0) {
            throw new Exception("ya existe esa noticia");
        }
    }

    public List<News> allnews() {
        List<News> resultado = new ArrayList<News>();
        try {
            String sql = "select * from "
                    + "news";
            sql = String.format(sql);
            ResultSet rs = db.executeQuery(sql);
            while (rs.next()) {
                resultado.add(news(rs));
            }
        } catch (SQLException ex) {
        }
        return resultado;
    }

    public News getNews(int id) throws Exception {
        String sql = "select * from  news where id = '%d'";
        sql = String.format(sql, id);
        ResultSet rs = db.executeQuery(sql);
        if (rs.next()) {
            return news(rs);
        } else {
            throw new Exception("la noticia no Existe");
        }
    }

    public void insertForm(Form f) throws Exception {
        String sql = "insert into createform (id,name,form)"
                + " values ('%d','%s','%s')";
        sql = String.format(sql, f.getId(), f.getName(), f.getHtmlForm());
        int count = db.executeUpdate(sql);
        if (count == 0) {
            throw new Exception("Form existente");
        }
    }

    public void DeleteNews(int id) throws Exception {
        String sql = "delete from news where id='%d'";
        sql = String.format(sql, id);
        int count = db.executeUpdate(sql);
        if (count == 0) {
            throw new Exception("noticia no existe");
        }
    }
public List<departamento> alldepartments() {
        List<departamento> resultado = new ArrayList<departamento>();
        try {
            String sql = "select * from "
                    + "department";
            sql = String.format(sql);
            ResultSet rs = db.executeQuery(sql);
            while (rs.next()) {
                resultado.add(departamento(rs));
            }
        } catch (SQLException ex) {
        }
        return resultado;
    }

}
