<?php 
	global $rt_option;
	function rt_social_sharing_buttons($content) {
		global $post;
		if(is_singular()){
		
			// Get current page URL 
			$rtURL = urlencode(get_permalink());
	 
			// Get current page title
			$rtTitle = str_replace( ' ', '%20', get_the_title());
			
			// Get Post Thumbnail for pinterest
			$rtThumbnail = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' );
	 
			// Construct sharing URL without using any script
			$twitterURL = 'https://twitter.com/intent/tweet?text='.$rtTitle.'&amp;url='.$rtURL.'&amp;via=rt';
			$facebookURL = 'https://www.facebook.com/sharer/sharer.php?u='.$rtURL;
			$googleURL = 'https://plus.google.com/share?url='.$rtURL;
			$pinterestURL = 'https://pinterest.com/pin/create/button/?url='.$rtURL.'&amp;media='.$rtThumbnail[0].'&amp;description='.$rtTitle;
	 
			// Add sharing button at the end of page/page content
			$content .= '<div class="rt-social">';
			$content .= '<a class="rt-link rt-facebook" href="'.$facebookURL.'" target="_blank">Facebook</a>';
			$content .= '<a class="rt-link rt-twitter" href="'. $twitterURL .'" target="_blank">Twitter</a>';
			$content .= '<a class="rt-link rt-googleplus" href="'.$googleURL.'" target="_blank">Google+</a>';
			$content .= '<a class="rt-link rt-pinterest" href="'.$pinterestURL.'" data-pin-custom="true" target="_blank">Pin It</a>';
			$content .= '</div>';
			
			return $content;
		}else{
			
			return $content;
		}
	};
	add_filter( 'the_content', 'rt_social_sharing_buttons');
?>