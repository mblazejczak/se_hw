.PHONY: test

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

test:
	PYTHONPATH=. py.test

lint:
	flake8 hello_world test

docker_build:
	docker build -t hello-world-printer .
