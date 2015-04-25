<?php



class Genero extends Controller
{
  function __construct(){
        parent::__construct("modelGenero");
    }
    public function index()
    {
        
       
        require APP . 'view/_templates/header.php';
        require APP . 'view/Genero/Genero.php';
        require APP . 'view/_templates/footer.php';
    }

    public function addGenero(){
$this->model->addGenero($_POST['TxtNombreGenero']);

    }


}
?>