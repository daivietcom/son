jQuery(document).ready(function(){

	jQuery('.slide-ads').each(function(index, element) {
		
		var value = jQuery(this).attr('data-number');

	    jQuery(this).jCarouselLite({
	        easing: "easeOutBack",
	        visible: parseInt(value),
	        start:0,
	        auto: 4000,
	        speed:1000,                                
	        btnPrev: jQuery(this).parents('.block_ads').find('a.prev'), 
	        btnNext:jQuery(this).parents('.block_ads').find('a.next')
	    });
	});

});