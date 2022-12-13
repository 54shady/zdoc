# Zeroway's Documentation project(zdoc)

## Using sphinx docker to compile the project

### Build image

Build the docker image

	cd sphinx
	docker build --network=host -t mysphinx .

### Compile Qemu documentation

Enter qemu source top dir, and compile docs into docs/_build folder

	cd /path/to/qemu-src
	sphinx mysphinx sphinx-build docs docs/_build

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
