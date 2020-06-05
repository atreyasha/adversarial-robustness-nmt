SHELL = /bin/bash
WMT = ./data/wmt_all
GIT_HOOKS = ./.git/hooks

$(GIT_HOOKS)/pre-commit: ./hooks/pre-commit.sample
	cp --force $< $@

.PHONY: hook
hook: $(GIT_HOOKS)/pre-commit

.PHONY: download_laser
download_laser:
	python3 -m laserembeddings download-models
