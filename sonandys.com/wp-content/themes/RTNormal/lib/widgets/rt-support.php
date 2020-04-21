<?php
add_action('widgets_init', create_function('', "register_widget('Gtid_Support_Online');"));
class Gtid_Support_Online extends WP_Widget {
	function Gtid_Support_Online() {
		$widget_ops = array( 'classname' => 'support-online-widget', 'description' => __('Thêm nick yahoo, skype hỗ trợ trên website', 'genesis') );
		$control_ops = array( 'width' => 505, 'height' => 250, 'id_base' => 'support-online' );
		$this->WP_Widget( 'support-online', __('RT - Hỗ trợ trực tuyến', 'genesis'), $widget_ops, $control_ops );
	}

	function widget($args, $instance) {
		extract($args);
		$instance = wp_parse_args( (array)$instance, array(
			'title' => '',
            'number_supporter' => 1,
            'tel' => '',
            'data_style' => '',
		) );

			echo $before_widget;
			if (!empty($instance['title']))
			echo $before_title . apply_filters('widget_title', $instance['title']) . $after_title;
            echo '<div class = "wrap-support">';
            ?>
         	

            <div id="supporter-info" class="<?php echo $instance['data_style']; ?>">

            	<?php 
    				get_from_layout($instance, substr($instance['data_style'], -1));
            	?>
			</div>

			<?php
            echo '</div><!-- end .wrap -->';
			echo $after_widget;
	}

	function update($new_instance, $old_instance) {
		return $new_instance;
	}

	function form($instance) {

		$instance = wp_parse_args( (array)$instance, array(
			'title' => '',
            'number_supporter' => 1,
            'tel' => '',
            'data_style' => '',
		) );
		
?>
		<p>
		<label for="<?php echo $this->get_field_id('title'); ?>">
			<?php _e('Tiêu đề', 'genesis'); ?>:
		</label>
		<input type="text" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" value="<?php echo esc_attr( $instance['title'] ); ?>" style="width:95%;" />
		</p> <!-- end title -->

        <hr />

        <p>
    	<label for="<?php echo $this->get_field_id('number_supporter'); ?>">
    		<?php _e('Số hỗ trợ viên', 'genesis'); ?>:
    	</label>
		<input type="text" id="<?php echo $this->get_field_id('number_supporter'); ?>" name="<?php echo $this->get_field_name('number_supporter'); ?>" value="<?php echo esc_attr( $instance['number_supporter'] ); ?>" style="width:20%;" />
		<!-- end so luong support -->

        <label for="<?php echo $this->get_field_id('giaodien'); ?>"><?php _e('Giao diện', 'genesis'); ?>:</label>
    	<select id="<?php echo $this->get_field_id('data_style'); ?>" name="<?php echo $this->get_field_name('data_style'); ?>" style="width: 165px;">
        <?php 
        	for ($i=1; $i < 7; $i++) { 
        ?>
	  		<option value="gd_support_<?php echo $i; ?>" <?php selected( 'gd_support_'.$i , $instance['data_style']); ?>>Giao diện <?php echo $i; ?></option>
        <?php
        	}
        ?>
        </select>
    	<!--  giao dien support -->
        <input type="submit" name="savewidget" id="savewidget" class="button-primary widget-control-save" value="Lưu" />
        
    	</p>

        <?php 
        
        $giaodien =  substr($instance['data_style'], -1);
        for($i = 1;$i<=$instance['number_supporter'];$i++){   
    	?>
            <div style="width: 47%; padding: 5px; margin: 5px 0; background: #eee; <?php echo $i % 2 ==0 ? 'float: right;' : 'float: left;'; ?>"  >
         	
         	<?php if ( ( $giaodien != 5 ) && ( $giaodien != 6 ) ) { ?>
            <strong><?php _e('Hỗ trợ viên ', 'genesis'); echo $i; ?></strong>
    		<p>
				<label for="<?php echo $this->get_field_id('supporter_'.$i.'_name'); ?>">
					<?php _e('Tên', 'genesis'); ?>:
				</label>
	    		<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_name'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_name'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_name'] ); ?>" style="width:95%;" />
    		</p> 
    		<!-- field name -->
    		<?php } ?>
    		<p>
    			<label for="<?php echo $this->get_field_id('supporter_'.$i.'_phone'); ?>">
    				<?php _e('Điện thoại', 'genesis'); ?>:
    			</label>
    			<input type="tel" id="<?php echo $this->get_field_id('supporter_'.$i.'_phone'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_phone'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_phone'] ); ?>" style="width:95%;" />
    		</p>
    		<!-- field tel or phone -->
    		<!-- ----------------------------------------------------------------------------------------------- -->
    		<?php if ( ( $giaodien != 2 ) && ( $giaodien != 5 ) && ( $giaodien != 6 ) ) { ?>
            <p>
	        	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo'); ?>">
	        		<?php _e('Yahoo ID(không gồm @yahoo.com)', 'genesis'); ?>:
	        	</label>
	    		<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_yahoo'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_yahoo'] ); ?>" style="width:95%;" />
    		</p>
    		<!-- field yahoo id -->
	    		<?php if ( $giaodien != 3 ) { ?>
					<p>
						<label for="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo_status'); ?>">
							<?php _e('Yahoo Icon', 'genesis'); ?>:
						</label>
		    			<select name="<?php echo $this->get_field_name('supporter_'.$i.'_yahoo_status'); ?>" id="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo_status'); ?>">
						<?php  for($j = 1; $j < 23; $j++ ) : ?>
							<option value="<?php echo $j; ?>" <?php checked($j, $instance['supporter_'.$i.'_yahoo_status']); ?>><?php echo $j; ?></option>
						<?php endfor; ?>
						</select>
					</p>
					<!-- icon yahoo id -->
				<?php } ?>
            <p>
            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_skype'); ?>">
            		<?php _e('Skype ID ', 'genesis'); ?>:
            	</label>
    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_skype'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_skype'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_skype'] ); ?>" style="width:95%;" />
    		</p>
    		<!-- skype id -->
    		<?php } ?>
    		<!-- ----------------------------------------------------------------------------------------------- -->
    		<?php if ( $giaodien == 2 || $giaodien == 3 || $giaodien == 5 || $giaodien == 6 ) { ?>
	    		<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_email_1'); ?>">
	            		<?php _e('Email ID 1 ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_email_1'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_email_1'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_email_1'] ); ?>" style="width:95%;" />
	    		</p>
	    		<!-- email 1 -->
    		<?php } ?>
    		<?php if ( $giaodien == 2 ) { ?>
	    		<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_email_2'); ?>">
	            		<?php _e('Email ID 2 ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_email_2'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_email_2'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_email_2'] ); ?>" style="width:95%;" />
	    		</p>
	    		<!-- email 2 -->
    		<?php } ?>
    		<?php if ( $giaodien == 4 ) { ?>
				<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_name_2'); ?>">
	            		<?php _e('Name ID 2 ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_name_2'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_name_2'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_name_2'] ); ?>" style="width:95%;" />
	    		</p>
	    		<!-- name 2 -->
    		<?php } ?>

    		<?php if ( $giaodien == 3 ) { ?>
	    		<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_linkimg'); ?>">
	            		<?php _e('Link image 2 ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_linkimg'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_linkimg'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_linkimg'] ); ?>" style="width:95%;" />
	    		</p>
	    		<!-- link img 2 -->
    		<?php } ?>
            </div>
		<?php } ?>

	<?php
	}
}


function get_from_layout($instance, $j = 1) {
	$instance = wp_parse_args( (array)$instance, array(
			'title' => '',
            'number_supporter' => 1,
            'tel' => '',
            'data_style' => '',
	) );
	$url = get_stylesheet_directory_uri();

	for( $i = 1; $i<=$instance['number_supporter']; $i++ ) {
		echo '<div id="support-'. $i .'" class="supporter">';
		if ( $j == 3) {
			echo '<img class="img-sp" src="'. $instance['supporter_'.$i.'_linkimg'] .'" alt="" />';
		}
			echo '<div class="info">';
				echo ( ! empty( $instance['supporter_'.$i.'_name'] ) ) ? '<span class="name">'. $instance['supporter_'.$i.'_name'] .'</span>' : '';
				echo ( ! empty( $instance['supporter_'.$i.'_phone'] ) ) ? '<a onclick="goog_report_conversion(\'tel:'. $instance['supporter_'.$i.'_phone'] .'\')" class="phone" href="javascript:void();">
				<i class="fa fa-phone-square" aria-hidden="true"></i>'. $instance['supporter_'.$i.'_phone'] .'</a>' : '';
			echo '</div>';

			echo '<div class="online">';

				echo ( ! empty( $instance['supporter_'. $i .'_yahoo'] ) ) ? '<p class="yahoo"><a href="ymsgr:sendim?'. $instance['supporter_'.$i.'_yahoo'].'">
				<img src="http://opi.yahoo.com/online?u='.$instance['supporter_'.$i.'_yahoo'].'&amp;m=g&amp;t='.$instance['supporter_'.$i.'_yahoo_status'].'" 
				alt="'. __('Hỗ trợ trực tuyến','genesis') .'" /></a></p>' : '';

				if ( ! empty( $instance['supporter_'.$i.'_skype'])) : ?>

				<p class="skype">
					<a href="<?php echo 'skype:'.$instance['supporter_'.$i.'_skype'].'?chat'; ?>">
						<img src="<?php echo $url.'/images/icon-skype.png' ?>" alt="My status" />
					</a>
				</p>

				<?php 
			endif;  // if check skype

			echo "</div>"; // class online

			// Echo 2 email only layout "2 3 7"
				if ( $j == 2 || $j == 3 || $j == 5 || $j == 6 ) {
					echo ( ! empty( $instance['supporter_'.$i.'_email_1'] ) ) ? '<p class="mail"><i class="fa fa-envelope" aria-hidden="true"></i>'. $instance['supporter_'.$i.'_email_1'] .'</p>' : '';
					echo ( ! empty( $instance['supporter_'.$i.'_email_2'] ) ) ? '<p class="mail"><i class="fa fa-envelope" aria-hidden="true"></i>'. $instance['supporter_'.$i.'_email_2'] .'</p>' : '';
				}
				if ( $j == 4 ) {
					echo ( ! empty( $instance['supporter_'.$i.'_name_2'] ) ) ? '<p class="name2">'. $instance['supporter_'.$i.'_name_2'] .'</p>' : '';
				}
		echo '</div>'; // end div supporter
	}	
	
} // end get_from_layout 
//-----------------------------------------------
?>