<?php
add_action('widgets_init', create_function('', "register_widget('GTID_Image_Slider');"));
class GTID_Image_Slider extends WP_Widget {

	function GTID_Image_Slider() {
		$widget_ops = array( 'classname' => 'img-slider', 'description' => __('Image slider', 'genesis') );
		$control_ops = array( 'width' => 250, 'height' => 350, 'id_base' => 'imgslide' );
		$this->WP_Widget( 'imgslide', __('RT-logo-product slider', 'genesis'), $widget_ops, $control_ops );
        add_action('wp_enqueue_scripts', array(&$this, 'gtid_scripts'));
	}

	function widget($args, $instance) {
		extract($args);

		// defaults
		$instance = wp_parse_args( (array)$instance, array(
			'title' => '',
      'numpro' => 0
		) );
        
		echo $before_widget;            
            $instance = wp_parse_args( (array)$instance, array(
              'title'       => '',
              'link'        => '',
              'numpro'      => 0,
              'data_style_slider'  => '',
              'cat' => '',
            ) );
            echo $before_title . apply_filters('widget_title', $instance['title']) . $after_title;
            ?>
                <div class="block_ads">
                   
              <div class="preview-slider"> 
                <a class="prev" href="#">prev</a> 
                 <a class="next" href="#">next</a>
             </div>
              <div class="slide-ads" data-number="<?php echo $instance['numpro']; ?>">
                            
                    <ul>
                    <?php 
                       $type = substr($instance['data_style_slider'], -1);
                       if ( $type == 1 ) {
                    ?>
                     <?php for($i = 0; $i < $instance['numpro']; $i++) : ?>
                             <li><a href="<?php echo $instance['img_link_'.$i]; ?>" rel="nofollow" target="_blank">
                                 <img src="<?php echo $instance['img_src_'.$i]; ?>" alt="Logo" />
                             </a></li>
                      <?php endfor; ?> 
                    <?php
                       }else {
                    ?>
                     <?php
                  //echo $instance['cat'];
                 $hotPosts = new WP_Query('showposts=20&cat='.$instance['cat']);
                 while($hotPosts->have_posts()):
                 $hotPosts->the_post();
            ?>
            <?php get_template_part('inc/loop-product'); ?>
            <?php  endwhile; wp_reset_postdata(); ?> 
                    <?php
                       }
                    ?>
                    </ul>
                </div>
                </div> <!-- ----- -->
            <?php

		echo $after_widget;
	}

	function update($new_instance, $old_instance) {
		return $new_instance;
	}
	function form($instance) {

		// ensure value exists
		$instance = wp_parse_args( (array)$instance, array(
      'title'       => '',
      'link'        => '',
      'numpro'      => 0,
      'data_style_slider'  => '',
      'cat' => '',
		) );

?>
		<p><label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Tiêu đề', 'genesis'); ?>:</label>
		<input type="text" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" value="<?php echo esc_attr( $instance['title'] ); ?>" style="width:99%;" /></p>
    <!-- ------------------------------------- -->
    <label for="<?php echo $this->get_field_id('giaodien'); ?>" style="display: block;float: left;line-height: 32px;width: 120px;">
      <?php _e('Giao diện', 'genesis'); ?>:
    </label>
    <select id="<?php echo $this->get_field_id('data_style_slider'); ?>" name="<?php echo $this->get_field_name('data_style_slider'); ?>" style="width: 165px;">
        <option value="gd_slider_0"  <?php if ( substr($instance['data_style_slider'], -1) == 0 ) {echo "selected"; } ?> >Tùy chọn</option>
        <option value="gd_slider_1"  <?php if ( substr($instance['data_style_slider'], -1) == 1 ) {echo "selected"; } ?> >Logo slider</option>
        <option value="gd_slider_2" <?php if ( substr($instance['data_style_slider'], -1) == 2 ) {echo "selected"; } ?> >Product slider</option>
    </select>
    <br/>
      <!-- ------------------------------------------------------- -->
      <?php $giaodien =  substr($instance['data_style_slider'], -1); ?>
      <?php 
      if ( $giaodien != 0 ) {
      if ( $giaodien == 1 ) { ?>
        <p>
          <label for="<?php echo $this->get_field_id('numpro'); ?>" style="display: block;float: left;line-height: 32px;width: 120px;">
            <?php _e('Số lượng', 'genesis'); ?>:
          </label>
		        <input type="text" id="<?php echo $this->get_field_id('numpro'); ?>" name="<?php echo $this->get_field_name('numpro'); ?>" value="<?php echo esc_attr( $instance['numpro'] ); ?>" size="2" />
            <p class="alignright">
          		<img alt="" title="" class="ajax-feedback " src="<?php bloginfo('url'); ?>/wp-admin/images/wpspin_light.gif" style="visibility: hidden;" />
          		<input type="submit" value="Save" class="button-primary widget-control-save" id="savewidget" name="savewidget" />		
            </p>
        </p>
      

        <?php for($i = 0; $i < $instance['numpro']; $i++) : ?>
            <div style="background: #F5F5F5; margin-bottom: 10px; padding: 10px;">
                <p><label for="<?php echo $this->get_field_id('img_src_'.$i); ?>"><?php _e('Link ảnh ', 'genesis');  echo $i+1;?>:</label>
		            <input type="text" id="<?php echo $this->get_field_id('img_src_'.$i); ?>" name="<?php echo $this->get_field_name('img_src_'.$i); ?>" value="<?php echo esc_attr( $instance['img_src_'.$i] ); ?>" style="width:90%;" /></p>
                <p><label for="<?php echo $this->get_field_id('img_link_'.$i); ?>"><?php _e('Link khi click vào ảnh ', 'genesis'); echo $i+1; ?>:</label>
        		<input type="text" id="<?php echo $this->get_field_id('img_link_'.$i); ?>" name="<?php echo $this->get_field_name('img_link_'.$i); ?>" value="<?php echo esc_attr( $instance['img_link_'.$i] ); ?>" style="width:90%;" /></p>
            </div>
        <?php 
          endfor; 
         }else {
        ?>
            <p>
                <label for="<?php  echo $this-> get_field_id('cat'); ?>" style="display: block;float: left;line-height: 32px;width: 120px;">
                  <?php  _e('Chuyên mục','genesis'); ?>:
                </label>
                <?php
                    wp_dropdown_categories(array('name'=> $this->get_field_name('cat'),'selected'=>$instance['cat'],'orderby'=>'Name','hierarchical'=>1,'show_option_all'=>__('Tất cả','genesis'),'hide_empty'=>'0')); ?>
            </p>

            <p>
                <label for="<?php  echo $this->get_field_id('numpro'); ?>">
                <?php  _e('Số sản phẩm hiển thị', 'genesis'); ?>:
                </label>
                <input type="text" id="<?php  echo $this->get_field_id('numpro'); ?>" name="<?php  echo $this->get_field_name('numpro'); ?>" value="<?php  echo esc_attr( $instance['numpro'] ); ?>" style="width:10%;" />
            </p>
	<?php
      }
    }// end if giao dien
	} 


// end logo slider --------------------------------------------------------------------------------
    function gtid_scripts() {
        if ( is_active_widget( false, false, $this->id_base, true ) ) {
        // wp_enqueue_script('jquery');
        wp_enqueue_style("logo-slide");
        wp_enqueue_script( "jquery.easing-1.3" );
        wp_enqueue_script( "jquery.mousewheel" );
        wp_enqueue_script( "jquery.jcarousellite" );
        wp_enqueue_script( "slide-js" );
        }
    }
}