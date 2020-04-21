<?php
/**
 * RT Aug-Sep 2017
 */
// load include funtion 
require_once( dirname( __FILE__ ) . '/rt_includes/load_admin.php' );
require_once( dirname( __FILE__ ) . '/rt_includes/breadcrumbs.php' );
require_once( dirname( __FILE__ ) . '/rt_includes/limit_content.php' );
require_once( dirname( __FILE__ ) . '/rt_includes/social.php' );
require_once( dirname( __FILE__ ) . '/rt_includes/page-navigation.php' );

// add Widget 
// Wiget rebuild
require_once( dirname( __FILE__ ) . '/widgets/rt-support.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-image.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-facebook.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-product-slider.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-partner.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-archive.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-post-category.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-widget-text.php' );
require_once( dirname( __FILE__ ) . '/widgets/rt-widget-video.php' );

// ggle Insights
function remove_cssjs_ver( $src ) {
if( strpos( $src, '?ver=' ) )
 $src = remove_query_arg( 'ver', $src );
return $src;
}
add_filter( 'style_loader_src', 'remove_cssjs_ver', 10, 2 );
add_filter( 'script_loader_src', 'remove_cssjs_ver', 10, 2 ); 

// function deregister_qjuery() { 
//  if ( !is_admin() ) {
//  wp_deregister_script('jquery');
//  }
// } 
// add_action('wp_enqueue_scripts', 'deregister_qjuery');

add_filter( 'wpcf7_load_js', '__return_false' );
add_filter( 'wpcf7_load_css', '__return_false' );


// Add Metaslider
function add_slide() {
  $idsl = cs_get_option( 'mts_slides' );
  if(is_home() and !wp_is_mobile()) {
	  echo do_shortcode( "[metaslider id={$idsl}]" );
	}
}
add_action( 'rt_before_main', 'add_slide', 1 );

// breadcrumb
function rt_breadcrumb() {
  if(!is_home()) {
    if ( function_exists('yoast_breadcrumb') ) {
    yoast_breadcrumb('<p class="breadcrumbs">','</p>');
    }
  }
}
if($rt_option['enable_breadcrumb']) {
  add_action( 'rt_before_layout', 'rt_breadcrumb', 1  );
}

// search
function search_filter($query) {
  if ( !is_admin() && $query->is_main_query() ) {
    if ($query->is_search) {
      $query->set('post_type', array( 'post', 'product' ) );
    }
  }
}
add_action('pre_get_posts','search_filter');

// add paren menu 
function get_term_top_most_parent( $term_id, $taxonomy ) {
    $parent  = get_term_by( 'id', $term_id, $taxonomy );
    while ( $parent->parent != 0 ){
        $parent  = get_term_by( 'id', $parent->parent, $taxonomy );
    }
    return $parent;
}  

// Add new Widget
function my_custom_sidebars() {
  /* Custom Widgets */
  global $rt_option;
  $custom_sidebars = $rt_option['custom_sidebars'];
  if ($custom_sidebars) {
  foreach($custom_sidebars as $custom_sidebar) :

  register_sidebar( array(
    'name' => $custom_sidebar['sidebar_name'],
    'id' =>  sanitize_title($custom_sidebar['sidebar_id']),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widget-title">',
    'after_title'   => '</h3>',
   ) );
  endforeach;
  }
}
add_action( 'init', 'my_custom_sidebars', 10);

// function remove_post_image_class($content) {
//     $post_string = $content;
//     $post_string = preg_replace('/<img class=".*?"/', '<img', $post_string);
//     return $post_string;
// }

// add_filter( 'the_content', 'remove_post_image_class' );

//Banner QC
register_sidebar( array(
  'name'      => __('Cam kết', 'rt-theme'),
  'id'      => 'camket-home',
  'before_widget' =>'<div id="%1$s" class="widget %2$s">',
  'after_widget'  =>'</div>',
  'before_title'  =>'<h3 class="headings">',
  'after_title'  =>'</h3>',
) );

add_action('after_layout' , 'camket_home');
function camket_home(){
    echo "<div class='camket_home'>";
    dynamic_sidebar( 'camket-home' );
    echo "</div>"; 
}


if ( ! function_exists( 'bw_add_to_card' ) ) {
  function bw_add_to_card( $fragments ) {
    global $woocommerce;
    ob_start();
  ?>
    <div class="">
      <a class="cart-control" href="<?php echo esc_url( $woocommerce->cart->get_cart_url() ); ?>" title="<?php _e( 'View your shopping cart', 'beethemes' ); ?>">
        <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
        <span>(<?php echo esc_html( $woocommerce->cart->cart_contents_count ); ?>)</span>
      </a>
    </div>
  <?php
    $fragments['a.cart-control'] = ob_get_clean();
    return $fragments;
  }
  add_filter( 'woocommerce_add_to_cart_fragments', 'bw_add_to_card' );
}
if ( ! function_exists( 'bw_shoping_cart' ) ) {
  function bw_shoping_cart() {
    global $woocommerce;
    $cart_total = apply_filters( 'woocommerce_add_to_cart_fragments' , array() );
    echo '<div class="shop-cart">';
    echo '';
    echo $cart_total['a.cart-control'];
    //echo '<div class="shop-item">';
    //echo '<div class="widget_shopping_cart_content"></div>';
    //echo '</div>';
    echo '</div>';
  }
}
add_action('vietevotheme_cart','bw_shoping_cart');


function set_post_views( $postID )
{
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        // delete old 'post_views_count' value.
        delete_post_meta( $postID, $count_key );
        // add new 'post_views_count' value.
        add_post_meta( $postID, $count_key, '0' );
    } else {
        $count++;
        // update old 'post_views_count' value.
        update_post_meta( $postID, $count_key, $count );
    }
}
 
function get_post_views( $postID )
{
    $count_key = 'post_views_count';
    $count = get_post_meta( $postID, $count_key, true );
    if($count=='') {
        // delete old 'post_views_count' value.
        delete_post_meta( $postID, $count_key );
        // add new 'post_views_count' value.
        add_post_meta( $postID, $count_key, '0' );
 
        return "0 View";
    }
 
    return $count.' Views';
}


