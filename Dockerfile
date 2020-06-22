FROM python:alpine AS test_stage 
WORKDIR /usr/src/app
ENTRYPOINT [ "python3" ] ["tests.py"]
RUN apk update && \ 
    apk add git && \ 
    # Clone the tornado app repo into the current WORKDIR
    git clone https://github.com/MohamedMSaeed/DevOps-Challenge-Demo-Code.git && \ 
    # Install requirements 
WORKDIR /usr/src/app/DevOps-Challenge-Demo-Code
RUN pip install -r requirements.txt