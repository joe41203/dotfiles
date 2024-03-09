VIM_DIR = ~/.vim
CORLOR_GITHUB_URL = https://github.com/jdkanani/vim-material-theme

.PHONY: vim-clean
vim-clean:
	rm -fr $(VIM_DIR)

.PHONY: vim-install
vim-install: $(VIM_DIR)

$(VIM_DIR):
	git clone $(CORLOR_GITHUB_URL) $(VIM_DIR)
