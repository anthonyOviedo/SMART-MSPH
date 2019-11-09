
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        
        <%@ include file="/Head.jsp" %>
        <link rel="stylesheet" href="/Smart-msph/css/style1.css" type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Creacion de la noticia</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/base.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script> 
    </head>
    <body onload="init()">

        <%@ include file="/Header.jsp" %>


        <div class="row">    

            <div class="col-2 contentContainer" style="padding-left: 10px;align-content: center; "  >
                <nav id="sidebar">
                    <div class="sidebar-header ">
                        <h3>Mantenimiento de Noticias</h3>
                    </div>
                    <ul class="list-unstyled components">
                        <p>descripcion de este Modulo</p>
                        <li>
                            <a onclick="ShowNewsForm()">Nueva Noticia</a>
                        </li>
                        <li>
                            <a onclick="showNewTable()">Ver Noticias</a>
                        </li>
                        <li>
                            <a onclick="ShowHelp()">Ayuda</a>
                        </li>
                    </ul>
                </nav>
            </div>

            <div class="contentContainer" id="newsForm">

                <form style="margin-right: auto;margin-left: auto"action="FileUploadHandler" enctype="multipart/form-data" method="post" >  
                    <div align="center" style="margin: 5px 5px 5px 5px">
                        <h3 >Nueva Noticia</h3>
                    </div>
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

                                        <input  type="submit" value="Upload" class="btn btn-primary" />
                                    </td>

                            </tbody>  
                        </table>
                    </div>                
                </form>    
            </div>  

            <div class="contentContainer" id="newsTable">
                <div align="center" style="margin: 5px 5px 5px 5px">
                    <h3>Noticias Creadas</h3>
                </div>
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

        </div>






        <script>

            function ShowNewsForm() {
                $("#newsTable").hide("solw");
                $("#newsTable").width(0);
                $("#newsForm").width('80%');
                $("#newsForm").show("solw");

            }
            function showNewTable() {
                $("#newsForm").hide("solw");
                $("#newsForm").width(0);
                $("#newsTable").width('80%');
                $("#newsTable").show("solw");
                //mostrar el formulario para una nueva noticia    
            }
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

        <script>

            function init() {
                $("#newsTable").hide();
                $("#newsForm").hide();
                $("#newsTable").width(0);
                $("#newsForm").width(0);
            }

        </script>



    </body>



</html>
