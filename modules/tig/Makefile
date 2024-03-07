TIG_DIR = ~/.tig
TIG_GITHUB_URL = https://github.com/edentsai/tig-theme-molokai-like
CORLOR_GITHUB_URL = https://github.com/edentsai/tig-theme-molokai-like

.PHONY: tig-clean
tig-clean:
	rm -fr $(TIG_DIR)

.PHONY: tig-install
tig-install: $(TIG_DIR)

$(TIG_DIR):
	git clone $(TIG_GITHUB_URL) $(TIG_DIR)
	git clone $(CORLOR_GITHUB_URL) $(TIG_DIR)
