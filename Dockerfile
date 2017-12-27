 FROM registry.cn-hangzhou.aliyuncs.com/sumsc/sogt:b0.4
 
 MAINTAINER LionTao "1024503653@qq.com"
 
 EXPOSE 80:80 2002:22 443:443 8080:8080
 
 ENV LANG C.UTF-8
 
 ENTRYPOINT service apache2 start && service ssh start && service mysql start && /bin/bash
