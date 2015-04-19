<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class proceso extends Controller
{
    function __construct(){
        parent::__construct("ModelProceso");
    }
    public function index()
    {
         $Proceso = $this->model->getProceso();
        require APP . 'view/_templates/header.php';
        require APP . 'view/proceso/proceso.php';
        require APP . 'view/_templates/footer.php';
    }
    public function addProcesos(){
$this->model->addProcesos($_POST['TxtDescriProce'],$_POST['TxtNombreProce'],$_POST['TxtEstadoProce']);

    }

     public function UpdateProcesos()
    {
    $this->model->UpdateProcesos($_POST['TxtCodigoProce'],$_POST['TxtDescriProce'],$_POST['TxtNombreProce'],$_POST['TxtEstadoProce']);
    }

       public function deleteProceso($IdProceso)
    {
        if (isset($IdProceso)) {
            $this->model->deleteProceso($IdProceso);
        }
        header('location: ' . URL . 'proceso');
    }


}