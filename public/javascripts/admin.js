$('document').ready(function(){ 
	tabMenuNav()
});

function tabMenuNav(){
	
	  //Get all the span from the #tabMenu UL
	  $('#tabMenu > span').click(function(){

	    //remove the selected class from all span    
	    //$('#tabMenu > span').removeClass('selected');

	    //Reassign the span
	    $(this).addClass('selected');

	    //Hide all the DIV in .boxBody
	    $('.boxBody div').slideUp('500');

	    //Look for the right DIV in boxBody according to the Navigation UL index, therefore, the arrangement is very important.
	    $('.boxBody div:eq(' + $('#tabMenu > span').index(this) + ')').slideDown('500');

	  }).mouseover(function() { 
	    //Add and remove class, Personally I dont think this is the right way to do it, anyone please suggest    
	    $(this).addClass('mouseover');
	    $(this).removeClass('mouseout');   

	  }).mouseout(function() {
	    //Add and remove class
	    $(this).addClass('mouseout');
	    $(this).removeClass('mouseover');    

	  });

	  //Mouseover with animate Effect for Category menu list
	  $('.boxBody #category li').mouseover(function() {

	    //Change background color and animate the padding
	    $(this).css('backgroundColor','#888');
	    $(this).children().animate({paddingLeft:"20px"}, {queue:false, duration:300});
	  }).mouseout(function() {

	    //Change background color and animate the padding
	    $(this).css('backgroundColor','');
	    $(this).children().animate({paddingLeft:"0"}, {queue:false, duration:300});
	  });  

	  //Mouseover effect for Posts, Comments, Famous Posts and Random Posts menu list.
	  $('.boxBody li').click(function(){
	    window.location = $(this).find("a").attr("href");
	  }).mouseover(function() {
	    $(this).css('backgroundColor','#888');
	  }).mouseout(function() {
	    $(this).css('backgroundColor','');
	  });  	

}