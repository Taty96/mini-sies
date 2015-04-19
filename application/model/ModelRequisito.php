<?php 
class ModelRequisito{

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

	public function addRequisito($NombreDocumento,$Opcional)
{
		$sql = "CALL SpGuardarrequisito (?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1,$NombreDocumento, PDO::PARAM_STR);
		$query->bindValue(2, $Opcional, PDO::PARAM_BOOL);


		$query->execute();
		

}
}