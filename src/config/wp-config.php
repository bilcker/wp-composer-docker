<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'UKoBMndyEY' );

/** MySQL hostname */
define( 'DB_HOST', 'database:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'y LN2H,{gJUe*q+]j=nLMT%m=[Ko(d<PvZ9fT`uGB5zBe@.=(5LIJ-x3irIN4YdC' );
define( 'SECURE_AUTH_KEY',  'S{}E<}D>=:D)z@RSY,3-|4Jykp$&;a|I:r3kI i29_C>5-2#4u4NlJKb^WbXMC.o' );
define( 'LOGGED_IN_KEY',    'e%JxTyPAy.iS1_]Y42v:CO4wk$ B|g;(v#!!@e>vk6~b=~h#j_KYS+gJAyifudRZ' );
define( 'NONCE_KEY',        '#LauLG+Xmc+|`)F:[<D 3]sc}dW$NXV!ZI#o1Ot%.E6Ww><olJNWzwmE)OlRK9~=' );
define( 'AUTH_SALT',        '|BS}w*#4)=_yG`:5_)JMuF.!%JKqrlS4[7-&SoEA3G!1tY@cy{lSTElgA:2 ,];e' );
define( 'SECURE_AUTH_SALT', '8:+=8{tD%&P^)3ys|#F`gc|Q:]/PXuu(?ILXkf8Q|Tv M7&o?qlOz^.#H3ZyFA`5' );
define( 'LOGGED_IN_SALT',   'P/Sg}=lI_8e8g ~p$E[r/L=o Uu$xY>0yKHhLKw_n&=1r2UV6}oy,K@zHgE0$^jQ' );
define( 'NONCE_SALT',       'rKg9@EcG5DiZg~GV7q0[/*0q9.]EX53,il6b>NW@ns_h9FSAc/n1rqR+6$uBJ(5|' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
// Turn Debugging on, TURN OFF ON PRODUCTION
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );