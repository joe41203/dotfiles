GITCONFIG_HOME := ~/.config/git
GITCONFIG_FILE := $(GITCONFIG_HOME)/config
GITIGNORE_FILE := $(GITCONFIG_HOME)/ignore
SELF_GIT_DIR := $(MODULE_DIR)/git

.PHONY: git-clean
git-clean:
	rm -f $(GITCONFIG_FILE)
	rm -f $(GITIGNORE_FILE)

.PHONY: git-install
git-install: $(GITCONFIG_HOME) $(GITCONFIG_FILE) $(GITIGNORE_FILE)

$(GITCONFIG_HOME):
	mkdir -p $(GITCONFIG_HOME)

$(GITCONFIG_FILE): $(SELF_GIT_DIR)/dot.gitconfig
	ln -sf $(abspath $(SELF_GIT_DIR)/dot.gitconfig) $(GITCONFIG_FILE)

$(GITIGNORE_FILE): $(SELF_GIT_DIR)/ignore
	ln -sf $(abspath $(SELF_GIT_DIR)/ignore) $(GITIGNORE_FILE)
