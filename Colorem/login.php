<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foodies | Login</title>
    <link rel="icon" href="img/core-img/favicon.ico" >
    <link rel="stylesheet" href="css/styles.css"> 
</head>
<body>
    <div class="form-inputs-contentedor">
        <div>
            <h2 class="input-h2">Ingresa</h2>
        </div>
        <form action="validar.php" method="POST">
        <input class="input-nombre" type="text" name="usuario" placeholder="Nombre">
        <br>
        <input class="input-nombre" type="password" name="contrasena" placeholder="Contraseña">
        <br>
        <input class="input-ingresar" type="submit" name="login" value="Ingresar">
        
        </form>
        <div>
            <small class="imput-small">
                ¿No tienes una cuenta? <a class="volver-btn2" href="register.php">Crea tu cuenta</a>
            </small>
        </div>
    </div>
    </body>
</html>