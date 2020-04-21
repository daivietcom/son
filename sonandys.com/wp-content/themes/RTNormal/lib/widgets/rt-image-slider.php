<?php 
/*
 * Khởi tạo widget item g
 * Gọi class widget
 */
add_action( 'widgets_init', 'RT_image_slider' );
function RT_image_slider() {
        register_widget('RT_image_slider_Widget');
}
/**
 * Tạo class widget
 */
class RT_image_slider_Widget extends WP_Widget {
 
        /**
         * Thiết lập widget: đặt tên, base ID
         */
        function __construct() {
            parent::__construct (
                  'img-slider', // id của widget
                  'RT - Images Slider', // tên của widget
             
                  array(
                      'description' => 'widget slider img' // mô tả
                  )
                );
            add_action('wp_enqueue_scripts', array(&$this, 'gtid_scripts'));
        }
 
        /**
         * Tạo form option cho widget
         */
        function form( $instance ) {
            $default = array(
                    'title' => ' ',
                    'link'  => '',
                    'img_number' => 0   
            );
            $instance = wp_parse_args( (array) $instance, $default);

            $title = esc_attr( $instance['title'] );
            $link = esc_attr( $instance['link'] );
            $number = esc_attr( $instance['img_number'] );
        ?>
            <p>
                <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Tiêu đề', 'genesis'); ?>:</label>
                <input type="text" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" value="<?php echo esc_attr( $instance['title'] ); ?>" style="width:99%;" />
            </p>
            <div style="overflow: hidden;"> 
                <label for="<?php echo $this->get_field_id('img_number'); ?>"><?php _e('Số lượng', 'genesis'); ?>:</label>
                <input type="text" id="<?php echo $this->get_field_id('img_number'); ?>" name="<?php echo $this->get_field_name('img_number'); ?>" value="<?php echo esc_attr( $instance['img_number'] ); ?>" size="2" />
                  <p class="alignright" style="margin: 0;">
                    <img alt="" title="" class="ajax-feedback " src="<?php bloginfo('url'); ?>/wp-admin/images/wpspin_light.gif" style="visibility: hidden;" />
                    <input type="submit" value="save" class="button-primary widget-control-save" id="save-widget" name="save-widget" />
                  </p>
            </div>
            <hr/>
            <!-- number form link image -->
            <?php for($i = 0; $i < $number; $i++) : ?>
            <div style="background: #F5F5F5; margin-bottom: 10px; padding: 10px;">
            <p>
              <label for="<?php echo $this->get_field_id('imgsl_src_'.$i); ?>"><?php _e('Nguồn ảnh ', 'genesis'); echo $i+1; ?>:</label>
              <input type="text" id="<?php echo $this->get_field_id('imgsl_src_'.$i); ?>" name="<?php echo $this->get_field_name('imgsl_src_'.$i); ?>" value="<?php echo esc_attr( $instance['imgsl_src_'.$i] ); ?>" style="width:90%;" />
            </p> <!-- end link text -->

            <p>
              <label for="<?php echo $this->get_field_id('imgsl_link_'.$i); ?>"><?php _e('Link ảnh ', 'genesis'); echo $i+1; ?>:</label>
              <input type="text" id="<?php echo $this->get_field_id('imgsl_link_'.$i); ?>" name="<?php echo $this->get_field_name('imgsl_link_'.$i); ?>" value="<?php echo esc_attr( $instance['imgsl_link_'.$i] ); ?>" style="width:90%;" />
            </p> <!-- end link href -->
            </div>
        <?php endfor; ?>

        <?php
        } /* end function form */
 
        /**
         * save widget form
         */
 
        function update( $new_instance, $old_instance ) {
            return $new_instance;
        }
 
        /**
         * Show widget
         */
 
        function widget( $args, $instance ) {
          extract($args);
          $default = array(
                    'title' => '',
                    'link'  => '',
                    'img_number' => 0   
          );
          echo $before_widget;

            if ($instance['title']) echo $before_title . apply_filters('widget_title', $instance['title']) . $after_title;
        ?>
                 <ul class="scroller-image">
                            <?php for($i = 0; $i < $instance['img_number']; $i++) : ?>
                            <li>
                                <a href="<?php echo $instance['imgsl_link_'.$i]; ?>" rel="nofollow" target="_blank">
                                    <img src="<?php echo $instance['imgsl_src_'.$i]; ?>" alt="" />
                                </a>
                            </li>
                            <?php endfor; ?>
                    </ul>
                <script type="text/javascript">
                    (function($) {
                        $(function() {
                            /* vertical slider */
                            $(".scroller-image").simplyScroll({orientation:'vertical',customClass:'vert'});
                            
                            /* scroller */
                            //$(".scroller-image").simplyScroll();
                        });
                    })(jQuery);
                </script>
        <?php
        echo $after_widget;
        } /* end function widget */
 
     /* js */
    function gtid_scripts() {
        if ( is_active_widget( false, false, $this->id_base, true ) ) {
        wp_enqueue_script('jquery');
        wp_enqueue_style( "simplyscroll-css", CHILD_URL."/lib/css/jquery.simplyscroll.css" );
        wp_enqueue_script('jquery-simplyscroll', CHILD_URL.'//lib/js/jquery.simplyscroll.js', array('jquery'), '1.0.1');
        }
    }
} /* end class RT_image_slider_Widget */
?>