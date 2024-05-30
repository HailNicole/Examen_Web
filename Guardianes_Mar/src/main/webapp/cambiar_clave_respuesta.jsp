<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.examen.seguridad.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/registrar_usuario.css">
<body>
<jsp:include page="header.html" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<div class="texto-incio">
							<h1>Cambiar Clave</h1>
						</div>
								<%
								String em = request.getParameter("txtEmail");
								String cn=request.getParameter("txtPswd");
								String cc=request.getParameter("txtPswdC");
							    
								if(cn.equals(cc)){
								    Usuario user = new Usuario();
								    boolean res=user.CambiarClave(cc, em);
								    if(res){
							    %>
								    	<h2>Su clave ha sido actualizada exitósamente.</br>
								<%
								    }else{
								%>
								    	<h2>Algo malo pasó al momento de actualizar su clave</br>
								    	Por favor, vuelva a intentarlo.
								    	</h2>
								<%
								    }
								
								}else{
									response.sendRedirect("cambiar_clave.jsp");
								}%>
								

							<button type="button" class="btn1"
							onclick="window.location.href = 'login.jsp'">
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