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

checkout:
	@echo "Checkout"
	git config core.sparsecheckout true
	rm -rf develop
	mkdir develop
	(cd develop && git clone https://github.com/kitconcept/python-monorepo mypackage_core)
	(cd develop/mypackage_core && echo "src/mypackage_core" >> .git/info/sparse-checkout)
	(cd develop/mypackage_core && git config core.sparsecheckout true)
	(cd develop/mypackage_core && git read-tree -m -u HEAD)
	ls develop/mypackage_core/src
	(cd develop/mypackage_core && git checkout b639aff6615df7e33ffa53bcdfb1b9fd131c189e)

test:
	@echo "Run Tests"
	bin/pybot DjangoLibrary

build-docs:
	@echo "Build Keyword Documentation"
	bin/python -m robot.libdoc DjangoLibrary docs/index.html

