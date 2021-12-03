<?php
$usuario=$_POST['usuario'];
$contrasena=$_POST['contrasena'];
session_start();
$_SESSION['usuario']=$usuario;

$conexion = mysqli_connect("localhost","root","","colorem");

$consulta="SELECT*FROM usuarios where username='$usuario' and contrasena='$contrasena'";
$resultado=mysqli_query($conexion, $consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
	include("../index.php");
}
else{
	?>
	<?php
	include("f_login.php");
	?>
	
	<?php
}

mysqli_free_result($resultado);
mysqli_close($conexion);