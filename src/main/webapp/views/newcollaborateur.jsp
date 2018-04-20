<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css">

<title>Hello, world!</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href=""<%=request.getContextPath()%>/index.jsp">LOG</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href=""<%=request.getContextPath()%>/views/listerCollaborateurs.jsp">Collaborateurs <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href=""<%=request.getContextPath()%>/views/statistiques.jsp">statistiques</a></li>
				<li class="nav-item"><a class="nav-link" href=""<%=request.getContextPath()%>/views/activites.jsp">Activit�s</a>
				</li>
			</ul>
		</div>
	</nav>

	<h1>Les collaborateurs</h1>

	<form method="post"
		action="http://localhost:8080/sgp/collaborateurs/editer">
		<div class="form-group">
			<label for="Nom : ">Nom</label> <input type="text" id="nom" name="nom"
				aria-describedby="nom" placeholder="Enter nom">
		</div>
		<div class="form-group">
			<label for="Prenom : ">Prenom</label> <input type="text" id="Prenom" name="prenom"
				aria-describedby="Prenom" placeholder="Enter Prenom">
		</div>
		<div class="form-group">
			<label for="naissance : ">Date de naissance</label> <input
				type="text" id="naissance" aria-describedby="naissance" name="naissance"
				placeholder="Enter naissance">
		</div>
		<div class="form-group">
			<label for="adresse : ">Adresse</label> <input type="text"
				id="adresse" aria-describedby="adresse" placeholder="Enter adresse" name="adresse">
		</div>
		<div class="form-group">
			<label for="securité : ">Sécurité social</label> <input
				type="text" id="securité" aria-describedby="securité"
				placeholder="Enter code Sécurité social" name="securite">
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
