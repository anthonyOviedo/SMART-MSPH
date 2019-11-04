

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMARTHMSPH</title>

        <%@ include file="/Head.jsp" %>
        <link href="css/complainStyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="js/Complain.js" type="text/javascript"></script>
                <link href="css/base.css" rel="stylesheet" type="text/css"/>


    </head>
    <body onload="departments()" >
        <%@ include file="/Header.jsp" %>
        <h1 style="text-align: center">Formulario de quejas</h1>

        <div class="container-fluid" >
            <div class="card-body" >
                <h2>Datos Personales </h2>
                <table>
                    <tr>
                        <td>
                            Nombre completo: <label id="username">   </label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Identificación:<label id="identificacion">  </label>
                        </td>
                    </tr>

                </table>
            </div>
        </div>


        <div class="card" style=" background: rgba( 62, 126, 167, 0.8); color: #d9dadd;  ">
            <div class="card-body">
                <form>
                    <h1 style="text-align: center; margin-top:-3%  "> Detalle de la queja </h1> 
                    <div class="form-row">

                        <div class="form-group col-md-6">   
                            <label for="inputDepartment">Nombre del Departamento</label>
                            <select class="custom-select" id="departmentname">
                               
                            </select>

                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPerson">Contra quien se queja</label>

                            <input type="text" onblur="inspect(this, 'error-name')" onkeyup="inspect(this, 'error-name');" class="form-control" id="PersonName" placeholder="De quien se queja">
                            <div style="margin-top: 2%" id="error-name">   </div>
                        </div>
                    </div>
                    <div class="form-group">
                        Fecha: <label for="Fecha" id="Fecha" value=""></label>
                    </div>     

                    <div class="form-group">
                        <label for="Descripciondelaqueja">Descripción de la queja</label>
                        <textarea onblur="inspect2(this, 'error-description')" onkeyup="inspect2(this, 'error-description')" class="form-control" id="complaindescription" rows="3"></textarea>
                        <div style="margin-top: 2%" id="error-description">   </div>    
                    </div>


                    <input  class="btn btn-primary"  style="background:linear-gradient( to bottom, #799905 5%, #536904 95%); color: #D2E885 !important;" onclick="createcomplain()" type="button"  id="enviar" value="Enviar">
                    <input   onclick="CancelComplain()" class="btn btn-primary"  style="background:linear-gradient( to bottom, #b82020 5%, #b82019 95%); color: #ff8989 !important;"  type="button"  id="cancel" value="Cancelar">
                </form>

            </div>
        </div>


        <script type="text/javascript">
            var d = new Date();
            //document.write('Fecha: '+d.getDate(),'<br>Dia de la semana: '+d.getDay(),'<br>Mes (0 al 11): '+d.getMonth(),'<br>Año: '+d.getFullYear(),'<br>Hora: '+d.getHours(),'<br>Hora UTC: '+d.getUTCHours(),'<br>Minutos: '+d.getMinutes(),'<br>Segundos: '+d.getSeconds());
            document.getElementById("Fecha").innerHTML = " " + d.getDate() + " / " + d.getMonth() + " / " + d.getFullYear();




            let session = JSON.parse(sessionStorage.getItem('logged'));
            document.getElementById("username").innerHTML = session.citizenname + " " + session.surname1 + " " + session.surname2;
            document.getElementById("identificacion").innerHTML = session.citizenid;
        </script>



    </body>


</html>