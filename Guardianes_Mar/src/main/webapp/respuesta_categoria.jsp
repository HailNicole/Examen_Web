<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/historias.css">
<body>
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<h1>Guías de Apoyo</h1>
						<%
							String idCategoria = request.getParameter("cmbCategoria");
						if(idCategoria != null && !idCategoria.isEmpty()){
							if(idCategoria.equals("1")){
								response.sendRedirect("guia_casa.jsp");
							}else if(idCategoria.equals("2")){
								response.sendRedirect("guia_educacion.jsp");
							}else if(idCategoria.equals("3")){
								response.sendRedirect("guia_trabajo.jsp");
							}
						}else{
							out.print("No hay guias de esa categoría");
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