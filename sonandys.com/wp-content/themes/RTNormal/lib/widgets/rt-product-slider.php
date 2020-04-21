<?php
    //Add needed scripts
    add_action('wp_enqueue_scripts', 'gtid_script');
    function gtid_script() {
        wp_enqueue_script('jquery-adv',CHILD_URL.'/lib/js/jquery.vticker.js', array( "jquery" ));
        wp_enqueue_script('jquery-slider2',CHILD_URL.'/lib/js/slider2.js', array( "jquery" ));
?>
    <?php
    }
    //Widget contracter
    add_action('widgets_init', 'register_gtid_product_by_cat');

    function register_gtid_product_by_cat() {
        //unregister_widget('WP_Widget_Categories');
        register_widget('Gtid_Products_Widget');
    }


    class Gtid_Products_Widget extends WP_Widget {

        function Gtid_Products_Widget() {
            $widget_ops = array('classname' => 'products_widget', 'description' => __('Hiển thị một slide sản phẩm chạy dọc', 'genesis') );
            $this->WP_Widget('products_widget', __('RT - Products Slider', 'genesis'), $widget_ops);
        }

        function widget($args, $instance) {
            global $post;
            extract($args);
            $instance = wp_parse_args( (array)$instance, array(  'title' => '', 'numpro' => '', 'cat' => ''  ) );
            echo $before_widget;

            if ($instance['title']) echo $before_title . apply_filters('widget_title', $instance['title']) . $after_title;
            ?>
                <div class="promoteslider" data-number="<?php echo $instance['numpro']; ?>">
                    <ul>
                        <?php
            $hot = new WP_Query(array(
                'post_type' => 'post',
                'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field' => 'id',
                                'terms' => $instance['cat']
                            )
                        ),
                'showposts' => 20
                ));
            while($hot->have_posts()):
            $hot->the_post();
            global $product;
            get_template_part('inc/loop-product');
            endwhile; wp_reset_postdata(); ?>
                    </ul>
                </div>
     
            <?php
            echo $after_widget;
        }

        function update($new_instance, $old_instance) {
            return $new_instance;
        }

        function form($instance) {
            $instance = wp_parse_args( (array)$instance, array( 'title' => '', 'numpro' => '3',  'cat' => '' ) );
            ?>
            <p>
                <label for="<?php  echo $this->get_field_id('title'); ?>">
                <?php  _e('Title', 'genesis'); ?>:
                </label>
                <input type="text" id="<?php  echo $this->get_field_id('title'); ?>" name="<?php  echo $this->get_field_name('title'); ?>" value="<?php  echo esc_attr( $instance['title'] ); ?>" style="width:95%;" />
            </p>

            <p>
                <label for="<?php  echo $this->get_field_id('numpro'); ?>">
                <?php  _e('Số sản phẩm hiển thị', 'genesis'); ?>:
                </label>
                <input type="text" id="<?php  echo $this->get_field_id('numpro'); ?>" name="<?php  echo $this->get_field_name('numpro'); ?>" value="<?php  echo esc_attr( $instance['numpro'] ); ?>" style="width:10%;" />
            </p>

            <p>
                <label for="<?php  echo $this-> get_field_id('cat'); ?>"><?php  _e('Category','genesis'); ?>:</label>
                <?php
                wp_dropdown_categories(array('name'=> $this->get_field_name('cat'),'selected'=>$instance['cat'],'orderby'=>'Name','hierarchical'=>1,'show_option_all'=>__('All Categories','genesis'),'hide_empty'=>'0')); ?>
            </p>
        <?php
        }

    }

    ?>