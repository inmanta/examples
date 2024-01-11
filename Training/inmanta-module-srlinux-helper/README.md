# srlinux_helper Module

## Running tests

1. Set up a new virtual environment, then install the module in it. The first line assumes you have ``virtualenvwrapper``
installed. If you don't, you can replace it with `python3 -m venv .env && source .env/bin/activate`.

```bash
mkvirtualenv inmanta-test -p python3
pip install -r requirements.txt -r requirements.dev.txt
inmanta -vvv module install -e .
```

2. Run tests

```bash
pytest tests
```
