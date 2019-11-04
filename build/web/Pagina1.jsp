
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" href="/Smart-msph/css/style1.css" type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Creacion de la noticia</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/base.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script> 
    </head>
    <body>

        <%@ include file="/Header.jsp" %>
    </div>


    <center>  <h1>Edicion de noticia</h1></center>
    <br>   

    <div class="container">
    <form action="FileUploadHandler" enctype="multipart/form-data" method="post">  
        <div class="datagrid">
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Campo</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td colspan="2">

                        </td>
                    </tr>
                </tfoot>
                <tbody>
                    <tr>
                        <td><label for="id">Descripcion de la noticia: </label>
                        </td>  
                        <td>

                            <textarea name="txtname" id="descripcion" name="descripcion" style="width: 679px; height: 108px;"> </textarea>
                        </td>
                    </tr>


                    <tr class="alt">
                        <td>
                            <label for="id">Seleccionar Imagen: *</label> 
                        <td>
                            <input type="file" name="file2" value="" id="imagen" class="btn" />
                        </td>

                </tbody>  
            </table>
        </div>                
        <div>
            <input type="submit" value="upload" class="btn btn-primary" />
            <input type="button"  onclick="listar()" class="btn btn-secondary" value="ver noticias" />
        </div>

    </form>    


        <table class="table table-bordered" style="color: white">
        <thead>
            <tr style="color: white">
                <th scope="col">id</th>
                <th scope="col">Descripción</th>
                <th scope="col">Foto</th>
                <th scope="col">opciones</th>   
            </tr>
        </thead>

        <tbody id="listado" ></tbody>

    </table>


</div>






    <script>

        function listar() {
            $.ajax({
                type: "GET",
                url: "api/news"
            }).done(
                    function (request) {
                        list(request);
                    }).fail(function (error) {
                alert("Ha ocuriido un error");
            });
        }
        function list(news) {
            var listado = document.getElementById("listado");
            listado.innerHTML = "";
            news.forEach((d) => {
                row(listado, d);
            });
        }
        function row(listado, news) {
            var tr = document.createElement("tr");
            tr.innerHTML = "<td style='width: 90px;'>" + news.id + "</td>" +
                    "<td style='width: 200px;'>" + news.descripcion + "</td>" +
                    "<td style='width: 100px;' ><img src='" + news.imagen + "' style='width: 200px; height: 180px;'></td>" +
                    "<td><img src='img/delete.png' onclick='del(\"" + news.id + "\");'> <img src='img/editar.png' onclick='upd(\"" + news.id + "\");'>     </td>";

            listado.appendChild(tr);
        }


        function del(id) {
            $.ajax({type: "DELETE",
                url: "api/news/" + id
            }).done(function (request) {
                list(request);
            },
                    ).fail(function (error) {
                alert("Ha ocuriido un error");
            });
        }

        function upd(id) {
            $.ajax({type: "GET",
                url: "api/news/" + id
            }).done(function (request) {
                show(request);
            },
                    ).fail(function (error) {
                alert("Ha ocuriido un error");
            });

        }

        function show(news) {
            document.getElementById("descripcion").value = news.descripcion;


        }




    </script>



</body>



</html>
