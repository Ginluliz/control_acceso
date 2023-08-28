<?php

require_once "_db.php";

?>



<?php
$sql ="SELECT * FROM vistainge";
$consulta = mysqli_query($conectar, $sql);
//$resul =array();

?>


<?php
include("conexion.php");

if(isset( $_GET['txtID'])){

    $txtID=(isset($_GET['txtID']))?$_GET['txtID']:"";

    $sentencia=$conexion->prepare("DELETE FROM vistainge WHERE idvistainge=:idvistainge");
    $sentencia->bindParam(":idvistainge",$txtID);
    $sentencia->execute();
    $mensaje="Registro Eliminado";
    header("Location:centroinge.php?mensaje=".$mensaje);



}

$sentencia=$conexion->prepare("SELECT * FROM vistainge");
$sentencia->execute();
$lista_vista=$sentencia->fetchAll(PDO::FETCH_ASSOC);

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
<?php include "fecha.php" ?>
<center>
<p class="ml-auto"><strong>Relog </strong><?php echo fecha();?></p>
<div class="reloj">
    <h5><span id="tiempo">00 : 00 : 00</span></h5>
</div>
</center>
<br/>
<div class="container-fluid">
						<h1 class="mt-4">Lector</h1>
						
    <div class="card-header">
       
        
    </div>
    
    <div class="row"> 

    <div class="card mb-3">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Lector</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="" width="50%" cellspacing="0">
                                        <thead>
                                            <tr>
                                            <th scope="col">id</th>
                    <th scope="col">fechahora</th>
                    <th scope="col">pinestatus</th>
                    <th scope="col">estatus</th>
                    <th scope="col">torniquete</th>
                    <th scope="col">rol</th>
                    <th scope="col">carrera</th>
                    <th scope="col">centro</th>
                    <th scope="col">nombre</th>
                    <th scope="col">apellidop</th>
                    <th scope="col">apellidom</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                        <?php foreach ($lista_vista as $registro) { ?>

<tr class="">
    <td scope="row"><?php echo $registro ['idvistainge'] ?></td>
    <td><?php echo $registro ['fechahora'] ?></td>
    <td><?php echo $registro ['pinestatus'] ?></td>
    <td><?php echo $registro ['estatus'] ?></td>
    <td><?php echo $registro ['torniquete'] ?></td>
    <td><?php echo $registro ['rol'] ?></td>
    <td><?php echo $registro ['carrera'] ?></td>
    <td><?php echo $registro ['centro'] ?></td>
    <td><?php echo $registro ['nombre'] ?></td>
    <td><?php echo $registro ['apellidop'] ?></td>
    <td><?php echo $registro ['apellidom'] ?></td>
    
</tr> 


<?php }?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-pie mr-1"></i>Grafica Control de Acceso</div>
                                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Fecha', 'Acceso', 'estatus'],
          <?php 
          $query="SELECT * FROM vistainge";
          $res=mysqli_query($conectar, $query);
          while($data=mysqli_fetch_array($res)){
            $estatus=$data['fechahora'];
            $carrera=$data['pinestatus'];
            $pinestatus=$data['estatus'];

          
          ?>
            ['<?php echo $estatus;?>',
            <?php echo $carrera;?>,
            <?php echo $pinestatus;?>
        ],
          <?php 
          }
          ?>
        ]);

        var options = {
          title: 'Acceso de Roles',
          hAxis: {title: 'Fecha',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0}
        };

        var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    <div id="chart_div" style="width: 100%; height: 500px;"></div>
                                    <div class="card-footer small text-muted"></div>
                                </div>
                            

                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-pie mr-1"></i>Grafica Control de Acceso</div>
    
                                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['estatus', 'carrera', 'pinestatus'],

          <?php 
          $query="SELECT * FROM vistainge";
          $res=mysqli_query($conectar, $query);
          while($data=mysqli_fetch_array($res)){
            $estatus=$data['estatus'];
            $carrera=$data['carrera'];
            $pinestatus=$data['pinestatus'];

          
          ?>
            ['<?php echo $estatus;?>',
            <?php echo $carrera;?>,
            <?php echo $pinestatus;?>
        ],
          <?php 
          }
          ?>
        ]);

        var options = {
          title: 'Ingreso Carreras',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
    <div id="curve_chart" style="width: 900px; height: 500px"></div>
                                    <div class="card-footer small text-muted"></div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </div>
                        </div>

    <script>

        function borrar(idvista){
            //alert(idusuario);

            Swal.fire({
                title: '¿Deseas borrar el registro?',
                showCancelButton: true,
                confirmButtonText: 'Si, Eliminar'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location="centroinge.php?txtID="+idvista;
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
        <script src="js/reloj.js"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="assets/demo/chart-pie-demo.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        


        

    </body>
</html>