export PACKAGE := XWMM
export VERSION := $(shell grep '  version' addon.xml | cut -c11-20 | cut -d'"' -f2)
export RELEASE_DIR := ..
export RELEASE_FILE := $(PACKAGE)-$(VERSION).zip
export HAT := $(RELEASE_FILE)
zip:
	cd $(RELEASE_DIR); \
	zip -r $(RELEASE_FILE) $(PACKAGE) -x "$(PACKAGE)/.git/*"
  
