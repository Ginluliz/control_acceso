<?php
include("conexion.php");

if(isset( $_GET['txtID'])){

    $txtID=(isset($_GET['txtID']))?$_GET['txtID']:"";

    $sentencia=$conexion->prepare("SELECT * FROM nusuarios WHERE idnusuarios=:idnusuarios");
    $sentencia->bindParam(":idnusuarios",$txtID);
    $sentencia->execute();
    $registro=$sentencia->fetch(PDO::FETCH_LAZY);

    $usuario=$registro["usuario"];
    $nombre=$registro["nombre"];
    $password=$registro["password"];



}

if($_POST){
    //print_r($_POST);
    
    $txtID=(isset($_POST["txtID"])?$_POST["txtID"]:"");
    $usuario=(isset($_POST["usuario"])?$_POST["usuario"]:"");
    $nombre=(isset($_POST["nombre"])?$_POST["nombre"]:"");
    $password=(isset($_POST["password"])?$_POST["password"]:"");

    $sentencia=$conexion->prepare("UPDATE nusuarios SET
        usuario=:usuario,
        nombre=:nombre,
        password=:password
        WHERE idnusuarios=:idnusuarios
        ");

    $sentencia->bindParam(":usuario",$usuario);
    $sentencia->bindParam(":nombre",$nombre);
    $sentencia->bindParam(":password",$password);
    $sentencia->bindParam(":idnusuarios",$txtID);

    $sentencia->execute();
    $mensaje="Registro Actualizado";
    header("Location:contraseña.php?mensaje=".$mensaje);


}

?>



<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Control de Acceso</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
	</head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="principal.php">Control Acceso</a><button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button
			><!-- Navbar Search-->
            <!--<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
				<div class="input-group-append">
				<button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
				</div>
                </div>
			</form>-->
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Configuración</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="logout.php">Salir</a>
					</div>
				</li>
			</ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="principal.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard</a
                            >
                            <div class="sb-sidenav-menu-heading">Interfaz</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Vista
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="contraseña.php">Usuarios</a></nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages"
                                ><div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Paginas
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError"
                                        >Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                                    ></a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="401.html">401 Page</a><a class="nav-link" href="404.html">404 Page</a><a class="nav-link" href="500.html">500 Page</a></nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="charts.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Graficas</a
                            >
                            <a class="nav-link" href="vista.php"
								><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
									Vista</a>
                                    <a class="nav-link" href="vistalector.php"
								><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
									Lector</a>
                                    <a class="nav-link" href="centroinge.php"
								><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
									Centro Inge vista</a>
                                    <a class="nav-link" href="centrolector.php"
								><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
									Centro Inge lector</a>
                            <a class="nav-link" href="usuarios.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tabla de usuarios</a
                            >
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small"></div>
                       
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                <br/>
<div class="card">
    <div class="card-header">
        Datos de Usuario
    </div>
    <div class="card-body">
        <form action="" method="post" enctype="multipart/form-data">

        <div class="mb-3">
          <label for="" class="form-label">id</label>
          <input type="text"
          value="<?php echo $txtID; ?>"
            class="form-control" readonly name="txtID" id="txtID" aria-describedby="helpId" placeholder="id">
        </div>

        <div class="mb-3">
          <label for="usuario" class="form-label">Usuario</label>
          <input type="text"
          value="<?php echo $usuario; ?>"
            class="form-control" name="usuario" id="usuario" aria-describedby="helpId" placeholder="usuario">
        </div>

        <div class="mb-3">
          <label for="nombre" class="form-label">Nombre</label>
          <input type="text"
          value="<?php echo $nombre; ?>"
            class="form-control" name="nombre" id="nombre" aria-describedby="helpId" placeholder="nombre">
        </div>

        <div class="mb-3">
          <label for="password" class="form-label">Contraseña</label>
          <input type="text"
          value="<?php echo $password; ?>"
            class="form-control" name="password" id="password" aria-describedby="helpId" placeholder="contraseña">
        </div>


        <button type="submit" class="btn btn-success">Actualizar</button>
        <a name="" id="" class="btn btn-primary" href="contraseña.php" role="button">Cancelar</a>


        </form>
    </div>
    <div class="card-footer text-muted">
       
    </div>
</div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"></div>
                            <div>
                                <a href="#"></a>
                                &middot;
                                <a href="#"></a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>

