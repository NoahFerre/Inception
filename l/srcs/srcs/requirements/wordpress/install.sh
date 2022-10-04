#!/bin/sh

sleep 5

if [ ! -f "/var/www/wordpress/index.php" ]; then
	wp-cli core download --allow-root
	cp /tmp/wp-config.php /var/www/wordpress
	wp-cli core install --url=localhost/wordpress --title=inception --admin_user=$DB_ADMIN_USER --admin_password=$DB_ADMIN_PASS --admin_email=ixfg09159@cdfaq.com --skip-email --path=/var/www/wordpress --allow-root
	wp-cli user create samsql hofiwe.hrt@nfeo.xd --user_pass=$DB_PASS --role=author --path=/var/www/wordpress --allow-root
fi

/usr/sbin/php-fpm7.3 -R -F
