VSCODE_USER_SETTING_DIR := ~/Library/Application\ Support/Code/User
SELF_VSCODE_DIR = $(MODULE_DIR)/vscode

.PHONY: vscode-install
vscode-install:
	ln -sf $(abspath $(SELF_VSCODE_DIR)/settings.json) $(VSCODE_USER_SETTING_DIR)/settings.json

.PHONY: vscode-clean
vscode-clean:
	rm $(VSCODE_USER_SETTING_DIR)/settings.json
