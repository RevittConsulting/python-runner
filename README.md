# python runner

Builds an Alpine Python container with dependencies (in requirements.txt - contains an example!), and allows for easy running of Python scripts with arguments.

## Usage

- Build it: `make build` (do this everytime you change `requirements.txt`)
- Run it (with mounted scripts folder): `make run {script-name.py} ...{args}` (example: `make run test.py arg1 arg2`)