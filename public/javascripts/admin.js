$('document').ready(function(){ 
	tabMenuNav();
	loadTab();
	setupProductForms();
});

function tabMenuNav(){
	$('.product_tab_label').click(function(){
	    showTab(this.id.split('_'))	
	});
}

function showTab (name) {
    $('.product_tab').hide();
	$('#product_tab_labels > .product_tab_label').removeClass('active');
	tab = $('#' + name + '_span');
	tab.addClass('active');
	$('#' + name).show();
}

function loadTab () {
    tab = String(window.location).split('#')[1];
    if(tab){showTab(tab.split('=')[1]);}
}

function setupProductForms () {
    $('#product_attribute_ajax_form').submit(function(){
        $.post(this.action,)
        // $.ajax({
        //     type: "POST",
        //     url: this.action,
        //     data: $(this).serialize(),
        //     dataType: 'html',
        //     success: function(data){
        //         $('#product_attributes').html(data);
        //     }
        // });
        return false;
    })
}

// function tabMenuNav(){
// 	
// 	  //Get all the span from the #tabMenu UL
// 	  $('#tabMenu > span').click(function(){
// 
// 	    //remove the selected class from all span    
// 	    //$('#tabMenu > span').removeClass('selected');
// 
// 	    //Reassign the span
// 	    $(this).addClass('selected');
// 
// 	    //Hide all the DIV in .boxBody
// 	    $('.boxBody div').slideUp('500');
// 
// 	    //Look for the right DIV in boxBody according to the Navigation UL index, therefore, the arrangement is very important.
// 	    $('.boxBody div:eq(' + $('#tabMenu > span').index(this) + ')').slideDown('500');
// 
// 	  }).mouseover(function() { 
// 	    //Add and remove class, Personally I dont think this is the right way to do it, anyone please suggest    
// 	    $(this).addClass('mouseover');
// 	    $(this).removeClass('mouseout');   
// 
// 	  }).mouseout(function() {
// 	    //Add and remove class
// 	    $(this).addClass('mouseout');
// 	    $(this).removeClass('mouseover');    
// 
// 	  });
// 
// 	  //Mouseover with animate Effect for Category menu list
// 	  $('.boxBody #category li').mouseover(function() {
// 
// 	    //Change background color and animate the padding
// 	    $(this).css('backgroundColor','#888');
// 	    $(this).children().animate({paddingLeft:"20px"}, {queue:false, duration:300});
// 	  }).mouseout(function() {
// 
// 	    //Change background color and animate the padding
// 	    $(this).css('backgroundColor','');
// 	    $(this).children().animate({paddingLeft:"0"}, {queue:false, duration:300});
// 	  });  
// 
// 	  //Mouseover effect for Posts, Comments, Famous Posts and Random Posts menu list.
// 	  $('.boxBody li').click(function(){
// 	    window.location = $(this).find("a").attr("href");
// 	  }).mouseover(function() {
// 	    $(this).css('backgroundColor','#888');
// 	  }).mouseout(function() {
// 	    $(this).css('backgroundColor','');
// 	  });  	
// 
// }