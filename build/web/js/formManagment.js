$(document).ready(function() {
    $("#formSelectOptions").hide()


    $(".js-boton").mousedown(function(event) {
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
        name: "inputText",
        class: "inputSpace form-control-sm"
    });

    $("#espacioForm").append(campoNuevo); // Insert new elements in div
    $("#formSelectOptions").hide()
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
    let html =  $("#espacioForm").val();
    let formName = $("#inputNombreForm").val();
    let departament = $("#inputIdDepartamento").val();
    //el departamento deberia ser incluido en todos los forms.
    let dat = [formName,html];
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