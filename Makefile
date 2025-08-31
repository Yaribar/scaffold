install:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	# Runs pytest with verbose output and coverage report for the 'hello' module, using 'test_hello.py' as the test file
	python -m pytest -vv --cov=hello test_hello.py 

all: install lint test