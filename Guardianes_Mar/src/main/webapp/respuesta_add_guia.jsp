<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.examen.negocio.*"%>
    <%@ page import="java.io.File" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/ingresar_noticia.css">
<body>
<jsp:include page="menu.jsp" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<h1>Guias</h1>
						<div class = "contenedor-form">
						<%
							String titulo = request.getParameter("txtTitulo");
							String contenido = request.getParameter("txtContenido");
							String imagen = request.getParameter("FotoNoticia");
							int perfil = Integer.parseInt(request.getParameter("cmbCategoria"));
							String dir = null;
						    
							String[] archivosSelecionados = request.getParameterValues("FotoNoticia");
							  if (archivosSelecionados != null) {
							    for (String archivo : archivosSelecionados) {
							      File file = new File(archivo);
							      String filePath = "C:\\Users\\Public\\Pictures\\";
							      dir =  filePath+file.getName();
							    }
							  } else {
							    out.println("No se ha seleccionado ningún archivo.");
							  }	
							
						   	Guia g = new Guia();
						    boolean res=g.ingresarGuia(titulo, contenido, perfil, dir);
						    if(res){
					    %>
						    	<h2>Su guia ha sido ingresada exitósamente.</br></h2>
						<%
						    }else{
						%>
						    	<h2>Algo malo pasó al momento de registrar su guia</br>
						    	Por favor, vuelva a intentarlo.
						    	</h2>
						<%
						    }
						%>
						<button type="button" class="btn-noticia1"
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