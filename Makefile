.PHONY: install install-linux install-macos install-windows

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

install:
	@echo "Detected OS: $(OS_TYPE)"
	$(MAKE) install-$(OS_TYPE)

install-linux:
	@echo "Running Linux install..."

install-macos:
	@echo "Running macOS install..."

install-windows:
	@echo "Running Windows install..."

install-unknown:
	@echo "Unsupported OS"
