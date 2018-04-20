package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class EditerCollaborateurController extends HttpServlet {

	static int val =0;
	/*@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String matrParam = req.getParameter("matricule");
		if(matrParam == null){
			resp.sendError(400, "nous avons besoin d'un matricule");		
		}
		else if(matrParam.isEmpty()){
			resp.sendError(400, "mettez une valeur au matricule");		
		}
		else{
			PrintWriter out = resp.getWriter();
			out.write("Bonjour, je suis la servlet ! avec le matricule " + matrParam);
		}
	}*/
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String datedenaissance = req.getParameter("naissance");
		String adresse = req.getParameter("adresse");
		String securite = req.getParameter("securite");
		String matr = "M"+val;
		val ++;
		String emailpro = prenom + "."+ nom + "@societe.com";
		String photo = "/image/photo.jpg";
		ZonedDateTime dateHeureCreation = ZonedDateTime.now();
		
		if(securite == null || nom == null || prenom == null || datedenaissance == null || adresse == null){
			resp.sendError(400, "mettez une valeur dans chaque zone");		
		}
		else if(securite.isEmpty() || nom.isEmpty() || prenom.isEmpty() || datedenaissance.isEmpty() || adresse.isEmpty()){
			resp.sendError(400, "mettez une valeur dans chaque zone 2");		
		}
		else if(securite.length() != 15){
			resp.sendError(400, "code de sécurité social incorrect");		
		}
		else{
			Collaborateur collaborateur = new Collaborateur(matr, nom, prenom, LocalDate.parse(datedenaissance), adresse, securite, emailpro, photo, dateHeureCreation);
			Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(collaborateur);
			//resp.getWriter().write("Bonjour, je suis une personne ! avec le matricule " + matrParam  + " avec le nom " + nomParam +"et avec le prenom " + prenomParam); 
			this.getServletContext().getRequestDispatcher("/views/listerCollaborateurs.jsp").forward(req, resp);
		}
		
	}
}
