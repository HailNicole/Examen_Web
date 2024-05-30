<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/ingresar_noticia.css">
<link rel="stylesheet" type="text/css" href="estilos/guias.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
					<div class="titulo-incial">
						<h1>Noticias</h1>
					</div>
						<div class = "contenedor-form">
							<form action="respuesta_borrar_noticia.jsp" method="post">
								<div class="div1">
									<label>Seleccione el Id de la noticia que desea borrar</label>
								</div>
								<div class="div2">
									<%
									    Noticia n = new Noticia();
										String combohtml = n.mostrarNoticiaID();
										out.print(combohtml);
							    	%>
								</div>
								<div class="div5">
									<input type="submit" value="Borrar Noticia"/>
									<input type="reset" value="Reestablecer"/>
								</div>
							</form>
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