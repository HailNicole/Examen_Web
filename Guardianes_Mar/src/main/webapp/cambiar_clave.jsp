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
<link rel="stylesheet" type="text/css" href="estilos/registrar_usuario.css">
<body>
<jsp:include page="header.html" />
		<div id="contenido">
			<div class="agrupar">
				<section class="seccion">
					<div class="contenedor-section">
						<div class="texto-incio">
							<h1>Cambiar Clave</h1>
							<h4>Si las contraseñas no coinciden, se volverá a cargar la página</h4>
						</div>
					<div class="contenedor-form">
						<form action="cambiar_clave_respuesta.jsp" method="post">
							<div class="div1">
								<label>Correo Electrónico<input type="email" name="txtEmail" required /></label>
							</div>
							<div class="div2">
								<label>Contraseña Nueva<input type="password" name="txtPswd" required/></label>
							</div>
							<div class="div3">
								<label>Confirmar Contraseña<input type="password" name="txtPswdC" required/></label>
							</div>
							<div class="div5">
								<input type="submit" value="Cambiar Contraseña"/>
								<input type="reset" value="Reestablecer"/>
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