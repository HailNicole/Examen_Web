<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.examen.negocio.*" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/noticia.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
					<div class="titulo-incial">
						<h1>Añada una nueva noticias!</h1>
					</div>
							<%
								Noticia n = new Noticia();
								List<String> content=n.consultarNoticias();
								int cont=0;
								for(String a:content){
									out.print(a);
									cont++;
								}
							%>
						<button type="button" class="btn-noticia1"
						onclick="window.location.href = 'ingresar_noticia.jsp'">
						Añadir Noticia</button>
						<button type="button" class="btn-noticia1"
						onclick="window.location.href = 'borrar_noticia.jsp'">
						Borrar Noticia</button>
					</div>
				</section>
				<jsp:include page="aside.html" />
				<div class="clearfix"></div>
			</div>
		</div>
<jsp:include page="footer.html" />
</body>
</html>