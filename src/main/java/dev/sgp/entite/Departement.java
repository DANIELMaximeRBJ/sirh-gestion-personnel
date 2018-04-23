package dev.sgp.entite;

public class Departement {
private int id;
private String nom;
private boolean desactivation;

public Departement(int id, String nom, boolean desactivation) {
	super();
	this.id = id;
	this.nom = nom;
	this.desactivation = desactivation;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public boolean isDesactivation() {
	return desactivation;
}
public void setDesactivation(boolean desactivation) {
	this.desactivation = desactivation;
}
}
