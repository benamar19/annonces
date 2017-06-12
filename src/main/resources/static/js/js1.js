/** ecrire les scripts javascript
 *  1 . cliquer annonce pour afficher detail
 */
function detail(id){
	var id=id;
	window.location="/detail/"+id;
}

	
	//href="/detail/${annonce.id}"
var top = $window.offset().top;
$('.trigger').click(function () {
    $('.thisone').css('position','');  
    $('.publicitedroite').toggle('slow',function(){
        top = $window.offset().top;
    });

});



$(document).scroll(function(){
    //calculating the minimal top position of the div
    $window.css('position','');
    top = $window.offset().top;

    $window.css('position','absolute');                 
    $('.thisone').css('top',Math.max(top,$(document).scrollTop()));
 });

















/*var $sidebar   = $("#sidebar"),
	$window    = $(window),
	offset     = $sidebar.offset(),
	topPadding = 15;

	$window.scroll(function() {
		if ($window.scrollTop() > offset.top) {
			$sidebar.addClass('fixed');
		} else {
	    $sidebar.removeClass('fixed');
		}
	});*/