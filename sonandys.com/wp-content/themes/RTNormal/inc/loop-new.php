   <?php 
		global $url,$no_thum;
   ?>
   <div class="news-post">
        <h2><a href="<?php the_permalink();?>" title="<?php the_title();?>"><?php echo the_title();?></a></h2>
        <a href="<?php the_permalink();?>" title="<?php the_title();?>">

        <?php if(has_post_thumbnail()) the_post_thumbnail("rt_thumb150x120",array("alt" => get_the_title()));
            else echo $no_thum; ?>
        </a>

        <?php the_content_limit(400,'Đọc Thêm');?>

    </div><!--End .news-post-->