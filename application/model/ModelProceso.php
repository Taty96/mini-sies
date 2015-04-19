<?php 
class ModelProceso{
		function __construct($db)
	{
		try {
			$this->db = $db;
		} catch (PDOException $e) {
			exit('No Hay Conexion.');
		}
	}
	public function addProcesos($Descripcion,$Nombre,$Estado)
	{
		$sql = "CALL SpInsertarProseso(?,?,?)";
		$query = $this->db->prepare($sql);
		
		$query->bindValue(1, $Descripcion, PDO::PARAM_STR);
		$query->bindValue(2, $Nombre, PDO::PARAM_STR);
		$query->bindValue(3, $Estado, PDO::PARAM_INT);
		
	
		$query->execute();

	}

	public function UpdateProcesos($IdProceso,$Descripcion,$Nombre,$Estado)
	{
		$sql = "CALL SpActualizarProce (?,?,?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1, $IdProceso, PDO::PARAM_INT);
		$query->bindValue(2, $Descripcion, PDO::PARAM_STR);
		$query->bindValue(3, $Nombre, PDO::PARAM_STR);
		$query->bindValue(4, $Estado, PDO::PARAM_INT);
	
		$query->execute();


	}

	public function getProceso()
	{
			$sql = "CALL SpListarProceso();";

			$query = $this->db->prepare($sql);

			$query->execute();

			return $query->fetchAll();
	}

	public function deleteProceso($IdProceso)
    {
        $sql = "CALL SpEliminarProceso(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdProceso, PDO::PARAM_INT);
        $query->execute();
    }
}