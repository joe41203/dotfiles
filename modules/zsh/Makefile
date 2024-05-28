OH_MY_ZSH_DIR = ~/.oh-my-zsh
OH_MY_ZSH_GITHUB_URL = https://github.com/ohmyzsh/ohmyzsh
ZSHHOME := ~/.zsh
SELF_ZSH_DIR = $(MODULE_DIR)/zsh

.PHONY: zsh-clean
zsh-clean:
	rm -fr $(OH_MY_ZSH_DIR)
	rm -f $(HOME)/.zshrc
	rm -fr $(ZSHHOME)

.PHONY: zsh-install
zsh-install: $(OH_MY_ZSH_DIR) $(ZSHHOME) $(ZSHHOME)/aliases.zsh $(ZSHHOME)/env.zsh $(ZSHHOME)/plugins.zsh $(ZSHHOME)/functions $(OH_MY_ZSH_DIR)/custom/themes/custom.zsh-theme

$(OH_MY_ZSH_DIR):
	git clone $(OH_MY_ZSH_GITHUB_URL) $(OH_MY_ZSH_DIR)

$(ZSHHOME):
	mkdir -p $(ZSHHOME)

$(ZSHHOME)/aliases.zsh: $(SELF_ZSH_DIR)/aliases.zsh
	ln -sf $(abspath $(SELF_ZSH_DIR)/aliases.zsh) $(ZSHHOME)/aliases.zsh

$(ZSHHOME)/env.zsh: $(SELF_ZSH_DIR)/env.zsh
	ln -sf $(abspath $(SELF_ZSH_DIR)/env.zsh) $(ZSHHOME)/env.zsh

$(ZSHHOME)/plugins.zsh: $(SELF_ZSH_DIR)/plugins.zsh
	ln -sf $(abspath $(SELF_ZSH_DIR)/plugins.zsh) $(ZSHHOME)/plugins.zsh

$(ZSHHOME)/functions: $(SELF_ZSH_DIR)/functions
	mkdir -p $(ZSHHOME)/functions
	find $(SELF_ZSH_DIR)/functions -type f -print0 | xargs -0 -I{} ln -sf {} $(ZSHHOME)/functions/

$(OH_MY_ZSH_DIR)/custom/themes/custom.zsh-theme: $(SELF_ZSH_DIR)/custom.zsh-theme
	mkdir -p $(OH_MY_ZSH_DIR)/custom/themes
	ln -sf $(abspath $(SELF_ZSH_DIR)/custom.zsh-theme) $(OH_MY_ZSH_DIR)/custom/themes/custom.zsh-theme
