<?php 
class ModelestadoCivil{
		function __construct($db)
	{
		try {
			$this->db = $db;
		} catch (PDOException $e) {
			exit('No Hay Conexion.');
		}
	}
	public function addEstadoCivil($Nombre)
	{
		$sql = "CALL insertarestadocivil(?)";
		$query = $this->db->prepare($sql);
		$query->bindValue(1, $Nombre, PDO::PARAM_STR);	
		$query->execute();

	}
	public function UpdateEstadoCivil($IdEstado_Civil,$NombreEC)
	{
		$sql = "CALL SpActualizarEstadoCivil (?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1, $IdEstado_Civil, PDO::PARAM_INT);
		$query->bindValue(2, $NombreEC, PDO::PARAM_STR);	
		$query->execute();


	}

	public function getEstadoCivil()
	{
		$sql = "CALL SpListarEstadocivil();";
		$query = $this->db->prepare($sql);
		$query->execute();
		return $query->fetchAll();
	}

	public function deleteEstadoCivil($IdEstado_Civil)
    {
        $sql = "CALL SpEliminarEstadoCivil(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdEstado_Civil, PDO::PARAM_INT);
        $query->execute();
    }
}