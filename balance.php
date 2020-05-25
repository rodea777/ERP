<?php 

require_once("conexion.php");

class Balance extends Conexion{

	public function alta($fechainicio,$fechafin,$total){
		$this->sentencia = "INSERT INTO asistencia VALUES (null,'$fechainicio','fechafin','total')";
		$this->ejecutarSentencia();
	}

	public function consulta(){
		$this->sentencia = "SELECT * FROM balance";
		return $this->obtenerSentencia();
	}
}

 ?>