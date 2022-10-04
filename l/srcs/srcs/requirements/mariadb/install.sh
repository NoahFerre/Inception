if [ ! -d "/run/mysqld" ];then
	mkdir -p /run/mysqld
	chown -R mysql:mysql /run/mysqld
fi
if [ ! -f "/var/lib/mysql/ib_buffer_pool" ]; then
	/etc/init.d/mariadb setup
	rc-service mariadb start
	cat << hello > mydatabase.sql
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER '$DB_USER'@'localhost';
SET PASSWORD FOR '$DB_USER'@'localhost' = PASSWORD('$DB_PASS');
GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';
GRANT ALL ON wordpress.* to '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';

FLUSH PRIVILEGES;

CREATE USER '$DB_ADMIN_USER'@'localhost' IDENTIFIED BY '$DB_ADMIN_PASS';
GRANT ALL PRIVILEGES ON *.* TO '$DB_ADMIN_USER'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER '$DB_ADMIN_USER'@'%' IDENTIFIED BY '$DB_ADMIN_PASS';
GRANT ALL PRIVILEGES ON *.* TO '$DB_ADMIN_USER'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'flo';
flush privileges;
hello
mysql < mydatabase.sql

rc-service mariadb restart
rc-service mariadb stop
fi

/usr/bin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid
