# dockerFather
docker config to set website from git repository

----- 

## Quick Start example:
This is a life example using this repo's Dockerfile

``` bash
sudo docker build -t errewebsite .
docker run -it --rm -p 3000:80 --name erreWeb errewebsite
```
Visit `localhost:3000` in your browser to see the website

----- 

## Commands:

### BUILD
``` bash
docker build -t NAME .
```

NOTE: `-t` is to give a NAME to the container

Alternatively, we could just use:

``` bash
docker build .
```

This would generate a random name

----- 

### RUNNING
``` bash
docker run -it --rm -p 3000:80 --name CUSTOMNAME NAME
```

NOTE: `--rm` is to remove this container as soon as it dies, to save space in memory

NOTE 2: `-p 3000:80` refers to the port 3000 in my local machine, whereas port 80 refers to the docker container port (this port will be used for the docker app running inside) 

NOTE 3: `--name` this is optional, but useful. Provides a name to easily locate the docker container.

----- 

### INTERACT
``` bash
docker exec -it NAME bash
```

This command is to interact with the docker (from the inside), we are able to use the container's bash shell

----- 

## Main difference between RUN and CMD commands:

The RUN command just execute a command in terminal

The CMD is the MAIN COMMAND of the docker container, if this command finishes, the docker dies. As the docker container only runs when its main command is alive! (IMPORTANT!)
