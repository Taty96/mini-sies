<?php

class paragrafo extends Controller
{
    function __construct(){
        parent::__construct("Modelparagrafo");
    }
    public function index()
    {
         $Paragrafo = $this->model->getParagrafo();
        require APP . 'view/_templates/header.php';
        require APP . 'view/paragrafo/paragrafo.php';
        require APP . 'view/_templates/footer.php';
    }
    public function addParagrafo(){
        $this->model->addParagrafo($_POST['TxtNombre'],$_POST['TxtDescripcion']);

    }

     public function UpdateParagrafo()
    {
    $this->model->UpdateParagrafo($_POST['TxtCParagrafo'],$_POST['TxtNombre'],$_POST['TxtDescripcion']);
    }

       public function deleteParagrafo($IdParagrafo)
    {
        if (isset($IdParagrafo)) {
            $this->model->deleteParagrafo($IdParagrafo);
        }
        header('location: ' . URL . 'Paragrafo');
    }

}