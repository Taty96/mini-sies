<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class tipoCliente extends Controller
{
 function __construct(){
        parent::__construct("ModelTipoCliente");
    }   
    public function index()
    {
         $tipoCliente = $this->model->getTipoCliente();
        


        require APP . 'view/_templates/header.php';
        require APP . 'view/tipoCliente/tipoCliente.php';
        require APP . 'view/_templates/footer.php';
    }

       public function addCliente(){
        $this->model->addCliente($_POST['TxtCodigoTC'],$_POST['TxtNombre'],$_POST['TxtEstado']);

    }

    public function UpdateCliente()
    {
       $this->model->UpdateCliente($_POST['TxtCodigoTC'],$_POST['TxtNombre'],$_POST['TxtEstado']);
 
    }


      public function deleteTipoCliente($IdTipoCliente)
    {
        if (isset($IdTipoCliente)) {
            $this->model->deleteTipoCliente($IdTipoCliente);
        }
        header('location: ' . URL . 'tipoCliente');
    }

    


}
