<?php
      include 'conexion.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Dashboard</title>
<?php head();?>
</head>

<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed sidebar-mini sidebar-collapse">
<div class="wrapper">

  <!-- Preloader 
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>-->

  <!-- Navbar -->
 <?php navbar();?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php aside();?>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">

        <!-- Small boxes (Stat box) -->
        <div class="row">

          <div class="col-lg-3 col-6"><!--1-->
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>
                  Ventas :
                  <?php 
                    consulta($valor1 = 'COUNT(ID_venta)',$valor2 ='venta',$conexion);
                  ?>                
                </h3>

                <p>Ventas Totales</p>
              </div>
              <div class="icon">
                <i class="fas fa-shopping-basket"></i>
              </div>
              <a href="data_ventas.php" class="small-box-footer">Ir a las ventas <i class="fas fa-arrow-circle-right"></i></a>
            </div>
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>Ventas:
                  <?php 
                   if($row9['0'] > $row11['0']){
                          echo$row9['0'];       
                   }else{
                       echo$row11['0'];
                   }
                   ?>
                </h3>

                <p>
                  <b>El zapato mas vendido</b><br>
                  <?php 
                   if($row9['0'] > $row11['0']){
                        $consulta12 = "SELECT Nombre from productos WHERE ID_Productos = {$row8['0']}";
                        $resultado12 = mysqli_query($conexion,$consulta12);
                        $row12 = $resultado12->fetch_array();
                        echo $row12['0'];           
                   }else{
                        $consulta12 = "SELECT Nombre from productos WHERE ID_Productos = {$row10['0']}";
                        $resultado12 = mysqli_query($conexion,$consulta12);
                        $row12 = $resultado12->fetch_array();
                        echo $row12['0'];
                   }
                  ?>
                </p>
              </div>
              <div class="icon">
                <i class="fas fa-shoe-prints"></i>
              </div>
            </div>
          </div> <!-- ./col -->

          <div class="col-lg-6 col-6 ">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">Ventas de este año</h3>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$<?php echo $row13['0']; ?></span>
                    <span>Ventas del año 2021</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                    <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$<?php echo $row14['0']; ?></span>
                    <span>Ventas del año 2020</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                        <p class="ml-auto d-flex flex-column text-right">
                    <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$<?php ; meses( $mes = "month(curdate())",$conexion) ?></span>
                    <span>Ventas del mes</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                        <p class="ml-auto d-flex flex-column text-right">
                    <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$<?php meses($mes = "month(curdate())-1",$conexion)?></span>
                    <span>Ventas del mes pasado</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                  
                    <span class="text-muted">Comparacion de meses</span>
                  </p>
                </div>
                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="sales-chart" height="200"></canvas>
                </div>

                <div class="d-flex flex-row justify-content-end">
                  <span class="mr-2">
                    <i class="fas fa-square text-primary"></i> Este año
                  </span>

                  <span>
                    <i class="fas fa-square text-gray"></i> Año pasado
                  </span>
                </div>
              </div>
            </div><!-- /.card -->
          </div><!-- /.col-md-6 -->

         
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>
                  <?php 
                    
                    echo $row6['0'];
                    
                  ?> Ventas
                </h3>

                <p>
                  <b>Empleado del mes</b><br>
                  <?php 
                    echo $row5['0']; echo $row5['1'];                     
                  ?>
                </p>
              </div>
              <div class="icon">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-user-check" width="72" height="72" viewBox="0 0 24 24" stroke-width="1.5" stroke="#2c3e50" fill="none" stroke-linecap="round" stroke-linejoin="round">
                  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                  <circle cx="9" cy="7" r="4" />
                  <path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                  <path d="M16 11l2 2l4 -4" />
                </svg>
              </div>
            </div>
        
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>
                  <?php 
                    if($row9['0'] > $row11['0']){
                     $consulta12 = "SELECT Nombre from proveedor where ID_Proveedor = (SELECT ID_Proveedor from productos where ID_Productos = {$row8['0']})";
                     $resultado12 = mysqli_query($conexion,$consulta12);
                     $row12 = $resultado12->fetch_array();

                     $consulta18 ="SELECT SUM(detalles_venta.Cantidad) FROM detalles_venta INNER JOIN productos,proveedor WHERE detalles_venta.ID_Productos = productos.ID_Productos  AND productos.ID_Proveedor = proveedor.ID_Proveedor AND proveedor.Nombre = '{$row12['0']}'";
                    $resultado18 = mysqli_query($conexion,$consulta18);
                    $row18 = $resultado18->fetch_array();
                    echo $row18['0'];


                 }else{
                    $consulta12 = "SELECT Nombre from proveedor where ID_Proveedor = (SELECT ID_Proveedor from productos where ID_Productos = {$row8['0']})";
                     $resultado12 = mysqli_query($conexion,$consulta12);
                     $row12 = $resultado12->fetch_array();
                     echo $row12['0'];         

                      $consulta18 ="SELECT SUM(detalles_venta.Cantidad) FROM detalles_venta INNER JOIN productos,proveedor WHERE detalles_venta.ID_Productos = productos.ID_Productos  AND productos.ID_Proveedor = proveedor.ID_Proveedor AND proveedor.Nombre = '{$row12['0']}'";
                    $resultado18 = mysqli_query($conexion,$consulta18);
                    $row18 = $resultado18->fetch_array();
                    echo $row18['0'];
                 }                 
                ?>
                Ventas
                </h3>

                <p>
                    <b>La marca mas vendida</b><br>
                  <?php 
                  if($row9['0'] > $row11['0']){
                     $consulta12 = "SELECT Nombre from proveedor where ID_Proveedor = (SELECT ID_Proveedor from productos where ID_Productos = {$row8['0']})";
                     $resultado12 = mysqli_query($conexion,$consulta12);
                     $row12 = $resultado12->fetch_array();
                     echo $row12['0'];           
                 }else{
                    $consulta12 = "SELECT Nombre from proveedor where ID_Proveedor = (SELECT ID_Proveedor from productos where ID_Productos = {$row8['0']})";
                     $resultado12 = mysqli_query($conexion,$consulta12);
                     $row12 = $resultado12->fetch_array();
                     echo $row12['0'];         
                 }
                  ?>
                </p>
              </div>
              <div class="icon">
                <i class="fas fa-tags"></i>
              </div>
            </div>
          </div><!-- ./col -->


          
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">CPU Traffic</span>
                <span class="info-box-number">
                  10
                  <small>%</small>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Likes</span>
                <span class="info-box-number">41,410</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Sales</span>
                <span class="info-box-number">760</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-number">Nuevo Colaborador</span>
                <span class="info-box-text"><?php echo $row17['0']." "; echo $row17['1']." "; echo $row17['2'];?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
       

          <div class="col-lg-8">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">Dinero recaudado esta semana</h3>
                </div>
              </div>
              <div class="card-body">
                
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$820</span>
                    <span>Esta semana</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right"></p>
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$820</span>
                    <span>Semana pasada</span>
                  </p>

                </div>

                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="visitors-chart" height="200"></canvas>
                </div>

                <div class="d-flex flex-row justify-content-end">
                  <span class="mr-2">
                    <i class="fas fa-square text-primary"></i> Esta Semana
                  </span>

                  <span>
                    <i class="fas fa-square text-gray"></i> Semana Pasada
                  </span>
                </div>
              </div>
            </div>
            <!-- /.card -->
          </div><!-- ./col -->

          <div class="col-md-4">
            <!-- Info Boxes Style 2 -->
            <div class="info-box mb-3 bg-warning">
              <span class="info-box-icon"><i class="fas fa-tag"></i></span>

             <a href="data_zapatos.php">
                <div class="info-box-content">
                <span class="info-box-text">Variedad de zapatos</span>
                <span class="info-box-number">Cantidad = 
                  <?php  
                    consulta($valor1 = 'COUNT(ID_Productos)',$valor2 ='productos',$conexion);
                  ?>
                </span>
                <i class="fas fa-arrow-circle-right"></i>

              </div>
             </a>

              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
            <div class="info-box mb-3 bg-success">
              <span class="info-box-icon"><i class="far fa-heart"></i></span>
              <a href="data_categorias.php">
                <div class="info-box-content">
                <span class="info-box-text">Categorias</span>
                <span class="info-box-number"> Cantidad = <?php consulta($var1 = 'count(ID_Categoria)',$valor2 = 'Categoria',$conexion);?></span>
                  <i class="fas fa-arrow-circle-right"></i>
                </div>
              </a>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
            <div class="info-box mb-3 bg-danger">
              <span class="info-box-icon"><i class="fas fa-cloud-download-alt"></i></span>
              <a href="data_marcas.php">
                <div class="info-box-content">
                <span class="info-box-text">Marcas</span>
                <span class="info-box-number">Cantidad = <?php consulta($var1 = 'count(ID_Proveedor)',$valor2 = 'Proveedor',$conexion);?></span>
                  <i class="fas fa-arrow-circle-right"></i>
                </div>
              </a>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
   
            <!-- /.info-box -->
          </div><!--col-md-4--->

          <div class="col-lg-7">

            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">Producto en oferta</h3>
                
              </div>
              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                    <th>Oferta</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php

                 
                  while($row = $resultado->fetch_array()){

                  ?>
                  <tr>
                    <td>
                      <img src="dist/img/prod-1.jpg" alt="Product 1" class="img-circle img-size-32 mr-2">
                      <?php echo $row['Nombre']; ?>
                    </td>
                    <td>$<?php echo $row['Precio']; ?></td>
                    <td>
                      <small class="text-success mr-2">
                        <i class="fas fa-arrow-up"></i>
                        <?php echo $row['Descuento'];?>%
                      </small>
                     
                    </td>
                    
                  </tr>

                  <?php
                    }
                  ?>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card -->
          </div><!-- /.col-md-6 -->

          <div class="col-md-5">
              <!-- USERS LIST -->
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Colaboradores</h3>

                  <div class="card-tools">
                    <span class="badge badge-danger">
                      <?php 
                        consulta($valor1 = 'COUNT(ID_Colaborador)',$valor2 ='colaborador',$conexion);
                      ?> Colaboradores                  
                    </span>
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                      <i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                      <i class="fas fa-times"></i>
                    </button>
                  </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body p-0">
                  <ul class="users-list clearfix">
                    <?php
                     
                      while($row1 = $resultado1->fetch_array())
                      {
                    ?>

                    <li>
                      <img src="dist/img/avatar4.png" alt="User Image">
                      <a class="users-list-name" href="#"><?php echo $row1['Nombre']?></a>
                      <span class="users-list-date"><?php echo $row1['Telefono']?></span>
                    </li>

   
                  <?php } ?>
                  </ul>

                  <!-- /.users-list -->
                </div>
                <!-- /.card-body -->
                <div class="card-footer text-center">
                  <a href="data_colaboradores.php">Ver usuarios</a>
                </div>
                <!-- /.card-footer -->
              </div>
              <!--/.card -->
          </div><!-- /.col -->
    
        </div>
        <!-- /.row -->
  
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->
 
</div>
<!-- ./wrapper -->
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard3.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script >
    $(function () {
    'use strict'

    var ticksStyle = {
      fontColor: '#495057',
      fontStyle: 'bold'
    }

    var mode = 'index'
    var intersect = true

    var $salesChart = $('#sales-chart')
    // eslint-disable-next-line no-unused-vars
    var salesChart = new Chart($salesChart, {
      type: 'bar',
      data: {
        labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
        datasets: [
          {
            backgroundColor: '#48C9B0',
            borderColor: '#007bff',
            data: [ <?php meses(1,$conexion); ?>, <?php meses(2,$conexion); ?>, <?php meses(3,$conexion); ?>, <?php meses(4,$conexion); ?>, <?php meses(5,$conexion); ?> , <?php meses(6,$conexion); ?> , <?php meses(7,$conexion); ?>, <?php meses(8,$conexion); ?> , <?php meses(9,$conexion); ?>, <?php meses(10,$conexion); ?>, <?php meses(11,$conexion); ?>, <?php meses(12,$conexion); ?>]
          },
          {
            backgroundColor: '#ced4da',
            borderColor: '#ced4da',
            data: [ <?php meses2(1,$conexion); ?>, <?php meses2(2,$conexion); ?>, <?php meses2(3,$conexion); ?>, <?php meses2(4,$conexion); ?>, <?php meses2(5,$conexion); ?> , <?php meses2(6,$conexion); ?> , <?php meses2(7,$conexion); ?>, <?php meses2(8,$conexion); ?> , <?php meses2(9,$conexion); ?>, <?php meses2(10,$conexion); ?>, <?php meses2(11,$conexion); ?>, <?php meses2(12,$conexion); ?>]
          }
        ]
      },
      options: {
        maintainAspectRatio: false,
        tooltips: {
          mode: mode,
          intersect: intersect
        },
        hover: {
          mode: mode,
          intersect: intersect
        },
        legend: {
          display: false
        },
        scales: {
          yAxes: [{
            // display: false,
            gridLines: {
              display: true,
              lineWidth: '4px',
              color: 'rgba(0, 0, 0, .2)',
              zeroLineColor: 'transparent'
            },
            ticks: $.extend({
              beginAtZero: true,

              // Include a dollar sign in the ticks
              callback: function (value) {
                if (value >= 1000) {
                  value /= 1
                  value += 'k'
                }

                return '$' + value
              }
            }, ticksStyle)
          }],
          xAxes: [{
            display: true,
            gridLines: {
              display: false
            },
            ticks: ticksStyle
          }]
        }
      }
    })

    var $visitorsChart = $('#visitors-chart')
    // eslint-disable-next-line no-unused-vars
    var visitorsChart = new Chart($visitorsChart, {
      data: {
        labels: [<?php dia1(6,$conexion)?>, <?php dia1(5,$conexion)?>, <?php dia1(4,$conexion)?>, <?php dia1(3,$conexion)?>, <?php dia1(2,$conexion)?>, <?php dia1(1,$conexion)?>, <?php dia1(0,$conexion)?>],
        datasets: [{
          type: 'line',
          data: [<?php dia(6,$conexion)?>,<?php dia(5,$conexion)?>,<?php dia(4,$conexion)?>,<?php dia(3,$conexion)?>,<?php dia(2,$conexion)?>,<?php dia(1,$conexion)?>,<?php dia(0,$conexion)?>],
          backgroundColor: 'transparent',
          borderColor: '#007bff',
          pointBorderColor: '#007bff',
          pointBackgroundColor: '#007bff',
          fill: false
          // pointHoverBackgroundColor: '#007bff',
          // pointHoverBorderColor    : '#007bff'
        },
        {
          type: 'line',
          data: [<?php dia(6+7,$conexion)?>,<?php dia(5+7,$conexion)?>,<?php dia(4+7,$conexion)?>,<?php dia(3+7,$conexion)?>,<?php dia(2+7,$conexion)?>,<?php dia(1+7,$conexion)?>,<?php dia(0+7,$conexion)?>],
          backgroundColor: 'tansparent',
          borderColor: '#ced4da',
          pointBorderColor: '#ced4da',
          pointBackgroundColor: '#ced4da',
          fill: false
          // pointHoverBackgroundColor: '#ced4da',
          // pointHoverBorderColor    : '#ced4da'
        }]
      },
      options: {
        maintainAspectRatio: false,
        tooltips: {
          mode: mode,
          intersect: intersect
        },
        hover: {
          mode: mode,
          intersect: intersect
        },
        legend: {
          display: false
        },
        scales: {
          yAxes: [{
            // display: false,
            gridLines: {
              display: true,
              lineWidth: '4px',
              color: 'rgba(0, 0, 0, .2)',
              zeroLineColor: 'transparent'
            },
            ticks: $.extend({
              beginAtZero: true,
              suggestedMax: 2000
            }, ticksStyle)
          }],
          xAxes: [{
            display: true,
            gridLines: {
              display: false
            },
            ticks: ticksStyle
          }]
        }
      }
    })
  })

  // lgtm [js/unused-local-variable]
</script> <!--Funcion de las graficas-->




</body>
</html>
