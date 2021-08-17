<?php 
	$conexion= mysqli_connect("localhost", "root", "", "tienda");
	if ($conexion -> connect_errno)
	{
		die(
			"Fallo la conexion:(".$conexion -> mysqli_connect_errno().")".$conexion-> mysqli_connect_error()
		);
	}
?>