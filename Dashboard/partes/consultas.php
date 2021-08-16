<?php 

     // Variables
     $Year = date("Y");
     $month = date("m");
     $day = date("d")-6;
     $day_anterior = date("d")-13;


	// -----------Consultas-----------
     function consulta($valor1,$valor2,$conexion){
          $consulta = "SELECT {$valor1} FROM {$valor2}";
          $resultado = mysqli_query($conexion,$consulta);
          $row = $resultado->fetch_array();
          echo $row['0'];
     }

     // Consulta para los descuentos
     $consulta = "SELECT * FROM `productos` WHERE Descuento > 0";
     $resultado = mysqli_query($conexion,$consulta);

     // Consulta de colaborador
     $consulta1 = "SELECT * FROM colaborador";
     $resultado1 = mysqli_query($conexion,$consulta1);


       // Consulta para saber el colaborador con mas ventas
     $consulta5_1 = "SELECT ID_Colaborador FROM venta GROUP BY ID_Colaborador HAVING COUNT(*)>1";
     $resultado5_1 = mysqli_query($conexion,$consulta5_1);
     $row5_1 = $resultado5_1->fetch_array();
     $var2 = $row5_1['0'];

     // Consulta para saber el colaborador con mas ventas
     $consulta5 = "SELECT Nombre,AP FROM colaborador WHERE ID_colaborador = {$var2}";
     $resultado5 = mysqli_query($conexion,$consulta5);
     $row5 = $resultado5->fetch_array();


     
     // Consulta para saber el colaborador con mas ventas
     $consulta6 = "SELECT COUNT(ID_Venta) FROM venta WHERE ID_Colaborador = {$var2}";
     $resultado6 = mysqli_query($conexion,$consulta6);
     $row6 = $resultado6->fetch_array();

      // Consulta para mostrar todos
     $consulta7 = "SELECT * FROM productos INNER JOIN proveedor,categoria,edad WHERE productos.ID_Proveedor = proveedor.ID_Proveedor AND productos.ID_Categoria = categoria.ID_Categoria AND productos.ID_Edad = edad.ID_Edad";
     $resultado7 = mysqli_query($conexion,$consulta7);

     //Saber el Producto que mas se repite en la lista
     $consulta8 = "SELECT ID_Productos FROM detalles_venta GROUP BY ID_Productos HAVING COUNT(*)>1";
     $resultado8 = mysqli_query($conexion,$consulta8);
     $row8 = $resultado8->fetch_array();
     
     // Sumar cuantas veces de ha vendido
     $consulta9 = "SELECT SUM(cantidad) FROM detalles_venta WHERE ID_Productos = {$row8['0']}";
     $resultado9 = mysqli_query($conexion,$consulta9);
     $row9 = $resultado9->fetch_array();


     //Encontrar el producto que se vendio mas 1 vez 
     $consulta10 = "SELECT ID_Productos FROM detalles_venta WHERE cantidad = (SELECT MAX(cantidad) FROM detalles_venta)";
     $resultado10 = mysqli_query($conexion,$consulta10);
     $row10 = $resultado10->fetch_array();

     $consulta11 = "SELECT MAX(cantidad) FROM detalles_venta";
     $resultado11 = mysqli_query($conexion,$consulta11);
     $row11 = $resultado11->fetch_array();

     $consulta13 = "SELECT SUM(Total) FROM venta WHERE YEAR(Fecha) = year(CURDATE())";
     $resultado13 = mysqli_query($conexion,$consulta13);
     $row13 = $resultado13->fetch_array();

     $consulta14 = "SELECT SUM(Total) FROM venta WHERE YEAR(Fecha) = year(CURDATE())-1";
     $resultado14 = mysqli_query($conexion,$consulta14);
     $row14 = $resultado14->fetch_array();

     //Ultimo integrande 
     $consulta17 = "SELECT nombre, AP, am FROM colaborador WHERE ID_Colaborador = (SELECT MAX(ID_colaborador) FROM colaborador)";
     $resultado17 = mysqli_query($conexion,$consulta17);
     $row17 = $resultado17->fetch_array();

     //Cuanto vendio la marca mas vendida
     
     function meses($var1 , $conexion){
          $consulta19 = "SELECT SUM(Total) FROM venta WHERE MONTH(Fecha) = {$var1} and YEAR(Fecha) = year(CURDATE())";
          $resultado19 = mysqli_query($conexion,$consulta19);
          
          while ($row19 = $resultado19->fetch_array()) {
               echo $row19['0'];
          }

     }
      function meses2($var1 , $conexion){
          $consulta19 = "SELECT SUM(Total) FROM venta WHERE MONTH(Fecha) = {$var1} and YEAR(Fecha) = year(CURDATE())-1";
          $resultado19 = mysqli_query($conexion,$consulta19);
          
          while ($row19 = $resultado19->fetch_array()) {
               echo $row19['0'];
          }

     }
     //Mes actual
   
     function dia($var1 , $conexion){
          $consulta19 = "SELECT SUM(Total) FROM venta WHERE day(Fecha) = day(CURDATE())-{$var1} AND month(fecha) = month(curdate())";
          $resultado19 = mysqli_query($conexion,$consulta19);
          
          $row19 = $resultado19->fetch_array();
               echo $row19['0'];
          

     }
     function dia1($var1 , $conexion){
          $consulta19 = "SELECT day(CURDATE())-{$var1}";
          $resultado19 = mysqli_query($conexion,$consulta19);
          $row19 = $resultado19->fetch_array();
               echo $row19['0'];
     }

     $consulta20 = "SELECT * FROM `venta` INNER JOIN colaborador WHERE venta.ID_Colaborador = colaborador.ID_Colaborador";
     $resultado20 = mysqli_query($conexion,$consulta20);

     $consulta21 = "SELECT * FROM categoria";
     $resultado21 = mysqli_query($conexion,$consulta21);

     $consulta21_1 = "SELECT ID_Categoria,categoria FROM categoria";
     $resultado21_1 = mysqli_query($conexion,$consulta21_1);

     $consulta22_1 = "SELECT ID_Proveedor FROM proveedor";
     $resultado22_1 = mysqli_query($conexion,$consulta22_1);

     $consulta22 = "SELECT * FROM proveedor";
     $resultado22 = mysqli_query($conexion,$consulta22);

 

     $consulta22_1 = "SELECT Nombre FROM edad";
     $resultado22_1 = mysqli_query($conexion,$consulta22_1);

     $consulta23 = "SELECT * FROM colaborador INNER JOIN rol WHERE colaborador.ID_Rol = rol.ID_Rol";
     $resultado23 = mysqli_query($conexion,$consulta23);



     $consulta_D = "SELECT sum(Total) FROM venta  WHERE venta.fecha BETWEEN '{$Year}-{$month}-{$day}' and DATE(now() )";

     $resultado_D = mysqli_query($conexion,$consulta_D);
     $row_D = $resultado_D->fetch_array();


     $consulta_D_Anterior = "SELECT sum(Total) FROM venta  WHERE venta.fecha BETWEEN '{$Year}-{$month}-{$day_anterior}' and '{$Year}-{$month}-{$day}'";

     $resultado_D_Anterior = mysqli_query($conexion,$consulta_D_Anterior);
     $row_D_Anterior = $resultado_D_Anterior->fetch_array();
     
     
     




?>