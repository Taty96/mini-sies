<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class Minuta extends Controller
{
    /**
     * PAGE: index
     * This method handles the error page that will be shown when a page is not found
     */
    function __construct()
    {
        parent::__construct("modelMinuta");
    }
    public function index()
    {
        // load views
        $tipo = $this->model->listarTipo();
        require APP . 'view/_templates/header.php';
        require APP . 'view/minuta/index.php';
        require APP . 'view/_templates/footer.php';
    }
    private function endsWith($haystack, $needle) {
        return $needle === "" || (($temp = strlen($haystack) - strlen($needle)) >= 0 && strpos($haystack, $needle, $temp) !== FALSE);
    }
    public function subir()
    {
        $uploadedfileload="true";
        $uploadedfile_size=$_FILES['uploadedfile']['size'];
        if ($_FILES['uploadedfile']['size']>1000000)
        {//return true;
        $uploadedfileload="false";}
        
        if ($this->endsWith($_FILES['uploadedfile']['name'],'.docx')!=1)
        {//return true;
        $uploadedfileload="false";}

        $file_name=$_FILES['uploadedfile']['name'];
        $add= "Minutas/$file_name";
        if($uploadedfileload=="true"){

        if(move_uploaded_file ($_FILES['uploadedfile']['tmp_name'], $add)){
        return $_FILES['uploadedfile']['name'];
        }else{return false;}

        }else{/*echo $msg;*/}
    }
    public function registrar(){
        $this->model->registrar($_POST["txtDescripcion"], $_POST["txtNombre"], $this->subir(), $_POST["txtVersion"], $_POST["ddltipo"]);
    }
}