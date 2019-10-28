function iniciar(){
    let username = $("#user").val();
    let password = $("#password").val();

        let usuario = {username:username,password:password}

    $.ajax({
        contentType: "application/json; charset=utf-8",
        url: "api/login",
            type:'POST',
        dataType: 'json',
            data:JSON.stringify(usuario) ,
            beforeSend:function (){}

    }).done(function (request) {
               let user = {id:request.id,username:request.username,password:request.password,role:request.role,
                    citizenname:request.citizen_id.nombre,citizenid:request.citizen_id.id,surname1:request.citizen_id.apellido,
                    surname2:request.citizen_id.apellido2
        };

        sessionStorage.setItem('logged',JSON.stringify(user));      
        if(request.role==='ciudadano'){
            window.location = "principal/principal.jsp";
        } else {
            window.location = "principal/principalAdministrador.jsp";
        }


    }).fail(function (request){
        document.getElementById("error-loging").innerHTML = "El usuario o la contraseña no son correctos";
        document.getElementById("error-loging").style.color = "red";
    });


}
