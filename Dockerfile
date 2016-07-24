FROM tomcat:7
MAINTAINER pgoultiaev

ADD /target/petclinic.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
