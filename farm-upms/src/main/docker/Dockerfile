FROM openjdk:8-jdk-alpine

MAINTAINER ZhangYiBo1820703234@qq.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

VOLUME /tmp

EXPOSE 9000

ADD farm-upms-1.0.0-exec.jar farm-upms.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/farm-upms.jar"]