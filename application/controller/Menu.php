<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class Menu extends Controller
{
    /**
     * PAGE: index
     * This method handles the error page that will be shown when a page is not found
     */
    function __construct(){
        parent::__construct("modelMenu");
    }
    public function index()
    {
        $hoy = getdate();
        $firma= $hoy["mday"].$hoy["minutes"].($hoy["seconds"] + 10);
        $tabla = $this->decrypt($_GET["alter"]);
        $tabla = explode(",", $tabla);
        if ($tabla[0] != $firma)
        {
            header('Location: '. URL .'Login/?alter=4');
        }
        $cliente = $this->model->listarCliente();
        $plantilla = $this->model->listarPlantilla();
        $tabla = $this->decrypt($_GET["alter"]);
        $tabla = explode(",", $tabla);
        $user = $tabla[1];
        $roles = $this->model->listarRol($user);
        require APP . 'view/_templates/header.php';
        require APP . 'view/menu/Menu.php';
        require APP . 'view/_templates/footer.php';
    }
    public function getMenu()
    {
        $id = $_POST["id"];
        $lista = $this->model->getMenu($id);
        $output = "";
        foreach ($lista as $item) {
            $output = $output.$item->{"innerHTML"};
        }
        echo $output;
    }
}