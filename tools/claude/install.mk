.PHONY: install install-linux install-macos install-windows

install: install-$(OS_TYPE)

install-linux:
	@echo "Installing Claude on Linux"
	curl -fsSL https://claude.ai/install.sh | bash

install-macos:
	@echo "Installing Claude on macOS"
	curl -fsSL https://claude.ai/install.sh | bash

install-windows:
	@echo "Installing Claude on Windows"
	curl -fsSL https://claude.ai/install.cmd | cmd.exe
