<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/ingresar_historia.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<h1>Historias</h1>
						<div class = "contenedor-form">
						<%
							int id=Integer.parseInt(request.getParameter("cod"));
						   	Historia h = new Historia();
						    boolean res=h.EliminarHitoria(id);
						    if(res){
					    %>
						    	<h2>La Historia ha sido borrada exitósamente.</br></h2>
						<%
						    }else{
						%>
						    	<h2>Algo malo pasó al momento de borrar la historia</br>
						    	Por favor, vuelva a intentarlo.
						    	</h2>
						<%
						    }
						%>
						<button type="button" class="btn-noticia1"
						onclick="window.location.href = 'add_historia_admin.jsp'">
						Regresar</button>
						</div>
					</div>
				</section>
				<jsp:include page="aside.html" />
				<div class="clearfix"></div>
			</div>
		</div>
<jsp:include page="footer.html" />
</body>
</html>