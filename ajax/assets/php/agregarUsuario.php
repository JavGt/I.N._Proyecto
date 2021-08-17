<?php
	if(isset($_POST['nombre']) && isset($_POST['nombre']) != "" )
	{
		// include Database connection file 
		include("conexion.php");

		// get values 

		$nombre = $_POST['nombre'];
		$ap = $_POST['ap'];
		$am = $_POST['am'];
		$direccion = $_POST['direccion'];
		$correo = $_POST['correo'];
		$telefono = $_POST['telefono'];
		$rol = $_POST['rol'];

		$query = "INSERT INTO 
		colaborador (Nombre, AP, AM, Direccion, Correo, Telefono, ID_Rol) 
		VALUES ('$nombre', '$ap', '$am', '$direccion', '$correo', '$telefono', '$rol');";
		
		if (!$result = mysqli_query($conexion, $query)) {
	        exit(mysqli_error($conexion));
	    }
	    echo "1 Record Added!";
	}
?>