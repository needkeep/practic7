# practic7

Установить и запустить на ВМ Docker.
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker


Установить и запустить на ВМ СУБД Postgres.
apt-get update; apt upgrade -y 
apt install postgresql postgresql-contrib -y 
systemctl enable postgresql.service; service postgresql start
service postgresql status 

В Postgres создать БД и пользователя с произвольным именем на ваш выбор и дать этому пользователю полные права на созданную БД.

su postgres
psql postgres

CREATE ROLE&nbsp; <логин> LOGIN PASSWORD '<пароль>';
CREATE DATABASE <база_данных> WITH OWNER = <логин>;


Создать Docker-образ:

Содержащий Python 3, а также библиотеки для него: Flask, Psycopg2 (для работы с СУБД Postgres, хранящей данные) и ConfigParser.

Содержащий код приложения на Python (копирующий его с локальной файловой системы). На хостовой ФС код будет лежать по пути: /srv/app/web.py.

Содержащий конфигурационный файл приложения (копирующий его с локальной ФС). На хостовой ФС конфигурационный файл будет лежать по пути: /srv/app/conf/web.conf.

При запуске контейнера, он должен запускать описанный выше код.

Образ должен быть оптимизирован с учетом лучших практик.

Пришлите ментору свой Dockerfile, скриншот с работающим приложением и размер образа.

docker run -d -v /srv/app:/app/ -p 80:80 e1dab40791e6


