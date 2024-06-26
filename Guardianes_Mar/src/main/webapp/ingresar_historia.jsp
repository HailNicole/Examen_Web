<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
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
						<div class="titulo-incial">
							<h1>Escribe tu historia!!</h1>
						</div>
						<form action="respuesta_historia.jsp" method="post">
							<div class="div-1">
								<textarea id="texto" name="txtHistoria" rows="10" cols="30" 
								placeholder="Ingresa aquí tu historia"></textarea>
							</div>
							<div class="div-2">
								<input type="submit" value="Publicar Historia"/>
								<input type="reset" value="Reestablecer"/>
							</div>
						</form>
					</div>
				</section>
				<jsp:include page="aside.html" />
				<div class="clearfix"></div>
			</div>
		</div>
<jsp:include page="footer.html" />
</body>
</html>