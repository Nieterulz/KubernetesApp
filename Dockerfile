FROM ubuntu:latest
ADD web_project ./web_project/ 
RUN apt update -y && apt upgrade -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install django
RUN pip3 install django-crispy-forms
RUN apt-get install python3-dev -y
RUN apt-get install python-dev default-libmysqlclient-dev -y
RUN apt install mariadb-client -y
RUN pip3 install mysqlclient
EXPOSE 4097
