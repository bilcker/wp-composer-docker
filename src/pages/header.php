<!doctype html>
  <head>
    <!--=== META TAGS ===-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="description" content="Keywords">
    <meta name="author" content="Name">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     
    <!--=== LINK TAGS ===-->
    <link rel="shortcut icon" href="<?php echo THEME_DIR; ?>/path/favicon.ico" />
    <link rel="alternate" type="application/rss+xml" title="<?php bloginfo('name'); ?> RSS2 Feed" href="<?php bloginfo('rss2_url'); ?>" />dock
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
 
    <!--=== TITLE ===-->  
    <title>
      <?php wp_title('&raquo;','true','right'); ?>
      <?php if ( is_front_page() ) { bloginfo('name'); } ?>
      <?php if ( is_single() ) { bloginfo('name'); } ?> &raquo; <?php bloginfo('description'); ?>
    </title>
     
    <!--=== WP_HEAD() ===-->
    <?php wp_head(); ?>
    </head>
</html>

<body <?php body_class(); ?>>

  <header>
    <h1>This is the staging template</h1>
  </header>