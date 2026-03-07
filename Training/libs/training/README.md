# training Module

## Running tests

1. Set up a new virtual environment, then install the module in it. The first line assumes you have ``virtualenvwrapper``
installed. If you don't, you can replace it with `python3 -m venv .env && source .env/bin/activate`.

```bash
mkvirtualenv inmanta-test -p python3 -a .
pip install -e . -c requirements.txt -r requirements.dev.txt
```

2. Run tests

```bash
pytest tests
```
