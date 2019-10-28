<!DOCTYPE html>
<html>

    <head>
        <%@ include file="/Head.jsp" %>
        <meta charset='utf-8'>
        <title> Mantenimiento de Formularios </title>
        <script src="js/formManagment.js" type="text/javascript"></script>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <!-- jQuery Custom Scroller CDN -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

        <script data-require="jquery@*" data-semver="2.1.1" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


        <link href="css/formManagment.css" rel="stylesheet">
        <link href="../css/formManagment.css" rel="stylesheet" type="text/css"/>
        <link href="../css/formManagment.css" rel="stylesheet" type="text/css"/>

    </head>


    <body id="body">

        <%@ include file="/Header.jsp" %>
        <!-- modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <div>
                            <h6 class="modal-title">Nuevo Campo</h6>
                        </div>

                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">

                        <div class="form-label-group">
                            <label>Nombre de campo</label>
                            <input type="text" id="campoNombre" class="form-control" placeholder="Nombre" required="" autofocus="">
                            <label for="inputNombre"></label>
                        </div>


                        <!-- <div class="form-label-group">
                            <input type="text" id="campoTipo" class="form-control" placeholder="Tipo" required="" autofocus="">
                            <label for="inputTipo"></label>
                        </div> -->

                        <div class="form-group">
                            <label>Tipo de campo</label>
                            <select class="form-control">
                                <option>Texto</option>
                                <option onclick="showFormMulOpt()">Selecion multiple</option>
                                <option>Descripcion</option>
                                <option>Mapa</option>
                                <option>Fecha</option>
                            </select>
                        </div>
                        <!-- formulario para options select -->
                        <div id="formSelectOptions">
                            <div id="espacioOpcionesSelect">
                                <div class="form-group">
                                    <label>Tipo de campo</label>
                                    <select class="form-control" id="espacioOptionsForms">

                                    </select>
                                </div>
                            </div>
                            <div class="left">
                                <button type="button" onclick="addNewOption" class="btn btn-sm btn-outline-primary">Agregar Opcion</button>
                            </div>
                        </div>

                    </div>

                    <div class="">
                        <div class="left">
                            <button class="btn btn-success" data-dismiss="modal" onclick="addNewInput()">Agregar Campo</button>
                        </div>

                        <div class="right">
                            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cancelar</button>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="margin-right: 0px;">
                <!-- Sidebar configurar el boton para que aparezca y desaparezca-->
                <div class="col-2" style="padding-left: 10px;" >
                    <nav id="sidebar">
                        <div class="sidebar-header">
                            <h3>Mantenimiento de Formularios</h3>
                        </div>
                        <ul class="list-unstyled components">
                            <p>descripcion....</p>
                            <li>
                                <a onclick="ShowNewForm()">Nuevo Formulario</a>
                            </li>
                            <li>
                                <a onclick="ShowDisplayForms()">Ver formularios</a>
                            </li>
                            <li>
                                <a onclick="ShowHelp()">Ayuda</a>
                            </li>
                        </ul>
                    </nav>
                </div>

                <!--contenido-->
                <div class="col">
                    <div class="" style="margin-left: auto;margin-right: auto;">

                        <center>
                            <div>
                                <h1>Formulario</h1>
                            </div>
                            <div class="row">

                                <div class="col">
                                    <div class="form-label-group">
                                        <label class="left">Nombre de Fromulario</label>
                                        <input type="text" id="inputNombreForm" class="form-control" placeholder="Nombre" required="" autofocus="">
                                        <label for="inputNombreForm"></label>
                                    </div>
                                    <div class="form-label-group">
                                        <label class="left">Departamento</label>
                                        <input type="text" id="inputIdDepartamento" class="form-control" placeholder="id Departamento" required="" autofocus="">
                                        <label for="inputIdDepartamento"></label>
                                    </div>
                                </div>
                                <div class="col">
                                    <span>
                                        <button class="right js-boton btn-danger btn-lg"><i class="far fa-window-close"></i>Cancelar</button>
                                    </span>
                                </div>

                            </div>


                        </center>

                        <button class="js-boton btn btn-outline-secondary btn-md" data-type="bold"><i class="fas fa-bold"></i></button>
                        <button class="js-boton btn btn-outline-secondary btn-md" data-type="italic"><i class="fas fa-italic"></i></span></button>
                        <button class="js-boton btn btn-outline-secondary btn-md" data-type="justifyLeft"><i class="fas fa-align-left"></i></button>
                        <button class="js-boton btn btn-outline-secondary btn-md" data-type="justifyCenter"><i class="fas fa-align-center"></i></button>
                        <button class="js-boton btn btn-outline-secondary btn-md" data-type="justifyRight"><i class="fas fa-align-right"></i></button>
                        <button type="button" class="js-boton btn btn-outline-secondary btn-md" data-toggle="modal" data-target="#myModal"> Nuevo Campo</button>
                        <button onclick="showPDF()" id="btn-guardar" class="js-boton btn btn-outline-secondary btn-md"><i class="fas fa-file-pdf"></i></button>
                        <button onclick="saveForm()" id="btn-guardar" class="js-boton btn btn-outline-secondary btn-md"><i class="far fa-save"></i></button>
                        <div class="espacioForm" id="espacioForm" contenteditable="true">

                        </div>  
                        <div contenteditable="false" ></div>
                        <!--                        footer -->

                    </div>
                </div>
        </div>
    </div>

</body>

</html>