<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Résultat du Get</title>
<link rel="stylesheet" href="<%=request.getContextPath()+"/css/styles.css"%>" />
</head>
<body>	
	<% if(request.getAttribute("email") != null && request.getAttribute("password") != null){

		out.println("hello");
		out.println(request.getAttribute("email").toString());
		out.println(request.getAttribute("password").toString());
		
	} %>
</body>
</html>