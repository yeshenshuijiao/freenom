#!/bin/sh
if [ ! -f /conf/config.php ]; then
	cp /guanfreenom/config.php /conf/config.php
fi

ln -s /conf/config.php /freenom/config.php
cd /freenom/
php index.php
crond
php -a