FROM openjdk:8-jdk

RUN mkdir /usr/local/tomcat

ADD . /usr/local/tomcat

WORKDIR /usr/local/tomcat

RUN  ls && cat conf/tomcat-users.xml

EXPOSE 8080

CMD ["./bin/catalina.sh", "run"]