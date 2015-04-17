<?php 
class modelParagrafo{

	
	function __construct($db)
	{
		try {
			$this->db = $db;
		} catch (PDOException $e) {
			exit('No Hay Conexion.');
		}
	}
	public function addParagrafo($Nombre,$Descripcion)
	{
		$sql = "CALL SP_Registrar_Paragrafo(?,?)";
		$query = $this->db->prepare($sql);
		$query->bindValue(1, $Nombre, PDO::PARAM_STR);
		$query->bindValue(2, $Descripcion, PDO::PARAM_STR);
	
		$query->execute();

	}

	
	

}

?>