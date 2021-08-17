function tiempoReal(){
    $.get("assets/php/mostrarVentas.php", {}, function (data, status) {
        $("#Tabla").html(data);
    });
}


function AgregarVenta(){
    // get values
    var total = $("#total").val();
    var colaborador = $("#colaborador").val();

    // Add record
    $.post("./assets/php/agregarVenta.php", {
        total: total,
        colaborador: colaborador
    }, 
    function (data, status) {

        // close the popup
        $("#add_new_record_modal").modal("hide");

        // read records again
        tiempoReal();

        // clear fields from the popup
        $("#total").val("");
        $("#colaborador").val("");
   
    });
}

function EliminarVenta(id) {
    var conf = confirm("¿Está seguro, realmente desea eliminar el registro?");
    if (conf == true) {
        $.post("./assets/php/eliminarVenta.php", {
                id: id
            },
            function (data, status) {
                // reload Users by using readRecords();
                tiempoReal();
            }
        );
    }
}

function ObtenerProductosVenta(id){
    $("#hidden_user_id").val(id);

}

function ObtenerVenta(id) {
    // Add User ID to the hidden field for furture usage
    $("#hidden_user_id").val(id);
    $.post("./assets/php/leerVenta.php", {
            id: id
        },
        function (data, status) {
            // PARSE json data
            var user = JSON.parse(data);
            // Assing existing values to the modal popup fields
            $("#Update_Id").val(user.ID_Venta);
            $("#Update_total").val(user.Total);
            $("#Update_fecha").val(user.Fecha);
            $("#Update_colaborador").val(user.ID_Colaborador);
       
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