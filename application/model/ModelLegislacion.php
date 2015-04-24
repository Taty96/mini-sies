<?php 
class ModelLegislacion{

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

	public function addLegislacion($Nombre,$Descripcion,$Estado)
	{
		 $sql = "CALL SpInsertarLegislacion (?,?,?)";
		 $query = $this->db->prepare($sql);
		 $query->bindValue(1,$Nombre , PDO::PARAM_STR);
		 $query->bindValue(2,$Descripcion, PDO::PARAM_STR);
		 $query->bindValue(3,$Estado, PDO::PARAM_STR);

		 $query->execute();
	}

		public function UpdateLegislacion($IdLegislacion,$Descripcion,$Nombre,$Estado)
	{
		$sql = "CALL SpActualizarLe(?,?,?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1, $IdLegislacion, PDO::PARAM_INT);
		$query->bindValue(2 , $Nombre, PDO::PARAM_STR);
		$query->bindValue(3 , $Descripcion, PDO::PARAM_STR);
		$query->bindValue(4 , $Estado, PDO::PARAM_INT);
	
		$query->execute();


	}

	public function getLegislacion()
	{
			$sql = "CALL SpListarLegislacion();";

			$query = $this->db->prepare($sql);

			$query->execute();

			return $query->fetchAll();
	}
	public function deleteLegislacion($IdLegislacion)
    {
        $sql = "CALL SpEliminarLe(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdLegislacion, PDO::PARAM_INT);
        $query->execute();
    }
}

