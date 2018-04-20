package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;

public class Collaborateur  {
	private String matricule;
	private String nom;
	private String prenom;
	private LocalDate naissance;
	private String adresse;
	private String securite;
	private String emailpro;
	private String photo;
	private ZonedDateTime dateHeureCreation;
	
	public Collaborateur(String matricule,String nom,String prenom,LocalDate naissance,String adresse,String securite,String emailpro,String photo,ZonedDateTime dateHeureCreation){
		this.adresse = adresse;
		this.dateHeureCreation = dateHeureCreation;
		this.emailpro = emailpro;
		this.matricule = matricule;
		this.naissance = naissance;
		this.nom = nom;
		this.photo = photo;
		this.prenom =prenom;
		this.securite = securite;	
	}

	public String getMatricule() {
		return matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public LocalDate getNaissance() {
		return naissance;
	}

	public void setNaissance(LocalDate naissance) {
		this.naissance = naissance;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getSecurite() {
		return securite;
	}

	public void setSecurite(String securite) {
		this.securite = securite;
	}

	public String getEmailpro() {
		return emailpro;
	}

	public void setEmailpro(String emailpro) {
		this.emailpro = emailpro;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}

	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}
}
