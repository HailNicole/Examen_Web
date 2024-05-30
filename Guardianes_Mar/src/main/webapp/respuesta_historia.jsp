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
<link rel="stylesheet" type="text/css" href="estilos/ingresar_historia.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<%
							String contenido = request.getParameter("txtHistoria");
						    
						   	Historia h = new Historia();
						    boolean res=h.ingresarHistoria(contenido);
						    if(res){
					    %>
						    	<h2>Su historia ha sido ingresada exitósamente.</br>
						    	Espera Hasta que el administrador valide tu historia</h2>
						<%
						    }else{
						%>
						    	<h2>Algo malo pasó al momento de registrar su historia</br>
						    	Por favor, vuelva a intentarlo.
						    	</h2>
						<%
						    }
						%>
						<button type="button" class="btn1"
						onclick="window.location.href = 'add_historia.jsp'">
						Regresar</button>
					</div>
				</section>
				<jsp:include page="aside.html" />
				<div class="clearfix"></div>
			</div>
		</div>
<jsp:include page="footer.html" />
</body>
</html>