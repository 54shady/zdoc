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
		-v ${HOME}/github/mygentoo:/docs/mygentoo \
		-v ${HOME}/github/linuxc:/docs/linuxc \
		-v ${HOME}/github/kernel_drivers_examples:/docs/kernel_drivers_examples \
		-v ${HOME}/github/fabvm:/docs/fabvm \
		-v ${HOME}/github/virtopt:/docs/virtopt \
		-v ${HOME}/.grice:/docs/grice \
		-v ${HOME}/github/raoq:/docs/raoq \
		-v ${HOME}/github/asm:/docs/asm \
	mysphinx make html
