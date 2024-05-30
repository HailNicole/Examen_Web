<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.examen.negocio.*" import="java.util.*" import="com.examen.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/recursos.css">
<link rel="stylesheet" type="text/css" href="estilos/menu.css">
<body>
<jsp:include page="header.html" />
<%
String usuario;
HttpSession sesion = request.getSession();
 if (sesion.getAttribute("txtUser") == null) //Se verifica si existe la variable 
 {
 }
 else
 {
 usuario=(String)sesion.getAttribute("txtUser"); //Se devuelve los valores de atributos
 int perfil=(Integer)sesion.getAttribute("perfil");

 out.println("<div class='menu'>");
 out.println("<div class='contenido-menu'>");
 out.println("<h1>Sitio Privado Usuarios Registrados</h1>");
out.println("<h4>Bienvenido");
%>
<%
out.println(usuario);

out.println("</h4>");

Pagina pag=new Pagina();
String menu=pag.mostrarMenu(perfil);
out.println("<div class='contenido-menu-nav'>");
out.print(menu);
out.println("</div>");
out.println("</div>");
out.println("</div>");
}
%>
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<div class="titulo-incial">
							<h1>Recursos</h1>
						</div>
						<div class = "display-des">
							<div class = "item-des">
								<div class="div-des">
									<div class="rowd rowd-1"><img class="img1" width="579" height="380" 
										src="imagenes/icono-descarga.png" alt="descargas imagen" loading="lazy">
									</div>
									<div class="rowd rowd-2">
										<div class="texto">
											<h2>GUÍA DE BUENAS PRÁCTICAS AMBIENTALES</h2>
										</div>
									</div>
								</div>
								<div class="boton-des">
								<a href="descargables/GBPA.pdf" download="recurso.pdf">
									<button type="button" class="btn-des">
									Descargar Archivo</button></a>
								</div>
							</div>
							<div class = "item-des">
								<div class="div-des">
									<div class="row row-1"><img class="img1" width="579" height="380" 
										src="imagenes/icono-descarga.png" alt="descargas imagen" loading="lazy">
									</div>
									<div class="rowd rowd-2">
										<div class="texto">
											<h2>Guía de compra sostenible para consumidores</h2>
										</div>
									</div>
								</div>
								<div class="boton-des">
								<a href="descargables/Guia_Compra_Sostenible.pdf" download="recurso.pdf">
									<button type="button" class="btn-des">
									Descargar Archivo</button></a>
								</div>
							</div>
							<div class = "item-des">
								<div class="div-des">
									<div class="rowd rowd-1"><img class="img1" width="579" height="380" 
										src="imagenes/icono-descarga.png" alt="descargas imagen" loading="lazy">
									</div>
									<div class="rowd rowd-2">
										<div class="texto">
											<h2>PROYECTO DE RECICLAJE Y MEDIO AMBIENTE</h2>
										</div>
									</div>
								</div>
								<div class="boton-des">
								<a href="descargables/proyectodereciclaje.pdf" download="recurso.pdf">
									<button type="button" class="btn-des">
									Descargar Archivo</button></a>
								</div>
							</div>
							<div class = "item-des">
								<div class="div-des">
									<div class="rowd rowd-1"><img class="img1" width="579" height="380" 
										src="imagenes/icono-descarga.png" alt="descargas imagen" loading="lazy">
									</div>
									<div class="rowd rowd-2">
										<div class="texto">
											<h2>PROYECTO DE RECICLAJE Y MEDIO AMBIENTE</h2>
										</div>
									</div>
								</div>
								<div class="boton-des">
								<a href="descargables/reciclando_en_la_escuela.pdf" download="recurso.pdf">
									<button type="button" class="btn-des">
									Descargar Archivo</button></a>
								</div>
							</div>
							<div class = "item-des">
								<div class="div-des">
									<div class="rowd rowd-1"><img class="img1" width="579" height="380" 
										src="imagenes/icono-descarga.png" alt="descargas imagen" loading="lazy">
									</div>
									<div class="rowd rowd-2">
										<div class="texto">
											<h2>El reciclaje, la industria del futuro</h2>
										</div>
									</div>
								</div>
								<div class="boton-des">
								<a href="descargables/El reciclaje, la industria del futuro.pdf" download="recurso.pdf">
									<button type="button" class="btn-des">
									Descargar Archivo</button></a>
								</div>
							</div>
							<div class = "item-des">
								<div class="div-des">
									<div class="rowd rowd-1"><img class="img1" width="579" height="380" 
										src="imagenes/icono-descarga.png" alt="descargas imagen" loading="lazy">
									</div>
									<div class="rowd rowd-2">
										<div class="texto">
											<h2>HOJAS ORIENTATIVAS SOBRE LOS MEDIOS DE VIDA SOSTENIBLES</h2>
										</div>
									</div>
								</div>
								<div class="boton-des">
								<a href="descargables/HOJAS ORIENTATIVAS SOBRE LOS MEDIOS DE VIDA SOSTENIBLES.pdf" download="recurso.pdf">
									<button type="button" class="btn-des">
									Descargar Archivo</button></a>
								</div>
							</div>
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