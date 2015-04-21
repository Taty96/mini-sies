<?php 
class ModeltipoNotario{
		function __construct($db)
	{
		try {
			$this->db = $db;
		} catch (PDOException $e) {
			exit('No Hay Conexion.');
		}
	}

	
	public function addTipoNotario($idTipo_notario,$tipo_notario,$Estado)
	{
		$sql = "CALL SpInsertarTipoNotario (?,?,?)";
		$query = $this->db->prepare($sql);
		$query->bindValue(1, $idTipo_notario, PDO::PARAM_INT);
		$query->bindValue(2, $tipo_notario, PDO::PARAM_STR);
		$query->bindValue(3, $Estado, PDO::PARAM_INT);
	
		$query->execute();

	}
	

	public function getTipoNotario()
	{
			$sql = "CALL SpListarTipoNotario();";

			$query = $this->db->prepare($sql);

			$query->execute();

			return $query->fetchAll();
	}


	public function UpdateTipoNotario($idTipo_notario,$tipo_notario,$Estado)
	{
		$sql = "CALL SpActualizarTipoNotario (?,?,?)";
		$query = $this->db->prepare($sql);
		$query->bindValue(1, $idTipo_notario, PDO::PARAM_INT);
		$query->bindValue(2, $tipo_notario, PDO::PARAM_STR);
		$query->bindValue(3, $Estado, PDO::PARAM_INT);
	
		$query->execute();

	}


	public function deleteTipoNotario($idTipo_notario)
    {
        $sql = "CALL SpEliminarTipoNotario(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$idTipo_notario, PDO::PARAM_INT);
        $query->execute();
    }
}
