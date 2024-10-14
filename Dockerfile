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
## e.g.:
# docker build -t "python-flask-docker:0.0.0.1" .

### Commands to remove/delete images
# docker image rm <image-id>
# docker image rm <image-name>
# docker image rm <image-name>:<tag/version>
## e.g.:
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
## e.g.:
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