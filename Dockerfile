FROM python:latest
WORKDIR /
COPY /MySite01 /mysite
WORKDIR mysite
RUN pip3 install -r  requirements.txt
CMD daphne -b 192.168.0.2 -p 80 BM.asgi:application
