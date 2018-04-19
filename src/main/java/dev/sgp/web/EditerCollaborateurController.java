package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	@Override
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
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String matrParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		if(matrParam == null || titreParam == null || nomParam == null || prenomParam == null){
			resp.sendError(400, "nous avons besoin d'un matricule, d'un titre , d'un nom et d'un prenom");		
		}
		else if(matrParam.isEmpty() || titreParam.isEmpty() || nomParam.isEmpty() || prenomParam.isEmpty()){
			resp.sendError(400, "mettez une valeur au matricule, au titre , au nom et au prenom");		
		}
		else{
			resp.setStatus(201);	
			resp.getWriter().write("Bonjour, je suis une personne ! avec le matricule " + matrParam + " avec le titre " + titreParam + " avec le nom " + nomParam +"et avec le prenom " + prenomParam); 
		}
		
	}

}
