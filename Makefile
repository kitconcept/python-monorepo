SHELL := /bin/bash
CURRENT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
DJANGO_VERSION:=1.11.5

all: clean build

clean:
	@echo "Clean"
	rm -rf bin include lib develop .Python

build:
	@echo "Build"
	virtualenv -p python3 .
	bin/pip install -r requirements.txt

test:
	@echo "Run Tests"
	bin/pybot DjangoLibrary

build-docs:
	@echo "Build Keyword Documentation"
	bin/python -m robot.libdoc DjangoLibrary docs/index.html

