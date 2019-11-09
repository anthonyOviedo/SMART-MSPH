$(document).ready(function () {

    $('#user').keyup(function (event) {
        checkField(event); 
    });
    $('#pass').keyup(function (event) {
        checkField(event);
    });
    
});

function checkField(event){
    
    if ( $('#pass').val()=== "" ){
        console.log("cambiar clase de campo pass")
    }
    
    if ( $('#user').val()=== "" ){
        console.log("cambiar clase de campo user")
    }
}

function iniciar() {
    let username = $("#user").val();
    let password = $("#pass").val();

    let usuario = {username: username, password: password}

    $.ajax({
        contentType: "application/json",
        url: "api/login",
        type: 'POST',
        dataType: 'json',
        data: JSON.stringify(usuario),
        success: function (data) {
            handleData(data);
        }
    });

}

function handleData(request) {
    let user = {id: request.id, username: request.username, password: request.password, role: request.role,
        citizenname: request.citizen_id.nombre, citizenid: request.citizen_id.id, surname1: request.citizen_id.apellido,
        surname2: request.citizen_id.apellido2
    };

    sessionStorage.setItem('logged', JSON.stringify(user));
    if (request.role === 'ciudadano' || request.role === 'Ciudadano') {
        window.location = "principal/principal.jsp";
    } else if (request.role === 'administrador' || request.role === 'Administrador') {
        window.location = "principal/principalAdministrador.jsp";
    }
}

