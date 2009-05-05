$('document').ready(function(){ 
	setupLinks();
});

function setupLinks () {
    $('.product_div').click(function(){
        id = this.id.split('_');
        window.location = '/products/' + id[1];
    })
}