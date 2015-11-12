## How to dockerize Ruby application

I assume here that you have docker already installed on your system. Also you have Rails application, which is running on usual development environment (without docker).

### 1. Create empty Dockerfile

On your local machine create directory for the new dockerized app with

```
mkdir legelisten-docker
```

and create empty Dockerfile there:

```
cd legelisten-docker
touch Dockerfile
```

### 2. Initialize Dockerfile with OS

With this line in Dockerfile you'll set OS version of your new docker to Ubuntu vivid:
(just add this line to the top of the Dockerfile and save it)

```
FROM ubuntu:15.04
```

### 3. Build new docker image

```
docker build -t legelisten .
```


### 4. Run image and connect

```
docker run -it legelisten /bin/bash
```

### 5. Delete all local images

(if things get really wrong on your side)

```
docker rmi $(docker images -q)
```

### 6. Run container in foreground

```
docker run --rm -P --name legelisten_container legelisten
```
