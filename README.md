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
		-v ${HOME}/github/myx/mygentoo:/docs/mygentoo \
		-v ${HOME}/github/myx/linuxc:/docs/linuxc \
		-v ${HOME}/github/myx/mydev:/docs/mydev \
		-v ${HOME}/github/myx/fabvm:/docs/fabvm \
		-v ${HOME}/github/myx/virtopt:/docs/virtopt \
		-v ${HOME}/github/myx/myai:/docs/myai \
		-v ${HOME}/github/myx/raoq:/docs/raoq \
		-v ${HOME}/github/myx/asm:/docs/asm \
		-v ${HOME}/.grice:/docs/grice \
	mysphinx make html
