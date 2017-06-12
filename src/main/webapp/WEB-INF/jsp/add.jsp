<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="springform"  %>
<!DOCTYPE html>
<html  ng-app="plunker">
<head>
<meta charset="utf-8">
<title>Ajouter annonce</title>
<link type="text/css" href="bootstrap/dist/css/bootstrap.css" rel="stylesheet" >
<link type="text/css" href="css/style.css" rel="stylesheet" >

  <script  src="https://code.jquery.com/jquery-2.1.1.js"></script>
   <script data-require="angular.js@1.0.x" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js" data-semver="1.0.8"></script>
   <script> var app = angular.module('plunker', []); </script>
   

   <script type="text/javascript" src="js/main.js"></script> 

<script type="text/javascript" src="js/query.js"></script>
<!--  <script type="text/javascript">
   function imagepreview(input){
      if (input.files && input.files[0]){
	    var filerd =new FileReader();
	    filerd.onload=function (e){
            $("#imgpreview").attr('src',e.target.result);
        };
		filerd.readAsDataURL(input.files[0]);
	  }
  }
 </script>  -->  
    
    



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

<div class="container"  >
  
 

    <div class="col-md-2"></div>
    <div class="col-md-8">    
       <%-- <springform:form  class="form-horizontal" action="save"  method="post" commandName="annonce" enctype="multipart/form-data"> --%>
                                  
      <springform:form  class="form-horizontal" action="save"  method="post" commandName="annonceauto" enctype="multipart/form-data">
     
      <div class="row ">
        <div class="form-group"> 
         <label   class="col-md-2 " for="type">Type</label>
         
         <div class="col-md-5  "> 
            
            <springform:radiobutton path="type" name="type"  value="offre" /> J'offre
            <springform:radiobutton path="type" name="type" value="cherche" />Je cherche
         </div>
         
        </div>
      </div>
      <div class="row">
          <div class="form-group  ">
             <label class="col-xs-6 col-md-2" for="Categorie" >Categorie:</label>
              <div class="col-xs-6 col-md-3">
              <springform:select path="categorie" id="categorie" class="form-control input-sm" onchange="categorie(this)">
                <springform:option value="Automobile">Automobile</springform:option>
                <springform:option value="Immobiler">Immobiler</springform:option>
                <springform:option value="Telephones">Telephones</springform:option>
                <springform:option value="Emplois">Emplois</springform:option>
                <springform:option value="Services">Services</springform:option>
                <springform:option value="Services">Acheter et vendre</springform:option>
              </springform:select>
              </div>
          </div>
         </div>
      
      
     
    <div class="row">
          <div class="form-group  ">
             <label class="col-xs-6 col-md-2" for="prix" >Prix:</label>
              <div class="col-xs-6 col-md-3">
               <springform:input class="form-control input-sm" name="prix" type="text"  placeholder=" prix" path="prix"/>
              </div>
          </div>
     </div>
     
     <div class="row">
     <div class="form-group  ">
     <div class="col-xs-6 col-md-2">
       <label  for="adresse" >Wilaya:</label>
     </div>
     
     <div class="col-xs-6 col-md-3">
         <springform:select path="adresse" name="adresse" class="form-control input-sm">
           
           
            <springform:option value=""> 	</springform:option>    
<springform:option value="ADRAR"> ADRAR	</springform:option>
<springform:option value="AIN DEFLA">AIN DEFLA	</springform:option>
<springform:option value="AIN TEMOUCHENT">AIN TEMOUCHENT	</springform:option>
<springform:option value="AL TARF">AL TARF	</springform:option>
<springform:option value="ALGER">ALGER	</springform:option>
<springform:option value="ANNABA">ANNABA	</springform:option>
<springform:option value="B.B.ARRERIDJ">B.B.ARRERIDJ	</springform:option>
<springform:option value="BATNA">BATNA	</springform:option>
<springform:option value="BECHAR">BECHAR	</springform:option>
<springform:option value="BEJAIA">BEJAIA	</springform:option>
<springform:option value="BISKRA">BISKRA	</springform:option>
<springform:option value="BLIDA">BLIDA	</springform:option>
<springform:option value="BOUIRA">BOUIRA	</springform:option>
<springform:option value="BOUMERDES">BOUMERDES	</springform:option>
<springform:option value="CHLEF">CHLEF	</springform:option>
<springform:option value="CONSTANTINE">CONSTANTINE	</springform:option>
<springform:option value="DJELFA">DJELFA	</springform:option>
<springform:option value="EL BAYADH">EL BAYADH	</springform:option>
<springform:option value="EL OUED">EL OUED	</springform:option>
<springform:option value="GHARDAIA">GHARDAIA	</springform:option>
<springform:option value="GUELMA">GUELMA	</springform:option>
<springform:option value="ILLIZI">ILLIZI	</springform:option>
<springform:option value="JIJEL">JIJEL	</springform:option>
<springform:option value="KHENCHELA">KHENCHELA	</springform:option>
<springform:option value="LAGHOUAT">LAGHOUAT	</springform:option>
<springform:option value="MASCARA">MASCARA	</springform:option>
<springform:option value="MEDEA">MEDEA	</springform:option>
<springform:option value="MILA">MILA	</springform:option>
<springform:option value="MOSTAGANEM">MOSTAGANEM	</springform:option>
<springform:option value="M’SILA">M’SILA	</springform:option>
<springform:option value="NAAMA">NAAMA	</springform:option>
<springform:option value="ORAN">ORAN	</springform:option>
<springform:option value="OUARGLA">OUARGLA	</springform:option>
<springform:option value="OUM ELBOUAGHI">OUM ELBOUAGHI	</springform:option>
<springform:option value="RELIZANE">RELIZANE	</springform:option>
<springform:option value="SAIDA">SAIDA	</springform:option>
<springform:option value="SETIF">SETIF	</springform:option>
<springform:option value="SIDI BEL ABBES">SIDI BEL ABBES	</springform:option>
<springform:option value="SKIKDA">SKIKDA	</springform:option>
<springform:option value="SOUKAHRAS">SOUKAHRAS	</springform:option>
<springform:option value="TAMANGHASSET">TAMANGHASSET	</springform:option>
<springform:option value="TEBESSA">TEBESSA	</springform:option>
<springform:option value="TIARET">TIARET	</springform:option>
<springform:option value="TINDOUF">TINDOUF	</springform:option>
<springform:option value="TIPAZA">TIPAZA	</springform:option>
<springform:option value="TISSEMSILT">TISSEMSILT	</springform:option>
<springform:option value="TIZI.OUZOU">TIZI.OUZOU	</springform:option>
<springform:option value="TLEMCEN">TLEMCEN      </springform:option>
           
           
           
         </springform:select>
         </div>
       </div> 
       </div>
       <div id="detailannonce">
         <fieldset class="scheduler-border" >
            <legend class="scheduler-border">Detail annonce</legend>
            
            <div class="row form-group">
	            <span class="col-xs-6 col-md-1">
	               <label  for="marque">Marque</label>
	            </span>
	            <span class="col-xs-6 col-md-2">
	             <springform:select path="marque" name="marque" class="form-control input-sm">
	               <springform:option value="Mazda"> Mazda</springform:option>
	               <springform:option value="Toyota"> Toyota</springform:option>
	               <springform:option value="Renault"> Renault</springform:option>
	               <springform:option value="Peugeot"> Peugeot</springform:option>
	               <springform:option value="Hyundai"> Hyundai</springform:option>
	               <springform:option value="Nissan"> Nissan</springform:option>
	               <springform:option value="BMW"> BMW</springform:option>
	               <springform:option value="Mercedes"> Mercedes</springform:option>
	             </springform:select>
	            </span> 
	             <span class="col-xs-6 col-md-2">
	                <label for="modele">Modele</label>
	             </span>
	             <span class="col-xs-6 col-md-2">
	                <springform:select path="modele" name="modele" class="form-control input-sm">
	                   <springform:option value="corolla">corolla</springform:option>
	                   <springform:option value="civic">civic</springform:option>
	                   <springform:option value="camery">camery</springform:option>
	                   <springform:option value="accent">accent</springform:option>
	                   <springform:option value="accord">accord</springform:option>
	                </springform:select>
	             </span>
                 <span class="col-xs-6 col-md-2">
                    <label for="couleur">Couleur</label>
                 </span>
                 <span class="col-xs-6 col-md-2">
		            <springform:select path="couleur" name="modele" class="form-control input-sm">
		               <springform:option value="Noir">noir</springform:option>
		               <springform:option value="rouge">rouge</springform:option>
		               <springform:option value="bleu">bleu</springform:option>
		               <springform:option value="gris">gris</springform:option>
		            </springform:select>
            </span>
            </div>
          <div class="row ">
            
             <span class="col-xs-6 col-md-1">
              <label  for="annee"  >Annee</label>
             </span>
             <span  class="col-xs-6 col-md-2">
              <input   name="annee"  class="form-control input-sm"/>
             </span>
            <span class="col-xs-6 col-md-2">
             <label  for="kilometrage" >Kilometrage</label>
             </span>
             <span class="col-xs-6 col-md-2">
                <springform:input  path="" name="kilometrage" class="form-control input-sm" />
             </span >
             <span class="col-xs-6 col-md-2">
               <label  for="carburant" >Carburant</label>
             </span>
             <span class="col-xs-6 col-md-2">
               <springform:select path="" name="carburant" class="form-control input-sm">
                 <springform:option value="essence">Essence</springform:option>
                 <springform:option value="diesel">Diesel</springform:option>
                 <springform:option value="essencegaz">Essence-Gaz</springform:option>
               </springform:select>
              </span>
            
           </div>
           
               
           
                    
    </fieldset>
       </div>
       
       
       
       
       
       
        <div class="row">
          <div class="form-group">
              <label class="col-md-2 " for="titre">titre:</label>
              <div class="col-md-8">
                
              <springform:input class="form-control input-sm" path="titre"   name="titre" placeholder=" titre"  maxlength="80"/>
              </div>
          </div>
         </div>
         <div class="form-group">
             <label for="description">Description:</label>
             
             <springform:textarea rows="5" cols="" class="form-control" path="corps" name="corps"/>
         </div>
         
      
  <label for="photos" class="form-group"> Choisir des images</label>
    <div class="row ">
     
     <div class="col-md-3 ">
       
       <springform:input  type="file"  path="photos" name="photos" style=" visibility:  hidden ; " onchange="imagepreview(this);"/>
       <label for="photos" >
         <img class="images img-thumbnail"  id="imgpreview"   />  
          <span class="carousel-caption textphotopr">
            <h3> photo principale </h3>
         </span> 
         
       </label> 
        
         
       
      </div>
      
      <!--       image 2 -->
      
      <div class="col-md-3 ">
       <springform:input  type="file"  path="photos2" name="photos2" style=" visibility:  hidden ; " onchange="imagepreview2(this);"/>
        <label for="photos2" >
          <img class="images"  id="imgpreview2"  />
        </label>
       </div>
       
       <!--       image 3 -->
       
      <div class="col-md-3 ">
       <springform:input  type="file"  path="photos3" name="photos3" style=" visibility:  hidden ; " onchange="imagepreview3(this);"/>
        <label for="photos3" >
          <img class="images"  id="imgpreview3"  />
        </label>
       </div>
       
       <!--       image 4 -->
       
      <div class="col-md-3 ">
       <springform:input  type="file"  path="photos4" name="photos4" style=" visibility:  hidden ; " onchange="imagepreview4(this);"/>
        <label for="photos4" >
          <img class="images"  id="imgpreview4"  />
        </label>
       
       </div>
       <!--       image 5 -->
      <div class="col-md-3">
       <springform:input  type="file"  path="photos5" name="photos5" style=" visibility:  hidden ; " onchange="imagepreview5(this);"/>
        <label for="photos5" >
          <img class="images"  id="imgpreview5"  />
        </label>
       </div>
     </div>     <!--         fin row images  -->
 
      <!-- <input type="file" id="idupload" onchange="imagepreview(this);" style=" visibility:  hidden ; "/>
      
      <label for="idupload">
        <img alt="makanch" id="imgpreview" class="images"/>
      </label> -->
  <!--  <div class="row" >
     <div  class="col-xs-3 col-xs-3">
       
        <input id="file-input" type="file" ng-file-select="onFileSelect($files)"  style=" visibility:  hidden ; ">
         
         <label for="file-input" >
           <img class="images" ng-src="{{imageSrc}}"   />
         </label>
         
      </div>
         
         deuxieme image !
        <div  class="col-xs-3 col-xs-3"> 
        <input id="file-input2" type="file" ng-file-select="onFileSelect1($files1)"  style=" visibility:  hidden ; ">
         
         <label for="file-input2" >
           <img class="images" ng-src="{{imageSrc1}}"  /><br/>
         </label>
         
      </div> 
      </div>  end  all images    --> 
         
         <div class="">
         
         </div>
         
         
         <div  class="form-group"  >
          <button  type="submit" >Ajouter annonce </button>
         </div>
       </springform:form>
     
        
       
        
    </div> <!-- end col-md-8  -->
    
   
  

</div>   <!-- end container -->

<!-- debut form -->
<!-- <div class="container" ng-controller="annonceController">

 <div class="row" ng-controller="annonceController">
     <div ng-controller="UploadController " class="col-xs-3 col-xs-3">
       
        <input id="file-input" type="file" ng-file-select="onFileSelect($files)"  style=" visibility:  hidden ; ">
         
         <label for="file-input" >
           <img class="images" ng-src="{{imageSrc}}"   />
         </label>
         
      </div>
         
         deuxieme image !
        <div ng-controller="UploadController1 " class="col-xs-3 col-xs-3"> 
        <input id="file-input2" type="file" ng-file-select="onFileSelect1($files1)"  style=" visibility:  hidden ; ">
         
         <label for="file-input2" >
           <img class="images" ng-src="{{imageSrc1}}"  /><br/>
         </label>
         
      </div> 
      </div>  end  all images  
   </div>    -->
<!-- end form -->

 
                                             <!-- .min. -->

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="js/query.js"></script>
</body>
</html>