<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.examen.seguridad.*"%>
<link rel="stylesheet" type="text/css" href="estilos/menu.css">
<jsp:include page="header.html" />
<%
String usuario;
HttpSession sesion = request.getSession();
 if (sesion.getAttribute("txtUser") == null) //Se verifica si existe la variable 
 {
 %>
 <jsp:forward page="login.jsp">
 <jsp:param name="error" value="Debe registrarse en el sistema."/>
 </jsp:forward>
 <%
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
