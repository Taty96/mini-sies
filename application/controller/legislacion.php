<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class legislacion extends Controller
{
    function __construct(){
        parent::__construct("ModelLegislacion");
    }
    public function index()
    {
        $legislacion = $this->model->getLegislacion();
        require APP . 'view/_templates/header.php';
        require APP . 'view/legislacion/legislacion.php';
        require APP . 'view/_templates/footer.php';
    }
    public function addLegislacion(){
    $this->model->addLegislacion($_POST['txtNombreLeg'],$_POST['TxtDescripLegis'],$_POST['TxtEstadoLegis']);

    }

      public function UpdateLegislacion(){
     $this->model->UpdateLegislacion($_POST['TxtCodigoLegislacion'],$_POST['txtNombreLeg'],$_POST['TxtDescripLegis'],$_POST['TxtEstadoLegis']);
    }


    public function deleteLegislacion($IdLegislacion)
    {
        if (isset($IdLegislacion)) {
            $this->model->deleteLegislacion($IdLegislacion);
        }
        header('location: ' . URL . 'legislacion');
    }


}