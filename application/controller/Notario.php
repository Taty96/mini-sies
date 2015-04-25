<?php



class Notario extends Controller
{
  function __construct(){
        parent::__construct("modelNotario");
    }
    public function index()
    {
        
       
        require APP . 'view/_templates/header.php';
        require APP . 'view/Notario/Notario.php';
        require APP . 'view/_templates/footer.php';
    }

    public function addNotario(){
        $this->model->addNotario($_POST['TxtNombreNotario'],$_POST['TxtFechaInicio'], $_POST['TxtFechaFin'],$_POST['TxtNombreNotaria'],$_POST['TxtEstado'],$_POST['TxtTipoNotario']);
    }


}
?>
