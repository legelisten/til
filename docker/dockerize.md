## How to dockerize Ruby application

I assume here that you have docker already installed on your system. Also you have Rails application, which is running on usual development environment (without docker).

### 1. Create repo in [hub.docker.com](https://hub.docker.com)

Just set the name of a new docker app. You'll use it later. In my example I'll use kiote/legelisten

### 2. Create empty Dockerfile

On your local machine create directory for the new dockerized app with

```
mkdir legelisten-docker
```

and create empty Dockerfile there:

```
cd legelisten-docker
touch Dockerfile
```

### 3. Initialize Dockerfile with OS

With this line in Dockerfile you'll set OS version of your new docker to Ubuntu vivid:
(just add this line to the top of the Dockerfile and save it)

```
FROM ubuntu:15.04
```

### 4. Build new docker image

```
docker build -t legelisten .
```

### 5. Set tag and push

Your tag should be obtained from results of ```docker images``` command. kiote/legelisten - it's repo name ew've created on step 1

```
docker login
docker tag 1aaa18adf220 kiote/legelisten
docker push kiote/legelisten
```

### 6. Remove local image and pull remote

Just to make sure you're doing good:

```
# get your local image id
docker images
# remove just pushed image
docker rmi -f your_image_id_here
docker pull kiote/legelisten
```

### 7. Run image and connect

```
docker run -i -t legelisten /bin/bash
```

### 8. Connect Dockerfile on github with docker.hub image:

Read the instruction here http://docs.docker.com/engine/userguide/dockerrepos/ under "Automated Builds" title
