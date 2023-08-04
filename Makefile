.PHONY: all

all: lint test

lint:
	flake8 bounded_pool/ tests/ --count --select=E9,F63,F7,F82 --show-source --statistics
	flake8 bounded_pool/ tests/ --count --max-complexity=10 --max-line-length=127 --statistics

test:
	ENVIRONMENT=test python3 -m pytest -n auto --cov=bounded_pool tests/
