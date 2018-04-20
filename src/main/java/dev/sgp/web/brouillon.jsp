@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		String datedenaissance = req.getParameter("naissance");
		String adresse = req.getParameter("adresse");
		String securiteParam = req.getParameter("securite");
		String matr = "M"+val;
		val ++;
		String email = prenomParam + "."+ nomParam + "@societe.com";
		String photo = "/image/photo.jpg";
		LocalDateTime dateHeureCreation = LocalDateTime.now();
		
		if(securiteParam == null || nomParam == null || prenomParam == null || datedenaissance == null || adresse == null){
			resp.sendError(400, "mettez une valeur dans chaque zone");		
		}
		else if(securiteParam.isEmpty() || nomParam.isEmpty() || prenomParam.isEmpty() || datedenaissance.isEmpty() || adresse.isEmpty()){
			resp.sendError(400, "mettez une valeur dans chaque zone");		
		}
		else if(securiteParam.length() == 15){
			resp.sendError(400, "code de sécurité social incorrect");		
		}
		else{
			resp.setStatus(201);	
			
			//resp.getWriter().write("Bonjour, je suis une personne ! avec le matricule " + matrParam  + " avec le nom " + nomParam +"et avec le prenom " + prenomParam); 
		}