<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page session="true" %>
	<%
	HttpSession sesionOk = request.getSession();
	sesionOk.invalidate();
	%>
	<jsp:forward page="login.jsp"/>
</body>
</html>