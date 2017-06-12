<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="springform"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html >
<html>
<head>

<title>Affiche annonces</title>




<script type="text/javascript" src="/js/js1.js"></script>
<link type="text/css" href="/bootstrap/dist/css/bootstrap.css" rel="stylesheet" >
<link type="text/css" href="/css/style.css" rel="stylesheet" >
 <script data-require="angular.js@1.0.x" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js" data-semver="1.0.8"></script>
  
</head>
<body>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-8417132204297527",
    enable_page_level_ads: true
  });
</script>
<nav class="navbar navbar-fixed-top  navbar-default" id="my-navbar" >
  <div class="container">
     <div class="navbar-header">
     <a class="navbar-brand" href="#">
        <img alt="Brand" src="/images/soukalgerie3.png">
      </a>
       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse" >
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </button>
       <a href="/affiche" class="navbar-brand "> Parcourir</a>
     </div>  <!-- navbar header -->
     
     <div class="collapse navbar-collapse " id="navbar-collapse">
           <a class="btn btn-warning navbar-btn navbar-right" href="/save">Afficher une Annonce</a>
           <ul class="nav navbar-nav">
		         <li > <a href="/save" > Nouvelle annonce </a>
		         <li ><a href="/test/4" > publicite </a></li>
		         <li ><a href="/test1"> Foire aux Questions </a></li>
		         <li class="dropdown ">
                     <a class="dropdown-toggle" data-toggle="dropdown">
                          Contact <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu  navbar-nav">
		               <li > <a>Contactez nous</a> </li>
		               <li> <a>Coordonnees</a></li>
		               <li> <a>about us</a></li>
		            </ul>
                 </li>
         </ul>
     </div>
     
  </div> <!-- end container -->

</nav>  <!-- end nav bar form-inline  form-inline-->
<br><br><br><br><br>
 <form action="/affiche" method="post"  >
   <div class="row">
      <div class="col-md-1"> </div>
         
   
	   <span class="col-md-3 col-xs-10">
	          <input type="text" name="recherchetitre"  maxlength="50" class="form-control " value="${search}"/>
	   </span >
	   
       <span class="col-md-2 col-xs-10">
         <select  name="adresse"  class="  form-control" id="grass">
            <option value="Algerie"  selected="selected" id="gras"  >ALGERIE</option>    
			<option value="ADRAR" ${selectedville=="ADRAR"?'selected="selected"': ' '}> ADRAR	</option>
			
			<option value="AIN DEFLA"      ${selectedville=="AIN DEFLA"?'selected="selected"':' '}>AIN DEFLA	</option>
			<option value="AIN TEMOUCHENT" ${selectedville=="AIN TEMOUCHENT"?'selected="selected"':' '}>AIN TEMOUCHENT	</option>
			<option value="AL TARF"	${selectedville=="AL TARF"?'selected="selected"':' '}>AL TARF</option>
			<option value="ALGER" ${selectedville=="ALGER"?'selected="selected"':' '}> 	ALGER</option>
			<option value="ANNABA" ${selectedville=="ANNABA"?'selected="selected"': ' '}>ANNABA	</option>
			<option value="B.B.ARRERIDJ" ${selectedville=="B.B.ARRERIDJ"?'selected="selected"': ' '}>B.B.ARRERIDJ	</option>
			<option value="BATNA" ${selectedville=="BATNA"?'selected="selected"': ' '}>BATNA	</option>
			<option value="BECHAR" ${selectedville=="BECHAR"?'selected="selected"': ' '}>BECHAR	</option>
			<option value="BEJAIA" ${selectedville=="BEJAIA"?'selected="selected"': ' '}>BEJAIA	</option>
			<option value="BISKRA" ${selectedville=="BISKRA"?'selected="selected"': ' '}>BISKRA	</option>
			<option value="BLIDA" ${selectedville=="BLIDA"?'selected="selected"': ' '}>BLIDA	</option>
			<option value="BOUIRA" ${selectedville=="BOUIRA"?'selected="selected"': ' '}>BOUIRA	</option>
			<option value="BOUMERDES" ${selectedville=="BOUMERDES"?'selected="selected"': ' '}>BOUMERDES	</option>
			<option value="CHLEF" ${selectedville=="CHLEF"?'selected="selected"': ' '}>CHLEF	</option>
			<option value="CONSTANTINE" ${selectedville=="CONSTANTINE"?'selected="selected"': ' '}>CONSTANTINE	</option>
			<option value="DJELFA" ${selectedville=="DJELFA"?'selected="selected"': ' '}>DJELFA	</option>
			<option value="EL BAYADH" ${selectedville=="EL BAYADH"?'selected="selected"': ' '}>EL BAYADH	</option>
			<option value="EL OUED" ${selectedville=="EL OUED"?'selected="selected"': ' '}>EL OUED	</option>
			<option value="GHARDAIA" ${selectedville=="GHARDAIA"?'selected="selected"': ' '}>GHARDAIA	</option>
			<option value="GUELMA" ${selectedville=="GUELMA"?'selected="selected"': ' '}>GUELMA	</option>
			<option value="ILLIZI" ${selectedville=="ILLIZI"?'selected="selected"': ' '}>ILLIZI	</option>
			<option value="JIJEL" ${selectedville=="JIJEL"?'selected="selected"': ' '}>JIJEL	</option>
			<option value="KHENCHELA" ${selectedville=="KHENCHELA"?'selected="selected"': ' '}>KHENCHELA	</option>
			<option value="LAGHOUAT" ${selectedville=="LAGHOUAT"?'selected="selected"': ' '}>LAGHOUAT	</option>
			<option value="MASCARA" ${selectedville=="MASCARA"?'selected="selected"': ' '}>MASCARA	</option>
			<option value="MEDEA" ${selectedville=="MEDEA"?'selected="selected"': ' '}>MEDEA	</option>
			<option value="MILA" ${selectedville=="MILA"?'selected="selected"': ' '}>MILA	</option>
			<option value="MOSTAGANEM" ${selectedville=="MOSTAGANEM"?'selected="selected"': ' '}>MOSTAGANEM	</option>
			<option value="M’SILA" ${selectedville=="MSILA"?'selected="selected"': ' '}>M’SILA	</option>
			<option value="NAAMA" ${selectedville=="NAAMA"?'selected="selected"': ' '}>NAAMA	</option>
			<option value="ORAN" ${selectedville=="ORAN"?'selected="selected"': ' '}>ORAN	</option>
			<option value="OUARGLA" ${selectedville=="OUARGLA"?'selected="selected"': ' '}>OUARGLA	</option>
			<option value="OUM ELBOUAGHI" ${selectedville=="OUM ELBOUAGHI"?'selected="selected"': ' '}>OUM ELBOUAGHI	</option>
			<option value="RELIZANE" ${selectedville=="RELIZANE"?'selected="selected"': ' '}>RELIZANE	</option>
			<option value="SAIDA" ${selectedville=="SAIDA"?'selected="selected"': ' '}>SAIDA	</option>
			<option value="SETIF" ${selectedville=="SETIF"?'selected="selected"': ' '}>SETIF	</option>
			<option value="SIDI BEL ABBES" ${selectedville=="SIDI BEL ABBES"?'selected="selected"': ' '}>SIDI BEL ABBES	</option>
			<option value="SKIKDA" ${selectedville=="SKIKDA"?'selected="selected"': ' '}>SKIKDA	</option>
			<option value="SOUKAHRAS" ${selectedville=="SOUKAHRAS"?'selected="selected"': ' '}>SOUKAHRAS	</option>
			<option value="TAMANGHASSET" ${selectedville=="TAMANGHASSET"?'selected="selected"': ' '}>TAMANGHASSET	</option>
			<option value="TEBESSA" ${selectedville=="TEBESSA"?'selected="selected"': ' '}>TEBESSA	</option>
			<option value="TIARET" ${selectedville=="TIARET"?'selected="selected"': ' '}>TIARET	</option>
			<option value="TINDOUF" ${selectedville=="TINDOUF"?'selected="selected"': ' '}>TINDOUF	</option>
			<option value="TIPAZA" ${selectedville=="TIPAZA"?'selected="selected"': ' '}>TIPAZA	</option>
			<option value="TISSEMSILT" ${selectedville=="TISSEMSILT"?'selected="selected"': ' '}>TISSEMSILT	</option>
			<option value="TIZI.OUZOU" ${selectedville=="TIZI.OUZOU"?'selected="selected"': ' '}>TIZI.OUZOU	</option>
			<option value="TLEMCEN" ${selectedville=="TLEMCEN"?'selected="selected"': ' '}>TLEMCEN </option>
        </select>
      </span>
      <span class="col-md-2 col-xs-10">
            <select  name="categorie"  class="  form-control" >
            <option value="tous">Toute les annonces </option>
            <option value="Automobile" ${selectedcategorie=="Automobile"?'selected="selected"': ' ' }>Automobile	</option>
            <option value="Immobiler" ${selectedcategorie=="Immobiler"?'selected="selected"': ' ' }>Immobilier	</option>
            <option value="telephones" ${selectedcategorie=="telephones"?'selected="selected"': ' ' }>Telephones	</option>
			
			<option value="Services"  ${selectedcategorie=="Services"?'selected="selected"': ' ' }>Services	</option>
			<option value="Emplois"  ${selectedcategorie=="Emplois"?'selected="selected"': ' ' }>Emplois	</option>
			
			<option value="achetervendre" ${selectedcategorie=="achetervendre"?'selected="selected"': ' ' }>Acheter et vendre	</option>
        
        </select>
      
      </span>
      <span  class="input-group-btn">
        <button type="submit" class="  btn btn-primary " >
      
         <span class="glyphicon glyphicon-search col-xs-2" ></span> Search
        </button>
       </span>
   
   

   </div>
 
</form>
<!-- <div class="container"  > -->
<!-- <div class="row">
<div class="col-md-1"></div>
<div class="col-md-8">
 <div class="form-control">
     <div class="col-md-1"></div>
     <div class="col-md-7">
     <form action="/affiche" method="post"  >
     <div class="row">
       <div  >
         <input type="text" name="recherchetitre"  maxlength="50" class="col-md-9">
        </div>
      <button type="submit" class="btn-sm  btn-info  " >
        <span class="glyphicon glyphicon-search" ></span> Search
      </button>
      </div>
    </form>
    </div>
   <div  class="col-md-2 form-group">
   <select >
        <option value="alger">Alger</option>
        <option value="alger">Tlemcen</option>
      </select>
   </div>
   </div>
</div>
</div> -->

<div class="row">
  <div class="col-md-1" >
  
  </div>
  
  <div class="col-xs-12 col-lg-2  col-lg-push-8">      <!-- begin right ads  -->                                 <!-- data-spy="affix" data-offset-top="90" -->
   <div class="row">
   <span  class="col-xs-5 col-sm-3 col-lg-12  mythumb thumbnail"  >
       <a href="http://www.soukalgerie.com"> <img alt="no image" src="/images/soukalgerie.png"></a>
       
		 
   </span>
   <span  class="col-xs-5 col-sm-3 col-lg-12  mythumb thumbnail"  >
      <img alt="no image" src="/images/soukalgerie.png">
		  
   </span>
   <span  class="col-xs-5 col-sm-3  col-lg-12 mythumb thumbnail"  >
     <img alt="no image" src="/images/soukalgerie.png">
     
   </span>
   </div>
  </div> <!-- end right ads  -->
  
  
  
  <div class="col-xs-12 col-lg-8  kbira col-lg-pull-2">
  
 <br>
  <br> 
 
  <c:forEach  items="${annonces.content}" var="annonce">
 <div class="thumbnail annoncebloc"  onclick="detail(${annonce.id})">
 
 <div class="row">
   <div class=" col-xs-6 col-md-3 ">
        <img class="imagesaffichage" src="/images?id=${annonce.id}" alt="No image"/>
<%--         <c:out value="${annonce.photos}"></c:out>  --%>
    </div>
    <!-- =======debut========== -->
    <div class="col-xs-6  col-md-9">
         <div class="row">
            <div class="col-xs-12  col-md-9 "> 
                <a class="titreannonce" href="/detail/${annonce.id}"><c:out value="${annonce.titre}" ></c:out>  </a>
             </div>
            <div class="prixannonce col-xs-12  col-md-3 text-right ">
                 <c:out value="${annonce.prix}$"  ></c:out>
            </div>
        
        </div>
        <div class="row">
           <div class="col-md-6 villeadresse"> 
           
           <c:out value="${annonce.adresse}"></c:out> |
           <fmt:formatDate value="${annonce.date}" pattern="yyyy-MM-dd"/>
           </div>
        </div>
         <div class="row">
           <div class="corps col-xs-12 col-md-11 description"> 
              <c:out value="${annonce.corps}"></c:out> 
           </div>
        </div> 
    </div>
       
    <!-- =======fin change======= -->
    
    <%-- <!-- =================== -->
     <div class="row">
       <div class=" col-md-5">
         <a class="titreannonce" href="/detail/${annonce.id}"><c:out value="${annonce.titre}" ></c:out>  </a>
       </div> 
       <div class="prixannonce col-md-7">
         <c:out value="${annonce.prix}$"  ></c:out> 
       </div>
       
      </div>
      
      <!-- =================== -->
     <div class="corps">
        <c:out value="${annonce.corps}"></c:out> 
      
     </div>
     <!-- =================== --> --%>
     
  </div>
  
  
 <%--  <div class="row">
      <div class="corps container col-md-3">
        <img class="images" src="/images?id=${annonce.id}" alt="No image"/>
        <c:out value="${annonce.photos}"></c:out> 
      </div>
       
      <div class="corps container col-md-9">
        <c:out value="${annonce.corps}"></c:out> 
      </div>
  </div> --%>
  
  <%-- <div class="row">
    <div class="corps container col-md-12">
        <img class="images" src="/images?id=${annonce.id}"/>
        <c:out value="${annonce.photos}"></c:out> 
    </div>
  </div> --%>
   </div> <!--end thumbnail  -->
  <br>
  
 </c:forEach> 
  <c:if test="${nbAds==0}">
   <c:out value="Pas d'annonces. Change mots cles plus generales"></c:out> 
 </c:if> 
 <c:if test="${nbAds>0}">
 
 <!-- debut   google-->
 <c:if test="${nb<=10}">
   <c:set var="debut" value="${1}"></c:set>
    
   
   <c:set var="fin" value="${nb+1}"></c:set>
 </c:if>
 
 <c:if test="${nb>10}">
     <c:if test="${currentIndex<=6}">
          <c:set var="debut" value="${1}"></c:set>
         
          
          
          <c:set var="fin" value="${10}"></c:set>
     </c:if>
     
     <c:if test="${currentIndex>6}">
          <c:set var="debut" value="${currentIndex-5}"></c:set>
          
          <c:if test="${(currentIndex+5)>nb}">
               <c:set var="fin" value="${nb+1}"></c:set>
               <c:set var="debut" value="${nb-10}"></c:set>
          </c:if>
          <c:if test="${(currentIndex+5)<=nb}">
               <c:set var="fin" value="${currentIndex+5}"></c:set>
          </c:if>
          
          
     </c:if>
     
 </c:if>
 
 
 
 <!-- fin  google-->
 
 <ul class="nav nav-pills pagination">
      <c:if test="${currentIndex>1}">
       <li > <a href="/affiche/${search}/${selectedcategorie}/${adresse}/${currentIndex-1}"> <c:out value="<Precedent"></c:out> </a>  </li>
      </c:if> 
       <c:forEach var="i" begin="${debut}" end="${fin}">
            <c:url var="pageUrl" value="/affiche/${search}/${selectedcategorie}/${adresse}/${i}" />
            
             <c:choose>
                 <c:when test="${i == currentIndex}">
                    <li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                </c:when> 
                <c:otherwise>
                    <li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                </c:otherwise>
            </c:choose> 
             
        </c:forEach>
        <c:if test="${currentIndex<=nb}">
          
           <li > <a href="/affiche/${search}/${selectedcategorie}/${adresse}/${currentIndex+1}"> <c:out value="Suivant>"></c:out> </a>  </li>
           
           
          
           
           
        </c:if>
 </ul>   
 </c:if>
 
 
 
 </div>  <!-- end div col-md-8  grand div -->
  
  
 </div>

 
<script  src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" ></script>


</body>
</html>