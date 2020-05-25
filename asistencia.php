<?php 

require_once("conexion.php");

class Asistencia extends Conexion{

	public function alta($fecha,$Hora){
		$this->sentencia = "INSERT INTO asistencia VALUES (null,'$Fecha',null,'Hora')";
		$this->ejecutarSentencia();
	}

	public function consulta(){
		$this->sentencia = "SELECT * FROM asistencia";
		return $this->obtenerSentencia();
	}
}

 ?>