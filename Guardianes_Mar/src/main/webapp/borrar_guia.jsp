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
<link rel="stylesheet" type="text/css" href="estilos/guias.css">
<link rel="stylesheet" type="text/css" href="estilos/guias.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
					<div class="titulo-incial">
						<h1>Guías</h1>
					</div>
						<div class = "contenedor-form">
							<form action="respuesta_borrar_guia.jsp" method="post">
								<div class="div1">
									<label>Seleccione el Id de la Guía que desea borrar</label>
								</div>
								<div class="div2">
									<%
									    Guia g = new Guia();
										String combohtml = g.mostrarGuiaID();
										out.print(combohtml);
							    	%>
								</div>
								<div class="div5">
									<input type="submit" value="Borrar Guía"/>
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