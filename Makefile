TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
MODULE_DIR = $(TOP_DIR)/modules
SOURCE_DIR = $(TOP_DIR)/src

-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile
