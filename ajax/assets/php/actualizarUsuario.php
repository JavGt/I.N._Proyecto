<?php
// include Database connection file
include("conexion.php");

// check request
if(isset($_POST['id']) && isset($_POST['id']) != "")
{
    // get values
    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $ap = $_POST['ap'];
    $am = $_POST['am'];
    $direccion = $_POST['direccion'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $rol = $_POST['rol'];

    // Updaste User details
    $query = "
    UPDATE colaborador SET Nombre='$nombre', AP='$ap',AM= '$am' ,Direccion= '$direccion',Telefono= '$telefono',Correo= '$correo',ID_Rol= '$rol' WHERE ID_Colaborador = '$id'";
    if (!$result = mysqli_query($conexion, $query)) {
        exit(mysqli_error($conexion));
    }
}