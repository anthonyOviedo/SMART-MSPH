<nav id="navbar" class="navbar navbar-expand" style="color:white" >

    <div class="col">
        <a onclick="header()" class="navbar-brand"> Smart MSPH</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>

    <div class="col">
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="float:right">
            <ul class="navbar-nav mr-auto">
                <!-- conduce a iniciar sesion en el sistema  -->
                <li  class="nav-item">
                    <a onclick="sessionStorage.clear()"class="nav-link" href="/Smart-msph/logout">Salir</a>
                </li>    
                <li  class="nav-item">
                    <a id="nom"class="nav-link" href="#">Usuario</a>
                </li
            </ul>
        </div> 
    </div>
</nav>


<script>
    $(document).ready(function() {
    $("#nom").html(aa)
    }

    function header(){
    $("#nom").html(aa)
    var session = JSON.parse(sessionStorage.getItem('logged'));
    if (session.role === 'ciudadano' || session.role === 'Ciudadano') {
        window.location = "principal/principal.jsp";
    } else {
        window.location = "principal/principalAdministrador.jsp";
        }
    }
</script>