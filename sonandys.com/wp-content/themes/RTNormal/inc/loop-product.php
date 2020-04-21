<?php 
global $url,$no_thum;
$gia = get_field('gia');
?>
  <li class="product-item">
        <div class="product-img">
         <a class="img"  title="<?php the_title();?>"  href="<?php the_permalink();?>" title="<?php the_title();?>">
            <?php if(has_post_thumbnail()) the_post_thumbnail("medium",array("alt" => get_the_title()));
                else echo $no_thum; ?>
        </a> 
        </div>
    <a class="product-title" href="<?php the_permalink();?>" title="<?php the_title();?>"><?php the_title();?></a>
    <p class="price">
    Giá:
        <?php
            if(!empty($gia)) echo number_format($gia,0,'','.')." VNĐ"; else echo " Liên Hệ"; ?>
    </p>
    <p class="xemchitiet">
    <a class="pro-xct" href="<?php the_permalink();?>" title="<?php the_title();?>">Chi tiết <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
    </p>
</li>