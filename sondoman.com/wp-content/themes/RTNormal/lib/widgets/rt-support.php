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
    				get_from_layout_support($instance, substr($instance['data_style'], -1));

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
        	for ($i=1; $i < 9; $i++) { 
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
         	
            <strong><?php _e('Hỗ trợ viên ', 'genesis'); echo $i; ?></strong>

    		<?php if( $giaodien == 6 || $giaodien ==8 || $giaodien == 4):?>
    		    <p>
				<label for="<?php echo $this->get_field_id('supporter_'.$i.'_name2'); ?>">
					<?php _e('Tên support', 'genesis'); ?>:
				</label>
	    		<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_name2'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_name2'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_name2'] ); ?>" style="width:95%;" />
    			</p> 
    		<?php endif;?>

            <?php if ( $giaodien == 1 || $giaodien == 3 || $giaodien == 4 || $giaodien == 6 || $giaodien == 7 || $giaodien == 8) : ?> 
    		<p>
				<label for="<?php echo $this->get_field_id('supporter_'.$i.'_name'); ?>">
					<?php _e('Tên', 'genesis'); ?>:
				</label>
	    		<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_name'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_name'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_name'] ); ?>" style="width:95%;" />
    		</p> 
    		<?php endif; // check name  ?>

    		<p>
    			<label for="<?php echo $this->get_field_id('supporter_'.$i.'_phone'); ?>">
    				<?php _e('Điện thoại', 'genesis'); ?>:
    			</label>
    			<input type="tel" id="<?php echo $this->get_field_id('supporter_'.$i.'_phone'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_phone'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_phone'] ); ?>" style="width:95%;" />
    		</p>
    		<!-- field tel or phone -->
    		<?php if ($giaodien == 2 || $giaodien == 6):?>
    		 <p>
    			<label for="<?php echo $this->get_field_id('supporter_'.$i.'_phone2'); ?>">
    				<?php _e('Điện thoại 2', 'genesis'); ?>:
    			</label>
    			<input type="tel" id="<?php echo $this->get_field_id('supporter_'.$i.'_phone2'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_phone2'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_phone2'] ); ?>" style="width:95%;" />
    		</p>
    		<?php endif ;?>
    		<?php if( $giaodien !=1 & $giaodien !=2 & $giaodien !=3 & $giaodien !=4 & $giaodien !=5 & $giaodien !=7 & $giaodien !=8):?>
            <p>
	        <label for="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo2'); ?>">
	        		<?php _e('Yahoo ID(không gồm @yahoo.com)', 'genesis'); ?>:
	        	</label>
	    		<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo2'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_yahoo2'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_yahoo2'] ); ?>" style="width:95%;" />
    		</p>
    		<?php endif;?>
    		<!-- ----------------------------------------------------------------------------------------------- -->
           <?php if( $giaodien == 1 || $giaodien == 3 || $giaodien == 6 || $giaodien == 8) :?>
            <p>
	        	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo'); ?>">
	        		<?php _e('Yahoo ID(không gồm @yahoo.com)', 'genesis'); ?>:
	        	</label>
	    		<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_yahoo'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_yahoo'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_yahoo'] ); ?>" style="width:95%;" />
    		</p>
					
			<?php endif ;?>
			<!-- ---------------------------------------------- -->
			<?php if( $giaodien == 1 || $giaodien == 8) :?>
            <p>
            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_skype'); ?>">
            		<?php _e('Skype ID ', 'genesis'); ?>:
            	</label>
    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_skype'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_skype'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_skype'] ); ?>" style="width:95%;" />
    		</p>
    		<?php endif ;?>
    		<!-- ----------------------------------------------------------------------------------------------- -->
	    	<?php 
	    		if ( $giaodien == 1 || $giaodien == 2 || $giaodien == 4 || $giaodien == 5 || $giaodien == 8):
	    	?>

	    		<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_email'); ?>">
	            		<?php _e('Email ID 1 ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_email'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_email'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_email'] ); ?>" style="width:95%;" />
	    		</p>
	    		<!-- email 1 -->
	    		   	
    		<!-- email 2 -->
			<?php endif ;?><!-- chekmail-->
			<?php 
	    		if ( $giaodien != 2 & $giaodien !=1 & $giaodien != 3 & $giaodien != 4 & $giaodien !=5 & $giaodien !=6 & $giaodien !=7 & $giaodien != 8):
	    	?>
	    		<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_email_2'); ?>">
	            		<?php _e('Email ID 2 ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_email_2'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_email_2'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_email_2'] ); ?>" style="width:95%;" />
	    		</p>
	    	<?php endif ;?><!-- chekmail-->

	    	<?php if ( $giaodien != 1 & $giaodien !=2 & $giaodien != 3 & $giaodien !=4 & $giaodien !=5 & $giaodien !=6 & $giaodien !=7 & $giaodien !=8): ?>
				<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_name_2'); ?>">
	            		<?php _e('Name ID 2 ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_name_2'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_name_2'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_name_2'] ); ?>" style="width:95%;" />
	    		</p>
	    		<!-- name 2 -->
	    		<?php endif ;?>
	    		<?php if ( $giaodien == 1) { ?>
	    		<p>
	            	<label for="<?php echo $this->get_field_id('supporter_'.$i.'_linkimg'); ?>">
	            		<?php _e('Link image ', 'genesis'); ?>:
	            	</label>
	    			<input type="text" id="<?php echo $this->get_field_id('supporter_'.$i.'_linkimg'); ?>" name="<?php echo $this->get_field_name('supporter_'.$i.'_linkimg'); ?>" value="<?php echo esc_attr( $instance['supporter_'.$i.'_linkimg'] ); ?>" style="width:95%;" />
	    		</p>
	    		<?php } ?>
	    		<!-- link img 2 -->
            </div>


	<?php
		}
	}
}

function get_from_layout_support($instance, $j = 1) {
	$instance = wp_parse_args( (array)$instance, array(
            'number_supporter' => 1,
	) );
	$url = get_stylesheet_directory_uri();

	for( $i = 1; $i <= $instance['number_supporter']; $i++ ) :
		$linkimg 	= $instance['supporter_'.$i.'_linkimg'];
		$name 		= $instance['supporter_'.$i.'_name'];
		$name2 		= $instance['supporter_'.$i.'_name2'];
		$phone 		= $instance['supporter_'.$i.'_phone'];
		$phone2 	= $instance['supporter_'.$i.'_phone2'];
		$email 		= $instance['supporter_'.$i.'_email'];
		$skype 		= $instance['supporter_'.$i.'_skype'];
		$yahoo 		= $instance['supporter_'. $i .'_yahoo'];
		$yahoo2 	= $instance['supporter_'. $i .'_yahoo2'];
?>
	<div id="support-<?php echo $i; ?>" class="supporter">
		<?php 
			switch ($j) {
				////////////////////////////////////
				case '1':
					if ( !empty( $linkimg ) ) : 
							echo '<div class="img-sp"><img src="'. $linkimg .'" alt="" /></div>';
						endif; // end link image

					echo '<div class="info">';

						if ( !empty( $name ) ) : 
							echo '<div class="name">'. $name .'</div>';
						endif; // end check name

						if ( !empty( $phone ) ) : 
							echo '<div class="phone"><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
							'. $phone .'</span>'.'</a></div>';
						endif; // end check phone

						if ( !empty( $email ) ) : 
							echo '<p class="mail">'. $email .'</p>';
						endif; // end check email

					echo "</div>"; // end info

					echo '<div class="online">';

						if ( !empty( $skype ) ) : 
							echo '<a class="sky" href="skype:'. $skype .'?chat">
									<img src="' . $url .'/images/icon-skype.png" alt="My status" />
								</a>';
						endif; // end check skype 

						if ( !empty( $yahoo ) ) : 
							echo '<a class="yahoo" href="ymsgr:sendim?'. $yahoo .'">
									<img src="http://opi.yahoo.com/online?u='.$yahoo.'&amp;m=g&amp;t=1" 
									alt="Hỗ trợ trực tuyến" />
								</a>';
						endif; // end check yahoo 

					echo '</div>'; // end div online
					break;// end case 1
				//////////////////////////////////////////////////////////////		
				case '2' :
						if ( !empty( $phone ) ) : 
							echo '<div class="phone"><i class="fa fa-mobile" aria-hidden="true"></i><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
							'. $phone .'</span>'.'</a></div>';
									echo '<div class="phone"><i class="fa fa-mobile" aria-hidden="true"></i><a onclick="goog_rep ort_conversion(\'tel:'. $phone2 .'\')" href="javascript:void();">
							'. $phone2 .'</span>'.'</a></div>';
						endif; // end check phone2
						if ( !empty( $email ) ) : 
							echo '<p class="mail">'.'<i class="fa fa-envelope-o" aria-hidden="true"></i>'.'<span>'. $email .'</span>'.'</p>';
						endif; // end check email
				break;// end case 2
				///////////////////////////////////////////////////////////
				case'3':
						echo '<div class="info">';
						if ( !empty( $name ) ) : 
							echo '<div class="name">'. $name .'</div>';
						endif; // end check name

						if ( !empty( $phone ) ) : 
							echo '<div class="phone"><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
							'. $phone .'</span>'.'</a></div>';
						endif; // end check phone
						echo "</div>";
						echo '<div class="online">';
						if ( !empty( $yahoo ) ) : 
							echo '<p class="skype">
								<a href="ymsgr:sendim?'. $yahoo .'">
									<img src="http://opi.yahoo.com/online?u='.$yahoo.'&amp;m=g&amp;t=1" 
									alt="Hỗ trợ trực tuyến" />
								</a>
							</p>';
						endif; // end check yahoo 
						echo "</div>";
				break;//end case 3
				//////////////////////////////////////////////////////
				case'4':
				echo '<div class="info">';
						if ( !empty( $name2 ) ) : 
							echo '<div class="name">'.'<span>'. $name2 .'</span>'.'</div>';
						endif; // end check name2
						echo "<div class='box-name-tel'>";
						if ( !empty( $name ) ) : 
							echo '<span class="name">'. $name .'</span>';
						endif; // end check name
						if ( !empty( $phone ) ) : 
							echo '<span class="phone"><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
							'. $phone .'</a></span>';
						endif; // end check phone
						echo "</div>";
						if ( !empty( $email ) ) : 
							echo '<p class="mail">'. $email .'</p>';
							endif; // end check email
							echo "</div>";	//end info			
						break;//end case 4

				case '5':
				echo "<div class='info'>";
					if ( !empty( $phone ) ) : 
						echo '<div class="phone"><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
						'. $phone .'</span>'.'</a></div>';
					endif; // end check phone
					if ( !empty( $email ) ) : 
						echo '<p class="mail">'. $email .'</p>';
						endif; // end check email
				echo "</div>";
				break ;//end 5
				//////////////////////////////////////////////////////////
				case '6':
					echo"<div class='name-suport'>";
						if ( !empty( $yahoo ) ) : 
							echo '<p class="skype">
								<a href="ymsgr:sendim?'. $yahoo .'">
									<img src="http://opi.yahoo.com/online?u='.$yahoo.'&amp;m=g&amp;t=1" 
									alt="Hỗ trợ trực tuyến" />
								</a>
							</p>';
						endif; // end check yahoo 	
						if ( !empty( $name ) ) : 
							echo '<div class="name">'. $name .'</div>';
							// echo '<div class="name">'. $name2 .'</div>';
						endif; // end check name
						/////
						echo "</div>";
						echo "<div class='name-suport'>";
						if ( !empty( $yahoo ) ) : 
							echo '<p class="skype">
						<a href="ymsgr:sendim?'. $yahoo2 .'">
									<img src="http://opi.yahoo.com/online?u='.$yahoo2.'&amp;m=g&amp;t=1" 
									alt="Hỗ trợ trực tuyến" />
								</a>
								</p>';
						endif; // end check yahoo 
						if ( !empty( $name2 ) ) : 
							echo '<div class="name">'. $name2 .'</div>';
							// echo '<div class="name">'. $name2 .'</div>';
						endif; // end check name
						echo"</div>";
						///////
						if ( !empty( $phone ) ) : 
							echo '<div class="phone-suport"><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
							'. $phone .'</span>'.'</a></div>';
									echo '<div class="phone-suport"><a onclick="goog_rep ort_conversion(\'tel:'. $phone2 .'\')" href="javascript:void();">
							'. $phone2 .'</span>'.'</a></div>';
						endif; // end check phone2


				break;//end 6
				//////////////////////////////////////////
				case '7':
					echo '<div class="info">';
						if ( !empty( $name ) ) : 
							echo '<div class="name">'. $name .'</div>';
						endif; // end check name
						echo '<p class="img-hot">
						<img src="'. $url .'/images/icon-sky.png" alt="My status" />
						<img src="'. $url .'/images/icon-vb.png" alt="My status" />
						<img src="'. $url .'/images/icon-zl.png" alt="My status" />
						<img src="'. $url .'/images/icon-mail.png" alt="My status" /></p>';
						if ( !empty( $phone ) ) : 
							echo '<div class="phone"><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
							'. $phone .'</span>'.'</a></div>';
						endif; // end check phone
					echo'</div>';		

				break;//end 7
				/////////////////////////////////////////////
				case '8':
					echo '<div class="info">';
						if ( !empty( $name ) ) : 
							echo '<div class="name">'. $name .'</div>';
							echo '<div class="name2">'. $name2 .'</div>';
						endif; // end check name

						if ( !empty( $phone ) ) : 
							echo '<div class="phone"><a onclick="goog_rep ort_conversion(\'tel:'. $phone .'\')" href="javascript:void();">
							'. $phone .'</span>'.'</a></div>';
						endif; // end check phone
						echo "</div>";//end info
						echo '<div class="online">';
						if ( !empty( $yahoo ) ) : 
							echo '<p class="skype">
								<a href="ymsgr:sendim?'. $yahoo .'">
									<img src="http://opi.yahoo.com/online?u='.$yahoo.'&amp;m=g&amp;t=1" 
									alt="Hỗ trợ trực tuyến" />
								</a>
							</p>';
						endif; // end check yahoo 

						if ( !empty( $skype ) ) : 
							echo '<p class="skype">
								<a href="skype:'. $skype .'?chat">
									<img src="' . $url .'/images/icon-skype.png" alt="My status" />
								</a>
							</p>';
						endif; // end check skype 
						echo '</div>'; // end div online
						if ( !empty( $email ) ) : 
						echo '<p class="mail">'. $email .'</p>';
						endif; // end check email
					break;//end 8


			} // end swith
		?>
	</div>
<?php
	endfor; // end for


}
//-----------------------------------------------
?>