<?php
    get_header();
    do_action( 'genesis_before_content_sidebar_wrap' );
    $url = get_stylesheet_directory_uri();
    $no_thum = "<img src='". $url ."/images/custom/no_thumb.png' alt='no_thumb' />";
    $boxes = gtid_get_option('rt_num_home_boxes'); // Lấy số lượng box sản phẩm
    $num = gtid_get_option('number_home_product'); // Lấy số sản phẩm hiển thị trong Loop
    $news_box = gtid_get_option('rt_num_home_news'); // Lấy số lượng box tin
    $num_news =gtid_get_option('number_home_product2'); // Lấy số tin hiển thị trong Loop
?>
    <div class="content-sidebar-wrap">
        <?php do_action( 'genesis_before_content' ); ?>
        <main class="content" role="main" itemprop="mainContentOfPage" itemscope="itemscope" itemtype="http://schema.org/Blog">
            <?php
                do_action( 'genesis_before_loop' );
            ?>
        <div id="home-news">
            <?php if ( !empty ( $boxes ) ) : ?>
                <div class="product-news-wrap">
                    <?php
                        for($i=1;$i<=$boxes;$i++){
                            $products = gtid_get_option('home_cat_'.$i);
                            if($products != 0){
                    ?>
                        <h2 class="heading">
                            <a href="<?php echo get_category_link($products); ?>" title="<?php echo get_cat_name($products);?>">
                                <?php echo get_cat_name($products); ?>
                            </a>
                        </h2>
                        <div class="clear"></div>
                     <?php echo do_shortcode('[rt_creat_query idpost="'. $products .'" showposts="'. $num .'" posttype="post" taxonomy="category"]'); ?>
                    <?php  } }// Kết thúc vòng lặp For số box sản phẩm ?>
                </div><!-- Product Wrap -->
            <?php endif; ?> <!-- end if product box -->
             <!-- ----------------------------------------------------------------- -->
            <?php if ( !empty ( $news_box ) ) : ?>
                    <div class="news-wrap">
                        <?php  for($i2=1;$i2<=$news_box;$i2++){
                                 $news = gtid_get_option('news_cat_'.$i2);
                                 if($news!=0) {
                                    $array = get_term_by('id', $news, 'danhmuc');
                                $id = $array->term_id;
                         ?>
                        <h2 class="heading">
                            <a href="<?php echo get_term_link( $id, 'danhmuc'); ?>">
                                <?php  echo $array->name;?> 
                            </a>
                        </h2>
                    <div class="clear"></div>
                    <div class="news-list">
                        <?php
                       $main_post = new WP_Query(array(
                       'post_type' => 'tin-tuc',
                       'posts_per_page' => $num_news,
                       'tax_query' => array(
                        array(
                                'taxonomy' => 'danhmuc',
                                'field' => 'id',
                                'terms' => $news
                            )
                        ),
                        'paged'=> get_query_var('paged'),
                        'posts_per_page' => '7'
                    ));
                            $x=1;
                            while($main_post -> have_posts()):
                                $main_post -> the_post();
                            if ($x==1) {
       
                        ?>
                          <div class="first-new">
                        <a class="img" href="<?php the_permalink();?>" title="<?php the_title();?>">
                        <?php if(has_post_thumbnail()) the_post_thumbnail("rt_thumb310x195",array("alt" => get_the_title()));
                            else echo $no_thum; ?>
                        
                        <p class="time">
                            <?php the_time('d/m/Y'); ?>
                        </p>
                        </a>
                        <a class="title" href="<?php the_permalink();?>" title="<?php the_title();?>"><?php echo the_title();?></a>
                         <?php the_content_limit(220,'Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i>');?>
                    </div>
                    <?php }else{ ?>
                   
                    <div class="relate-new">
                        <a class="title" href="<?php the_permalink();?>" title="<?php the_title();?>"><?php echo the_title();?></a>
                    <p class="time-count">
                        <span class="time">
                            <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                            <?php the_time('d/m/Y'); ?>
                        </span>
                        <span class="count">
                            <i class="fa fa-eye" aria-hidden="true"></i>
                            Ðã xem: <?php global $count_per_day;if(method_exists($count_per_day, "show")) $count_per_day->show('',''); ?>
                        </span>
                    </p>
                    </div> <!-- end relate new -->
                        <?php
                            }
                            $x++;
                                endwhile; wp_reset_postdata();
                        ?>
                    </div><!--.new-list-->
                    <?php   } } ?>
               </div><!--End #news-wrap-->
            <?php endif; ?> <!-- end if new box -->

        </div> <!-- end home news -->
            
        </main><!-- end #content -->
                  <!--#End #home-news-->
        <?php do_action( 'genesis_after_content' ); ?>
   </div> <!-- end #content-sidebar-wrap -->
     
<?php
    do_action( 'genesis_after_content_sidebar_wrap' );
    get_footer();

?>