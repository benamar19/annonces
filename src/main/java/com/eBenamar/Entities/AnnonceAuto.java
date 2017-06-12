package com.eBenamar.Entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;




@Entity
public class AnnonceAuto implements Serializable {
	private static final long serialVersionUID = 1L;
    @Id
	Integer id;
	
	String titre;
	
	String  corps;
	Long prix;
	Date date;
	String adresse;
	String telephone;
	String categorie;
	String type;
	@Column(length=10000000)
	byte [] photos;
	@Column(length=10000000)
	byte [] photos2;
	@Column(length=10000000)
	byte [] photos3;
	@Column(length=10000000)
	byte [] photos4;
	@Column(length=10000000)
	byte [] photos5;
	Long id_photo_principale;
	private String  milage;
	private String annee;
	private String marque;
	private String modele;
	private String couleur;
	private String carburant;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getCorps() {
		return corps;
	}
	public void setCorps(String corps) {
		this.corps = corps;
	}
	public Long getPrix() {
		return prix;
	}
	public void setPrix(Long prix) {
		this.prix = prix;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public byte[] getPhotos() {
		return photos;
	}
	public void setPhotos(byte[] photos) {
		this.photos = photos;
	}
	public byte[] getPhotos2() {
		return photos2;
	}
	public void setPhotos2(byte[] photos2) {
		this.photos2 = photos2;
	}
	public byte[] getPhotos3() {
		return photos3;
	}
	public void setPhotos3(byte[] photos3) {
		this.photos3 = photos3;
	}
	public byte[] getPhotos4() {
		return photos4;
	}
	public void setPhotos4(byte[] photos4) {
		this.photos4 = photos4;
	}
	public byte[] getPhotos5() {
		return photos5;
	}
	public void setPhotos5(byte[] photos5) {
		this.photos5 = photos5;
	}
	public Long getId_photo_principale() {
		return id_photo_principale;
	}
	public void setId_photo_principale(Long id_photo_principale) {
		this.id_photo_principale = id_photo_principale;
	}
	public String getMilage() {
		return milage;
	}
	public void setMilage(String milage) {
		this.milage = milage;
	}
	public String getAnnee() {
		return annee;
	}
	public void setAnnee(String annee) {
		this.annee = annee;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getModele() {
		return modele;
	}
	public void setModele(String modele) {
		this.modele = modele;
	}
	public String getCouleur() {
		return couleur;
	}
	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	public String getCarburant() {
		return carburant;
	}
	public void setCarburant(String carburant) {
		this.carburant = carburant;
	}
	
	
	
}
