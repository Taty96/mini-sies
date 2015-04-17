<?php

/**
 * Class Error
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class Login extends Controller
{
    function __construct(){
        parent::__construct("modelLogin");
    }
    public function index()
    {
        // load views
        require APP . 'view/_templates/header.php';
        require APP . 'view/Login/Login.php';
        require APP . 'view/_templates/footer.php';
    }
    public function Login()
    {
        //echo count($this->model->ingresarLogin($_POST["user"], $_POST["pass"]));
        $num = count($this->model->ingresarLogin($_POST["user"], $_POST["pass"]));
        if($num == 1)
        {
            $_SESSION["user"] =  $this->model->ingresarLogin($_POST["user"], $_POST["pass"]);
            //var_dump($_SESSION["user"]);
            $hoy = getdate();
            $firma= $hoy["mday"].$hoy["minutes"].($hoy["seconds"] + 10);
            $temp = base64_encode($firma.",".$_SESSION["user"][0]->{"CC"}.",".$_SESSION["user"][0]->{"Nombre"}.",".$_SESSION["user"][0]->{"tbl_tipoempleado_IdTipo_Usuario"});
            header('Location: '. URL .'Menu/?alter='.$temp);
        }else
        {
            header('Location: '. URL .'Login/?alter=1');
        }
    }
    public function SendMail()
    {
        $pass = $this->model->Restablecer($_POST["correo"]);
        if (count($pass)>0)
        {
            $pass = $pass[0]->{"pass"};
            $para      = $_POST["correo"];
            $titulo    = 'Recupera tu contraseña';
            $mensaje   = 'Tu contraseña es '.$pass;
            $cabeceras = 'From: webmaster@example.com' . "\r\n" .'Reply-To: webmaster@example.com' . "\r\n" .'X-Mailer: PHP/' . phpversion();
            mail($para, $titulo, $mensaje, $cabeceras);
            header('Location: '. URL .'Login/?alter=3');
        }
        else
        {
            header('Location: '. URL .'Login/?alter=2');
        }        
    }
}