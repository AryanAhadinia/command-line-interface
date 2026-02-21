.PHONY: install claude


UNAME_S := $(shell uname -s 2>/dev/null)

ifeq ($(OS),Windows_NT)
	OS_TYPE := windows
else ifeq ($(UNAME_S),Linux)
	OS_TYPE := linux
else ifeq ($(UNAME_S),Darwin)
	OS_TYPE := macos
else
	OS_TYPE := unknown
endif

export OS_TYPE


install:
	@echo "Usage: make install TOOL=claude"

claude:
	$(MAKE) -f tools/claude/install.mk install
