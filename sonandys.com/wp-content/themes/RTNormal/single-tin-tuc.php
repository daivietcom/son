<?php
    get_header();
	do_action( 'genesis_before_content_sidebar_wrap' );
    global $post;
	?>
	<div class="content-sidebar-wrap">
		<?php do_action( 'genesis_before_content' ); ?>
    <main class="content" role="main" itemprop="mainContentOfPage" itemscope="itemscope" itemtype="http://schema.org/Blog">
        <?php
            do_action( 'genesis_before_loop' );
            do_action( 'genesis_before_entry' );
        ?>
            <?php if(have_posts()) : the_post();  ?>
                <h1 class="entry-title"><?php the_title(); ?></h1>
                <div class="entry-content">
                <?php the_content(); ?>
                </div>
            <?php endif; ?>

        <?php do_action( 'genesis_after_loop' ); ?>
        <div id="related-post">
        <?php
            $taxonomy = 'danhmuc';  // or whatever you want
            $category = wp_get_object_terms( $post->ID, $taxonomy,array('orderby' => 'term_group', 'order' => 'DESC'));
            $args = array(
            'post_type' => 'tin-tuc',
            'tax_query' => array(
                            array(
                            'taxonomy'  => $taxonomy,
                            'field'     => 'id',
                            'terms'     => $category[0]->term_id
                            )),
            'post__not_in' => array($post->ID),
            'showposts' => 6 // Number of related posts that will be shown.
            );

            $query = new WP_Query($args);
            echo '<h4 class="heading">Tin Liên Quan</h4>
            <ul class="new-list">';
            if($query->have_posts()){
                while($query->have_posts()):
                $query->the_post();
            ?>
                <li>
                    <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
                </li>
            <?php
                endwhile;
                wp_reset_postdata();
                }
            ?>
            </ul>
        </div> <!-- relate new -->
    </main><!-- end #content -->
		<?php do_action( 'genesis_after_content' ); ?>
	</div><!-- end #content-sidebar-wrap -->
	<?php
	do_action( 'genesis_after_content_sidebar_wrap' );
	get_footer();
?>