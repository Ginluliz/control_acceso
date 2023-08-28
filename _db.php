<?php
	
	$host="localhost";
    $user="root";
    $password="12345678ñ";
	$database="control_acceso";

    $conectar = mysqli_connect($host, $user, $password, $database);
    if(!$conectar){
        echo "no se realizo la conexion ERROR".
        mysqli_connect_error();
    }

	
	
?>