<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.examen.negocio.*" import="com.examen.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/guias.css">
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
						<h1>Escoge una Categoría</h1>
						<form action = "respuesta_categoria.jsp" method = "post">
							<label for="cmbCategoria"><b>Busca una Categoría</b></label>
								<%
								    Guia g = new Guia();
									String combohtml = g.mostrarCategoria();
									out.print(combohtml);
							    %>
							<input type="submit" value="Buscar"/>
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