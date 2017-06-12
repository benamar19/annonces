<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="springform"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html >
<html>
<head>

<title>Affiche annonces</title>


<link type="text/css" href="/bootstrap/dist/css/bootstrap.css" rel="stylesheet" >
<link type="text/css" href="/css/style.css" rel="stylesheet" >
 <script data-require="angular.js@1.0.x" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js" data-semver="1.0.8"></script>
  
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
     <a class="btn btn-info navbar-btn navbar-right" href="">Download</a>
     
       <ul class="nav navbar-nav">
         <li class="active"> <a href="/save"/> Nouvelle annonce </a>
         
         <li><a href="/test/4"/> publicite </a></li>
         <li><a href="/test1"/> Foire aux Questions </a></li>
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


<!-- <div class="container"  > -->



  
  <div class="col-md-8">
  <form action="/affiche" method="post" >
     <div class="col-md-7">
       <input type="text" name="recherchetitre" class="form-control">
     </div>
     <div class="col-md-1">
     <button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
     </div>
   </form>
   </div>  <!-- ajouter 2 -->
  </div>  <!-- ajouter 1 -->
  
 <br>
  <br> 
 
  <c:forEach  items="${annonces.content}" var="annonce">
  <div class="row">
  <div class="col-md-2"> </div>
  
 <div class="thumbnail">
 <div class="row">
     <div class="col-md-2" ></div>
     <div class="titreannonce col-md-8">
      
      <a href="/detail/${annonce.id}"><c:out value="${annonce.titre}" ></c:out>  </a>
      
      
     </div>
     
     <div class="prixannonce col-md-2">
      <c:out value="${annonce.prix}$"  ></c:out> 
     </div>
  </div>
  <div class="row">
      <div class="col-md-1" ></div>
      <div class="corps container col-md-2">
        <img class="images" src="/images?id=${annonce.id}" alt="No image"/>
<%--         <c:out value="${annonce.photos}"></c:out>  --%>
    </div>
       
      <div class="corps container col-md-8">
        <c:out value="${annonce.corps}"></c:out> 
      </div>
  </div>
  
  <%-- <div class="row">
    <div class="corps container col-md-12">
        <img class="images" src="/images?id=${annonce.id}"/>
        <c:out value="${annonce.photos}"></c:out> 
    </div>
  </div> --%>
   </div> <!--end thumbnail  -->
   
  <br>
  
 </c:forEach> 
 <ul class="nav nav-pills">
       <c:forEach var="i" begin="0" end="${nb}">
            <c:url var="pageUrl" value="/affiche/${search}/${i}" />
            
             <c:choose>
                 <c:when test="${i == currentIndex}">
                    <li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                </c:when> 
                <c:otherwise>
                    <li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                </c:otherwise>
            </c:choose> 
             
        </c:forEach>
     </ul>   
 
 
 
 
   <!-- end div col-md-8  grand div -->
 <div class="col-md-2" ></div>
   <!-- end container 2 -->
<script  src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" ></script>


</body>
</html>