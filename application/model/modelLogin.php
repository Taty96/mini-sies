<?php  
	class modelLogin
	{
		function __construct($db)
		{
			try {
				$this->db = $db;
			} catch (PDOException $e) {
				exit('No Hay Conexion.');
			}
		}
		public function ingresarLogin($user, $pass)
		{
			$sql = "CALL SpLogin(?,?)";
			$query = $this->db->prepare($sql);
			$query->bindValue(1, $user, PDO::PARAM_STR);
			$query->bindValue(2, $pass, PDO::PARAM_STR);		
			$query->execute();
			return $query->fetchAll();
		}
		public function Restablecer($correo)
		{
			$sql = "CALL SpRestablecer(?)";
			$query = $this->db->prepare($sql);
			$query->bindValue(1, $correo, PDO::PARAM_STR);	
			$query->execute();
			return $query->fetchAll();
		}
	}