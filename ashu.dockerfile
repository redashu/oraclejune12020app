FROM  centos
MAINTAINER  ashutoshh@linux.com
RUN  yum  install  httpd  -y
RUN  mkdir  /data  /data/app1   /data/app2
COPY  website1   /data/app1/
COPY   website2   /data/app2/
COPY    start.sh  /data/start.sh
ENV  page=default  
#  we are using env to switch website during container creation time
EXPOSE 80 
ENTRYPOINT  ["bash","/data/start.sh"]
