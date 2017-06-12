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
     <a class="btn btn-info navbar-btn navbar-right" href="">Download</a>
     
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
      <springform:form  class="form-horizontal" action="save"  method="post" commandName="annonce" enctype="multipart/form-data">
     
      
     
     
      
      
      
      <div class="row">
          <div class="form-group  ">
             <label class="col-md-1" for="prix" >Prix:</label>
              <div class="col-md-3">
               <springform:input class="form-control" name="prix" type="text"  placeholder=" prix" path="prix"/>
              </div>
          </div>
         </div>
     
         <springform:select path="adresse" name="adresse" class="">
           
           
           <springform:option value=""> 	</springform:option>    
<springform:option value="ADRAR"> ADRAR	</springform:option>
<springform:option value="AIN DEFLA	">AIN DEFLA	</springform:option>
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
        
        <div class="row">
          <div class="form-group">
              <label class="col-md-1" for="titre">titre:</label>
              <div class="col-md-11">
                
              <springform:input class="form-control" path="titre"   name="titre" placeholder=" titre"  maxlength="60"/>
              </div>
          </div>
         </div>
         <div class="form-group">
             <label for="description">Description:</label>
             
             <springform:textarea rows="5" cols="" class="form-control" path="corps" name="corps"/>
         </div>
         
      
  
   
   
      <span id="image"> Choisir des images</span>
      
      <springform:input  type="file"  path="photos" name="photos" style=" visibility:  hidden ; " onchange="imagepreview(this);"/>
   
      <label for="photos" >
         <img class="images"  id="imgpreview"  />
      </label> 
      
      
      
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