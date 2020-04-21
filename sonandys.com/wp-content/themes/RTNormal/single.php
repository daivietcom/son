<?php
    get_header();
    do_action( 'genesis_before_content_sidebar_wrap' );
    $url = get_stylesheet_directory_uri();
    $linkhome = get_option('siteurl');
    $no_thum = "<img src='".$url."/images/custom/no_thumb.png' alt='no_thumb' />";
?>
	<div class="content-sidebar-wrap">
		<?php do_action( 'genesis_before_content' ); ?>
		<main class="content" role="main" itemprop="mainContentOfPage" itemscope="itemscope" itemtype="http://schema.org/Blog">
			<?php
				do_action( 'genesis_before_loop' );
				do_action( 'genesis_before_entry' );
			?>
                <div id="product-detail">
                    <h1 class="heading"><?php the_title();?></h1>
                	<?php 
                        if(have_posts()) : the_post();
                    ?>
					<div class="Information">
			            <div class="anhspsp">
        					<a class="click-zoom" href="<?php echo wp_get_attachment_url(get_post_thumbnail_id($post->ID,'full')); ?>" title="<?php the_title();?>">
                                     <?php the_post_thumbnail('large'); ?>
                            </a>
                        </div>

                        <div class="thongso">
    						<ul>
                                <?php
                                $fields = get_field_objects(); // lay cac tham so, tra ra 1 array
                                if(count($fields) != 0) :
                                foreach($fields as $val) :
                                    if( !empty($val['value']) ){
                                ?>
                                <li>
                                    <span class="left"><?php echo $val['label']; ?></span>
                                    <span class="right">
                                    <?php
                                        if( $val['name'] == 'gia' || $val['name'] == 'gia_khuyen_mai' ){
                                            echo number_format($val['value'],0,'','.')." VNĐ";
                                        }else{
                                            echo the_field($val['_name']);
                                        }
                                     ?>
                                    </span>
                                </li>

                                <?php } endforeach; endif; ?>
    						</ul>
                            <p class="add_contact">
                                <a href="<?php echo $linkhome; ?>/lien-he" title="Đặt mua"> Đặt mua </a>
                            </p>
                        <?php dynamic_sidebar( 'single widget' ); ?>      
                        </div>
					</div><!--end .Information -->
                    <h4 class="product-detail"> Nội dung chi tiết </h4>
	                    <div class="entry-content">
							<?php
								the_content();
							?>
	                    </div>
                	<?php endif; ?>
                    </div><!--End. Product-Detail-->

                    <div id="related-product">
                        <h4 class="heading">Sản Phẩm Liên Quan</h4>
                        <ul class="product-list">
                      <?php
			            $category = wp_get_object_terms( $post->ID, 'category',array('orderby' => 'term_group', 'order' => 'DESC'));
                        global $post;
                        $rel = new WP_Query(array(
                            'cat' => end($category)->term_id,
                            'showposts' => 6,
                            'post__not_in' => array($post->ID)
                        ));
                        if($rel->have_posts()):
                            while($rel->have_posts()):
                            $rel->the_post();
                             get_template_part('inc/loop-product');
                            endwhile;
                            endif;
                        ?>
                    </ul>
                </div> <!-- end related product -->
            <?php
				do_action( 'genesis_after_loop' );
			?>

		</main><!-- end #content -->
		<?php do_action( 'genesis_after_content' ); ?>
	</div><!-- end #content-sidebar-wrap -->
	<?php
	do_action( 'genesis_after_content_sidebar_wrap' );
	get_footer();
?>