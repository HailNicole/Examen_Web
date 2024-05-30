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
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
					<div class="titulo-incial">
						<h1>Historias por Validar</h1>
					</div>
							<%
							    if(request.getParameter("boton")!=null){
							    String botonPresionado = request.getParameter("boton");
								    if(botonPresionado.equals("Validar")){
								    	int id = Integer.parseInt(request.getParameter("h_id"));
								    	String cont = request.getParameter("h_c");
								    	Historia h = new Historia(id,cont,true);
								    	boolean f= h.estadoTrue(h);
										if(f==true){
											out.print("Validada Exitosamente");
											response.sendRedirect("validar_historia.jsp");
										}
								    }else if(botonPresionado.equals("Borrar")){
								    	int id = Integer.parseInt(request.getParameter("h_id"));
								    	Historia h = new Historia();
								    	boolean f= h.BorrarHistoria(id);
										if(f==true){
											out.print("Borrada Exitosamente");
											response.sendRedirect("validar_historia.jsp");
										}
								    }
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