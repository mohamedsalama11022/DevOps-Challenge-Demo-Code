FROM python:alpine
WORKDIR /usr/src/app
RUN apk add git
RUN git clone https://github.com/mohamedsalama11022/DevOps-Challenge-Demo-Code.git
COPY ["DevOps-Challenge-Demo-Code/hello.py", "DevOps-Challenge-Demo-Code/requirements.txt"] ./
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]