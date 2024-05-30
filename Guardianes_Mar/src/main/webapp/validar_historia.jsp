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
<link rel="stylesheet" type="text/css" href="estilos/validar_historia.css">
<body>
<jsp:include page="header.html" />
		<div id="contenido">
			<div class="agrupar">
			<jsp:include page="menu.jsp" />
				<section class="seccion">
					<div class="contenedor-section">
						<h1>Historias por Validar</h1>
							<%
								Historia h = new Historia();
								String content=h.consultarHitoriasaValidar();
								out.print(content);
							%>
					</div>
				</section>
				<jsp:include page="aside.html" />
				<div class="clearfix"></div>
			</div>
		</div>
<jsp:include page="footer.html" />
</body>
</html>