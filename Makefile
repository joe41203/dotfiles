TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
MODULE_DIR = $(TOP_DIR)/modules
SOURCE_DIR = $(TOP_DIR)/src

-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile

.PHONY: install
install:
	make brew-install
	make iterm2-install
	make nvim-install
	make tig-install
	make vim-install
	make zsh-install
	make dot-install
	make vscode-install

.PHONY: clean
clean:
	make brew-clean
	make iterm2-clean
	make nvim-clean
	make tig-clean
	make vim-clean
	make zsh-clean
	make dot-clean
	make vscode-clean
