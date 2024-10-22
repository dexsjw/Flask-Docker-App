FROM python:3.13-alpine3.19
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


### Command to build image
# docker build -t "<image-name>" .
## tags
# -t: tag name
# image-name: any name given by user usually with version e.g. python-flask-docker:0.0.0.1
## e.g.
# docker build -t "python-flask-docker:0.0.0.1" .


### Commands to remove/delete images
# docker image rm <image-id>
# docker image rm <image-name>
# docker image rm <image-name>:<tag/version>
## e.g.
# docker image rm f1f1d822603d
# docker image rm python-flask-docker
# docker image rm python-flask-docker:0.0.0.1


### Commands to list images
# docker images
# docker image ls


### Commands to run image as container
# docker run -d -p <local-machine-port>:<container-port> <image_id>
# docker run -d -p <local-machine-port>:<container-port> <image_name>
## tags
# -d: run image in detached mode
# -p: port to be exposed 
## e.g.
# docker run -d -p 5000:5000 f1f1d822603d
# docker run -d -p 5000:5000 python-flask-docker


### Commands to list containers
# docker ps
# docker ps -a


### Commands to stop container
# docker stop <container-id>
# docker stop <container-name>


### Commands to remove container
# docker rm <container-id>
# docker rm <container-name>


### Ways to tag docker image when pushing to Image Registry e.g. Docker Hub
# 
## 1. Re-tag existing image
## Command to re-tag
# docker image tag apple:latest <your-dockerhub-account>/<repo-name>:latest
## e.g.
# docker image tag apple:latest dexsjw/education-space:1.1.1.1
# 
## 2. Build from Dockerfile from scratch and name the -t options appropriately
## Command to build
# docker build -t <your dockerhub account>/<repo-name>:latest .
## e.g.
# docker build -t dexsjw/education-space:1.1.1.1 .


### Command to push image to Image Registry e.g. Docker Hub
# docker push <your dockerhub account>/<repo-name>:latest
## e.g.
# docker push dexsjw/education-space:1.1.1.1


### Command to pull images from Image Registry e.g. Docker Hub
# docker pull <your dockerhub account>/<repo-name>:latest
## e.g.
# docker pull dexsjw/education-space:1.1.1.1


### Command to run downloaded images from Image Registry
# docker run <your dockerhub account>/<repo-name>:latest
## e.g.
# docker run dexsjw/education-space:1.1.1.1