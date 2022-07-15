<%@page import="Clases.SociosDAO" %>
<%@page import="Clases.Socios" %>
<%@page import="java.util.List"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link href="css\styleN.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/233d46ab1e.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kanit&family=Mukta&display=swap" rel="stylesheet">
</head>

<body>

	<div class="container-fluid mt-4 socio">		
		<h1>Añadir Socio</h1>
	</div>

	<div class="container-fluid">

		<div class="row formulario">
		
		<form class="p-3" action="SociosController?accion=insert" method="post">
			
			<div class="mb-3">
				<label for="nombre" class="form-label" >Nombre</label>
				<input type="text" class="form-control" id="nombre" name="nombre" required>
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label" >Apellido</label>
				<input type="text" class="form-control" id="apellido" name="apellido" required>
			</div>
			
			<div class="mb-3">
				<label for="dni" class="form-label" >DNI</label>
				<input type="text" class="form-control" id="dni" name="dni" required>
			</div>
			
			<div class="mb-3">
				<label for="mail" class="form-label" >E-mail</label>
				<input type="text" class="form-control" id="mail" name="mail" required>
			</div>
			
			<div class="mb-3">
				<label for="telefono" class="form-label" >Teléfono</label>
				<input type="text" class="form-control" id="telefono" name="telefono" required>
			</div>
			
			<div class="mb-3">
				<label for="estado" class="form-label" required>Estado</label>
				<br>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="estado" id="estado" value="Inactivo">
				  <label class="form-check-label" for="estado">Inactivo</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="estado" id="estado" value="Activo" checked>
				  <label class="form-check-label" for="estado">Activo</label>
				</div>
			</div>
			
			<div class="text-center">
				<button type="submit" class="btn btn-primary" id="insertardato">Añadir  <i class="fa-solid fa-check"></i></button>
			</div>
			
			</form>
		</div>	
	
	
	</div>

</body>
</html>