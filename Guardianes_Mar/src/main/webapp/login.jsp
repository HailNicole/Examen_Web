<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Guardianes del Mar</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos/index.css">
<link rel="stylesheet" type="text/css" href="estilos/contenido.css">
<link rel="stylesheet" type="text/css" href="estilos/login.css">
<body>
<jsp:include page="header.html" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<div class="texto-incio">
							<h1>Inicio de Sesión</h1>
						</div>
						<%
						String error = request.getParameter("error");
						if (error != null) {
						%>
						    <div class="error-message">
						        <%= error %>
						    </div>
						<%
						}
					%>
					<div class="contenedor-form">
						<form action="verificar_login.jsp" method="post">
							<div class="div1">
								<label>Correo Electrónico</label><input type="email" name="txtUser" required />
							</div>
							<div class="div2">
								<label>Contraseña</label><input type="password" name="txtPswd" required/>
							</div>
							<div class="div3">
								<input type="submit" value="Ingresar"/>
								<input type="reset" value="Reestablecer"/>
								<div class="ref-crear-cuenta">
								<a href="registrar_usuario.jsp">Crear Cuenta</a></div>
								<a href="cambiar_clave.jsp">Cambiar Contraseña</a></div>
							</div>
						</form>
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