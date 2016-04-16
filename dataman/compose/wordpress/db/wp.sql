drop database if exists `wordpress`;
create DATABASE wordpress;

use wordpress;

CREATE USER wordpressuser@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%' IDENTIFIED BY 'password';


