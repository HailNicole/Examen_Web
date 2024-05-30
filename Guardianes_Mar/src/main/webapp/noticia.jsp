<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.examen.negocio.*" import="java.util.*" import="com.examen.seguridad.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/noticia.css">
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
						<h1>Noticias</h1>
							<%
								Noticia n = new Noticia();
								List<String> content=n.consultarNoticias();
								int cont=0;
								for(String a:content){
									out.print(a);
									cont++;
								}
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