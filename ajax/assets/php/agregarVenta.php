<?php
	if(isset($_POST['colaborador']) && isset($_POST['colaborador']) != "" )
	{
		// include Database connection file 
		include("conexion.php");

		// get values 

		$total = $_POST['total'];
		$colaborador = $_POST['colaborador'];


		$query = "INSERT INTO 
		venta (Fecha, Total, ID_Venta, ID_Colaborador) 
		VALUES (date(CURDATE()), '$total', NULL, '$colaborador');";
		
		if (!$result = mysqli_query($conexion, $query)) {
	        exit(mysqli_error($conexion));
	    }
	    echo "1 Record Added!";
	}
?>