<?php

class ModelNotario
{
        function __construct($db)
    {
        try {
            $this->db = $db;
        } catch (PDOException $e) {
            exit('No Hay Conexion.');
        }
    }
   


    public function addNotario($Nombre,$FechaI,$FechaF,$NombreN,$Estado,$TipoN)
    {
        $sql = "CALL SpInsertarNotario (?,?,?,?,?,?)";

        $query = $this->db->prepare($sql);
        $query->bindValue(1, $Nombre, PDO::PARAM_STR);
        $query->bindValue(2, $FechaI, PDO::PARAM_STR);    
        $query->bindValue(3, $FechaF, PDO::PARAM_STR); 
        $query->bindValue(4, $NombreN, PDO::PARAM_STR); 
        $query->bindValue(5, $Estado, PDO::PARAM_INT);  
        $query->bindValue(6, $TipoN, PDO::PARAM_INT);        
        $query->execute();

    }


    public function UpdateNotario($IdNotario,$Nombre,$FechaInicio,$FechaFin,$NombreNotaria,$Estado,$TipoN)
    {
        $sql = "CALL SpActualizarNotario (?,?,?,?,?,?,?)";

        $query = $this->db->prepare($sql);
        $query->bindValue(1, $IdNotario, PDO::PARAM_INT);
        $query->bindValue(2, $Nombre, PDO::PARAM_STR);
        $query->bindValue(3, $FechaInicio, PDO::PARAM_STR);    
        $query->bindValue(4, $FechaFin, PDO::PARAM_STR); 
        $query->bindValue(5, $NombreNotaria, PDO::PARAM_STR); 
        $query->bindValue(6, $Estado, PDO::PARAM_INT);  
        $query->bindValue(7,$TipoN, PDO::PARAM_INT);        
        $query->execute();
    }

     public function deleteNotario($IdNotario)
    {
        $sql = "CALL SpEliminarNotario(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdNotario, PDO::PARAM_INT);
        $query->execute();
    } 

    public function Listarnotario(){
    $sql = "CALL SpListaNotario()";
    $query= $this->db->prepare($sql);
    $query->execute();

    return $query->fetchAll();
   }

   public function Getnotario(){
    $sql = "CALL SpListarTipoNotario()";
    $query= $this->db->prepare($sql);
    $query->execute();

    return $query->fetchAll();
   }










   


}
?>

