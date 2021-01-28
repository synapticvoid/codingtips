.PHONY: serve help

.DEFAULT_GOAL := help

serve:  ## Start hugo server
	hugo serve

build:  ## Build the content to the doc directory
	hugo -D --destination docs

update_theme:  ## Update theme submodule
	git submodule -q foreach git pull -q origin master

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

