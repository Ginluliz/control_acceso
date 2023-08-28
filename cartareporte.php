<?php
include("conexion.php");

if(isset( $_GET['txtID'])){

    $txtID=(isset($_GET['txtID']))?$_GET['txtID']:"";

    $sentencia=$conexion->prepare("SELECT * FROM usuario WHERE idusuario=:idusuario");
    $sentencia->bindParam(":idusuario",$txtID);
    $sentencia->execute();
    
    $registro=$sentencia->fetch(PDO::FETCH_LAZY);

    //print_r($registro);


    $nombre=$registro["nombre"];
    $apellidop=$registro["apellidop"];
    $apellidom=$registro["apellidom"];

    $nombrecompleto=$nombre." ".$apellidop." ".$apellidom;

    $matricula=$registro["matricula"];
    $pin=$registro["pin"];

    $rol=$registro["rol"];
    $estatus=$registro["estatus"];
    $carreras=$registro["carreras"];
    $centros=$registro["centros"];
    $pinestatus=$registro["pinestatus"];
    $contrasena=$registro["contrasena"];
    $fechainicio=$registro["fechainicio"];

    $fechaingreso= new DateTime($fechainicio);
    $fechafin=new DateTime(date('Y-m-d'));
    $diferencia=date_diff($fechaingreso, $fechafin);

}

ob_start();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carta de Reportes</title>
</head>
<body>
    <h1>Carta de Reportes</h1>


    <br/><br/>
    Guadalajara Jalisco <strong> <?php echo date('d M Y'); ?> </strong>
    <br/><br/>
    A quien corresponda:
    <br/><br/>
    Reciba un cordial saludo
    <br/><br/>
    A traves de estas lineas deseo hacer de su conocimiento que Sr(a) <strong> <?php echo $nombrecompleto; ?> </strong>,
    <strong> <?php echo $fechainicio; ?> </strong> 
    su numero de matricula es <strong> <?php echo $matricula; ?> </strong> 
    su numero de pin de la tarjeta es <strong> <?php echo $pin; ?> </strong> 
    lleva cursando <strong> <?php echo $diferencia->y; ?> años  </strong>  
    quien pertenece a la carrera <strong> <?php echo $carreras; ?> </strong> 
    que pertenece al Centro universitario 
    Enrique Díaz de León en el plantel <strong> <?php echo $centros; ?> </strong> 
    El <strong> <?php echo $rol; ?> </strong> al ingresar entrada o salida <strong> <?php echo $pinestatus; ?> </strong> 
    marco con estatus <strong> <?php echo $estatus; ?> </strong>
    <br/><br/>
    La persona cuenta con <strong> <?php echo $contrasena; ?> </strong> si/no
    <br/><br/>
    Sin mas por el momento 
</body>
</html>


<?php 

$HTML=ob_get_clean();

require_once("libs/autoload.inc.php");
use Dompdf\Dompdf;
$dompdf= new Dompdf();

$opciones=$dompdf->getOptions();
$opciones->set(array("isRemoteEnable"=>true));

$dompdf->setOptions($opciones);

$dompdf->loadHTML($HTML);

$dompdf->setPaper('letter');
$dompdf->render();
$dompdf->stream("archivo.pdf", array("Attachment"=>false));



?>