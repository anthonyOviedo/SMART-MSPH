<%-- 
   Document   : principal
   Created on : 29/09/2019, 10:39:01 PM
   Author     : leine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <title>SMART-MSPH2</title>
        <%@ include file="/Head.jsp" %>
        <link href="css/base.css" rel="stylesheet">
    </head>

    <body>
        <%@ include file="/Header.jsp" %>
        <!-- hacer toda esta picha en un jsp distinto sin la ide de mobile first-->


        <div class="center">

            <div class="center" style="margin-top: 100px">
                <div class="row">       

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card border-primary mb-3" style="width: 18rem;">
                                <h1 style="margin-left: auto ;margin-right: auto  ">
                                    <i class="fas fa-newspaper"></i>
                                </h1>
                                <div class="card-body black-text">
                                    <h5 class="card-title">Noticias</h5>
                                    <p class="card-text">Cree, edite o publique noticias que estan en borrador</p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item"> 
                                        <a href="/Smart-msph/Pagina1.jsp">Editar noticias</a>
                                    </li>
                                    <li class="list-group-item"> 
                                        <a href="/Smart-msph/principal/Pagina2.jsp">Ver noticias</a>
                                    </li>
                                </ul>
                            </div>   
                        </div>
                    </div>

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card border-primary mb-3" style="width: 18rem;">
                                <h1 style="margin-left: auto ;margin-right: auto  ">
                                    <i class="fas fa-newspaper"></i>
                                </h1>

                                <div class="card-body black-text">
                                    <h5 class="card-title">Formularios</h5>
                                    <p class="card-text">Cree, edite y seleccione el formulario para el proceso respectivo</p>
                                </div>

                                <ul class="list-group list-group-flush">

                                    <li class="list-group-item"> 
                                        <a href="principal/formManagment.jsp">Crear Formularios </a>
                                    </li>

                                    <li class="list-group-item"> 
                                        <a href="principal/formManagment.jsp">Ver Formularios</a>
                                    </li>

                                </ul>

                            </div>   
                        </div>
                    </div>

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card border-primary mb-3" style="width: 18rem;">
                                <h1 style="margin-left: auto ;margin-right: auto  ">
                                    <i class="fas fa-newspaper"></i>
                                </h1>

                                <div class="card-body black-text">
                                    <h5 class="card-title">Quejas</h5>
                                    <p class="card-text black-text">descripcion de opciones de denuncias...</p>
                                </div>

                                <ul class="list-group list-group-flush">

                                    <li class="list-group-item"> 
                                        <a href="#">Ver Quejas</a>
                                    </li>s

                                </ul>
                            </div>   
                        </div>

                    </div>

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card border-primary mb-3" style="width: 18rem;">
                                <h1 style="margin-left: auto ;margin-right: auto  ">
                                    <i class="fas fa-newspaper"></i>
                                </h1>

                                <div class="card-body black-text">
                                    <h5 class="card-title">Denuncias</h5>
                                    <p class="card-text">descripcion de opciones de denuncias...</p>
                                </div>

                                <ul class="list-group list-group-flush">

                                    <li class="list-group-item"> 
                                        <a href="#">Ver Quejas</a>
                                    </li>

                                </ul>
                            </div>   
                        </div>
                    </div>

                </div>
            </div>

        </div>


    </body>
</html>