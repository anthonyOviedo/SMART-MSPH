





function inspect(elemento,elemento2) {
 
    
      if(elemento.value===''){ 
      elemento.className='error';
      document.getElementById(elemento2).innerHTML = "Este campo es obligatorio";
      document.getElementById(elemento2).style.color = "red";
    
    } else {
               elemento.className='inputText'; 
               document.getElementById(elemento2).innerHTML = " ";               
    }   
  }
function  enviar2(){
    if  (document.getElementById("campoxd").value===''){
        alert("Debe llenar la descripcion de la denuncia");
    }
    else{
  alert("La Denuncia ha sido registrada!");
  window.location = "principal/principal.jsp";
  }
  }

function datosIniciales() {
    var d = new Date();
document.getElementById("Fecha").innerHTML =  " "+ d.getDate() + " / " + d.getMonth() + " / " + d.getFullYear() ;
let session = JSON.parse(sessionStorage.getItem('logged'));
 document.getElementById("username1").innerHTML = session.citizenname +" " + session.surname1 +" " + session.surname2;
 document.getElementById("identificacion1").innerHTML = session.citizenid;
  document.getElementById("username").innerHTML = session.citizenname +" " + session.surname1 +" " + session.surname2;
 document.getElementById("identificacion").innerHTML = session.citizenid;
}

function init() {

navigator.geolocation.getCurrentPosition(mostrar);
datosIniciales();


  }

function mostrar(position) {
    document.getElementById("marca").setAttribute("data-lat",position.coords.latitude.toString());
      document.getElementById("marca").setAttribute("data-lng",position.coords.longitude.toString());
      $(document).ready(function () {
$('.gmaps').gmaps();
});  
}

            
 

  
 // de aqui podemos previsualizar la imagen a cargar como evidencia 
//  https://codepen.io/softwarecm/pen/CrLFE
  


//se debe enviar la matriz de riesgos las minutas y todos los documenros que se estan pidiendo, le vamos a enviar la guia