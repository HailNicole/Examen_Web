<%@ page language="java" contentType="text/html; charset=UTF-8"
    session="true" pageEncoding="UTF-8" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/historias.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
					<div class="titulo-incial">
						<h1>Inspirate con estás conmovedoras historias</h1>
					</div>
						<div class = "item-historia">
							<%
							Historia h = new Historia();
							String content=h.consultarHitorias();
							out.print(content);
							%>
						</div>
						<button type="button" class="btn-noticia1"
						onclick="window.location.href = 'ingresar_historia_admin.jsp'">
						Añadir Historia</button>
						<button type="button" class="btn-noticia1"
						onclick="window.location.href = 'borrar_historia.jsp'">
						Borrar Historia</button>
					</div>
				</section>
				<jsp:include page="aside.html" />
				<div class="clearfix"></div>
			</div>
		</div>
<jsp:include page="footer.html" />
</body>
</html>