<?php
/**
 * Single Product Price, including microdata for SEO
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/price.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see     http://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.4.9
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $product;
$gia = $product->regular_price;
$giakm = $product->sale_price;

?>
<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">

	<!-- <p class="price"><?php echo $product->get_price_html(); ?></p>
 -->
	<!-- Thông tin chi tiet -->
    <ul class="attributes">
        <!--End check kho hàng-->
        <?php
            if ( !empty($gia) ) {
                echo '<li class="attribute">Giá thị trường: '.number_format($gia,0,'','.').' đ</li>';
            }
            else {
                echo '<li class="attribute">Giá thị trường: Liên hệ</li>';
            }
        ?>
        <?php
            if ( !empty($giakm) ) {
                echo '<li class="attribute">Giá khuyến mãi: <span style="color:red;font-size:27px;font-weight:bold;">'.number_format($giakm,0,'','.').' đ</span></li>';
            }
        ?>
    </ul>

	<meta itemprop="price" content="<?php echo esc_attr( $product->get_price() ); ?>" />
	<meta itemprop="priceCurrency" content="<?php echo esc_attr( get_woocommerce_currency() ); ?>" />
	<link itemprop="availability" href="http://schema.org/<?php echo $product->is_in_stock() ? 'InStock' : 'OutOfStock'; ?>" />

</div>
