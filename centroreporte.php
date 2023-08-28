<?php
require "centoplantilla.php";
require "db.php";


$txtID=(isset($_GET['txtID']))?$_GET['txtID']:"";
$lec = "SELECT `idvistainge`,  `fechahora`,`pinestatus`, `estatus`, `torniquete`, `rol`, `carrera`, `centro`, `nombre`, `apellidop`, `apellidom`
FROM vistainge WHERE rol=1";
$resuelto = $mysqli->query($lec);

$pdf = new PDF("L", "mm", "LEGAL");
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont("Arial", "", 12);

$pdf->SetFillColor(0, 0, 255);
$pdf->SetTextColor(255, 255, 255);

$pdf->Cell(20, 5, "id", 1, 0, "C", 1);
$pdf->Cell(50, 5, "fechahora", 1, 0, "C", 1);
$pdf->Cell(30, 5, "pinestatus", 1, 0, "C", 1);
$pdf->Cell(30, 5, "estatus", 1, 0, "C", 1);
$pdf->Cell(30, 5, "torniquete", 1, 0, "C", 1);
$pdf->Cell(20, 5, "rol", 1, 0, "C", 1);
$pdf->Cell(20, 5, "carrera", 1, 0, "C", 1);
$pdf->Cell(20, 5, "centro", 1, 0, "C", 1);
$pdf->Cell(40, 5, "nombre", 1, 0, "C", 1);
$pdf->Cell(40, 5, "apellidop", 1, 0, "C", 1);
$pdf->Cell(40, 5, "apellidom", 1, 0, "C", 1);


$pdf->SetFillColor(255, 255, 255);
$pdf->SetTextColor(0, 0, 0);

while($row = $resuelto->fetch_assoc()){
    $pdf->Cell(20, 5, $row["idvistainge"], 1, 0, "L");
    $pdf->Cell(50, 5, $row["fechahora"], 1, 0, "L");
    $pdf->Cell(30, 5, $row["pinestatus"], 1, 0, "L");
    $pdf->Cell(30, 5, $row["estatus"], 1, 0, "L");
    $pdf->Cell(30, 5, $row["torniquete"], 1, 0, "L");
    $pdf->Cell(20, 5, $row["rol"], 1, 0, "L");
    $pdf->Cell(20, 5, $row["carrera"], 1, 0, "L");
    $pdf->Cell(20, 5, $row["centro"], 1, 0, "L");
    $pdf->Cell(40, 5, $row["nombre"], 1, 0, "L");
    $pdf->Cell(40, 5, $row["apellidop"], 1, 0, "L");
    $pdf->Cell(40, 5, $row["apellidom"], 1, 1, "L");
}

$pdf->Output();

?>