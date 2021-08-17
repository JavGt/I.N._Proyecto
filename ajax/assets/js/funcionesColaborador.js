function tiempoReal(){
    $.get("assets/php/mostrarTabla.php", {}, function (data, status) {
        $("#Tabla").html(data);
    });
}

function AgregarUsuario(){
    // get values
    var nombre = $("#nombre").val();
    var ap = $("#ap").val();
    var am = $("#am").val();
    var direccion = $("#direccion").val();
    var correo = $("#correo").val();
    var telefono = $("#telefono").val();
    var rol = $("#rol").val();

    // Add record
    $.post("./assets/php/agregarUsuario.php", {
        nombre: nombre,
        ap: ap,
        am: am,
        direccion: direccion,
        correo: correo,
        telefono: telefono,
        rol: rol
    }, 
    function (data, status) {

        // close the popup
        $("#add_new_record_modal").modal("hide");

        // read records again
        tiempoReal();

        // clear fields from the popup
        $("#nombre").val("");
        $("#ap").val("");
        $("#am").val("");
        $("#direccion").val("");
        $("#correo").val("");
        $("#telefono").val("");
        $("#rol").val("");
    });
}

function EliminarUsuario(id) {
    var conf = confirm("¿Está seguro, realmente desea eliminar el registro?");
    if (conf == true) {
        $.post("./assets/php/eliminarUsuario.php", {
                id: id
            },
            function (data, status) {
                // reload Users by using readRecords();
                tiempoReal();
            }
        );
    }
}

function ObtenerUsuario(id) {
    // Add User ID to the hidden field for furture usage
    $("#hidden_user_id").val(id);
    $.post("./assets/php/leerUsuario.php", {
            id: id
        },
        function (data, status) {
            // PARSE json data
            var user = JSON.parse(data);
            // Assing existing values to the modal popup fields
            $("#Update_Id").val(user.ID_Colaborador);
            $("#Update_nombre").val(user.Nombre);
            $("#Update_ap").val(user.AP);
            $("#Update_am").val(user.AP);
            $("#Update_direccion").val(user.Direccion);
            $("#Update_correo").val(user.Correo);
            $("#Update_telefono").val(user.Telefono);
            $("#Update_rol").val(user.ID_Rol);
        }
    );
    // Open modal popup
    $("#update_user_modal").modal("show");
}

function ActualizarUsuario() {
    // get values
    var id = $("#Update_Id").val();
    var nombre = $("#Update_nombre").val();
    var ap = $("#Update_ap").val();
    var am = $("#Update_am").val();
    var direccion = $("#Update_direccion").val();
    var correo = $("#Update_correo").val();
    var telefono = $("#Update_telefono").val();
    var rol = $("#Update_rol").val();

    // get hidden field value
    var id = $("#hidden_user_id").val();

    // Update the details by requesting to the server using ajax
    $.post("./assets/php/actualizarUsuario.php", {
        id : id,
        nombre: nombre,
        ap: ap,
        am: am,
        direccion: direccion,
        correo: correo,
        telefono: telefono,
        rol: rol
    }, 
        function (data, status) {
            // hide modal popup
            $("#update_user_modal").modal("hide");
            // reload Users by using readRecords();
            tiempoReal();
        }
    );
}

$(document).ready(function () {
    // READ recods on page load
    tiempoReal(); // calling function
});



setInterval(tiempoReal,1000);