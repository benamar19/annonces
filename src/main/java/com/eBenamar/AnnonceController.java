package com.eBenamar;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Base64;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.annotations.Sort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.eBenamar.Dao.AnnonceAutoDao;
import com.eBenamar.Dao.AnnonceDao;
import com.eBenamar.Dao.AutoInterfaceDao;
import com.eBenamar.Entities.Annonce;
import com.eBenamar.Entities.AnnonceAuto;
import com.eBenamar.Entities.Auto;
// commentaires
// controller
@Controller
public class AnnonceController {
	/*@Autowired  //zyada 
	private AnnonceAutoDao annonceautodao;*/
	
	@Autowired
	private AnnonceDao annoncedao;
	/*@Autowired  //zyada
	private AutoInterfaceDao autodao;*/
	Integer NBPAGE=5;
	@RequestMapping(value="/home")
	//@ResponseBody
	public String index ()
	{
		return "index";
	}
	
	@RequestMapping(value="/cherchetitre",method=RequestMethod.POST)
	public String cherchetitre(@RequestParam("recherchetitre") String titre ,Model md
			,@RequestParam("adresse") String ville)
	{
		System.out.println("/cherchetitre.. post");
		PageRequest request =
	            new PageRequest(1,NBPAGE);
		Page <Annonce> annonces= annoncedao.findByTitreContaining(titre,request);
		
		/*for (Annonce annonce : annonces) {
		System.out.println(annonce.getTitre());
		}*/
		
		md.addAttribute("annonces",annonces);
		return "affiche";
	
	}
	
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	//@ResponseBody
	// j ai enleve ceci :
	//public String add (@ModelAttribute("annonce") Annonce annonce,
	public String add ( @RequestParam("prix") Long prix, @RequestParam("titre") String titre,
			@RequestParam("corps") String corps,@RequestParam("adresse") String ville,
			@RequestParam("categorie") String categorie,@RequestParam("type") String type,
			   @RequestParam("photos") MultipartFile file,
			   @RequestParam("photos2") MultipartFile file2,
			   @RequestParam("photos3") MultipartFile file3,
			   @RequestParam("photos4") MultipartFile file4,
			   @RequestParam("photos5") MultipartFile file5,
			   // detail automobile...
			   
			   @RequestParam("modele") String modele,
			   @RequestParam("marque") String marque,
			   @RequestParam("annee") String annee,
			   @RequestParam("kilometrage") String kilometrage,
			   @RequestParam("carburant") String carburant,
			   @RequestParam("couleur") String couleur
			   
			)
			   
			//BindingResult bin) 
	{
		
		
		       byte[] img1File=null;
		      
				try {
					img1File= file.getBytes();
  
                     BufferedOutputStream stream;
                     stream = new BufferedOutputStream(new FileOutputStream(new File("ben1")));
  
					 stream.write(img1File);
					 stream.close();
				} catch (FileNotFoundException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			
			 // image 2
				byte[] img2File=null;
			      
				try {
					img2File= file2.getBytes();
  
                     BufferedOutputStream stream;
                     stream = new BufferedOutputStream(new FileOutputStream(new File("ben1")));
  
					 stream.write(img2File);
					 stream.close();
				} catch (FileNotFoundException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
		
				 // image 2
				byte[] img3File=null;
			      
				try {
					img3File= file3.getBytes();
  
                     BufferedOutputStream stream;
                     stream = new BufferedOutputStream(new FileOutputStream(new File("ben1")));
  
					 stream.write(img3File);
					 stream.close();
				} catch (FileNotFoundException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				 // image 4
				byte[] img4File=null;
			      
				try {
					img4File= file4.getBytes();
  
                     BufferedOutputStream stream;
                     stream = new BufferedOutputStream(new FileOutputStream(new File("ben1")));
  
					 stream.write(img4File);
					 stream.close();
				} catch (FileNotFoundException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				
				 // image 2
				byte[] img5File=null;
			      
				try {
					img5File= file5.getBytes();
  
                     BufferedOutputStream stream;
                     stream = new BufferedOutputStream(new FileOutputStream(new File("ben1")));
  
					 stream.write(img5File);
					 stream.close();
				} catch (FileNotFoundException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				
				//byte[] img3File=null;
		        //enregistre(img3File, file3);
		        
				
				
		       // byte[] img4File=null;
		        //enregistre(img4File, file4);
		        
		        //byte[] img5File=null;
		        //enregistre(img5File, file5); 
		
    
		//  ce qui apres ca marche on voit un blob dans la BDD
		//File file = new File("E:/thakafa/calcium.png");
		
		//byte[] imageData = new byte[(int) file.length()];
		/*byte[] imageData = annonce.getPhotos();
		try {
		    FileInputStream fileInputStream = new FileInputStream(file);
		    fileInputStream.read(imageData);
		    fileInputStream.close();
		} catch (Exception e) {
		    e.printStackTrace();
		}
		
		annonce.setPhotos(imageData);*/  
		
		Annonce annonce=new Annonce();
		
		Date date= new Date(System.currentTimeMillis());
		annonce.setDate(date);
		// to eliminate extra spaces in titre
		titre=titre.replaceAll("\\s+", " ");
		
		annonce.setTitre(titre);
		annonce.setCorps(corps);
		annonce.setPrix(prix);
		annonce.setPhotos(img1File);
		annonce.setPhotos2(img2File);
		annonce.setPhotos3(img3File);
		annonce.setPhotos4(img4File);
		annonce.setPhotos5(img5File);
		annonce.setAdresse(ville);
		annonce.setCategorie(categorie);
		annonce.setType(type);
		// auto detail
		
		if (categorie.equals("Automobile"))
		  {
		    Auto auto=new Auto();
		
			auto.setAnnee(annee);
			auto.setCarburant(carburant);
			auto.setCouleur(couleur);
			auto.setMarque(marque);
			auto.setMilage(kilometrage);
			auto.setModele(modele);
			annonce.setAuto(auto);
		   }
		
		annoncedao.save(annonce);
		
		
		return "SuccessAddAnnonce";
	}
	// j ai essaye d appeler la fonction qui se repete mais ca n a ps marche pour les arguments
	public void enregistre(byte[] imgFile,MultipartFile file)
	{
		 
	      
		try {
			imgFile= file.getBytes();

             BufferedOutputStream stream;
             stream = new BufferedOutputStream(new FileOutputStream(new File("ben1")));

			 stream.write(imgFile);
			 stream.close();
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		} 
		
	}
	
	@RequestMapping(value="/save",method=RequestMethod.GET)
	
	
	//@ResponseBody         I created annonceauto to receive all information annonce+auto 
	//                because I got an error that coleur,modele... is not an attribute of annonce
	//public String addget (@ModelAttribute("annonce") Annonce annonce, BindingResult bin)
	public String addget (@ModelAttribute("annonceauto") AnnonceAuto annonceauto, BindingResult bin)
	{
		return "add";
	}
	
	
	
	@RequestMapping(value="/images",method = RequestMethod.GET)
	public void afficheimage(@RequestParam("id") Integer Iddd,HttpServletResponse response,HttpServletRequest request) throws IOException{
		
		Annonce annonce=new Annonce();
		
		annonce=annoncedao.findOne(Iddd);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		response.getOutputStream().write(annonce.getPhotos());
		response.getOutputStream().close();
		
	}
	
	
	@RequestMapping(value="/affiche")
	//@ResponseBodys
	public String affiche2 (Model md,@RequestParam(value="adresse",required=false) String ville
			,@RequestParam(value="recherchetitre", required=false) String titre,
			@RequestParam(value="categorie",required=false) String categorie)
	{
		
		        // elimate extra spaces of titre
		         if (titre!=null) {titre=titre.replaceAll("\\s+", " ");}
		                                    // 1
				Pageable page=new PageRequest(0,NBPAGE);
				System.out.println("/affiche/... :"+ville);
				System.out.println("/categorie/... :"+categorie);
				//List <Annonce> annonces=  annoncedao.findAll();
				Integer nbAnnonces=0;
				Page <Annonce> annonces=null;
				//List <Annonce> annonces=annoncedao.findAll();
				
				if (categorie==null) {categorie="tous";}
				
				
				
				if (categorie.equals("tous"))
				{
					if (ville==null ){
						 System.out.println("/affiche/... is empty:");
						 System.out.println("titre : "+titre+" ville :"+ville);	
					 		//PageRequest request =new PageRequest(1,5);
						 
						  if (titre!=null) {
							   annonces= annoncedao.findByTitreContainingAndAdresse(titre, ville, page);
			
							  // annonces= annoncedao.findByTitreContainingAndAdresseAndCategorie(titre, ville,categorie, page);
						  }
						  else {
							   //annonces= annoncedao.findByAdresse(ville, page);
							   annonces= annoncedao.findAll(page);
							  //annonces= annoncedao.findByCategorie(categorie,page);
							   System.out.println("ici null null ....");
						  }
					 		
					 		Integer nb=annonces.getTotalPages();
					 		if (nb>=1) {nb=nb-1;}
					 		md.addAttribute("nb",nb);
					 		
					 		/*byte[] encodeBase64 = Base64.encode(usersService.getAllFoto());
					         String base64Encoded = new String(encodeBase64, "UTF-8");
					          mav.addObject("userImage", base64Encoded )*/
					 		md.addAttribute("currentIndex",1);
					         md.addAttribute("annonces",annonces);
					         md.addAttribute("adresse","Algerie");
						
					}
					else  if (ville.equals("Algerie") ) {
			    	 System.out.println("/affiche/... Algerie");
			 		
			 		//PageRequest request =new PageRequest(1,5);
			    	 
			    	 if (titre!=null) { //findByTitreContaining(titre, page);
			    		 annonces=annoncedao.findByTitreContaining(titre, page);
			    		 //annonces=annoncedao.findByTitreContainingAndCategorie(titre,categorie, page);
			    	 }
			    	 else {
			    		                //findByTitreContaining(titre, page);
			    		 annonces=annoncedao.findAll(page);
			    		// annonces=annoncedao.findByCategorie(categorie,page);
			    	 }
			 		
			 		Integer nb=annonces.getTotalPages();
			        if (nb>=1) {nb=nb-1;}
			 		md.addAttribute("nb",nb);
			 		
			 		/*byte[] encodeBase64 = Base64.encode(usersService.getAllFoto());
			         String base64Encoded = new String(encodeBase64, "UTF-8");
			          mav.addObject("userImage", base64Encoded )*/
			 		md.addAttribute("currentIndex",1);
			         md.addAttribute("annonces",annonces);
			         md.addAttribute("adresse",ville);
			         md.addAttribute("selectedcategorie",categorie);
				     md.addAttribute("search",titre);  ////////// hnaya 
			        }   // end  if ville = algerie
			     else { 
			    	 //findByAdresse(ville, page);
			    	 System.out.println("categorie :"+categorie+"ville :"+ville+"titre :"+titre+"|");
                     if ((titre==null) || (titre.equals(""))){
    			    	 annonces=annoncedao.findByAdresse( ville, page);

                     }
                     else {
			    	   annonces=annoncedao.findByTitreContainingAndAdresse(titre, ville, page);
                     }
			    	 // afficher annonces 
			    	 for (Annonce annonce : annonces) {
						System.out.println("tt :"+annonce.getTitre());
					}
			    	 
			    	 
			    	 //annonces=annoncedao.findByTitreContainingAndAdresseAndCategorie(titre, ville,categorie, page);
			    	 System.out.println("else :J wilayass:"+ville);
					    Integer nb=annonces.getTotalPages();
						 if (nb>=1)  /////////// hnaya 
						 {nb=nb-1;}
						System.out.println("nb apres nb-1:"+nb);
						md.addAttribute("nb",nb);
						md.addAttribute("currentIndex",1);
				        md.addAttribute("annonces",annonces);
				        md.addAttribute("search",titre);//////////////  ""
				        md.addAttribute("selectedville",ville);
				        md.addAttribute("selectedcategorie",categorie);
				        md.addAttribute("adresse",ville);
			     }
				
					md.addAttribute("selectedcategorie",categorie);
				}// end if categorie
				else {
				
				if (ville==null ){
					 System.out.println("/affiche/... is empty:");
					 System.out.println("titre : "+titre+" ville :"+ville);	
				 		//PageRequest request =new PageRequest(1,5);
					 
					  if (titre!=null) {
						   //annonces= annoncedao.findByTitreContainingAndAdresse(titre, ville, page);
		
						  annonces= annoncedao.findByTitreContainingAndAdresseAndCategorie(titre, ville,categorie, page);
					  }
					  else {
						   //annonces= annoncedao.findByAdresse(ville, page);
						   //annonces= annoncedao.findAll(page);
						  annonces= annoncedao.findByCategorie(categorie,page);
						   System.out.println("ici null null ....");
					  }
				 		
				 		Integer nb=annonces.getTotalPages();
				 		if (nb>=1) {nb=nb-1;}
				 		md.addAttribute("nb",nb);
				 		
				 		/*byte[] encodeBase64 = Base64.encode(usersService.getAllFoto());
				         String base64Encoded = new String(encodeBase64, "UTF-8");
				          mav.addObject("userImage", base64Encoded )*/
				 		md.addAttribute("currentIndex",1);
				         md.addAttribute("annonces",annonces);
				         md.addAttribute("adresse",ville);
				         md.addAttribute("selectedcategorie",categorie);
					
				}
				else  if (ville.equals("Algerie") ) {
		    	 System.out.println("/affiche/... Algerie");
		 		
		 		//PageRequest request =new PageRequest(1,5);
		    	 
		    	 if (titre!=null) { //findByTitreContaining(titre, page);
		    		 //annonces=annoncedao.findByTitreContaining(titre, page);
		    		 annonces=annoncedao.findByTitreContainingAndCategorie(titre,categorie, page);
		    	 }
		    	 else {
		    		                //findByTitreContaining(titre, page);
		    		// annonces=annoncedao.findAll(page);
		    		 annonces=annoncedao.findByCategorie(categorie,page);
		    	 }
		 		
		 		Integer nb=annonces.getTotalPages();
		 		if (nb>=1) {nb=nb-1;}
		 		md.addAttribute("nb",nb);
		 		
		 		/*byte[] encodeBase64 = Base64.encode(usersService.getAllFoto());
		         String base64Encoded = new String(encodeBase64, "UTF-8");
		          mav.addObject("userImage", base64Encoded )*/
		 		md.addAttribute("currentIndex",1);
		         md.addAttribute("annonces",annonces);
		         md.addAttribute("adresse",ville);
		         md.addAttribute("selectedcategorie",categorie);
			     md.addAttribute("search",titre);  ////////// hnaya 
		        }
		     else {                       //findByAdresse(ville, page);
		    	 //annonces=annoncedao.findByTitreContainingAndAdresse(titre, ville, page);
		
		    	 annonces=annoncedao.findByTitreContainingAndAdresseAndCategorie(titre, ville,categorie, page);
		    	 System.out.println("else ::: wilayass:"+ville);
				    Integer nb=annonces.getTotalPages();
					if (nb>=1) {nb=nb-1;}
					md.addAttribute("nb",nb);
					md.addAttribute("currentIndex",1);
			        md.addAttribute("annonces",annonces);
			        md.addAttribute("search",titre);//////////////  ""
			        md.addAttribute("selectedville",ville);
			        md.addAttribute("selectedcategorie",categorie);
			        md.addAttribute("adresse",ville);
		     }
			
				
				}	
				
				
				if (annonces!=null)  {
					nbAnnonces=annonces.getNumberOfElements();
				System.out.println("annonces not null");	
				}
				
				md.addAttribute("nbAds",nbAnnonces);
				return "affiche";
		
	}
	
	@RequestMapping(value="/affiche/{ville}",method=RequestMethod.POST)
	public String affiche (Model md,@RequestParam("recherchetitre") String titr
			,@PathVariable("adresse") String ville
			)
	{
		// elimate extra spaces of titre
		titr=titr.replaceAll("\\s+", " ");
		System.out.println("ville:"+ville);
		System.out.println("/affiche.. post");
		Pageable page=new PageRequest(0,NBPAGE);
		//PageRequest request =new PageRequest(1,5);
		///Page <Annonce> ann=annoncedao.findByTitreContaining(titr, page);
		Integer nbAnnonces;
		Page <Annonce> ann;
		if (ville.equals("Algerie")) {
			System.out.println("/ville Algerie.. post");
			    ann=annoncedao.findByTitreContaining(titr, page);
			    Integer nb=ann.getTotalPages();
				if (nb>=1) {nb=nb-1;}
				md.addAttribute("nb",nb);
				md.addAttribute("currentIndex",0);
		        md.addAttribute("annonces",ann);
		        md.addAttribute("search",titr);
		        
		        md.addAttribute("villeselected",ville);
		        md.addAttribute("adresse",ville);
		}
		else { 
			  System.out.println("/ville autre.. post");
			   ann=annoncedao.findByTitreContainingAndAdresse(titr,ville, page);
		
			    Integer nb=ann.getTotalPages();
				if (nb>=1) {nb=nb-1;}
				md.addAttribute("nb",nb);
				md.addAttribute("currentIndex",0);
		        md.addAttribute("annonces",ann);
		        md.addAttribute("search",titr);
		        md.addAttribute("villeselected",ville);
		        md.addAttribute("adresse",ville);
		}

		//List <Annonce> annonces=annoncedao.findByTitreContaining(titr);
		
		nbAnnonces=ann.getNumberOfElements();
		md.addAttribute("nbAds",nbAnnonces);
		return "affiche";
	}
   @RequestMapping(value="/affiche/{search}/{selectedcategorie}/{ville}/{pagenumber}", method=RequestMethod.GET)
   public String affiche(@PathVariable Integer pagenumber,@PathVariable String search,Model md
		   ,@PathVariable String ville,@PathVariable("selectedcategorie") String categorie)
	{
	 
	   
	  // elimate extra spaces of search
	   search=search.replaceAll("\\s+", " ");
	   System.out.println("/affiche/{search}/{pagenumber}/{selectedcategorie}/{ville}...get");
	   System.out.println("mdina"+ville+"categorie :"+categorie);
	   Page <Annonce> annonces = null;
	   Integer nbAnnonces;
		//PageRequest request =new PageRequest(pagenumber,5);
	   Pageable page=new PageRequest(pagenumber-1,NBPAGE);
	   if (categorie==null) {categorie="tous";}
	   if (categorie.equals("tous"))
	    {
	   
	   if (ville.equals("Algerie") ) {		
		    annonces=annoncedao.findByTitreContaining(search, page);
		   Integer nb=annonces.getTotalPages();
			if (nb>=1) {nb=nb-1;}
			md.addAttribute("nb",nb);
			md.addAttribute("currentIndex",pagenumber);
			md.addAttribute("annonces",annonces);
			md.addAttribute("selectedville",ville);
			md.addAttribute("adresse",ville);
          }
	   else {
		    annonces=annoncedao.findByTitreContainingAndAdresse(search,ville, page);
		   Integer nb=annonces.getTotalPages();
			if (nb>=1) {nb=nb-1;}
			md.addAttribute("nb",nb);
			md.addAttribute("currentIndex",pagenumber);
			md.addAttribute("annonces",annonces);
			md.addAttribute("selectedville",ville);
			md.addAttribute("adresse",ville);
	   }
	  } // if cetegorie == tous
	   else {
		   
		   if (ville.equals("Algerie") ) {		
			    annonces=annoncedao.findByTitreContainingAndCategorie(search,categorie, page);
			   Integer nb=annonces.getTotalPages();
				if (nb>=1) {nb=nb-1;}
				md.addAttribute("nb",nb);
				md.addAttribute("currentIndex",pagenumber);
				md.addAttribute("annonces",annonces);
				md.addAttribute("selectedville",ville);
				md.addAttribute("selectedcategorie",categorie);
				md.addAttribute("adresse",ville);
	          }
		   else {
			    annonces=annoncedao.findByTitreContainingAndAdresseAndCategorie(search,ville,categorie, page);
			   Integer nb=annonces.getTotalPages();
				if (nb>=1) {nb=nb-1;}
				md.addAttribute("nb",nb);
				md.addAttribute("currentIndex",pagenumber);
				md.addAttribute("annonces",annonces);
				md.addAttribute("selectedville",ville);
				md.addAttribute("selectedcategorie",categorie);
				md.addAttribute("adresse",ville);
		   }
		   
		   
	   }// end else categorie == tous
		
	    nbAnnonces=annonces.getNumberOfElements();
		md.addAttribute("nbAds",nbAnnonces);
		return "affiche";	
	}
   //////// this Controller because when I call affiche : all annonce, when i choose a page it call affiche//0 don t work
   @RequestMapping(value="/affiche//{selectedcategorie}/{ville}/{pagenumber}", method=RequestMethod.GET)
   public String affiche(@PathVariable Integer pagenumber,Model md
		   ,@PathVariable String ville, @PathVariable("selectedcategorie") String categorie)
	{
	   System.out.println("/affiche//{selectedcategorie}/{pagenumber}...get");
	   System.out.println("ssss:"+ville+"categorie :"+categorie);
		//PageRequest request =new PageRequest(pagenumber,5);
	   Pageable page=new PageRequest(pagenumber-1,NBPAGE);
	   Integer nbAnnonces;
	   Page <Annonce> annonces=null;
	    String search="";
	   if (categorie.equals("tous")) 
	   {
	    if (ville.equals("Algerie")) {// findByTitreContaining(search, page);
		   annonces=annoncedao.findAll(page);
			Integer nb=annonces.getTotalPages();
			if (nb>=1) {nb=nb-1;}
			md.addAttribute("nb",nb);
			md.addAttribute("currentIndex",pagenumber);
			md.addAttribute("annonces",annonces);  
		    md.addAttribute("selectedville",ville);
		    md.addAttribute("adresse",ville);
	   }
	   else {
		    annonces=annoncedao.findByTitreContainingAndAdresse(search,ville ,page);
			Integer nb=annonces.getTotalPages();
			if (nb>=1) {nb=nb-1;}
			md.addAttribute("nb",nb);
			md.addAttribute("currentIndex",pagenumber);
			md.addAttribute("annonces",annonces);  
		    md.addAttribute("selectedville",ville);
		    md.addAttribute("adresse",ville);
		   
	    }
	   } // if categorie== tous
	   else {
		   
		   if (ville.equals("Algerie")) {// findByTitreContaining(search, page);
			   annonces=annoncedao.findByCategorie(categorie,page);
				Integer nb=annonces.getTotalPages();
				if (nb>=1) {nb=nb-1;}
				md.addAttribute("nb",nb);
				md.addAttribute("currentIndex",pagenumber);
				md.addAttribute("annonces",annonces);  
			    md.addAttribute("selectedville",ville);
			    md.addAttribute("adresse",ville);
		   }
		   else {
			    System.out.println("else/cat=tous / algerie else : ville :"+ville+"categorie :"+categorie+"search :"+search+"1");
			    //annonces=annoncedao.findByTitreContainingAndAdresseAndCategorie(search,categorie,ville ,page);
			    annonces=annoncedao.findByAdresseAndCategorie(ville,categorie ,page);
			    
			    Integer nb=annonces.getTotalPages();
				if (nb>=1) {nb=nb-1;}
				md.addAttribute("nb",nb);
				md.addAttribute("currentIndex",pagenumber);
				md.addAttribute("annonces",annonces);  
			    md.addAttribute("selectedville",ville);
			    md.addAttribute("adresse",ville);
			   
		    }
		   
		   
	   } // end else if categorie == tous
	   
	   ////
	   nbAnnonces=annonces.getNumberOfElements();
	    md.addAttribute("nbAds",nbAnnonces);
		return "affiche";	
	}
   
   //////  iici
   /////////////////////////////////////oooooo
   
   
   ////////////////////////////////////fin ooo
   @RequestMapping(value="/affiche///{pagenumber}", method=RequestMethod.GET)
   public String affiche1(@PathVariable Integer pagenumber,Model md
		   )
	{
	   System.out.println("/affiche///{pagenumber}...get");
	  
		//PageRequest request =new PageRequest(pagenumber,5);
	   Pageable page=new PageRequest(pagenumber,NBPAGE);
	   
		                                 //findByTitreContaining(search, page);
	       Integer nbAnnonces;
		   Page <Annonce> annonces=annoncedao.findAll(page);
			Integer nb=annonces.getTotalPages();
			if (nb>=1) {nb=nb-1;}
			md.addAttribute("nb",nb);
			md.addAttribute("currentIndex",pagenumber);
			md.addAttribute("annonces",annonces);  
		    md.addAttribute("selectedville","ALGERIE");  
		    md.addAttribute("adresse","Algerie");
		   
	  
	   
		    nbAnnonces=annonces.getNumberOfElements();
		    md.addAttribute("nbAds",nbAnnonces);
		
		return "affiche";	
	}
   
    ///// fin ici
   
   @RequestMapping("/detail/{id}")
   public String detail(Model md, @PathVariable Integer id ) throws ParseException
   {
	  Annonce annonce=annoncedao.findOne(id); 
	  System.out.println("id:"+annonce.getTitre());
	  md.addAttribute("id",annonce.getId());
	  md.addAttribute("corps",annonce.getCorps());
	  md.addAttribute("titre",annonce.getTitre());
	  md.addAttribute("telephone",annonce.getTelephone());
	  md.addAttribute("adresse",annonce.getAdresse());
	  md.addAttribute("prix",annonce.getPrix());
	  md.addAttribute("auto",annonce.getAuto());
	  md.addAttribute("categorie",annonce.getCategorie());
	  SimpleDateFormat sdf=new SimpleDateFormat("dd-MMMM-yyyy",Locale.CANADA_FRENCH);
	  
	    
	    String dates="0-00-00";
		try {
			if (annonce.getDate()!=null) {dates = sdf.format(annonce.getDate().getTime());}
		} catch (Exception e) {
			dates="0-00-00";
			e.printStackTrace();
		}
	    
		md.addAttribute("date",dates );
	    return "detail"; 
   }
   
   
	// testing  
  @RequestMapping(value="/test/{nb}", method=RequestMethod.GET )
  public ModelAndView test1( @PathVariable Integer nb) {
	  return new ModelAndView("test1","ex","avec pathvariable :"+nb);
	  
  }
  @RequestMapping("/test1")
  public String test( Model md) {
	  
	  md.addAttribute("ex","sans path variable");
	  return "test1";
  }

}
