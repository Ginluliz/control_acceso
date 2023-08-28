<?php
	
	//session_start();
	
	//if(!isset($_SESSION['id'])){
		//header("Location: index.php");
	//}
	
	//$nombre = $_SESSION['nombre'];
	//$tipo_usuario = $_SESSION['tipo_usuario'];
	
	
?>


<?php include("templates/header.php"); ?>

<br/>




            
                    <div class="container-fluid">
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
                        <h1 class="mt-4">Unedl</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Lista</li>
						</ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Vista Centros</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="vista.php">Ver</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
									</div>
								</div>
							</div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Vista Lector</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="vistalector.php">Ver</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
									</div>
								</div>
							</div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Vista Centro Ingeneria</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="centroinge.php">Ver</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
									</div>
								</div>
							</div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Lector Centro Ingeneria</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="centrolector.php">Ver</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
									</div>
								</div>
							</div>
						</div>


                        <div class="row"> 
                        <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Grafica Control de Acceso</div>
    
                                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['estatus', 'carrera', 'pinestatus'],

          <?php 
          $query="SELECT * FROM vista";
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
          title: '',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
    <div id="curve_chart" style="width: 500px; height: 500px"></div>
                                    <div class="card-footer small text-muted"></div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Grafica Control de Acceso</div>
                                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Fecha', 'Acceso', 'Roles'],
          <?php 
          $query="SELECT * FROM vista";
          $res=mysqli_query($conectar, $query);
          while($data=mysqli_fetch_array($res)){
            $estatus=$data['fechahora'];
            $carrera=$data['pinestatus'];
            $pinestatus=$data['rol'];

          
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
          title: '',
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
                            </div>
                            </div>

                        
					</div>
				
                    <?php include("templates/footer.php"); ?>