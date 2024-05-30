<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.examen.negocio.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/revisar_historia.css">
<body>
<jsp:include page="header.html" />
		<div id="contenido">
			<div class="agrupar">
			<jsp:include page="menu.jsp" />
				<section class="seccion">
					<div class="contenedor-section">
						<div class="titulo-incial">
							<h1>Historias por Validar</h1>
						</div>
							<%
								int cod=Integer.parseInt(request.getParameter("cod"));
								Historia  h= new Historia();
								h.ConsultarValidarHistoria(cod);
							%>
						<form action="respuesta_validar.jsp" method="post">
						    <table>
						        <thead>
						            <tr>
						                <th class="col-1">ID</th>
						                <th class="col-2">CONTENIDO</th>
						            </tr>
						        </thead>
						        <tbody>
						            <tr>
						                <td><%=h.getId()%></td>
						                <td><%=h.getContenido()%></td>
						            </tr>
						        </tbody>
						    </table>
						    <input type="hidden" name="h_id" value=<%=h.getId()%>>
						    <input type="hidden" name="h_c" value=<%=h.getContenido()%>>
						    <input type="submit" value="Validar" name="boton"/>
							<input type="submit" value="Borrar" name="boton"/>
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