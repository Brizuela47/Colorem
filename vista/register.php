<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
<div class="form-inputs-contentedor">
<div>
        <h2>Crea tu Cuenta</h2>
    </div>
    <form action="" method="POST">

    
    <input class="input-nombre" type="text" name="user" placeholder="Nombre">
    <br>
    <input class="input-nombre" type="password" name="pass" placeholder="Contraseña">
    <br>
    
        <input class="input-ingresar" type="submit" name="reg" value="Registrar">
    
    </form>
    <div>
        <small>
            Ya tenes una cuenta? <a class="volver-btn2" href="./login.php">Ingresa</a>
        </small>
    </div>
    </div>
    <?php

if(isset($_POST['reg'])){
	require("conexion.php");
	
	$user = $_POST['user'];
	$pass = md5($_POST['pass']);
	
	$consulta = $conexion->query("SELECT *FROM usuario WHERE username ='$user'");
	$contar = $consulta->num_rows;
	if ($contar > 0){
		echo "Ponete otro nombre pa";
	}
	else{
		
	
	
	$insertar = $conexion->query("INSERT INTO usuario(username,contrasena) VALUES ('$user','$pass')");
	if ($insertar){
		echo "te has registrado correctamente";
	    }
	}
}
//en register y en (login) en la parte de pass modificar el md5 si se quiere logear el dibu porque su contraseña estaba sin md5

?>
</body>
</html>