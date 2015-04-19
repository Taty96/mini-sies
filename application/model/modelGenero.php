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

	public function UpdateGenero($IdGenero,$Nombre)
	{
		$sql = "CALL SpActualizarGenero (?,?)";

		$query = $this->db->prepare($sql);
		$query->bindValue(1, $IdGenero, PDO::PARAM_INT);
		$query->bindValue(2 , $Nombre, PDO::PARAM_STR);
	
		$query->execute();


	}

	public function getGenero()
	{
			$sql = "CALL SpListarGenero();";

			$query = $this->db->prepare($sql);

			$query->execute();

			return $query->fetchAll();
	}
	public function deleteGenero($IdGenero)
    {
        $sql = "CALL SpEliminarGenero(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdGenero, PDO::PARAM_INT);
        $query->execute();
    }
}

?>