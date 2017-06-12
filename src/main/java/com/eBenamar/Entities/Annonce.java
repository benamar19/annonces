package com.eBenamar.Entities;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author user
 *
 */
@Entity
public class Annonce implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	Integer id;
	@NotEmpty
	String titre;
	@Column(columnDefinition="TEXT")
	String  corps;
	Long prix;
	Date date;
	
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	@Lob
	byte [] image;
	@Column(length=10000000)
	byte [] photos2;
	@Column(length=10000000)
	byte [] photos3;
	@Column(length=10000000)
	byte [] photos4;
	@Column(length=10000000)
	byte [] photos5;
	
	@OneToOne(cascade = CascadeType.ALL,targetEntity=Auto.class)
	@JoinColumn(name="id_auto")
	private Auto auto;
	
	
	public Auto getAuto() {
		return auto;
	}
	public void setAuto(Auto auto) {
		this.auto = auto;
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
	public byte[] getPhotos2() {
		return photos2;
	}
	public void setPhotos2(byte[] photos2) {
		this.photos2 = photos2;
	}
	String adresse;
	String telephone;
	String categorie;
	String type;
    public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Lob
    @Column(length=10000000)
	byte []   photos;
	Long id_photo_principale;
	public Annonce() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Annonce(String titre, String corps, Long prix, Date date, String adresse, String telephone, String categorie,
			byte[] photos, Long id_photo_principale) {
		super();
		this.titre = titre;
		this.corps = corps;
		this.prix = prix;
		this.date = date;
		this.adresse = adresse;
		this.telephone = telephone;
		this.categorie = categorie;
		this.photos = photos;
		this.id_photo_principale = id_photo_principale;
	}
	
	
	
	public Annonce(String titre, String corps, Long prix, String adresse, String telephone, byte[] photos) {
		super();
		this.titre = titre;
		this.corps = corps;
		this.prix = prix;
		this.date = date;
		this.adresse = adresse;
		this.telephone = telephone;
		this.photos = photos;
	}
	
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
	
	
	public byte[] getPhotos() {
		return photos;
	}
	public void setPhotos(byte[] photos) {
		this.photos = photos;
	}
	public Long getId_photo_principale() {
		return id_photo_principale;
	}
	public void setId_photo_principale(Long id_photo_principale) {
		this.id_photo_principale = id_photo_principale;
	}
	
   
}
