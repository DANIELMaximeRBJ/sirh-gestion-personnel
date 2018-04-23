package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;

public class DepartementService {

	List<Departement> listedepartement = new ArrayList<>();
	
	public DepartementService() {		
		listedepartement.add(new Departement(0, "Comptabilité", false)) ;
		listedepartement.add(new Departement(1, "Ressources Humaines", false)) ;
		listedepartement.add(new Departement(2, "Informatique", false)) ;
		listedepartement.add(new Departement(3, "Administratif", false)) ;
	}

	public List<Departement> listedepartement() {
	return listedepartement;
	}
}
