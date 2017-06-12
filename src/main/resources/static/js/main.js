

var app=angular.module("MyApp",[]);

app.controller("annonceController",function($scope,$http){
	$scope.listeannonce=null;
	$scope.curentpage=0;
	$scope.motcle="";
	$scope.pages=0;
	$scope.nom="benamar";
	
	//  ajouter
	$scope.titre="";
	$scope.prix=0;
	$scope.description="";
	
	$scope.ajouterannonce=function(){
		var data={titre:$scope.titre,prix:$scope.prix,description:$scope.description}
		$http.post("http://localhost:8989/addannonce",data);
		
	}
	
	
	// fin ajouter
	
	$scope.chargerAnnonce=function (){
	$http.get("http://localhost:8989/cherche?mc="+$scope.motcle+"&page="+$scope.curentpage+"&size=10")
	 .then (function(success){
		 $scope.listeannonce=success.data; 
		 $scope.pages= new Array(success.data.totalPages);
	 }
	 ,function(err){
		 console.log(err);
	 });
	}
	$scope.gotopage=function(p){
		$scope.curentpage=p;
		$scope.chargerAnnonce();
	}
});

/*debut du module punkler
*/
