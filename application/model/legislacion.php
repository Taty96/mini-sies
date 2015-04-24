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

	public function addLegislacion()
	{
		 $sql = "CALL SpGuardarLegislacio (?,?,?)";
		 $query = $this->db->prepare($sql);
		 $query->bindValue(1,$Nombre , POD::PARAM_STR);
		 $query->bindValue(2,$Descripcion, POD::PARAM_STR);
		 $query->bindValue(3,$Estado, POD::PARAM_STR);

		 $query->execute();
	}

}