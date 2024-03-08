ITERM2_PLIST := ~/Library/Preferences/com.googlecode.iterm2.plist

.PHONY: iterm2-install
iterm2-install:
	ln -sf $(abspath com.googlecode.iterm2.plist) $(ITERM2_PLIST)
	touch $(HOME)/.hushlogin

.PHONY: iterm2-clean
iterm2-clean:
	rm -f $(ITERM2_PLIST)
	rm -f $(HOME)/.hushlogin
