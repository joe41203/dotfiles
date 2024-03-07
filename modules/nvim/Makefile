NVIM_DIR = ~/.config/nvim
NVIM_PLUGINS_DIR = $(NVIM_DIR)/plugins
NVIM_CACHE_DIR = ~/.cache/dein
SELF_NVIM_DIR = $(MODULE_DIR)/nvim
SELF_NVIM_PLUGINS_DIR = $(MODULE_DIR)/nvim/plugins

NVIM_DEIN_URL = https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh

.PHONY: nvim-clean
nvim-clean:
	rm -rf $(NVIM_DIR)
	rm -rf $(NVIM_CACHE_DIR)

.PHONY: nvim-install
nvim-install: $(NVIM_CACHE_DIR)
	ln -sf $(SELF_NVIM_DIR)/init.vim $(NVIM_DIR)/init.vim
	ln -sf $(SELF_NVIM_DIR)/dein.toml $(NVIM_DIR)/dein.toml

$(NVIM_CACHE_DIR):
	mkdir -p $(NVIM_DIR)
	mkdir -p $(NVIM_PLUGINS_DIR)
	mkdir -p $(NVIM_CACHE_DIR)
	curl $(NVIM_DEIN_URL) > vim_install.sh
	sh vim_install.sh $(NVIM_CACHE_DIR)
	rm vim_install.sh
