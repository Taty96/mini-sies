<?php 
class ModelTipoDocu{
		function __construct($db)
	{
		try {
			$this->db = $db;
		} catch (PDOException $e) {
			exit('No Hay Conexion.');
		}
	}
	public function addTipoDocumento($Nombre,$Sufijo)
	{
		$sql = "CALL SpInsertarTipoDocumento(?,?)";
		$query = $this->db->prepare($sql);
		
		$query->bindValue(1, $Nombre, PDO::PARAM_STR);
		$query->bindValue(2, $Sufijo, PDO::PARAM_STR);
		$query->execute();

	}

	public function UpdateDocumento($IdTipoDocumento,$Nombre,$Sufijo)
	{

		$sql = "CALL SpActualizarTipoDocumento(?,?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1, $IdTipoDocumento, PDO::PARAM_INT);
		$query->bindValue(2, $Nombre, PDO::PARAM_STR);
		$query->bindValue(3, $Sufijo, PDO::PARAM_STR);


		
		$query->execute();

	}

	public function getTipoDocumento()
	{
		$sql = "CALL SpListarTipoDocumento();";

		$query = $this->db->prepare($sql);

		$query->execute();

		return $query->fetchAll();

	}

		public function deleteTipodocumento($IdTipoDocumento)
    {
        $sql = "CALL SpEliminarTipoDocumento(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdTipoDocumento, PDO::PARAM_INT);
        $query->execute();
    }
}
