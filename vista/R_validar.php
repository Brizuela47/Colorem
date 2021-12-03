<?php

if(isset($_POST['reg'])){
	require("conexion.php");
	
	$usuario = $_POST['usuario'];
	$contrasena = $_POST['contrasena'];
	
	$consulta = $conexion->query("SELECT *FROM usuarios WHERE username ='$usuario'");
	$consultar1 = $consulta->num_rows;
	if ($consultar1 > 0){
		include("f_register.php");
	}
	else{

	$insertar = $conexion->query("INSERT INTO usuarios(username,contrasena) VALUES ('$usuario','$contrasena')");
	include("login.php");
	
	}
}

//en register y en (login) en la parte de pass modificar el md5 si se quiere logear el dibu porque su contraseña estaba sin md5

?>



