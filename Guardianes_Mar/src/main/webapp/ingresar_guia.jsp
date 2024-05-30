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
						<h1>Escribe una Guía</h1>
					</div>
						<div class = "contenedor-form">
							<form action="respuesta_add_guia.jsp" method="post">
								<div class="div1">
									<label>Imagen</label>
									<input type="file" id="filepicker" name="FotoNoticia" accept="image/*" />
								</div>
								<div class="div2">
									<label>Titulos</label><input type="text" name="txtTitulo" required />
								</div>
								<div class="div3">
									<label>Contenido</label>
									<textarea id="texto" name="txtContenido" rows="10" cols="30"></textarea>
								</div>
								<div class="div4">
									<label for="cmbCategoria"><b>Categoría</b></label>
										<%
										  Guia cat = new Guia();
										  String combohtml = cat.mostrarCategoria();
										  out.print(combohtml);
										%>
								</div>
								<div class="div5">
									<input type="submit" value="Agregar Guía"/>
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