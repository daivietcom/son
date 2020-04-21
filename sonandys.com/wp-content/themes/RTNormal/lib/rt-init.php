<?php
define('NO_THUMB_IMG', get_stylesheet_directory_uri().'/images/custom/no_thumb.png');

/**
 * Load GTID admin settings
 */
require_once('rt-options.php');

/**
 * Load GTID functions
 */
require_once('rt-functions.php');

/** * Load GTID widgets */
require_once('widgets/rt-video-widget.php');
require_once('widgets/rt_link-combobox-widget.php');
require_once('widgets/rt-image-slider-widget.php');
require_once('widgets/rt-support.php');
require_once('widgets/rt-product-slider.php');
require_once('widgets/rt-fblikebox.php');
require_once('widgets/rt-image-slider.php');
require_once('widgets/rt-image-ad.php');
// Load Custom Login
require_once('rt-customlogin.php');



/**
 * Register widgets for use in the Genesis theme.
 *
 * @since 1.7.0
 */
require_once('widgets/rt-featured-page-widget.php');
require_once('widgets/rt-featured-post-widget.php');
add_action( 'widgets_init', 'rt_load_widgets' );
function rt_load_widgets() {

	register_widget( 'RT_Featured_Page' );
	register_widget( 'RT_Featured_Post' );

}
?>