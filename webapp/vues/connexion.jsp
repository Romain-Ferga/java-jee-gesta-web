<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8" />
    <title>Connexion </title>
     <link rel="stylesheet" href="<%=request.getContextPath()+"/css/bootstrap.min.css"%>"/>
     <link rel="stylesheet" href="<%=request.getContextPath()+"/css/styles.css"%>" />
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">TACHES</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="taches.html">Taches</a></li>
                    <li><a href="utilisateurs.html">Utilisateurs</a></li>
                    <li><a href="inscription.html">Inscription</a></li>
                    <li><a href="connexion.html">Connexion</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <section class="container">
        <div class="pages">
            <header>
                <h1>Connexion</h1>
            </header>
            <div class="connexion">
                <form action="loginAction" method="post" >
                    <div class="form-group form-group-lg">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control no-border" id="email" placeholder="Email" name="email"/>
                    </div>
                    <div class="form-group form-group-lg">
                        <label for="pwd">Password</label>
                        <input type="password" class="form-control no-border" id="pwd" placeholder="Password" name="password"/>
                    </div>
                    <div class="checkbox text-center">
                        <label>
                            <input type="checkbox"> Remenber me
                        </label>
                    </div>
                    <button type="submit" class="btn btn-success no-border btn-lg btn-block">Enter</button>
                    <p id="pError">
	                    <font color="red">
							<% 
				            	String attributError = (String) request.getAttribute("paramError");
				        		if (attributError != null)    	
									out.println(attributError);
			          		%> 
						</font>
					</p>
                </form>
                
                <c:set var = "error" scope = "session" value = "request.getAttribute(\"error\").toString();"/>
			    <c:if test = "${error == true}">
			       <p class="errorWithTagLibIf">LOGIN / PASSWORD INCORRECT "c:if"<p>
			    </c:if>
			    
            </div>
        </div>
    </section>
</body>

</html>
