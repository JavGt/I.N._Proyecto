<?php
// check request
if(isset($_POST['id']) && isset($_POST['id']) != "")
{

    // include Database connection file
    include("conexion.php");

    // get user id
    $venta_id = $_POST['id'];

    // delete User
    $query = "DELETE FROM venta WHERE ID_Venta = '$venta_id'";
    if (!$result = mysqli_query($conexion, $query)) {
        exit(mysqli_error($conexion));
    }
}
?>