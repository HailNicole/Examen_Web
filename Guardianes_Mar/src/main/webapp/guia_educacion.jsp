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
						<div class="titulo-incial">
							<h1>Guías para el ambito educacional</h1>
						</div>
							<%
							Guia g = new Guia();
						 	List<String> titulo=g.consultarGuiasTitulo(2);
						 	List<String> content=g.consultarGuiasContenido(2);
						 	List<String> imagen=g.consultarGuiasImagen(2);
						 	int cont=0;
						 	if(content.isEmpty()){
						 		out.println("<h2>No hay Guías en esta categoría</h2>");
						 		return;
						 	}
				            for(String a: content){
				            	 out.println("<div class='nuevo-item'>");
				            	 out.println("<div class='guia'>");
				            	 out.println("<div class='encabezado'>");
				            	 out.println("<h2>" +titulo.get(cont)+"</h2>");
				            	 out.println("</div>");
				            	 out.println("<div class='cont-img'>");
				            	 out.println(imagen.get(cont));
				            	 out.println("</div>");
				            	 String texto = String.valueOf(a);
				            	 String[] secciones =  texto.split("\\d+\\.\\s+");
						            for (int i = 1; i < secciones.length; i++) {
						                String seccion = secciones[i].trim();
						                out.println("<div class='contenido'>");
						                out.println("<h2>Paso " + (i + 0) + "</h2>");
						                out.println("<p>" + seccion + "</p>");
						                out.println("</div>");
						            }
						         out.println("</div>");
						         out.println("</div>");
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