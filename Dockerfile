FROM python:alpine
WORKDIR /usr/src/app/
RUN apk add git && \ 
    git clone https://github.com/mohamedsalama11022/DevOps-Challenge-Demo-Code.git . && \
    pip install -r requirements.txt
ENTRYPOINT ["python3"]