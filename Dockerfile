# FROM python:alpine 
# WORKDIR /usr/src/app
# RUN apk add git && \ 
#     # Clone the tornado app repo into the current WORKDIR
#     git clone https://github.com/MohamedMSaeed/DevOps-Challenge-Demo-Code.git .
#     # Install requirements

# RUN  pip install -r requirements.txt
# ENTRYPOINT [ "python3" ]

FROM python:alpine

WORKDIR /usr/src/app

RUN mkdir //usr/src/app/templates /usr/src/app/tests /usr/src/app/static

COPY templates ./templates 
COPY    tests ./tests 
COPY    static ./static 
COPY    hello.py ./    
COPY    requirements.txt ./

RUN pip install -r requirements.txt

ENTRYPOINT [ "python3" ]