TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
MODULE_DIR = $(TOP_DIR)/modules

-include $(MODULE_DIR)/*/Makefile
