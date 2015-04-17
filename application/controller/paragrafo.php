<?php



class Paragrafo extends Controller
{
  function __construct(){
        parent::__construct("modelParagrafo");
    }
    public function index()
    {
        require APP . 'view/_templates/header.php';
        require APP . 'view/paragrafo/paragrafo.php';
        require APP . 'view/_templates/footer.php';
    }

    public function addParagrafo(){
        $this->model->addParagrafo($_POST['TxtNombreParagrafo'],$_POST['TxtDescripcion']);
    }


}
?>