.PHONY: install
install:
	pip install .

.PHONY: uninstall
uninstall:
	pip uninstall network-lasso

.PHONY: build-container
build-container: 
	docker build -t drewblasius/network-lasso .

.PHONY: run-test-container
run-test-container:
	docker run --rm -v ${PWD}:/home/project --workdir /home/project \
		drewblasius/network-lasso make test

.PHONY: test-container
test-container: build-container run-test-container

.PHONY: test
test: install
	tox 

.PHONY: clean
clean:
	rm -rf .tox/

.PHONY: release
release:
	sleep 1s

.PHONY: dist
dist:
	python setup.py sdist bdist_wheel	
