# docker-jekyll

## Summary
This is a Docker-based environment for developing [Jekyll](https://jekyllrb.com).

## Docker Setup

### Clone repo
`git clone git@github.com:allknowingfrog/docker-jekyll.git`

### To build the initial docker image
Navigate into the repository directory and build the Docker image:

`sudo docker build -t jekyll .`

This will name the new image "jekyll" but you can choose anything you like.

Note that Docker images and containers exist independent of the directories from which they are created, so the remaining commands can be run from anywhere.

### To create a container from the new image
`sudo docker run -it --name jekyll-server -p 4000:4000 -v ~/local/file/path:/container-file-path jekyll bash`

The `-it` flags create an interactive session, while `-p` and `-v` map ports and volumes, respectively. Mounting a volume causes it to be shared between the local machine and the container (changes in one will be reflected in the other). Note that Git commands and other text editors can be used to interact with files mounted via the `-v` flag. The `--name` flag tags the new container, `jekyll` is the image to use and `bash` is the command to execute inside the container.

### To run the Jekyll development server
`bundle exec jekyll serve -H 0.0.0.0`

This `-H` flag accepts connections on all hosts (`0.0.0.0`). Note that, depending on the configuration of your network, *this will expose your container to the internet and the outside world*.

### To stop the container
Stopped containers maintain their state and can be started again to resume work.

`sudo docker stop jekyll-server`

### To start the stopped container
`sudo docker start -i jekyll-server`

### To see all containers
`sudo docker ps -a`

### To enter a new bash shell in a running container (from a separate terminal)
`sudo docker exec -it jekyll-server bash`
