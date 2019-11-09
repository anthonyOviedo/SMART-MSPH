<%-- 
   Document   : index
   Created on : 23/09/2019, 09:17:47 AM
   Author     : leine
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <%@ include file="/Head.jsp" %>
        <title>SMARTHMSPH</title>

        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <link href="css/base.css" rel="stylesheet" type="text/css"/>

        <script src="js/main.js" type="text/javascript"></script>
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
        
        <script src="js/login.js" type="text/javascript"></script>
    </head>

    
    
    <body>
        <div class="container" style="background-color: transparent">
            <div>
                <div class="limiter">
                    <div class="container-login100">
                        <div class="wrap-login100 p-t-85 p-b-20">

                            <div  id="login-form">

                                <span class="login100-form-title p-b-70">
                                    Iniciar Sesion
                                </span>
                                <p id="error-loging">

                                </p>

                                <div class="container-login100-form-btn">

                                    <div class="check wrap-input100 validate-input m-t-85 m-b-35" >
                                        <input id="user" class="check input100" type="text" name="username">
                                        <span class="focus-input100" data-placeholder="Nombre de Usuario"></span>
                                    </div>
                                </div>

                                <div class="check container-login100-form-btn">
                                    <div id="password" class="wrap-input100 validate-input m-b-50">
                                        <input id="pass" class="check input100" type="password" name="pass">
                                        <span class="focus-input100" data-placeholder="Contraseña"></span>
                                    </div>
                                </div>



                                <div class="container-login100-form-btn">
                                    <button  onclick="iniciar()" class="login100-form-btn">
                                        Ingresar
                                    </button>
                                </div>

                                <ul class="login-more p-t-190">
                                    <li class="m-b-8">
                                        <span class="">
                                            Olvidaste
                                        </span>
                                        <a href="#" class="">
                                            Usuario / Contraseña?
                                        </a>
                                    </li>
                                    <li>
                                        <span class="">
                                            No tienes una cuenta
                                        </span>
                                        <a href="#" class="">
                                            Iniciar Sesion
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="dropDownSelect1"></div>
            </div>

        </div>

    </body>
</html>










