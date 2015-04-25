<?php

class Controller
{
    /**
     * @var null Database Connection
     */
    public $db = null;

    /**
     * @var null Model
     */
    public $model = null;

    /**
     * Whenever a controller is created, open a database connection too and load "the model".
     */
    //El nulo lo toma como un false
    //false == true entonces no carga el modelo
    function __construct($modelName = null)
    {
        $this->openDatabaseConnection();
        if ($modelName) {
            $this->loadModel($modelName);
        }
    }

    /**
     * Open the database connection with the credentials from application/config/config.php
     */
    private function openDatabaseConnection()
    {
        // set the (optional) options of the PDO connection. in this case, we set the fetch mode to
        // "objects", which means all results will be objects, like this: $result->user_name !
        // For example, fetch mode FETCH_ASSOC would return results like this: $result["user_name] !
        // @see http://www.php.net/manual/en/pdostatement.fetch.php
        $options = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ, PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING);

        // generate a database connection, using the PDO connector
        // @see http://net.tutsplus.com/tutorials/php/why-you-should-be-using-phps-pdo-for-database-access/
        $this->db = new PDO(DB_TYPE . ':host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS, $options);
        
    }

    /**
     * Loads the "model".
     * @return object model
     */
    public function loadModel($modelName)
    {
        require APP . '/model/'.$modelName.'.php';
        // create new "model" (and pass the database connection)
        $this->model = new $modelName($this->db);
        
    }

    public function encrypt($text){


            # la clave debería ser binaria aleatoria, use scrypt, bcrypt o PBKDF2 para
            # convertir un string en una clave
            # la clave se especifica en formato hexadecimal
            $key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
            
            # mostrar el tamaño de la clave, use claves de 16, 24 o 32 bytes para AES-128, 192
            # y 256 respectivamente
            $key_size =  strlen($key);

            # crear una aleatoria IV para utilizarla co condificación CBC
            $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
            $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);

            # crea un texto cifrado compatible con AES (tamaño de bloque Rijndael = 128)
            # para hacer el texto confidencial 
            # solamente disponible para entradas codificadas que nunca finalizan con el
            # el valor  00h (debido al relleno con ceros)
            $ciphertext = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key,
                                         $text, MCRYPT_MODE_CBC, $iv);

            # anteponer la IV para que esté disponible para el descifrado
            $ciphertext = $iv . $ciphertext;
            
            # codificar el texto cifrado resultante para que pueda ser representado por un string
            $ciphertext_base64 = base64_encode($ciphertext);

            return $ciphertext_base64;

        }

        public function decrypt($text){

            $text = str_replace(" ","+",$text);

            # la clave debería ser binaria aleatoria, use scrypt, bcrypt o PBKDF2 para
            # convertir un string en una clave
            # la clave se especifica en formato hexadecimal
            $key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
            
            # mostrar el tamaño de la clave, use claves de 16, 24 o 32 bytes para AES-128, 192
            # y 256 respectivamente
            $key_size =  strlen($key);

            # crear una aleatoria IV para utilizarla co condificación CBC
            $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
            $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
        
            $ciphertext_dec = base64_decode($text);
            
            # recupera la IV, iv_size debería crearse usando mcrypt_get_iv_size()
            $iv_dec = substr($ciphertext_dec, 0, $iv_size);
            
            # recupera el texto cifrado (todo excepto el $iv_size en el frente)
            $ciphertext_dec = substr($ciphertext_dec, $iv_size);

            # podrían eliminarse los caracteres con valor 00h del final del texto puro
            $plaintext_dec = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key,
                                            $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);
            
            return  $plaintext_dec;


        }


}