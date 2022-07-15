<%@page import="Clases.SociosDAO" %>
<%@page import="Clases.Socios" %>
<%@page import="java.util.List"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Socios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link href="css\style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/233d46ab1e.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kanit&family=Mukta&display=swap" rel="stylesheet">
</head>

<body>

<nav class="container-fluid nav">
	<h2 class="text-center">Listado de Alumnos</h2>
	<a class="btn btn-success m-2" href="SociosController?accion=nuevo">Añadir Socio   <i class="fa-solid fa-user-plus"></i></a>
  </nav>

<main>
<div class="container-fluid" >
	<div class="row tabla">

		<table class="table table-primary" >
		<thead class="text-center">
			<th>N° Id</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>DNI</th>
			<th>E-Mail</th>
			<th>Teléfono</th>
			<th>Estado</th>
			<th class="text-center">Modificar</th>
			<th class="text-center">Eliminar</th>				
		</thead>
		
		<%
		List<Socios> resultado=null;
		SociosDAO socio=new SociosDAO();
		resultado=socio.listarSocios();
			
		for(int i=0;i<resultado.size();i++)
		{
		String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId_socio();	
		String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId_socio();
		%>			
		<tr>
		<td><%=resultado.get(i).getId_socio()%></td>				
		<td><%=resultado.get(i).getNombre() %></td>				
		<td><%=resultado.get(i).getApellido() %></td>
		<td><%=resultado.get(i).getDni()%></td>
		<td><%=resultado.get(i).getMail() %></td>
		<td><%=resultado.get(i).getTelefono() %></td>
		<td id="estado_id"><%=resultado.get(i).getEstado()%></td>
		<td class="text-center"><a href=<%=ruta%>><i class="fa-solid fa-pencil"></i></a></td>
		<td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-trash"></i></a></td>
		</tr>
		
		<%
		}
		%>
		

		</table>
		
	</div>
</div>
</main>
</body>
</html>