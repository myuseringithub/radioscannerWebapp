FROM httpd
# replace this with your application's default port
WORKDIR /usr/local/apache2/conf/

COPY ./apacheConf/httpd.conf /usr/local/apache2/conf/httpd.conf
# COPY ./root/ /usr/local/apache2/htdocs/
