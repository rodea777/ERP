<?php 

require_once("conexion.php");

class Detalle_compra extends Conexion{

	public function alta($cantidad){
		$this->sentencia = "INSERT INTO detalle_compra VALUES (null,null,null'cantidad')";
		$this->ejecutarSentencia();
	}

	public function consulta(){
		$this->sentencia = "SELECT * FROM detalle_compra";
		return $this->obtenerSentencia();
	}
}

 ?>