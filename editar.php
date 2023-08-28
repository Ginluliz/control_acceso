<?php
include("conexion.php");

if(isset( $_GET['txtID'])){

    $txtID=(isset($_GET['txtID']))?$_GET['txtID']:"";

    $sentencia=$conexion->prepare("SELECT * FROM usuario WHERE idusuario=:idusuario");
    $sentencia->bindParam(":idusuario",$txtID);
    $sentencia->execute();
    
    $registro=$sentencia->fetch(PDO::FETCH_LAZY);


    $nombre=$registro["nombre"];
    $apellidop=$registro["apellidop"];
    $apellidom=$registro["apellidom"];
    $matricula=$registro["matricula"];
    $pin=$registro["pin"];

    $rol=$registro["rol"];
    $estatus=$registro["estatus"];
    $carreras=$registro["carreras"];
    $centros=$registro["centros"];
    $pinestatus=$registro["pinestatus"];
    $contrasena=$registro["contrasena"];
    $fechainicio=$registro["fechainicio"];
    

}


if($_POST){
    print_r($_POST);
    
    $txtID=(isset($_POST['txtID']))?$_POST['txtID']:"";
    $nombre=(isset($_POST["nombre"])?$_POST["nombre"]:"");
    $apellidop=(isset($_POST["apellidop"])?$_POST["apellidop"]:"");
    $apellidom=(isset($_POST["apellidom"])?$_POST["apellidom"]:"");
    $matricula=(isset($_POST["matricula"])?$_POST["matricula"]:"");
    $pin=(isset($_POST["pin"])?$_POST["pin"]:"");
    
    $rol=(isset($_POST["rol"])?$_POST["rol"]:"");
    $estatus=(isset($_POST["estatus"])?$_POST["estatus"]:"");
    $carreras=(isset($_POST["carreras"])?$_POST["carreras"]:"");
    $centros=(isset($_POST["centros"])?$_POST["centros"]:"");
    $pinestatus=(isset($_POST["pinestatus"])?$_POST["pinestatus"]:"");
    $contrasena=(isset($_POST["contrasena"])?$_POST["contrasena"]:"");
    $fechainicio=(isset($_POST["fechainicio"])?$_POST["fechainicio"]:"");

    $sentencia=$conexion->prepare("UPDATE usuario 
    SET
        nombre=:nombre,
        apellidop=:apellidop,
        apellidom=:apellidom,
        matricula=:matricula,
        pin=:pin,
        rol=:rol,
        estatus=:estatus,
        carreras=:carreras,
        centros=:centros,
        pinestatus=:pinestatus,
        contrasena=:contrasena,
        fechainicio=:fechainicio
    WHERE idusuario=:idusuario ");

    
    $sentencia->bindParam(":nombre",$nombre);
    $sentencia->bindParam(":apellidop",$apellidop);
    $sentencia->bindParam(":apellidom",$apellidom);
    $sentencia->bindParam(":matricula",$matricula);
    $sentencia->bindParam(":pin",$pin);

    $sentencia->bindParam(":rol",$rol);
    $sentencia->bindParam(":estatus",$estatus);
    $sentencia->bindParam(":carreras",$carreras);
    $sentencia->bindParam(":centros",$centros);
    $sentencia->bindParam(":pinestatus",$pinestatus);
    $sentencia->bindParam(":contrasena",$contrasena);
    $sentencia->bindParam(":fechainicio",$fechainicio);
    $sentencia->bindParam(":idusuario",$txtID);



    $sentencia->execute();
    $mensaje="Registro Actualizado";
    header("Location:usuarios.php?mensaje=".$mensaje);


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
          <label for="nombre" class="form-label">Nombre</label>
          <input type="text"
          value="<?php echo $nombre; ?>"
            class="form-control" name="nombre" id="nombre" aria-describedby="helpId" placeholder="nombre">
        </div>

        <div class="mb-3">
          <label for="apellidop" class="form-label">Apellido Paterno</label>
          <input type="text"
          value="<?php echo $apellidop; ?>"
            class="form-control" name="apellidop" id="apellidop" aria-describedby="helpId" placeholder="Apellido Paterno">
        </div>

        <div class="mb-3">
          <label for="apellidom" class="form-label">Apellido Materno</label>
          <input type="text"
          value="<?php echo $apellidom; ?>"
            class="form-control" name="apellidom" id="apellidom" aria-describedby="helpId" placeholder="Apellido Materno">
        </div>

        <div class="mb-3">
          <label for="matricula" class="form-label">Matricula</label>
          <input type="text"
          value="<?php echo $matricula; ?>"
            class="form-control" name="matricula" id="matricula" aria-describedby="helpId" placeholder="Matricula">
        </div>

        <div class="mb-3">
          <label for="pin" class="form-label">Pin</label>
          <input type="text"
          value="<?php echo $pin; ?>"
            class="form-control" name="pin" id="pin" aria-describedby="helpId" placeholder="Pin">
        </div>

        <div class="mb-3">
            <label for="rol" class="form-label">Roles</label>
            <select class="form-select form-select-sm" name="rol" id="rol">
                <option selected>1</option>
                <option selected>2</option>
                <option selected>3</option>
                <option selected>4</option>
                <option selected>5</option>
                <option selected>6</option>
                <option selected>7</option>
                <option selected>8</option>
                <option selected><?php echo $rol; ?></option>
            </select>
        </div>

        <div class="mb-3">
            <label for="estatus" class="form-label">Estatus</label>
            <select class="form-select form-select-sm" name="estatus" id="estatus">
                <option selected>1</option>
                <option selected>2</option>
                <option selected>3</option>
                <option selected>4</option>
                <option selected>5</option>
                <option selected>6</option>
                <option selected><?php echo $estatus; ?></option>
            </select>
        </div>

        <div class="mb-3">
            <label for="carreras" class="form-label">Carrera</label>
            <select class="form-select form-select-sm" name="carreras" id="carreras">
                <option selected>1</option>
                <option selected>2</option>
                <option selected>3</option>
                <option selected>4</option>
                <option selected>5</option>
                <option selected>6</option>
                <option selected>7</option>
                <option selected>8</option>
                <option selected>9</option>
                <option selected>10</option>
                <option selected>11</option>
                <option selected>12</option>
                <option selected>13</option>
                <option selected>14</option>
                <option selected>15</option>
                <option selected>16</option>
                <option selected>17</option>
                <option selected>18</option>
                <option selected>19</option>
                <option selected>20</option>
                <option selected>21</option>
                <option selected>22</option>
                <option selected>23</option>
                <option selected>24</option>
                <option selected>25</option>
                <option selected>26</option>
                <option selected>27</option>
                <option selected>28</option>
                <option selected>29</option>
                <option selected>30</option>
                <option selected>31</option>
                <option selected>32</option>
                <option selected>33</option>
                <option selected>34</option>
                <option selected>35</option>
                <option selected>36</option>
                <option selected>37</option>
                <option selected>38</option>
                <option selected>39</option>
                <option selected>40</option>
                <option selected>41</option>
                <option selected>42</option>
                <option selected>43</option>
                <option selected>44</option>
                <option selected>45</option>
                <option selected>46</option>
                <option selected>47</option>
                <option selected>48</option>
                <option selected>49</option>
                <option selected>50</option>
                <option selected>51</option>
                <option selected>52</option>
                <option selected><?php echo $carreras; ?></option>
            </select>
        </div>


        <div class="mb-3">
            <label for="centros" class="form-label">Centro</label>
            <select class="form-select form-select-sm" name="centros" id="centros">
                <option selected>1</option>
                <option selected>2</option>
                <option selected>3</option>
                <option selected>4</option>
                <option selected><?php echo $centros; ?></option>
            </select>
        </div>

        <div class="mb-3">
            <label for="pinestatus" class="form-label">Pin Estatus</label>
            <select class="form-select form-select-sm" name="pinestatus" id="pinestatus">
                <option selected>1</option>
                <option selected>2</option>
                <option selected><?php echo $pinestatus; ?></option>
            </select>
        </div>

        <div class="mb-3">
            <label for="contrasena" class="form-label">Contraseña</label>
            <select class="form-select form-select-sm" name="contrasena" id="contrasena" >
                <option selected>0</option>
                <option selected>1</option>
                <option selected><?php echo $contrasena; ?></option>
            </select>
        </div>

        

        <div class="mb-3">
          <label for="fechainicio" class="form-label">Fecha de Inicio:</label>
          <input 
          value="<?php echo $fechainicio; ?>"
          type="date" class="form-control" name="fechainicio" id="fechainicio" placeholder="fechainicio">
        </div>



        <button type="submit" class="btn btn-success">Actualizar</button>
        <a name="" id="" class="btn btn-primary" href="usuarios.php" role="button">Cancelar</a>


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