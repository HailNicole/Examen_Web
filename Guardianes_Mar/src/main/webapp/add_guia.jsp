<%@ page language="java" contentType="text/html; charset=UTF-8"
    session="true" pageEncoding="UTF-8" import="com.examen.negocio.*" import="java.util.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/guias.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
					<div class="titulo-incial">
						<h1>Escoge una Categoría</h1>
					</div>
						<form action = "respuesta_categoria.jsp" method = "post">
							<label for="cmbCategoria"><b>Busca una Categoría</b></label>
								<%
								    Guia g = new Guia();
									String combohtml = g.mostrarCategoria();
									out.print(combohtml);
							    %>
							<input type="submit" value="Buscar"/>
						</form>
						<button type="button" class="btn-noticia1"
						onclick="window.location.href = 'ingresar_guia.jsp'">
						Añadir Guía</button>
						<button type="button" class="btn-noticia1"
						onclick="window.location.href = 'borrar_guia.jsp'">
						Borrar Guía</button>
					</div>
				</section>
				<jsp:include page="aside.html" />
				<div class="clearfix"></div>
			</div>
		</div>
<jsp:include page="footer.html" />
</body>
</html>