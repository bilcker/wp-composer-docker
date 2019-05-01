<?php

// register webpack stylesheet and js with theme
wp_enqueue_style( 'styles', get_template_directory_uri() . 'style.css' );
wp_enqueue_script( 'javascript', get_template_directory_uri() . '/js/main.js' , null , null , true );