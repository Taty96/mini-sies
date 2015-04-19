<?php 
class ModelTipoCliente{

	function __construct($db)
	{
		try
		{

			$this->db = $db;
		}catch(PDOException $e)
		{
			exit('No hay conexion.');

		}
	}





	public function addCliente($IdTipoCliente,$Nombre,$Estado)
	{
		$sql = "CALL SpGuardarTCliente(?,?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1,$IdTipoCliente, PDO::PARAM_INT);
		$query->bindValue(2,$Nombre, PDO::PARAM_STR);
		$query->bindValue(3,$Estado, PDO::PARAM_INT);
		
		$query->execute();

	}

	

	public function UpdateCliente($IdTipoCliente,$Nombre,$Estado)
	{
		$sql = "CALL SpActualizarTCliente(?,?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1,$IdTipoCliente, PDO::PARAM_INT);
		$query->bindValue(2,$Nombre, PDO::PARAM_STR);
		$query->bindValue(3,$Estado, PDO::PARAM_INT);

		$query->execute();
	}


	public function getTipoCliente()
	{
			$sql = "CALL SpListarTipoCliente();";

			$query = $this->db->prepare($sql);

			$query->execute();

			return $query->fetchAll();
	}

	public function deleteTipoCliente($IdTipoCliente)
    {
        $sql = "CALL SpEliminarTCliente(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdTipoCliente, PDO::PARAM_INT);
        $query->execute();
    }
}	





	