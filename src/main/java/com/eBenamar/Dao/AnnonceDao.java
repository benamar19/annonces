package com.eBenamar.Dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.eBenamar.Entities.Annonce;

public interface AnnonceDao extends   JpaRepository<Annonce, Integer> {
	  
	//List<Annonce> findByTitreContaining(String titre);
	Page<Annonce> findByTitreContaining(String titre,Pageable page);
	Page<Annonce> findByTitreContainingAndAdresse(String titre,String adresse,Pageable page);
	Page<Annonce> findByAdresse(String adresse,Pageable page);
	// pour  selectionner selon categories
	Page<Annonce> findByTitreContainingAndCategorie(String titre,String categorie,Pageable page);
	Page<Annonce> findByTitreContainingAndAdresseAndCategorie(String titre,String adresse,String categorie,Pageable page);
	Page<Annonce> findByAdresseAndCategorie(String adresse,String categorie,Pageable page);
	Page<Annonce> findByCategorie(String categorie,Pageable page);
	
}
