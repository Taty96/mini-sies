<?php  
	class modelMenu
	{
		function __construct($db)
		{
			try {
				$this->db = $db;
			} catch (PDOException $e) {
				exit('No Hay Conexion.');
			}
		}
		public function getMenu($id)
		{
			$sql = "call SpGetMenu(?);";
			$query = $this->db->prepare($sql);
			$query->bindValue(1, $id, PDO::PARAM_INT);
			$query->execute();
			return $query->fetchAll();
		}
		public function listarCliente()
		{
			$sql = "call SpListarCliente();";
			$query = $this->db->prepare($sql);
			$query->execute();
			return $query->fetchAll();
		}
		public function listarPlantilla()
		{
			$sql = "call SpListarPlantilla();";
			$query = $this->db->prepare($sql);
			$query->execute();
			return $query->fetchAll();
		}
	}