# Zeroway's Documentation project(zdoc)

## Using sphinx docker to compile the project

### Prepare the sphinx docker image

First, create the docker image base on the sphinx(Dockerfile) as below

	FROM sphinxdoc/sphinx

	#ENV http_proxy=http://proxyip:port
	#ENV https_proxy=http://proxyip:port

	WORKDIR /docs
	ADD requirements.txt /docs
	RUN pip3 install -r requirements.txt

Add package in requirements.txt

	recommonmark

Build the docker image

	docker build --network=host  -t mysphinx .

### Run docker to generate compile the project

Alias command for convenient

	alias sphinx='docker run --rm -it --privileged -u $(id -u):$(id -g) -v $PWD:/docs'

Run the command

	sphinx \
		-v /path/to/mygentoo:/docs/mygentoo \
		-v /path/to/linuxc:/docs/linuxc \
		-v /path/to/kernel_drivers_examples:/docs/kernel_drivers_examples \
		-v /path/to/fabvm:/docs/fabvm \
		-v /path/to/virtopt:/docs/virtopt \
	mysphinx make html
