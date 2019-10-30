<%--
    Document   : CreaDenuncia
    Created on : 16/10/2019, 02:50:42 PM
    Author     : jonh1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="../../js/modulo.js" type="text/javascript"></script>
        <script src="../../js/jquery.gmaps.js" type="text/javascript"></script>
        <link href="../../css/jquery.gmaps.css" rel="stylesheet" type="text/css"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <base href="http://localhost:8084/Smart-msph/">   
        <style>.gmaps {height:400px;width: 50%;}</style>
        <title>Formulario de Denuncia</title>  
       
    </head>
    <body onload="init();" style="background-color: #1b2838  ; text-align:justify; color: #c6d4df">
         <%@ include file="/Header.jsp" %>

        <form role="form">
            <div class="form-group">
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
                  Identificacion:<label id="identificacion">  </label>
              </td>
          </tr>
          
      </table>
  </div>
    </div>

                <textarea  class="form-control"  style="width: 60%" style="width: 40%" name="campos"  id="campoxd" required/></textarea>
                <span >Descripcion de la Denuncia</span>
            </div> 
            <div class="form-group">
                <input name="file-input" id="file-input" type="file"/>
                <br />
                <img id="imgSalida"  style="width: 60%" style="height:  60%" class="img-thumbnail" src="" />

            </div>
            <div class="form-group">
                <select id="departamentos"  name="Departamento"  style="color:#080200">
                    <option value="value1">Gestion Ambiental</option> 
                    <option value="value2" selected>Tecnologias de la Informacion</option>
                    <option value="value3">Recursos Humanos</option>
                </select>
                <span class="floating-label">Eliga el departamento</span> <span id="error-surname1">   </span>
            </div>  

            <div data-key="AIzaSyDCat1dhN5tcIYsYVbpLTy_y4LTPfYHAGM" id="hola" style="width: 60%" style="height:  60%"
                 data-control-zoom="true"
                 data-control-type="true"
                 data-control-scale="true"
                 data-control-streetview="true"
                 data-control-rotate="true"
                 data-event-mousewheel="true"
                 data-zoom="16" role="map" class="gmaps">
                <!– items de ubicaciones –>
                <div
                    data-id="1"
                    data-lng
                    data-lat
                    data-marker-image=""
                    data-marker-width="35"
                    data-marker-heigth="45"
                    id="marca"
                    class="marker">
                    <div   class="map-card"  style="color:#080200">
                        <h1>Este es el lugar de los hechos</h1>
                           <p id="username1"></p>
                        <p id="identificacion1"></p>
                        <p id="Fecha"></p>
                       
                        <img id="imgentrada"   class="col-sm-12 col-sm-12" src="" />
                    </div>
                </div>
            </div>
            <input onclick="enviar2();" type="button" class="btn btn-primary"  value="Enviar"/>
        </form>
        <script>
            $(function () {
                $('#file-input').change(function (e) {
                    addImage(e);
                });
                function addImage(e) {
                    var file = e.target.files[0];
                    imageType = /image.*/;
                    if (!file.type.match(imageType))
                        return;
                    var reader = new FileReader();
                    reader.onload = fileOnload;
                    reader.readAsDataURL(file);
                }
                function fileOnload(e) {
                    var result = e.target.result;
                    $('#imgSalida').attr("src", result);
                    $('#marca').attr("data-marker-image", "");
                    $('#imgentrada').attr("src", "");
                    $('#marca').attr("data-marker-image", result);
                    $('#imgentrada').attr("src", result);
                    $('.gmaps').gmaps();
                   
                }
            });
        </script>
    
</body>
</html>
