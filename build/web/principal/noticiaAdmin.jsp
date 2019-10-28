<%-- 
    Document   : noticiaAdmin
    Created on : 15-oct-2019, 20:55:06
    Author     : NUEVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="/Smart-msph/css/style1.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
       
   
        <title>Noticias</title>
    </head>
     <body>
    <center>
        <h1>Edicion de noticias</h1>
    </center>

   

    <div class="datagrid">
        <table>
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Imagen</th>
                    <th>Opciones</th>
                    <th></th>
                </tr>
            </thead>
          
            <tbody>
              
                <tr>
                    
                    <td> 1. </td>
                    <td>
                        
                        <a href="#" target="_blank"><img src="/Smart-msph/img/imagen.png" title="imagen"/> 
                       
                    </td>
                    <td>
                        <a id="mostrar" href="/Smart-msph/principal/crud_noticias/Nuevo.jsp"> <img src="/Smart-msph/img/nuevo.png" title="Nuevo registro"/></a>-
                        <a href="/Smart-msph/principal/crud_noticias/editar.jsp"> <img src="/Smart-msph/img/editar.png" title="Modificar"/></a>-
                        <a href=""> <img src="/Smart-msph/img/delete.png" title="Eliminar"/></a>
                    </td>
                    
                </tr>
              
            </tbody>
        </table>
    </div>
 <a href="/Smart-msph/principal/principalAdministrador.jsp">Regresar</a>
</body>
</html>
