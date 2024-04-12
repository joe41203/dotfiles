BUNDLE_DIR = ~/.bundle
SELF_BUNDLE_DIR = $(MODULE_DIR)/bundle

BUNDLE_CLEAN_TARGETS += bundle-clean
BUNDLE_TARGETS += bundle-install

.PHONY: bundle-install
bundle-install: $(BUNDLE_DIR)/config

$(BUNDLE_DIR)/config: $(SELF_BUNDLE_DIR)/config
	mkdir -p $(BUNDLE_DIR)
	ln -sf $(SELF_BUNDLE_DIR)/.bundle/config $(BUNDLE_DIR)/config

.PHONY: bundle-clean
bundle-clean:
	rm -rf $(BUNDLE_DIR)
