<?php
      include 'conexion.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <?php head();?>
  <title>Tabla de Categorias</title>
</head>
<body class="hold-transition sidebar-mini sidebar-mini sidebar-collapse">
<div class="wrapper">
  <!-- Navbar -->
  <?php navbar();?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php aside();?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
                  <form>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Nombre</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Cantidad</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                
                <div class="form-group">
                    <label for="exampleInputPassword1">Precio</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">talla</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">Descuento</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">Descripcion</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">Categorias</label>
                    <select>
                      <?php 
                      while($row20_1 = $resultado21_1->fetch_array()){
                        ?><option><?php echo $row20_1['1'];?> </option><?php
                      }
                      ?>
                    </select>
                </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">Provedor</label>
                        <select>
                      <?php 
                      while($row21_1 = $resultado22_1->fetch_array()){
                        ?><option><?php echo $row21_1['0'];?> </option><?php
                      }
                      ?>
                    </select>
                   
                </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">Edad</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">Color</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.1.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="plugins/jszip/jszip.min.js"></script>
<script src="plugins/pdfmake/pdfmake.min.js"></script>
<script src="plugins/pdfmake/vfs_fonts.js"></script>
<script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
