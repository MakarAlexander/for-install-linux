#!/bin/bash
set -e
sudo apt update
sudo apt upgrade -y

###---APT---###

# Установка bzip2 & tar для работы с зип и тар архивами
sudo apt install bzip2 tar
# Установка ssh для удаленонного подключения через терминал
sudo apt install ssh
# Установка Git для работы + глобальные конфиги
sudo apt install git
git config --global user.name "MakarAlexander"
git config --global user.email makartsewalex98@yandex.ru
# Установка Yandex Browser
sudo apt install yandex-browser-stable
# Установить Screen (сохранение сессии + мултиплексор для открытия терминала в нескольких окнах)
sudo apt install screen

###---SNAP---###

# Установка Miscrosoft Visual Code Studio (самый важный инструмент)
sudo snap install code --classic
## Дополнения
code --install-extension ms-azuretools.vscode-docker
code --install-extension formulahendry.docker-explorer
code --install-extension GitHub.codespaces
code --install-extension eamodio.gitlens
code --install-extension oderwat.indent-rainbow
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension tomoki1207.pdf
code --install-extension redhat.vscode-yaml
code --install-extension yzhang.markdown-all-in-one
code --install-extension HashiCorp.terraform
code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension redhat.ansible


###---DEB---###
