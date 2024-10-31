# For-install-Linux
Scripts for install apps and packages

## [Ansible](./ansible.sh) (автоматизация и прокатка ролей)
Проверка доступной версии ansible.
```sh
sudo apt-cache policy ansible
```
Установка ansible.
```sh
sudo apt -y install ansible
```
Проверка установленной версии ansible.
```sh
ansible --version
```
Установка дополнительных пакетов.
```sh
sudo apt -y install software-properties-common
```
Добавление питоновского репозитория для ansible.
```sh
sudo apt-add-repository ppa:ansible/ansible --yes
```
Обновление кеша в списках репозиториев.
```sh
sudo apt update
```
Генерация файла ansible.cfg со всеми дефолтными переменными.
```sh
ansible-config init --disabled -t all > ansible.cfg
```

## [Docker](./docker.sh) (контейнеризация)
Обновление кэша репозиториев.
```sh
sudo apt update
```
Установка дополнительных зависимостей для контейнеров.
- curl — необходим для работы с веб-ресурсами;
- software-properties-common — пакет для управления ПО с помощью скриптов;
- ca-certificates — содержит информацию о центрах сертификации;
- apt-transport-https — необходим для передачи данных по протоколу HTTPS.
```sh
sudo apt install curl software-properties-common ca-certificates apt-transport-https -y
```
GPG-ключ нужен для верификации подписей ПО.
```sh
wget -O- https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor | sudo tee /etc/apt/keyrings/docker.gpg > /dev/null
```
Добавление репозитория docker.
```sh
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable"| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
Обновление кэша репозиториев.
```sh
sudo apt update
```
Проверка репозитория.
```sh
apt-cache policy docker-ce
```
Установка docker.
```sh
sudo apt install docker-ce -y
```
Проверка службы docker.
```sh
sudo systemctl status docker
```

## [Terraform](./terraform.sh) (автомазация разворачивания инфраструктуры)
Скачиваем бинарник terraform.
```sh
wget https://hashicorp-releases.yandexcloud.net/terraform/1.9.7/terraform_1.9.7_linux_amd64.zip 
```
Распаковываем архив с приложением.
```sh
unzip terraform_1.9.7_linux_amd64.zip
```
Удаление лишнего и перенос файла в нужную папку.
```sh
rm -rf LICENSE.txt && cp terraform /usr/local/bin
```
Проверка версии terraform.
```sh
terraform version
```
Переход в домашнюю директорию и создание файла для связки terraform с yandex-cloud.
```sh
cd /home/alex && touch .terraformrc &&
echo "provider_installation {" >>.terraformrc &&
echo "    network_mirror {" >>.terraformrc &&
echo "        url = \"https://terraform-mirror.yandexcloud.net/\"" >>.terraformrc &&
echo "        include = [\"registry.terraform.io/*/*\"]" >>.terraformrc &&
echo "}" >>.terraformrc &&
echo "    direct {" >>.terraformrc &&
echo "        exclude = [\"registry.terraform.io/*/*\"]" >>.terraformrc &&
echo "    }" >>.terraformrc &&
echo "}" >>.terraformrc 
```

# Microsoft Visual Studio Code
Главный иструмент для работы со всем, что связано с кодом.
## Extentions (дополнения)
> Основа для работы с контейнерами из VS Code
- Docker (ms-azuretools.vscode-docker);
> Расширение для визуальной оркестрации контейнерами
- Docker-explorer (formulahendry.docker-explorer);
> Для удаленной работы с GitHub
- GitHub Codespaces (GitHub.codespaces);
> Для визуального просмотра истории коммитов и веток
- GitLens (eamodio.gitlens);
> Визуальное отображение табуляции
- Indent-rainbow (oderwat.indent-rainbow);
> Для работы с кубами
- Kubernetes (ms-kubernetes-tools.vscode-kubernetes-tools);
> Визуальное отображение файлов PDF в VS Code
- vscode-pdf (tomoki1207.pdf);
> Поддержание формата YAML
- YAML (redhat.vscode-yaml)
> Поддержка формата MARKDOWN
- Markdown all in one (yzhang.markdown-all-in-one)
> Поддержка формата Terraform
- HashiCorp Terraform (HashiCorp.terraform)
> Расширения для Python
- Python (ms-python.python)
- Pylance (ms-python.vscode-pylance)
- Python Debugger (ms-python.debugpy)
> Расширение для формата Ansible
- Ansible (redhat.ansible)
