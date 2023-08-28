<?php

require_once "reportes/fpdf/fpdf.php";

class PDF extends FPDF{

    function Header()
    {
        $this->Image('reportes/une.png', 5, 5, 100);
        $this->SetFont("Arial", "B", 20);
        $this->Cell(0, 10, "Reporte de Control de Accesos", 0, 1, "C");
        $this->Ln(20);
    }

    function Footer(){

        $this->SetY(-15);
        $this->SetFont("Arial", "", 10);
        $this->Cell(0, 10, "Pagina ".$this->PageNo(). " / {nb}", 0, 0, "C");
    }

}

    

?>