<?php 
	function aside(){
	?>
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
		    <!-- Brand Logo -->
		    <a href="index3.html" class="brand-link">
		      <img src="dist/img/upt.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
		      <span class="brand-text font-weight-light">UPTx</span>
		    </a>

		    <!-- Sidebar -->
		    <div class="sidebar">
		      <!-- Sidebar user panel (optional) -->
		  
		      <!-- SidebarSearch Form -->
		      <div class="form-inline">
		        <div class="input-group" data-widget="sidebar-search">
		          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
		          <div class="input-group-append">
		            <button class="btn btn-sidebar">
		              <i class="fas fa-search fa-fw"></i>
		            </button>
		          </div>
		        </div>
		      </div>

		      <!-- Sidebar Menu -->
		      <nav class="mt-2">
		        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
		          <!-- Add icons to the links using the .nav-icon class
		               with font-awesome or any other icon font library -->
		          <li class="nav-item menu-open">
		            <a href="#" class="nav-link active">
		              <i class="nav-icon fas fa-tachometer-alt"></i>
		              <p>
		                Dashboard
		              </p>
		            </a>
		          
		          </li>
		          <li class="nav-item">
		            <a href="data_ventas.php" class="nav-link">
		              <i class="nav-icon fas fa-th"></i>
		              <p>
		                Ventas
		              </p>
		            </a>
		          </li>
		          <li class="nav-item">
		            <a href="data_zapatos.php" class="nav-link">
		              <i class="nav-icon fas fa-th"></i>
		              <p>
		                Zapatos
		              </p>
		            </a>
		          </li>
		          <li class="nav-item">
		            <a href="data_categorias.php" class="nav-link">
		              <i class="nav-icon fas fa-th"></i>
		              <p>
		                Categorias
		              </p>
		            </a>
		          </li>
		     
		          <li class="nav-item">
		            <a href="data_marcas.php" class="nav-link">
		              <i class="nav-icon fas fa-th"></i>
		              <p>
		                Marcas
		              </p>
		            </a>
		          </li>
		           <li class="nav-item">
		            <a href="data_colaboradores.php" class="nav-link">
		              <i class="nav-icon fas fa-th"></i>
		              <p>
		                Colaboradores
		              </p>
		            </a>
		          </li>		         
		        </ul>
		      </nav>
		      <!-- /.sidebar-menu -->
		    </div>
		    <!-- /.sidebar -->
	  	</aside>
	<?php
	}
?>