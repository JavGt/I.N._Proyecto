<?php 
	include'conexion.php';
	
	$ventas = $conexion->query("SELECT * FROM venta");

	$data = '<table class="table table-hover bg-light" style="font-size:12px;">

			<tr>
				<th>ID</th>
				<th>Fecha</th>
				<th>Total</th>
				<th>Vendedor</th>
				<th>Productos</th>
				<th>Editar</th>
				<th>Borrar</th>

			</tr>';

			while ($row = $ventas->fetch_array())
			{
				$data .='<tr>
						 <td>'.$row['2'].'</td>
						 <td>'.$row['0'].'</td>
						 <td>$'.$row['1'].'</td>
						 <td>'.$row['3'].'</td>
						  <td>
						 	<button onclick="ObtenerProductosVenta('.$row['2'].')" type="button" class="btn btn-light">

						 		<i class="bi bi-cart-check-fill"></i>
						 	</button>
						 </td>
						 <td>
						 	<button onclick="ObtenerVenta('.$row['2'].')" type="button" class="btn btn-light">

						 		<i class="bi bi-pencil-square"></i>
						 	</button>
						 </td>
						 <td>
						 	<button onclick="EliminarVenta('.$row['2'].')" type="button" class="btn btn-light">
						 		<i class="bi bi-trash-fill"></i>
						 	</button>
						 </td>


					 </tr>';
			}
			$data .= '</table>';
			 echo $data;
?>