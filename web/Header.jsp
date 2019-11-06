<nav id="nav" class="navbar navbar-expand" style="color:white" >

    <div class="col">
        <button onclick="header()" class="navButton" class="navButton" > Smart MSPH</button> 
    </div>

    <div class="col">
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="float:right">
            <ul class="navbar-nav mr-auto">
                <!-- conduce a iniciar sesion en el sistema  -->
                <li  class="nav-item">
                    <a  id="userCampo" class="nav-link" ><i class="fas fa-user-alt"></i> </a>
                </li>

                <li  class="nav-item">
                    <a onclick="sessionStorage.clear()" class="nav-link" href="/Smart-msph/logout"><i class="fas fa-sign-out-alt"></i> Salir</a>
                </li>    

            </ul>
        </div> 
    </div>
</nav>


<script>
    function header() {
        let session = JSON.parse(sessionStorage.getItem('logged'));
        if (session.role === 'ciudadano' || session.role === 'Ciudadano') {
            window.location = "principal/principal.jsp";
        } else {
            window.location = "principal/principalAdministrador.jsp";
        }
    }
</script>

<script>
    let session = JSON.parse(sessionStorage.getItem('logged'));
    $(document).ready(function () {
        $("#userCampo").append(session.citizenname);
    });
</script>