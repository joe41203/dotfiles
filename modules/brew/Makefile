SELF_BREW_DIR = $(MODULE_DIR)/brew

.PHONY: install clean

brew-install:
	brew bundle --file=$(SELF_BREW_DIR)/Brewfile

brew-clean:
	brew bundle cleanup --force --file=$(SELF_BREW_DIR)/Brewfile
