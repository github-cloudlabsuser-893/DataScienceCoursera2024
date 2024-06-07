install:
	pip install --upgrade pip &&\
			pip install -r requirements.txt

test:
	python -m pytest --nbval DataScienceNotebook.ipynb

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all:	install lint test format

##	python -m pytest -vv test_hello.py
