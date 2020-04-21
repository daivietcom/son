<?php
// Breadcrumbs
function my_breadcrumb() {
    global $post;
    echo '<ol class="breadcrumb">';
    if ( !is_home() ) {
        echo '<li><a href="';
        echo esc_url( home_url() );
        echo '">';
        echo __( 'Home', 'phpkida' );
        echo '</a></li> <li> / </li>';
        if ( is_archive() || is_single() ) {
            echo '<li>';
            the_term( ' </li><li> / </li><li> ' );
            if ( is_single() ) {
                echo '</li><li> / </li><li>';
                the_title();
                echo '</li>';
            }
        } elseif ( is_page() ) {
            if ( $post->post_parent ){
                $anc = get_post_ancestors( $post->ID );
                $title = get_the_title();
                foreach ( $anc as $ancestor ) {
                    $output = '<li><a href="'. esc_url( get_permalink( $ancestor ) ) .'" title="'. esc_attr( get_the_title( $ancestor ) ) .'">'. esc_attr( get_the_title( $ancestor ) ) .'</a></li> <li> / </li>';
                }
                echo $output;
                echo esc_attr( $title );
            } else {
                '<li>'. the_title_attribute() .'</li>';
            }
        }
    } elseif ( is_tag() ) {
        single_tag_title();
    } elseif ( is_day() ) {
        echo"<li>" . __( 'Archive for', 'phpkida' ); the_time( 'F jS, Y' ); echo'</li>';
    } elseif ( is_month() ) {
        echo"<li>" . __( 'Archive for', 'phpkida' ); the_time( 'F, Y' ); echo'</li>';
    } elseif ( is_year() ) {
        echo"<li>" . __( 'Archive for', 'phpkida' ); the_time( 'Y' ); echo'</li>';
    } elseif ( is_author( ) ) {
        echo"<li>" . __( 'Author Archive', 'phpkida' ); echo'</li>';
    } elseif ( isset( $_GET['paged'] ) && !empty( $_GET['paged'] ) ) {
        echo "<li>" . __( 'Blog Archive', 'phpkida' ); echo'</li>';
    } elseif ( is_search() ) {
        echo"<li>" . __( 'Search Results', 'phpkida' ); echo'</li>';
    }
    echo '</ol>';
}
// hook breadcrumbs 
//add_action('rt_before_layout','my_breadcrumb', 2);