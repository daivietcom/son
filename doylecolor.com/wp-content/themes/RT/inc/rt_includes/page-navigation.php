<?php
$args = array(
    'base' => '%_%',
    'format' => '?page=%#%',
    'total' => 1,
    'current' => 0,
    'show_all' => False,
    'end_size' => 1,
    'mid_size' => 2,
    'prev_next' => True,
    'prev_text' => __('« Previous'),
    'next_text' => __('Next »'),
    'type' => 'plain',
    'add_args' => False,
    'add_fragment' => ''
); 

function rt_page_navigation() { 
	?>
		<div class="wp-pagenavi">
			<ul>
		    <?php
		        global $wp_query;
		        $big = 999999999; 
		        $args = array(
		            'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
		            'format' => '?page=%#%',
		            'total' => $wp_query->max_num_pages,
		            'current' => max( 1, get_query_var( 'paged') ),
		            'show_all' => false,
		            'end_size' => 3,
		            'mid_size' => 2,
		            'prev_next' => True,
		            'prev_text' => __('&laquo;'),
		            'next_text' => __('&raquo;'),
		            'type' => 'list',
		            );
		        echo paginate_links($args);
		    ?>
		    </ul>
		</div>
	<?php
}
add_action('rt_after_content_post_pagenavi','rt_page_navigation');