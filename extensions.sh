#!/bin/bash

# Colors
RED="\033[01;31m"      # Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings
BLUE="\033[01;34m"     # Information
BOLD="\033[01;01m"     # Highlight
NORMAL="\033[00m"      # Normal

# install vscode plugin

## Eclipse Keymap
echo -e "\n\n ${GREEN}[+]${NORMAL} Installing ${GREEN}vscode-eclipse-keybindings${NORMAL}"
code --install-extension alphabotsec.vscode-eclipse-keybindings --force 2>/dev/null

## Markdown to PDF
echo -e "\n\n ${GREEN}[+]${NORMAL} Installing ${GREEN}yzane.markdown-pdf${NORMAL}"
code --install-extension yzane.markdown-pdf --force 2>/dev/null

## Markdown all in One
echo -e "\n\n ${GREEN}[+]${NORMAL} Installing ${GREEN}yzhang.markdown-all-in-one${NORMAL}"
code --install-extension yzhang.markdown-all-in-one --force 2>/dev/null