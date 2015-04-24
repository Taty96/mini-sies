<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class requisito extends Controller
{
    function __construct(){
        parent::__construct("ModelRequisito");
    }
    public function index()
    {
        // load views
        require APP . 'view/_templates/header.php';
        require APP . 'view/requisito/requisito.php';
        require APP . 'view/_templates/footer.php';
    }

      public function addRequisito(){
        
      $this->model->addRequisito($_POST['textNombrerequisito'],$_POST['CkOpcional']);

    }
}