FROM python:3

ADD web_project ./web_project/ 

RUN apt update -y && apt upgrade -y && apt-get install python3-pip -y && pip3 install -U pip

RUN pip3 install django && pip3 install django-crispy-forms

RUN apt-get install python3-dev -y && apt-get install python-dev default-libmysqlclient-dev -y

RUN apt install mariadb-client -y && pip3 install mysqlclient

CMD pyhon3 /web_project/manage.py runserver 0.0.0.0:4000