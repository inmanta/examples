# Shortcuts for various dev tasks. Based on makefile from pydantic
.DEFAULT_GOAL := all
isort = isort inmanta_plugins
black = black inmanta_plugins
# Tools is very broken
flake8 = flake8 inmanta_plugins


.PHONY: install
install:
	pip install -U setuptools pip wheel
	pip install --pre -U -r requirements.txt -r requirements.dev.txt
	pip install -e .

.PHONY: format
format:
	$(isort)
	$(black)
	$(flake8)

.PHONY: pep8
pep8:
	$(flake8)
