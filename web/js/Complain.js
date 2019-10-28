function createcomplain(){
	
        var d = new Date();
        let session = JSON.parse(sessionStorage.getItem('logged'));
        let user = document.getElementById("username").value;
	let id = session.citizenid;
	let employee_department = document.getElementById("departmentname").value;
        let employee = document.getElementById("PersonName").value;
        let date = " "+ d.getDate() + " / " + d.getMonth() + " / " + d.getFullYear();
        let description = document.getElementById("complaindescription").value;
        
        let complain = {description:description,employee:employee,employeeDepartment:employee_department,complainDate:date,citizen_id:id};
    
   // let complain = {description:description,employee:employee};
     if(validatec()===true ){   
    $.ajax({
            contentType: "application/json; charset=utf-8",
            url: "api/complain",
            type:'POST',
            dataType: 'json',
            data:JSON.stringify(complain) ,
            beforeSend:function (){}
            
        }).done(function (request) {
        
        alert("Se ha realizado con exito la queja");
 
       
    }).fail(function (error){
       alert("Ha ocuriido un error");
    
});
     } else {
         alert("hay un error en el formulario");
         
     }
}



function inspect(elemento,elemento2) {
 
    
      if(elemento.value===''){ 
      elemento.className='form-control';
      document.getElementById(elemento2).innerHTML = "Debe escribir un nombre";
      document.getElementById(elemento2).style.color = "red";
      
    } else {
               elemento.className='form-control'; 
               document.getElementById(elemento2).innerHTML = " ";
               
    }   
  }
  
  function inspect2(elemento,elemento2) {
 
    
      if(elemento.value===''){ 
      elemento.className='form-control';
      document.getElementById(elemento2).innerHTML = "Debe escribir una Descripcion";
      document.getElementById(elemento2).style.color = "red";
      
    } else {
               elemento.className='form-control'; 
               document.getElementById(elemento2).innerHTML = " ";
               
    }   
  }
  
  
  
  function validatec() {
    
    let employee = document.getElementById("PersonName").value;
    let description = document.getElementById("complaindescription").value;
    let flag = true;
    
    if(employee=== ""){
        flag = false;
            
    }
    if(description === ""){
        flag = flase;
       }
    
    return flag;
    
}

function departments(Department) {
    let select = document.getElementById("departmentname");
    select.options[0] = new Option('Departamentos') ;
    
    $.ajax({
           type: "GET", 
          url:"api/complain"
         }).done(
        function (request){
              request.forEach( (d)=>{row(select,d);});          
            
    }).fail(function (error){
       alert("Ha ocuriido un error");
    });
    
}

   function row(listado,request){
	    var option =document.createElement("option");      
              
              option.innerHTML="<option>"+request.nombre+"</option>";
              listado.appendChild(option); 
  }