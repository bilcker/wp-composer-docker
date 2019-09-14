<?php
///
// Scripts and Dependencies Setup
// -----------
add_action('wp_enqueue_scripts', 'load_dependencies');
function load_dependencies() {
  // Syles
  wp_enqueue_style('style', get_template_directory_uri() .'/style.css');
  wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js', false, '1.0');
}
