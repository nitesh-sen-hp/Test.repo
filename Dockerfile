FROM ubuntu:latest
RUN apt update -y
RUN apt install tzdata -y

#installing apache2 
RUN apt install nginx -y && service nginx start
EXPOSE 80
CMD apache2ctl -D FOREGROUND
