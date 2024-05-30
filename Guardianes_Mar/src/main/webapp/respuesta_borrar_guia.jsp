<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.examen.negocio.*"%>
    <%@ page import="java.io.File" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/guias.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<h1>Guía</h1>
						<div class = "contenedor-form">
						<%
						
							int id=Integer.parseInt(request.getParameter("cmbId"));
						   	Guia g = new Guia();
						    boolean res=g.EliminarGuia(id);
						    if(res){
					    %>
						    	<h2>La guía ha sido borrada exitósamente.</br></h2>
						<%
						    }else{
						%>
						    	<h2>Algo malo pasó al momento de borrar la guía</br>
						    	Por favor, vuelva a intentarlo.
						    	</h2>
						<%
						    }
						%>
						<button type="button" class="btn1"
						onclick="window.location.href = 'add_guia.jsp'">
						Regresar</button>
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