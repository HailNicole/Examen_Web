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
<link rel="stylesheet" type="text/css" href="estilos/ingresar_noticia.css">
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
							<form action="respuesta_add_noticia.jsp" method="post">
								<div class="div1">
									<label>Imagen</label>
									<input type="file" id="filepicker" name="FotoNoticia" accept="image/*" />
								</div>
								<div class="div2">
									<label>Encabezado</label><input type="text" name="txtTitulo" required />
								</div>
								<div class="div3">
									<label>Contenido</label>
									<textarea id="texto" name="txtContenido" rows="10" cols="30"></textarea>
								</div>
								<div class="div4">
									<label>Enlace Oficial</label><input type="text" name="txtPath" required/>
								</div>
								<div class="div5">
									<input type="submit" value="Agregar Noticia"/>
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