<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Inscription</title>
	<link rel="stylesheet" href="<%=request.getContextPath()+"/css/bootstrap.min.css"%>"/>
     <link rel="stylesheet" href="<%=request.getContextPath()+"/css/styles.css"%>" />
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
                <h1>Inscription</h1>
            </header>
            <div class="inscription">
            	<form action="registerAction" method="post" >
            		<div class="form-group form-group-xs">
            			<label for="homme">Homme</label>
                        <input type="radio" id="homme" name="sexe" value="1" checked/>
                    
                        <label for="femme">Femme</label>
                        <input type="radio" id="femme" name="sexe" value="2"/>
                    </div>
            		<div class="form-group form-group-lg">
                        <input type="text" class="form-control no-border" id="nom" placeholder="Nom" name="nom"/>
                    </div>
            		<div class="form-group form-group-lg">
                        <input type="text" class="form-control no-border" id="prenom" placeholder="Prénom" name="prenom"/>
                    </div>
            		<div class="form-group form-group-lg">
                        <input type="text" class="form-control no-border" id="numClient" placeholder="Numéro Client" name="numClient"/>
                    </div>
            		<div class="form-group form-group-lg">
                        <input type="text" class="form-control no-border" id="address" placeholder="Adresse" name="address"/>
                    </div>
            		<div class="form-group form-group-lg">
                        <input type="text" class="form-control no-border" id="codePostal" placeholder="Code Postal" name="codePostal"/>
                    </div>
            		<div class="form-group form-group-lg">
                        <input type="text" class="form-control no-border" id="login" placeholder="Login" name="login"/>
                    </div>
                    <div class="form-group form-group-lg">
                        <input type="password" class="form-control no-border" id="password" placeholder="Password" name="password"/>
                    </div>
                    <button type="submit" class="btn btn-success no-border btn-lg btn-block">Valider</button>
            	</form>
            </div>
    	</div>
    </section>
</body>

</html>