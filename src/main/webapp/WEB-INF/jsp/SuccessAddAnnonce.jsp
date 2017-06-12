
<!DOCTYPE html >
<html>
<head>

<title>Ajout Annonce avec success</title>

<link type="text/css" href="bootstrap/dist/css/bootstrap.css" rel="stylesheet" >
<link type="text/css" href="css/style.css" rel="stylesheet" >
</head>
<body>
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
         
         <li><a href="test/4"/> publicite </a></li>
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
<br><br><br><br><br>
  <div class="container"  >
      <p>votre annonce a ete ajoute avec succes !! </p>
  </div>
  
  <script  src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" ></script>
  
</body>
</html>