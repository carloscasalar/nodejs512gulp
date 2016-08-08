# nodejs512gulp
Node JS Docker image with gulp installed and a shared volume

## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/nodejs-bower-gulp/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull carloscastillo/nodejs512gulp`

   (alternatively, you can build an image from Dockerfile: `docker build -t="carloscastillo/nodejs512gulp" github.com/carloscasalar/nodejs512gulp`)

## Usage

    docker run -it --rm -u `id -u $USER`:`id -g $USER` --net="host" -v `pwd`:/app  carloscastillo/nodejs512gulp

### Run `node`

    docker run -it --rm -u `id -u $USER`:`id -g $USER` --net="host" -v `pwd`:/app  carloscastillo/nodejs512gulp node

### Run `npm`

    docker run -it --rm -u `id -u $USER`:`id -g $USER` --net="host" -v `pwd`:/app  carloscastillo/nodejs512gulp npm

### Run `gulp`

    docker run -it --rm -u `id -u $USER`:`id -g $USER` --net="host" -v `pwd`:/app  carloscastillo/nodejs512gulp 

Run a gulp script, i.e. test:

    docker run -it --rm -u `id -u $USER`:`id -g $USER` --net="host" -v `pwd`:/app  carloscastillo/nodejs512gulp gulp test

