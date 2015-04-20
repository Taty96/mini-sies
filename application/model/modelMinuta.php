<?php 
	class modelMinuta{
		function __construct($db)
		{
			try {
				$this->db = $db;
			} catch (PDOException $e) {
				exit('No Hay Conexion.');
			}
		}
		function listarTipo(){
			$sql = "call SpListarTipoEscritura ();";
			$query = $this->db->prepare($sql);
			$query->execute();
			return $query->fetchAll();
		}
		function registrar($desc, $nombre, $url, $version, $fk){
			$sql = "CALL SpRegistrarPlantilla (?,?,?,?,?)";
			$query = $this->db->prepare($sql);
			$query->bindValue(1, $desc, PDO::PARAM_STR);	
			$query->bindValue(2, $nombre, PDO::PARAM_STR);
			$query->bindValue(3, $url, PDO::PARAM_STR);
			$query->bindValue(4, $version, PDO::PARAM_STR);
			$query->bindValue(5, $fk, PDO::PARAM_STR);
			$query->execute();
			return $query->fetchAll();
		}
	}