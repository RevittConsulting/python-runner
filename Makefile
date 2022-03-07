.PHONY: run build

default: build

build:
	@echo "building pyrunner image"
	@docker build . -t pyrunner

run:
	@(docker run --mount type=bind,source="$$PWD/scripts,target=/src/scripts" pyrunner $(filter-out $@,$(MAKECMDGOALS)))

# https://stackoverflow.com/a/6273809/1826109
%:
	@: