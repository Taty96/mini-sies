<?php


class Notario extends Controller
{
    function __construct(){
        parent::__construct("ModelNotario");
    }
    public function index()
    {
        $Notario = $this->model->Listarnotario();
        $SelectN = $this->model->Getnotario();

        require APP . 'view/_templates/header.php';
        require APP . 'view/Notario/Notario.php';
        require APP . 'view/_templates/footer.php';
    }
   

    public function addNotario(){
        $this->model->addNotario($_POST['TxtNombre'],$_POST['TxtFechaI'],$_POST['TxtFechaF'],$_POST['TxtNombreN'],$_POST['TxtEstado'],$_POST['sltTipoN']);

    }



    public function UpdateNotario()
    {
        $this->model->UpdateNotario($_POST['TxtCN'],$_POST['TxtNombre'],$_POST['TxtFechaI'],$_POST['TxtFechaF'],$_POST['TxtNombreN'],$_POST['TxtEstado']);
    }

    public function deleteNotario($IdNotario)
    {
        if (isset($IdEstado_Civil)) {
            $this->model->deleteNotario($IdNotario);
        }
        header('location: ' . URL . 'Notario');
    }


}
