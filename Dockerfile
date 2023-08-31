FROM tomcat:8-jre11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY doctor-patient-ap-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/doctor-patient-ap-0.0.1-SNAPSHOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
WORKDIR /usr/local/tomcat/
VOLUME /usr/local/tomcat/webapps
