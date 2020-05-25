<?php 

	
	require_once("php/usuario.php");

	$obj =new Usuario();
	//$obj->alta("Jesus","1","12345");
	$res = $obj->consulta();

	while($fila = $res->fetch_assoc()){
		echo $fila["IDusuario"]." ".$fila["nombre"]." ".$fila["tipo"]." ".$fila["password"]."<br>";
	}

 ?>