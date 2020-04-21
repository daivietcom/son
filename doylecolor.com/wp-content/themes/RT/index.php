<?php
/**
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package __RT
 * @subpackage RT_Theme
 * @since 1.0
 * @version 1.0
 */
global $rt_option;
get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
    	<?php do_action('rt_before_main'); ?>

		<div class="page_home clear">
			<?php  
				$page = $rt_option['page_home'];
                    if (!empty($page)) {
                    $p = new WP_Query('page_id='.$page);
                   
                    while ( $p->have_posts() ) : $p->the_post();
		        
		    ?>
		    	<div class="page_list  clear">
			        <div class="box">
						<div class="row">
							<div class="col-md-4 col-sm-4">
								<?php if ( get_the_post_thumbnail() && ! is_single() ) : ?>
									<div class="post-thumbnail">
										<a href="<?php the_permalink(); ?>">
											<?php the_post_thumbnail( 'medium' ); ?>
										</a>
									</div>
								<?php endif; ?>
							</div>
							<div class="col-md-7 col-sm-7">
								<div class="content_page">
									<h2 class="page-title">
								        <a href="<?php the_permalink();?>" title="<?php the_title();?>"><?php echo the_title(); ?></a>
								    </h2>
									<?php the_content_limit('400','Xem chi tiết');?>
								</div>
							</div>
						</div>
					</div>
		    	</div>
		    <?php
                endwhile; wp_reset_postdata(); }
            ?>
		</div>
		<div class="product_home clear">
			<?php  
				$product_cat = $rt_option['product_cat'];
		        $num_product = $rt_option['numberproduct'];
		        $style_prd = $rt_option['style_prd'];
		        foreach($product_cat as $products_cat) :
		        $product = $products_cat['product_cat_sub'];
		    	if(!empty($product)) {
		    	$getcat = get_term_by( 'id', $product , 'product_cat' );
		        $product_title = $products_cat['product_cat_title'];
		    ?>
		    	<div class="product_list clear">
		    		<h2 class="heading">
		    			<a href="<?php echo get_term_link( (int) $product, 'product_cat'); ?>">
			           		<?php if(!empty($product_title)) echo $product_title;else echo $getcat->name; ?>
			           	</a>
			        </h2>
		            <div class="home-product row">
		                <?php 
		                 $argscat = new WP_Query(array(
		                    'post_type' => 'product',
		                    'tax_query' => array(
		                      	array(
		                          	'taxonomy' => 'product_cat',
		                          	'field' => 'id',
		                          	'terms' => $product
		                      	)
		                  	),
		                  	'posts_per_page' => $num_product
		                  ));
		                ?>
		                <ul class="woocommerce <?php echo $style_prd; ?>">
		                     <?php
		                         while($argscat -> have_posts()):
		                             $argscat -> the_post();
		                     ?>
		                    <?php get_template_part( 'woocommerce/content', 'product' ); ?>
		                    <?php  endwhile; wp_reset_postdata(); ?>
		                </ul>
		            </div>
		    	</div>
			<?php
				}
		        endforeach;
			?>
		</div>
		<div class="clear"></div>
		<!-- End Product -->
		<?php  
			$new = $rt_option['product_category']; 
				if(!empty($new)) {
				echo "<div class='new-home clear'>";
			    	$style_post = $rt_option['style_category'];
			    	get_template_part( 'template-parts/content/'.$style_post.'', get_post_format() );
			    echo "</div>";
		    }
	    ?>
	    <!-- End News -->
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_sidebar();
get_footer();
