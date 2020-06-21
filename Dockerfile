FROM python:alpine
WORKDIR /usr/src/app/DevOps-Challenge-Demo-Code
RUN apk add git && \ 
    git clone https://github.com/mohamedsalama11022/DevOps-Challenge-Demo-Code.git
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]