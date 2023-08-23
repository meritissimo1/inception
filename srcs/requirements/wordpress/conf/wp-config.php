<?php

define( "WP_HOME", "https://" .$_SERVER["HTTP_HOST"]. "/" );
define( "WP_SITEURL", "https://" .$_SERVER["HTTP_HOST"]. "/" );
define( 'WP_CACHE', true );
define('WP_CACHE_KEY_SALT', getenv('DOMAIN_NAME') );
define( 'DB_NAME', getenv('MYSQL_DATABASE') );
define( 'DB_USER', getenv('MYSQL_USER') );
define( 'DB_PASSWORD', getenv('MYSQL_PASSWD') );
define( 'DB_HOST', getenv('MYSQL_HOST') );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';