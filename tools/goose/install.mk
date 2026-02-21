.PHONY: install install-linux install-macos install-windows test-installation

install: install-$(OS_TYPE)

install-linux:
	curl -fsSL https://github.com/block/goose/releases/download/stable/download_cli.sh | CONFIGURE=false bash

install-macos:
	curl -fsSL https://github.com/block/goose/releases/download/stable/download_cli.sh | CONFIGURE=false bash

install-windows:
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/block/goose/main/download_cli.ps1" -OutFile "download_cli.ps1";
	.\download_cli.ps1

test-installation:
	goose --version
