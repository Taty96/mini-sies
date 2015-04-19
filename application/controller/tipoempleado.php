<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class tipoempleado extends Controller
{
    function __construct(){
        parent::__construct("Modeltipoempleado");
    }
    public function index()
    {
        $tiposEmpleado = $this->model->getTipoEmpleado();
        // load views
        require APP . 'view/_templates/header.php';
        require APP . 'view/tipoempleado/tipoempleado.php';
        require APP . 'view/_templates/footer.php';
    }

     public function addTempleado()
     { 
        $this->model->addTempleado($_POST['TxtNVA'],$_POST['TxtNombre'],$_POST['TxtEstado']);
     }

     public function UpdateTempleado()
     {
    $this->model->UpdateTempleado($_POST['TxtIDTU'],$_POST['TxtNVA'],$_POST['TxtNombre'],$_POST['TxtEstado']);
     }
        public function deleteTempleado($IdTipoEmpleado)
    {
        if (isset($IdTipoEmpleado)) {
            $this->model->deleteTempleado($IdTipoEmpleado);
        }
        header('location: ' . URL . 'tipoempleado');
    }

        public function getTipoEmpleado()
    {
            $sql = "CALL SpListarTipoEmpleado();";

            $query = $this->db->prepare($sql);

            $query->execute();

            return $query->fetchAll();
    }
}
