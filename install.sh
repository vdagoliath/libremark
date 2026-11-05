#!/bin/sh
# Instala el repositorio APT de LibreMark y la aplicación.
# Uso: sudo sh install.sh
set -e
BASE_URL="https://github.com/vdagoliath/libremark.git"
KEYRING="/usr/share/keyrings/libremark-archive-keyring.gpg"
curl -fsSL "$BASE_URL/libremark-archive-keyring.gpg" | sudo tee "$KEYRING" >/dev/null
sudo chmod 644 "$KEYRING"
echo "deb [signed-by=/usr/share/keyrings/libremark-archive-keyring.gpg] https://github.com/vdagoliath/libremark.git stable main" | sudo tee /etc/apt/sources.list.d/libremark.list >/dev/null
sudo apt-get update
sudo apt-get install -y libremark
echo "LibreMark instalado. Ábrelo desde el menú de aplicaciones o ejecuta: libremark"
