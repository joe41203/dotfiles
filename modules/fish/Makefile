FISH_DIR = ~/.config/fish
FISH_COMPLETION_DIR = $(FISH_DIR)/completions
FISH_FUNCTION_DIR = $(FISH_DIR)/functions
FISH_CONFIG_DIR = $(FISH_DIR)/conf.d
SELF_FISH_DIR = $(MODULE_DIR)/fish

FISH_FISHER_FILE = $(FISH_FUNCTION_DIR)/fisher.fish

FISH_DOCKER_COMPLETION_FILE = https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/fish/docker.fish
FISH_DOCKER_COMPOSE_COMPLETION_FILE = https://raw.githubusercontent.com/docker/compose/master/contrib/completion/fish/docker-compose.fish
FISH_FISHER_COMPLETION_FILE = https://raw.githubusercontent.com/jorgebucaran/fisher/main/completions/fisher.fish
FISH_TERRAFORM_COMPLETION_FILE = https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/terraform.fish

.PHONY: fish-clean
fish-clean:
	rm -rf $(FISH_DIR)

.PHONY: fish-install
fish-install: $(FISH_DIR) $(FISH_FUNCTION_DIR) $(FISH_COMPLETION_DIR) $(FISH_CONFIG_DIR)
	make fish-update

.PHONY: fish-update
fish-update:
	fish -c "fisher update"
	exec fish

$(FISH_DIR):
	mkdir -p $(FISH_DIR)
	ln -sf $(SELF_FISH_DIR)/config.fish $(FISH_DIR)/config.fish
	ln -sf $(SELF_FISH_DIR)/fish_plugins $(FISH_DIR)/fish_plugins

$(FISH_FUNCTION_DIR):
	mkdir -p $(FISH_FUNCTION_DIR)
	ln -sf $(SELF_FISH_DIR)/functions/tmux_attach_session_if_needed.fish $(FISH_FUNCTION_DIR)/tmux_attach_session_if_needed.fish
	ln -sf $(SELF_FISH_DIR)/functions/git.fish $(FISH_FUNCTION_DIR)/git.fish
	ln -sf $(SELF_FISH_DIR)/functions/gibo.fish $(FISH_FUNCTION_DIR)/gibo.fish
	ln -sf $(SELF_FISH_DIR)/functions/f.fish $(FISH_FUNCTION_DIR)/f.fish
	curl https://git.io/fisher --create-dirs -sLo $(FISH_FISHER_FILE)

$(FISH_COMPLETION_DIR):
	mkdir -p $(FISH_COMPLETION_DIR)
	curl $(FISH_DOCKER_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/docker.fish
	curl $(FISH_DOCKER_COMPOSE_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/docker-compose.fish
	curl $(FISH_FISHER_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/fisher.fish
	curl $(FISH_TERRAFORM_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/terraform.fish

$(FISH_CONFIG_DIR):
	mkdir -p $(FISH_CONFIG_DIR)
	ln -sf $(SELF_FISH_DIR)/conf.d/shell.fish $(FISH_CONFIG_DIR)/shell.fish
