FROM ubuntu:14.04
MAINTAINER feiniubus  lq@feiniubus.com
RUN apt-get update
RUN apt-get install -y nginx
RUN cd /home/ubuntu/
COPY ./www /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
