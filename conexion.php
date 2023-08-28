<?php
	
	//$mysqli = new mysqli("localhost", "root", "12345678ñ", "control_acceso");

	$servidor="localhost";
	$baseDeDatos="control_acceso";
	$usuario="root";
	$pass="12345678ñ";

	try{
		$conexion= new PDO("mysql:host=$servidor;dbname=$baseDeDatos",$usuario,$pass);
	}catch(Exception $ex){
		echo $ex->getMessage();
	}

	
?>
