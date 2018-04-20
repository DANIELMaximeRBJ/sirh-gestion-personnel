<%@page import="dev.sgp.util.Constantes"%>
<%@page import="dev.sgp.service.CollaborateurService"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">

<title>Collaborateur</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">LOG</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="<%=request.getContextPath()%>/views/listerCollaborateurs.jsp">Collaborateurs <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/views/statistiques.jsp">statistiques</a></li>
				<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/views/activites.jsp">ActivitÃ©s</a>
				</li>
			</ul>
		</div>
	</nav>
	<h1>Les collaborateurs</h1>
	<div align="right" class="mb-2">
		<a href="<%=request.getContextPath()%>/views/newcollaborateur.jsp" class="btn btn-primary">Ajouter un
			nouveau collaborateur</a>
	</div>

	<form class="ml-4">
		<div class="form-group row">
			<label for="inputPassword" class="col-sd-auto col-form-label ">recherche
				un nom ou prenom qui commence par:</label>
			<div class="col-sm-3">
				<input class="form-control" type="text">
			</div>
			<button type="button" class="btn btn-primary">Rechercher</button>
			<div class="form-check">
				<div class="ml-2">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">voir
						les collaborateurs dÃ©sactivÃ©</label>
				</div>
			</div>
		</div>
	</form>

	<div class="dropdown">
		Filtrer par dÃ©partement:
		<button class="btn btn-secondary dropdown-toggle" type="button"
			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">Tous</button>
		<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			<a class="dropdown-item" href="#">CompatibilitÃ©</a> <a
				class="dropdown-item" href="#">RH</a> <a class="dropdown-item"
				href="#">IT</a>
		</div>
	</div>

	<div class="form-group row">

<%
for(int i =0; i < Constantes.COLLAB_SERVICE.listerCollaborateurs().size(); i++){	
%>
		<div class="mb-2">
			<div class="ml-4">
				<div class="card" style="width: 30rem;">
					<div class="card-header"><%=Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getNom()%> <%=Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getPrenom()%></div>
					<div class=" card-body form-group row">
							<img class="card-img-top" src="<%=request.getContextPath()%><%=Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getPhoto()%>" alt="Card image cap" style=width:40%;height:40%>
						<div class="form-group col">
							<p class="ml-3">Naissance : <%=Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getNaissance()%></p>
							<p class="ml-3">Securité social : <%=Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getSecurite()%></p>
							<p class="ml-3">Mail : <%=Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getEmailpro()%></p>
							<p class="ml-3">adresse : <%=Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getAdresse()%></p>
						</div>
					</div>
					<div align="right" class="mr-2">
						<button type="button" class="btn btn-primary">Modifier</button>
					</div>
				</div>
			</div>
		</div>
<%
}
%>


	</div>
	<script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
</body>
</html>