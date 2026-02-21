.PHONY: install install-linux install-macos install-windows test-installation

install: install-$(OS_TYPE)

install-linux:
	curl -fsSL https://github.com/block/goose/releases/download/stable/download_cli.sh | CONFIGURE=false bash

install-macos:
	curl -fsSL https://github.com/block/goose/releases/download/stable/download_cli.sh | CONFIGURE=false bash

install-windows:
	curl -L -o download_cli.ps1 https://raw.githubusercontent.com/block/goose/main/download_cli.ps1
	powershell -ExecutionPolicy Bypass -File download_cli.ps1
	$env:PATH += ";$env:USERPROFILE\.local\bin"

test-installation:
	goose --version
