SHELL = /bin/bash

default: install

all: install check test


install:
	poetry install --no-root

update:
	poetry update

g install-global:
	pipx install . --force


lint:
	poetry run ruff check

fmt-check:
	poetry run ruff format --check

fix:
	poetry run ruff check --fix
	poetry run ruff format


check:
	poetry build
	$(MAKE) lint
	$(MAKE) fmt-check
	$(MAKE) types

test:
	PYTHONPATH=. poetry run pytest

run-help:
	poetry run python -m app --help

run:
	poetry run python -m app --foo World
