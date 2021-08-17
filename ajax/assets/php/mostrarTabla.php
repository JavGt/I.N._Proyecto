<?php 
	include'conexion.php';
	
	$colaborador = $conexion->query("SELECT colaborador.*, rol.nombre FROM colaborador INNER JOIN rol WHERE colaborador.ID_Rol= rol.ID_Rol");

	$data = '<table class="table table-hover bg-light" style="font-size:12px;">

			<tr>
				<th>ID</th>
				<th>NOMBRE COMPLETO</th>
				<th>DIRECCIÓN</th>
				<th>CORREO</th>
				<th>NUMERO</th>
				<th>ROL</th>
				<th>Editar</th>
				<th>Borrar</th>

			</tr>';

			while ($row = $colaborador->fetch_array())
			{
				$data .='<tr>
						<td>'.$row['7'].'</td>
						 <td>'.$row['0'].' '.$row['1'].' '.$row['2'].'</td>
						 <td>'.$row['3'].'</td>
						 <td>'.$row['4'].'</td>
						 <td>'.$row['5'].'</td>
						 <td>'.$row['8'].'</td>
						 <td>
						 	<button onclick="ObtenerUsuario('.$row['7'].')" type="button" class="btn btn-light">

						 		<i class="bi bi-pencil-square"></i>
						 	</button>
						 </td>
						 <td>
						 	<button onclick="EliminarUsuario('.$row['7'].')" type="button" class="btn btn-light">
						 		<i class="bi bi-trash-fill"></i>
						 	</button>
						 </td>


					 </tr>';
			}
			$data .= '</table>';
			 echo $data;
?>