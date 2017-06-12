$ (function (){

	$('#categorie').change (function (){
		var i=$('#categorie').val();
		if (i=='Automobile'){
			$('#detailannonce').show();
		}
		else {
			$('#detailannonce').hide();
		}
	});
});


function imagepreview(input){
      if (input.files && input.files[0]){
	    var filerd =new FileReader();
	    filerd.onload=function (e){
            $("#imgpreview").attr('src',e.target.result);
        };
		filerd.readAsDataURL(input.files[0]);
	  }
  };
  function imagepreview2(input){
      if (input.files && input.files[0]){
	    var filerd =new FileReader();
	    filerd.onload=function (e){
            $("#imgpreview2").attr('src',e.target.result);
        };
		filerd.readAsDataURL(input.files[0]);
	  }
  };
  function imagepreview3(input){
      if (input.files && input.files[0]){
	    var filerd =new FileReader();
	    filerd.onload=function (e){
            $("#imgpreview3").attr('src',e.target.result);
        };
		filerd.readAsDataURL(input.files[0]);
	  }
  };
  function imagepreview4(input){
      if (input.files && input.files[0]){
	    var filerd =new FileReader();
	    filerd.onload=function (e){
            $("#imgpreview4").attr('src',e.target.result);
        };
		filerd.readAsDataURL(input.files[0]);
	  }
  };
  function imagepreview5(input){
      if (input.files && input.files[0]){
	    var filerd =new FileReader();
	    filerd.onload=function (e){
            $("#imgpreview5").attr('src',e.target.result);
        };
		filerd.readAsDataURL(input.files[0]);
	  }
  };
 