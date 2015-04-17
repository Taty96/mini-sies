<?php 
class modelGenero{

	
	function __construct($db)
	{
		try {
			$this->db = $db;
		} catch (PDOException $e) {
			exit('No Hay Conexion.');
		}
	}
	public function addGenero($Nombre)
	{
		$sql = "CALL SpInsertarGenero(?)";
		$query = $this->db->prepare($sql);
		$query->bindValue(1, $Nombre, PDO::PARAM_STR);
	
		$query->execute();

	}

	
	

}

?>