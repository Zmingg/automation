#!/usr/local/bin/expect

#Php-fpm
spawn /usr/local/opt/php70/sbin/php70-fpm start
interact

#MysqlServer start...
spawn mysql.server start
interact

#Nginx start...
spawn sudo -i
expect "Password:"
send "123\r"
expect "root#"
send "nginx\r"
expect "root#"
exit
interact