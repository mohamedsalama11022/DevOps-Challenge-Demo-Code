FROM python:alpine
RUN mkdir /usr/src /usr/src/app
WORKDIR /usr/src/app/
RUN apk add git && \ 
    git clone https://github.com/mohamedsalama11022/DevOps-Challenge-Demo-Code.git && \
    pip install -r DevOps-Challenge-Demo-Code/requirements.txt
ENTRYPOINT ["python3"]