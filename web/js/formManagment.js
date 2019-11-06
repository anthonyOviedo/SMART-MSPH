$(document).ready(function () {

    $("#NewForm").hide();
    $("#FormsTable").hide();
    $("#FormsTable").width(0);
    $("#NewForm").width(0);
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });
    $("#formSelectOptions").hide();


    $(".js-boton").mousedown(function (event) {
        event.preventDefault(); // Esto no es necesario, es por vicio xD
        var comando = $(this).attr('data-type');
        document.execCommand(comando, false, null);
    });
    var selectedRange;
    function getCurrentRange() {
        var sel = window.getSelection();
        if (sel.getRangeAt && sel.rangeCount) {
            return sel.getRangeAt(0);
        }
    }

    function saveSelection() {
        selectedRange = getCurrentRange();
    }

    function restoreSelection() {
        var selection = window.getSelection();
        if (selectedRange) {
            try {
                selection.removeAllRanges();
            } catch (ex) {
                document.body.createTextRange().select();
                document.selection.empty();
            }

            selection.addRange(selectedRange);
        }
    }

});
function addNewInput() {
    let _nombre = $("#campoNombre").val();
    let _tipo = $("#campoTipo").val();
    //crear div para contener los campos
    let campoNuevo = $("<input/>", {
        type: _tipo,
        id: _nombre,
        class: "formInput"
    });
    $("#espacioForm").append(campoNuevo); // Insert new elements in div
    $("#formSelectOptions").hide();
    $("#espacioForm").val($("#espacioForm").val());
}



function showFormMulOpt() {
    $("#formSelectOptions").show()

    // espacioOptionsForms agregar opiones en ese 
}

function addNewOption(txt) {
    let newOption = $("<option/>", {
        type: _tipo,
        id: _nombre,
        name: "optionSpace",
        class: "form-control-sm"
    });
    let div = $("<div></div>", {
        name: "divInputTextSpace",
        id: _nombre,
    }).append(campoNuevo)

    $("#espacioForm").append(div); // Insert new elements in div

    $("#formSelectOptions").hide()

}


function saveForm() {
    let html = $("#espacioForm").html();
    //arreglar los /n iniciales del html
    let formName = $("#inputNombreForm").val();
    let departament = $("#inputIdDepartamento").val();
    //el departamento deberia ser incluido en todos los forms.
    let dat = [formName, html, departament];
    $.ajax({
        url: "api/formManagment",
        dataType: "json",
        type: "POST",
        data: dat.join()
    });

}

function showPDF() {
//convierte los campos en pdf.
    let pureForm = $("#espacioForm").html();
    let inputs = $.makeArray($("input[name='inputText']")).map(x => x.id);
    for (let index = 0; index < inputs.length; index++) {
        text = inputs[index];
        ids = "#" + inputs[index];
        $(ids).replaceWith(" " + text + " ");
    }


    let pdfFormSample = $("#espacioForm").html(); // obtener todo el html y abrirlo en otra pagina.


    //imprimir ese html 

    // volver al estado inicial puede ser un holder.

    $("#espacioForm").html(pureForm);
}

function validate() {
    let formName = $("#inputNombreForm").val();
    let departament = $("#inputIdDepartamento").val();
    if (formName === "" || departament === "")
        return false;
    else
        return true;
}

function loadForm() {}
//hacer otra funcion para cargar el html.

function showFormsTable() {

//esconde
    $("#NewForm").hide("slow");
    $("#NewForm").width(0);
    //muestra
    $("#FormsTable").width('82%');
    //traer de la base de datos el form para imprimirlo.
    let query = "all";

    $.ajax({
        url: "api/formManagment/" + query,
        type: "get",
        dataType: "json"
    }).done(function (data) {
        //construir las celdas aqui para imprimirlas en el cuadro.
        data.forEach(obj => appendNewRow(obj.id, obj.name, obj.department))

    }).fail(function (data) {
        window.alert("no funciono");
    });

    $("#FormsTable").show("slow");

}
function appendNewRow(id, name, department) {
    let tr = $("<tr></tr>");   // Create with jQuery
    let td1 = $("<td></td>").text(id);
    let td2 = $("<td></td>").text(name);
    let td3 = $("<td></td>").text(department);

    let btnVer = $("<button></button>").text("Ver");
    btnVer.addClass("btn btn-success");
    let td4 = $("<td></td>").append(btnVer);

    let btnEliminar = $("<button></button>").text("Eliminar");
    btnEliminar.addClass("btn btn-danger")
    let td5 = $("<td></td>").append(btnEliminar);

    tr.append(td1, td2, td3, td4, td5);      // Append the new elements 
    $("#tableBody").append(tr);
}

function ShowNewForm() {

//esconde
    $("#FormsTable").hide("slow");
    $("#FormsTable").width(0);
    //muestra
    $("#NewForm").width('82%');
    $("#NewForm").show("slow");
}