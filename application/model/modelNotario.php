<?php 
class modelNotario{

    
    function __construct($db)
    {
        try {
            $this->db = $db;
        } catch (PDOException $e) {
            exit('No Hay Conexion.');
        }
    }
    public function addNotario($Nombre,$FechaInicio,$FechaFin,$NombreNotaria,$Estado,$TipoNotario)
    {
        $sql = "CALL SP_Registrar_Notario(?,?,?,?,?,?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1, $Nombre, PDO::PARAM_STR);
        $query->bindValue(2, $FechaInicio, PDO::PARAM_STR);
        $query->bindValue(3, $FechaFin, PDO::PARAM_STR);
        $query->bindValue(4, $NombreNotaria, PDO::PARAM_STR);
        $query->bindValue(5, $Estado, PDO::PARAM_INT);
        $query->bindValue(6, $TipoNotario, PDO::PARAM_INT);
        $query->execute();

    }

    
    

}

?>