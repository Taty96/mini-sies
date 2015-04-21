<?php



class Genero extends Controller
{
  function __construct(){
        parent::__construct("modelGenero");
    }
    
    public function index()
    {
        
        $tiposGenero = $this->model->getGenero();

        require APP . 'view/_templates/header.php';
        require APP . 'view/Genero/Genero.php';
        require APP . 'view/_templates/footer.php';
    }

    public function addGenero(){
    $this->model->addGenero($_POST['TxtNombreGenero']);

    }

    public function UpdateGenero()
    {
    $this->model->UpdateGenero($_POST['TxtidGene'],$_POST['TxtNombreGenero']);
    }


    public function deleteGenero($IdGenero)
    {
        if (isset($IdGenero)) {
            $this->model->deleteGenero($IdGenero);
        }
        header('location: ' . URL . 'Genero');
    }

    



}
?>