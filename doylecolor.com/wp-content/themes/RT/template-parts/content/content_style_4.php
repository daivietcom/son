<?php
/**
 * @package Raothue
 * @subpackage RT_Theme
 * @since 1.0
 * @version 1.0
 */
global $rt_option;
$no_thumb = "<img src=".get_stylesheet_directory_uri()."/assets/css/images/no-image.jpg>";
$new = $rt_option['product_category']; 
$num_post = $rt_option['numberpost'];
$style_post = $rt_option['style_category'];
$i=0;
foreach($new as $news) :
$i++;
$news_post = $news['product_category_sub']; 
$news_title = $news['product_category_title'];
?>
<div class="list list-<?php echo $i; ?>  <?php echo $style_post; ?> clear">
	<h2 class="heading">
		<a href="<?php echo get_category_link($news_post); ?>">
       		<?php if(!empty($news_title)) echo $news_title;else echo get_cat_name($news_post); ?>
       	</a>
    </h2>
	<div class="list-news">
		<?php
			$main_post = new WP_Query( 'cat='.$news_post.'&showposts='.$num_post );
		    while ( $main_post -> have_posts() ) :
		    $main_post -> the_post();
		?>
		<div class="news-post">
			<div class="box">
				<div class="post-thumbnail">
					<a href="<?php the_permalink(); ?>">
						<?php if(has_post_thumbnail()) the_post_thumbnail("medium",array("alt" => get_the_title()));
                    			else echo $no_thumb; ?>
					</a>
				</div>
			<div class="content">
				<h2 class="news-title">
			        <a href="<?php the_permalink();?>" title="<?php the_title();?>"><?php echo the_title(); ?></a>
			    </h2>
				<?php the_content_limit('300','Xem thêm');?>
			</div>
			</div>
		</div>
		<?php  endwhile; wp_reset_postdata(); ?>
	</div>
	</div>
<?php endforeach; ?>