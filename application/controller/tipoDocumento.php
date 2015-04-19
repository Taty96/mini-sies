<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class tipoDocumento extends Controller
{
   function __construct(){
        parent::__construct("ModelTipoDocu");
    }
    public function index()
    {


        $tipoDocumento = $this->model->getTipoDocumento();

        require APP . 'view/_templates/header.php';
        require APP . 'view/tipoDocumento/tipoDocumento.php';
        require APP . 'view/_templates/footer.php';
    }
    
    public function addTipoDocumento(){
    $this->model->addTipoDocumento($_POST['TxtNombre'], $_POST['TxtSufijo']);

    }

    public function UpdateDocumento()
    {
        $this->model->UpdateDocumento($_POST['TxtDocumento'],$_POST['TxtNombre'], $_POST['TxtSufijo']);
    }


        public function deleteTipodocumento($IdTipoDocumento)
    {
        if (isset($IdTipoDocumento)) {
            $this->model->deleteTipodocumento($IdTipoDocumento);
        }
        header('location: ' . URL . 'tipoDocumento');
    }

}