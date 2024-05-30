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
						<%
							String nombre = request.getParameter("txtNombre");
							String usuario=request.getParameter("txtUser");
						    String clave=request.getParameter("txtPswd");
						    
						    Usuario user = new Usuario();
						    boolean res=user.ingresarUsuarioCliente(nombre, usuario, clave);
						    if(res){
						    	out.print("Registro Existoso");
					    %>
						    	<jsp:forward page="login.jsp">
						    	<jsp:param name="correcto" value="Registro Existoso"/>
						    	</jsp:forward>
						<%
						    }else{
						%>
						    	<jsp:forward page="login.jsp">
						    	<jsp:param name="error" value="Algo malo paso al momento de registrar el usuario</br>
						    	Vuelva a intentarlo"/>
						    	</jsp:forward>
						<%
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