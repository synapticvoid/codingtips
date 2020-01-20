# Coding Tips

## What?
A bunch of Coding Tips to help you save time, find the right syntax and become a Damn Good Coder.

## Installation
This documentation is generated using [Sphinx](http://www.sphinx-doc.org/). It assumes that you have a valid Python 3.7 installation.
After cloning the repository:
```bash
cd src/
virtualenv venv
. ./venv/bin/activate
pip install -r requirements.txt
```

## Usage
Every command is executed inside the `src/` directory.

A live-reload server is available by starting:
```bash
make livehtml
```
You can then visit the local server to explore the generated website.

Once you are happy with your updates:
```bash
make github
```
This will generate the HTML output in the `docs/` directory. Just commit everything in the master directory and the GitHub Page should be updated.
