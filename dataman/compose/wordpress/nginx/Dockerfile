FROM ubuntu:14.04 

MAINTAINER jkchen <Jkchen@dataman-inc.com>

WORKDIR  /opt
RUN wget http://wordpress.org/latest.tar.gz /opt/
RUN tar zxf latest.tar.gz 

#clearn apt-get cache 
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y php5-gd libssh2-php

RUN cd /opt/wordpress
RUN cp wp-config-sample.php wp-config.php
RUN sed -i 's/database_name_here/wordpress/' wp-config.php
RUN sed -i 's/username_here/wordpressuser/' wp-config.php
RUN sed -i 's/password_here/password/' wp-config.php

RUN 
