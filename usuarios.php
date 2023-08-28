<?php
include("conexion.php");

if(isset( $_GET['txtID'])){

    $txtID=(isset($_GET['txtID']))?$_GET['txtID']:"";

    $sentencia=$conexion->prepare("DELETE FROM usuario WHERE idusuario=:idusuario");
    $sentencia->bindParam(":idusuario",$txtID);
    $sentencia->execute();
    $mensaje="Registro Eliminado";
    header("Location:usuarios.php?mensaje=".$mensaje);



}

$sentencia=$conexion->prepare("SELECT * FROM usuario");
$sentencia->execute();
$lista_usuario=$sentencia->fetchAll(PDO::FETCH_ASSOC);

//print_r($lista_usuario);

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

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

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
   
<script> 
<?php if(isset($_GET['mensaje'])) {?>
    Swal.fire({icon:"success", title:"<?php echo $_GET['mensaje']; ?>"});
    <?php }?>
</script>                


<br/>           
<img src="reportes/une.png" style="width: 200px;">

<br/>
<div class="container-fluid">
						<h1 class="mt-4">Usuarios</h1>
						<div class="card mb-4">
							
						</div>
    <div class="card-header">
       
        <a name="" id="" class="btn btn-primary" 
        href="crear.php" role="button">
        <i class="bi bi-person-plus-fill"></i>Agregar Registro
        </a>
    </div>
    

    <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Tabla de Usuarios</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                            <th scope="col">id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apell P</th>
                    <th scope="col">Apell M</th>
                    <th scope="col">Matricula</th>
                    <th scope="col">Pin</th>
                    <th scope="col">Rol</th>
                    <th scope="col">Estatus</th>
                    <th scope="col">Carrera</th>
                    <th scope="col">Centro</th>
                    <th scope="col">PinE</th>
                    <th scope="col">Pass</th>
                    <th scope="col">Fecha</th>
                    <th scope="col">Acciones</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                        <?php foreach ($lista_usuario as $registro) { ?>

<tr class="">
    <td scope="row"><?php echo $registro ['idusuario'] ?></td>
    <td><?php echo $registro ['nombre'] ?></td>
    <td><?php echo $registro ['apellidop'] ?></td>
    <td><?php echo $registro ['apellidom'] ?></td>
    <td><?php echo $registro ['matricula'] ?></td>
    <td><?php echo $registro ['pin'] ?></td>
    <td><?php echo $registro ['rol'] ?></td>
    <td><?php echo $registro ['estatus'] ?></td>
    <td><?php echo $registro ['carreras'] ?></td>
    <td><?php echo $registro ['centros'] ?></td>
    <td><?php echo $registro ['pinestatus'] ?></td>
    <td><?php echo $registro ['contrasena'] ?></td>
    <td><?php echo $registro ['fechainicio'] ?></td>
    <td>
        <a href="cartareporte.php?txtID=<?php echo $registro ['idusuario'] ?>" class="btn btn-primary" role="button"><i class="bi bi-envelope-fill"></i></a>
        <a class="btn btn-info" href="editar.php?txtID=<?php echo $registro ['idusuario'] ?>" role="button"><i class="bi bi-pencil-square"></i></a>
        <a class="btn btn-danger"  href="javascript:borrar( <?php echo $registro ['idusuario'] ?>)" role="button"><i class="bi bi-trash3"></i></a>
    
</td>
</tr> 


<?php }?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

    <script>

        function borrar(idusuario){
            //alert(idusuario);

            Swal.fire({
                title: '¿Deseas borrar el registro?',
                showCancelButton: true,
                confirmButtonText: 'Si, Eliminar'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location="usuarios.php?txtID="+idusuario;
                    } 
})
            //usuarios.php?txtID=

        }

    </script>            
    
    </div>
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
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
        


        

    </body>
</html>
