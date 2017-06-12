<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="springform"  %>
<!DOCTYPE html>
<html  ng-app="plunker">
<head>
<meta charset="utf-8">
<title>Ajouter annonce</title>
<link type="text/css" href="/bootstrap/dist/css/bootstrap.css" rel="stylesheet" >
<link type="text/css" href="/css/style.css" rel="stylesheet" >


   <script data-require="angular.js@1.0.x" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js" data-semver="1.0.8"></script>
   <script> var app = angular.module('plunker', []); </script>
   

   <script type="text/javascript" src="js/main.js"></script> 

    
    
    



</head>
<body class="body2">
<nav class="navbar navbar-fixed-top  navbar-inverse" id="my-navbar" >
  <div class="container">
     <div class="navbar-header">
       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse" >
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </button>
       <a href="/affiche" class="navbar-brand "> Parcourir</a>
     </div>  <!-- navbar header -->
     
     <div class="collapse navbar-collapse" id="navbar-collapse">
     <a class="btn btn-info navbar-btn navbar-right" href="/save">Afficher une Annonce</a>
     
       <ul class="nav navbar-nav">
         <li class="active"> <a href="/save"/> Nouvelle annonce </a>
         
         <li><a href="/test/4"/> publicite </a></li>
         <li><a href="test1"/> Foire aux Questions </a></li>
         <li class="dropdown ">
           <a class="dropdown-toggle" data-toggle="dropdown">
           Contact <b class="caret"></b>
           </a>
         
             <ul class="dropdown-menu ">
               <li > <a>Contactez nous</a> </li>
               <li> <a>Coordonnees</a></li>
               <li> <a>about us</a></li>
             </ul>
          </li>
       </ul>
     </div>
     
  </div> <!-- end container -->

</nav>  <!-- end nav bar -->
<div class="row"> 
  <div class="col-md-1">  </div>
  <div class="col-md-6"> <br><br>  <div class="titreannonce">${titre} </div> </div>
  <div class="col-md-5">  </div>
</div>
<div class="row"> 
  <div class="col-sm-1">  </div>
  <div class="col-sm-5">  
    <img class="imagedetail" src="/images/?id=${id}" alt="No Image"> 
  </div>
  <div class="col-sm-5">
  <div class="row ">
        <span class="col-sm-2">
	     Prix
	    </span>
	    <span class="col-sm-3">
	      ${prix}
	    </span>
   </div> 
   <div class="row">
        <span class="col-sm-2">
	     Telephone
	    </span>
	    <span class="col-sm-3">
	      ${telephone}
	    </span>
   </div>
   <div class="row">
        <span class="col-sm-2">
	     Adresse
	    </span>
	    <span class="col-sm-3">
	       ${adresse}
	    </span>
   </div>
   <div class="row">
        <span class="col-sm-2">
	     Date :
	    </span>
	    <span class="col-sm-3">
	       ${date}
	    </span>
   </div>
   
   <div id="auto"  ${categorie!="Automobile"?'style="display: none;"':' '}>
   
   <div class="row">
        <span class="col-sm-2">
	     Annee
	    </span>
	    <span class="col-sm-3">
	      ${auto.annee}
	    </span>
   </div>
   <div class="row">
        <span class="col-sm-2">
	     Marque
	    </span>
	    <span class="col-sm-3">
	      ${auto.marque}
	    </span>
   </div>
   <div class="row">
        <span class="col-sm-2">
	     Modele
	    </span>
	    <span class="col-sm-3">
	      ${auto.modele}
	    </span>
   </div>
   <div class="row">
        <span class="col-sm-2">
	     Kilometrage
	    </span>
	    <span class="col-sm-3">
	      ${auto.milage}
	    </span>
   </div>
   <div class="row">
        
	    <span class="col-sm-2 value"> Couleur </span>
	    
	    <span class="col-sm-3">
	      ${auto.couleur}
	    </span>
   </div>
    
  </div>
  Description :
  <div class="panel panel-body description-detail">${corps}</div>
  
 </div> 
  
  
  <%-- <div class="col-sm-6">
  
  
    <div > Prix : ${prix}</div>
    <div > Telephone : ${telephone}</div>
    <div > Adresse : ${adresse}</div>
    
    <div > Date : ${date}</div>
    
   
     
   
    <div id="auto"  ${categorie!="Automobile"?'style="display: none;"':' '}>
	    <div >Annee :${auto.annee}</div>
	    <div >Marque :${auto.marque}</div>
	    <div >Modele :${auto.modele}</div>
	    <div >Kilometrage :${auto.milage}</div>
        <div >Couleur :${auto.couleur}</div>
	    <div >Carburant :${auto.carburant}</div>
    </div>
    <div >${corps}</div>
  </div> --%>
  <div class="col-md-1">  </div>
</div>

</body>
</html>