<%@page import="Clases.SociosDAO" %>
<%@page import="Clases.Socios"%>
<%@page import="java.util.List"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link href="css\styleM.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/233d46ab1e.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kanit&family=Mukta&display=swap" rel="stylesheet">
</head>

<body>
	<div class="container-fluid">
	
		<div class="row socio">
			<h1>Modificar Socio</h1>
		</div>
		
		<div class="row formulario">
				<%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO  socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
				%>
		
		<form class="p-3" action="SociosController?accion=actualizar" method="post">
			
			<div class="mb-3">
				<label for="id" class="form-label" hidden >Id</label>
				<input type="number" class="form-control" id="id" name="id" hidden value=<%=resultado.getId_socio() %> >
			</div>
			
			
			<div class="mb-3">
				<label for="nombre" class="form-label" >Nombre</label>
				<input type="text" class="form-control" id="nombre" name="nombre"  value=<%=resultado.getNombre() %> >
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label" >Apellido</label>
				<input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido() %> >
			</div>
			
			<div class="mb-3">
				<label for="dni" class="form-label" >DNI</label>
				<input type="text" class="form-control" id="dni" name="dni" value=<%=resultado.getDni() %> >
			</div>
			
			<div class="mb-3">
				<label for="mail" class="form-label" >E-mail</label>
				<input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail() %> >
			</div>
			
			<div class="mb-3">
				<label for="telefono" class="form-label" >Teléfono</label>
				<input type="text" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono() %> required>
			</div>
						
			<div class="mb-3">
				<label for="estado" class="form-label" >Estado</label>
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
			<button type="submit" class="btn btn-primary" id="insertardato">Guardar  <i class="fa-solid fa-user-check"></i></button>
			</div>

			</form>
		
		</div>	
	
	</div>

</body>
</html>