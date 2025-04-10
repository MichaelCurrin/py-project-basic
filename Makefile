SHELL = /bin/bash

install:
	poetry install

update:
	poetry update

fmt:
	poetry run black .
	poetry run isort .

fmt-check:
	poetry run black . --diff --check
	poetry run isort . --diff --check-only
