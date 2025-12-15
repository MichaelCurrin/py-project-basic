SHELL = /bin/bash
APP_DIR = app

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

types:
	poetry run mypy $(APP_DIR) tests

check:
	poetry build
	$(MAKE) lint
	$(MAKE) fmt-check
	$(MAKE) types

test:
	poetry run pytest


run-help:
	poetry run python -m $(APP_DIR) --help

run:
	poetry run python -m $(APP_DIR) --foo World
