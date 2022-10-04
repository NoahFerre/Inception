<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'samsql' );
define( 'DB_PASSWORD', '1234' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8mb4' );

// The Database Collate type. Don't change this if in doubt.
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'R[_hyH(pI;{g/y[hTFwt:7}eHVX(t+^)SO8l&J|7v,sB|z &zsN/;?ZBp;HFs2q[');
define('SECURE_AUTH_KEY',  'z}>Cp!j(8T2`&Gy-~jPhfZ>|2!QZ@X&l5_PB58I!/,l^Vt#w|_+qSDLIp&mR4q~[');
define('LOGGED_IN_KEY',    '0lXEjiC5t)QfeZae{U(nq6jrde+r_sf~Y3CC9MLdjP_J77(;)dc/x)9n5NTfz=6{');
define('NONCE_KEY',        'PUL>j-8.&c*/mh(Wp+sMJf- pZYFx1=?h|lex^D1%#ODBkK|/yR>0T n*|CNU|7i');
define('AUTH_SALT',        'qxutW.Tkw2t@m~(qsXXrwC=D~3GK4k|W|_q(3%f18|0Bbi W%|s_/}Cp()wP+S~M');
define('SECURE_AUTH_SALT', 'jaF>f||T|8$gv_;>|Z-InIAdY8;BKDf<Wnm2*@GB5!6#+ME}iryBxC4;.K^{7F8N');
define('LOGGED_IN_SALT',   'k UmhBa`+Z||kNHM5^(z56mzrKof_8,7&RD|Y;.kf{``&z}<arDNI9mSH2#!->*y');
define('NONCE_SALT',       '+JJ7QCB7)St7Rr!MHLS=d!|aq};.Y^Sf#o!S/rZ>m~uqhCJE{wu$`v+)tXDi/%[Q');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );
