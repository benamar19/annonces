var UploadController = function ($scope, fileReader) {
     console.log(fileReader)
     
    $scope.getFile = function () {
     console.log($scope.file);
        $scope.progress = 0;
        fileReader.readAsDataUrl($scope.file, $scope)
                      .then(function(result) {
                          $scope.imageSrc = result;
                      });
    };
 
 
};

var UploadController1 = function ($scope, fileReader) {
    console.log(fileReader)
    
   $scope.getFile = function () {
    console.log($scope.file);
       
       fileReader.readAsDataUrl($scope.file, $scope)
                     .then(function(result) {
                         $scope.imageSrc1 = result;
                     });
   };


};

app.directive("ngFileSelect",function(){

  return {
    link: function($scope,el){
      
      el.bind("change", function(e){
      
        $scope.file = (e.srcElement || e.target).files[0];
        $scope.getFile();
      })
      
    }
    
  }
  
  
})
