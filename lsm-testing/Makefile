isort = isort inmanta_plugins tests docs
black = black inmanta_plugins tests docs
black_preview = black --preview inmanta_plugins tests docs
flake8 = flake8 inmanta_plugins tests docs
pyupgrade = pyupgrade --py39-plus $$(find inmanta_plugins tests docs -type f -name '*.py')


test_env_vars:
	@ python -c 'import yaml, pathlib; print(" ".join(f"{k}='{v}'" for k, v in yaml.safe_load(pathlib.Path(".ci-integration-tests.yml").read_text())["env_vars"].items()))'

.PHONY: install
install:
	pip install -U --upgrade-strategy=eager pip setuptools wheel
	pip install -U --upgrade-strategy=eager -e . -c requirements.txt -r requirements.dev.txt

.PHONY: format
format:
	$(isort)
	$(black_preview)
	$(black)
	$(flake8)
	$(pyupgrade)

.PHONY: pep8
pep8:
	$(flake8)
	$(pyupgrade)


SET_UP_MYPY_PLUGINS=mkdir -p mypy/out
RUN_MYPY_PLUGINS=python -m mypy --html-report mypy/out/inmanta_plugins --namespace-packages -p inmanta_plugins.integration_example
RUN_MYPY_TESTS=MYPYPATH=tests python -m mypy --html-report mypy/out/tests --namespace-packages tests

mypy-plugins:
	@ echo -e "Running mypy on the module plugins\n..."
	@ $(SET_UP_MYPY_PLUGINS)
	@ $(RUN_MYPY_PLUGINS)

mypy-tests:
	@ echo -e "Running mypy on the module tests\n..."
	@ $(SET_UP_MYPY_PLUGINS)
	@ $(RUN_MYPY_TESTS)

.PHONY: mypy
mypy: mypy-plugins mypy-tests

ci-mypy: mypy
