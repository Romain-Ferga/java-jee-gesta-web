<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Premiere page Appelant Servlet</title>
</head>
<body>
<p>
<%for (int i =0;i < 3; i++) { %>
Ceci est une <%= i+1 %>ème ligne
de texte généré par <I>Java</I><br/> <% }%>
</p><p>
Ceci est un lien HTML générant une requête <u>HTTP <b>GET</b></u> : <a href="helloAction?nomTransmi=Dilogic">Invocation de la servlet</a> </p>
</body>
</html>