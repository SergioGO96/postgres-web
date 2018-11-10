<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Conexión Postgres</title>
  
      <link rel="stylesheet" href="views/css/style.css">

</head>

<body>
  	

<form action="/Conectar" method="post">
  <h2>Datos de conexión</h2>
		<p>
			<label for="Usuario" class="floatLabel">Usuario</label>
			<input id="Usuario" name="Usuario" type="text">
		</p>
		<p>
			<label for="Password" class="floatLabel">Password</label>
			<input id="Password" name="Password" type="password">
		</p>
		<p>
			<label for="Base de Datos" class="floatLabel">BasedeDatos</label>
			<input id="Base de Datos" name="BasedeDatos" type="text">
		</p>
		<p>
			<label for="Host" class="floatLabel">Host</label>
			<input id="Host" name="Host" type="host">
		</p>
		<p>
			<input type="submit" value="Conectar" id="submit">
		</p>
	</form>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="views/js/index.js"></script>

</body>
</html>
