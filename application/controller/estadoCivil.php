<?php

class estadoCivil extends Controller
{
    function __construct(){
        parent::__construct("ModelestadoCivil");
    }
    public function index()
    {
         $EstadoCivil = $this->model->getEstadoCivil();
        require APP . 'view/_templates/header.php';
        require APP . 'view/estadoCivil/estadoCivil.php';
        require APP . 'view/_templates/footer.php';
    }
    public function addEstadoCivil(){
        $this->model->addEstadoCivil($_POST['TxtNombre']);

    }

    public function UpdateEstadoCivil()
    {
         $this->model->UpdateEstadoCivil($_POST['TxtCEC'],$_POST['TxtNombre']);
    }

      public function deleteEstadoCivil($IdEstado_Civil)
    {
        if (isset($IdEstado_Civil)) {
            $this->model->deleteEstadoCivil($IdEstado_Civil);
        }
        header('location: ' . URL . 'EstadoCivil');
    }

    
}