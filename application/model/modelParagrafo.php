<?php 
class Modelparagrafo{
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
		$sql = "CALL SpInsertarParagrafo(?,?)";
		$query = $this->db->prepare($sql);
		$query->bindValue(1, $Nombre, PDO::PARAM_STR);
		$query->bindValue(2, $Descripcion, PDO::PARAM_STR);
		$query->execute();

	}

	public function UpdateParagrafo($IdParagrafo,$Nombre,$Descripcion)
	{
		$sql = "CALL SpActualizarParagrafo (?,?,?)";
		$query = $this->db->prepare($sql);
		$query->bindValue(1, $IdParagrafo, PDO::PARAM_INT);
		$query->bindValue(2, $Nombre, PDO::PARAM_STR);
		$query->bindValue(3, $Descripcion, PDO::PARAM_STR);
		$query->execute();

	}

	public function getParagrafo()
	{
		$sql = "CALL SpListarParagrafos();";
		$query = $this->db->prepare($sql);
		$query->execute();
		return $query->fetchAll();
	}

		public function deleteParagrafo($IdParagrafo)
    {
        $sql = "CALL SpEliminarParagrafo(?)";
        $query = $this->db->prepare($sql);
        $query->bindValue(1,$IdParagrafo, PDO::PARAM_INT);
        $query->execute();
    }
}