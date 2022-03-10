<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>Page d'Accueil</title>
<link rel="stylesheet" href="<%=request.getContextPath()+"/css/styles.css"%>" />
</head>
<body>
	<p class="styleEspUtilisateur">
		Bienvenue M. <b> <% 
            	String attributNom = request.getSession().getAttribute("paramNom").toString();
            	out.println(attributNom);
            %>
		</b> <br />
	<ul>
		<li>Infos Serveurs : <b>
		
			<% 
				String infoServer = "Name = " + request.getServerName() + "\nPort = " + request.getServerPort() + "\nProtocol = " + request.getProtocol() + "\nScheme = " + request.getScheme();
				out.println(infoServer);
			%></b>
			
		</li>
		<li>Racine projet : <b>
		
			<% 
				String projectRoot = request.getContextPath();
				out.println(projectRoot);
			%></b>
			
		</li>
		<li>URL : <b>
		
			<% 
				StringBuffer url = request.getRequestURL();
				out.println(url.toString() + "<br/>");
				
				String url2 = request.getServletPath();
				out.println(url2.toString());
			%></b>
			
		</li>
	</ul>
	<br />

</body>
</html>