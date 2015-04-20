<?php 
class Modeltipoempleado{

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

	public function addTempleado($NivelAcceso,$Nombre,$Estado)
	{

		$sql = "CALL SpGuardarTEmpleado (?,?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1,$NivelAcceso, PDO::PARAM_INT);
		$query->bindValue(2,$Nombre,PDO::PARAM_STR);
		$query->bindValue(3,$Estado,PDO::PARAM_INT);

				
	
		$query->execute();
	}


	public function deleteTempleado($IdTipoEmpleado)
	{

		$sql = "CALL SpEliminarTEmpleado (?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1,$IdTipoEmpleado, PDO::PARAM_INT);

		$query->execute();
	}
	
	public function getTipoEmpleado()
	{
		$sql = "CALL SpListarTipoEmpleado();";

		$query = $this->db->prepare($sql);

		$query->execute();

		return $query->fetchAll();

	}
	
	public function UpdateTempleado($IdTipoEmpleado,$NivelAcceso,$Nombre,$Estado)
	{
		$sql = "CALL SpActualizarTEmpleado (?,?,?,?)";

	 	$query = $this->db->prepare($sql);
	 	$query->bindValue(1,$IdTipoEmpleado,PDO::PARAM_INT);
		$query->bindValue(2,$NivelAcceso, PDO::PARAM_INT);
		$query->bindValue(3,$Nombre,PDO::PARAM_STR);
		$query->bindValue(4,$Estado,PDO::PARAM_INT);

				
	
		$query->execute();
	}

	}



