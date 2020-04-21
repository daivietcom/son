jQuery(document).ready(function(){
    // Menu Mobile
        jQuery('nav').removeClass('nav-primary');
        jQuery('nav').addClass('nav-primary-mobile');
        var menu = jQuery( '.nav-primary-mobile' );
        menu.find( '.menu-item-has-children > a' ).after( '<button class="dropdown-toggle" aria-expanded="false"></button>' );
        jQuery('.secondary-toggle').click(function(){
            menu.slideToggle('500');
            jQuery( this ).toggleClass( 'toggled-on' );
        });

        jQuery( '.dropdown-toggle' ).click(function(){
            jQuery( this ).toggleClass( 'toggled-on' );
            menu.toggleClass( 'toggled-on' );
            jQuery( this ).next( '.children, .sub-menu' ).slideToggle( '500' );
        });
});