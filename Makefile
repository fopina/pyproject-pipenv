lint:
	ruff format
	ruff check --fix
	python -m pyproject_pipenv --fix

lint-check:
	ruff format --diff
	ruff check
	python -m pyproject_pipenv

test:
	python -m pytest --cov

testpub:
	rm -fr dist
	pyproject-build
	twine upload --repository testpypi dist/*
