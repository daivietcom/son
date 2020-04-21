<?php
/**
 * Single product short description
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */
?>

<div class="info_products clearfix">
		<?php
		    $_customer_options = get_post_meta( get_the_ID(), '_custom_post_options', true );
		    if ( !empty ( $_customer_options ) ) : {
		        echo '<div>Mã SP: '.$_customer_options['section_4_text_1'].'</div>';
		        echo '<div>Tình trạng: '.$_customer_options['section_4_text_2'].'</div>';
		        echo '<div>Chất liệu: '.$_customer_options['section_4_text_3'].'</div>';
		        echo '<div>Kích thước: '.$_customer_options['section_4_text_4'].'</div>';
			}
		    endif;
		?>
</div>
<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $post;

if ( ! $post->post_excerpt ) {
	return;
}

?>
<div itemprop="description">
	<?php echo apply_filters( 'woocommerce_short_description', $post->post_excerpt ) ?>
</div>
