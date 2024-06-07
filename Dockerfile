FROM alpine:3.18.2
RUN apk --update add py3-pip
RUN pip install  Flask
RUN pip install  psycopg2-binary
RUN pip install  ConfigParser
WORKDIR /app/
ENTRYPOINT ["/usr/bin/python", "/srv/app/web.py"]




