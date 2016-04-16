# dockerfile for apache 

FROM ubuntu:14.04 

MAINTAINER jkchen <Jkchen@dataman-inc.com>

RUN apt-get update 
RUN apt-get install -y wget rsync php5-gd libssh2-php 

RUN wget http://wordpress.org/latest.tar.gz

RUN tar zxf latest.tar.gz

RUN ls 

RUN ls /wordpress
RUN cp  /wordpress/wp-config-sample.php /wordpress/wp-config.php 
RUN sed -i 's/database_name_here/wordpress/' /wordpress/wp-config.php
RUN sed -i 's/username_here/wordpressuser/' /wordpress/wp-config.php
RUN sed -i 's/password_here/password/' /wordpress/wp-config.php
RUN sed -i 's/localhost/mysql-server/' /wordpress/wp-config.php

#VOLUME /var/www/html
RUN mkdir -p /var/www/html
RUN rsync -avP /wordpress/ /var/www/html/

RUN mkdir -p /var/www/html/wp-content/uploads

RUN apt-get install -y apache2
RUN apt-get install -y mysql-client
RUN apt-get install -y libapache2-mod-php5 php5-mysql 

RUN rm -rf /var/www/html/index.html
RUN chown -R www-data:www-data /var/www/html

ENTRYPOINT ["apachectl"]
CMD ["-D", "FOREGROUND"]
#ENTRYPOINT ["/bin/bash", "-c", "/usr/sbin/apachectl"]
#CMD ["-X"]


