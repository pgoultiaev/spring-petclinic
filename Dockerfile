# check check check
FROM tomcat:7
MAINTAINER pgoultiaev

ADD petclinic.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
