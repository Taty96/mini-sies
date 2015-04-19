<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class tipoNotario extends Controller
{
     function __construct(){
        parent::__construct("ModeltipoNotario");
    }
    public function index()
    {
        $tipoNotario = $this->model->getTipoNotario();
        require APP . 'view/_templates/header.php';
        require APP . 'view/tipoNotario/tipoNotario.php';
        require APP . 'view/_templates/footer.php';
    

    }
        public function addTipoNotario(){
        $this->model->addTipoNotario($_POST['TxtCodigoTN'],$_POST['TxtNombreTipoNotario'],$_POST['TxtEstadoTipoNotario']);

    }

    public function UpdateTipoNotario()
    {
    $this->model->UpdateTipoNotario($_POST['TxtCodigoTN'],$_POST['TxtNombreTipoNotario'],$_POST['TxtEstadoTipoNotario']);
    }


     public function deleteTipoNotario($idTipo_notario)
    {
        if (isset($idTipo_notario)) {
            $this->model->deleteTipoNotario($idTipo_notario);
        }
        header('location: ' . URL . 'tipoNotario');
    }

}