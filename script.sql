DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS wordpress;
GRANT ALL PRIVILEGES on wordpress.* to 'ansible'@'localhost' identified by 'mypassword';
FLUSH PRIVILEGES;
