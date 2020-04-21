<?php
// the content limit
function the_content_limit($max_char, $more_link_text = '(more)', $stripteaser = 0, $more_file = '') { 
$content = get_the_content($more_link_text, $stripteaser, $more_file); 
$content = apply_filters('the_content', $content); $content = str_replace(']]>', ']]>', $content); 
$content = strip_tags($content); 
 if (strlen($_GET['p']) > 0) {
      echo $content;
   	}
	else if ((strlen($content)>$max_char) && ($espacio = strpos($content, " ", $max_char ))) { 
	$content = substr($content, 0, $espacio); $content = $content; echo "<p>"; 
	echo $content;
        echo "...";
        echo "<a class='more-link' href='";
        the_permalink();
        echo "'>".$more_link_text."</a></p>";
	}else{
		echo "<p>".$content;
        echo "...";
        echo "<a class='more-link' href='";
        the_permalink();
        echo "'>".$more_link_text."</a></p>";
	} 
}
