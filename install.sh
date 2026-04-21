#!/bin/bash
set -e

REPO_URL='https://github.com/sompaluckyrenklis-design/fancy_tools.git'
SRC_DIR=~/src/fancy_tools

# Fonction utilitaire : ajoute une ligne si absente
add_if_missing() {
    grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

# Sauvegarde de ~/.bashrc
cp ~/.bashrc ~/.bashrc.bak_$(date +%Y%m%d_%H%M%S)
echo "Backup de ~/.bashrc effectue"

# Sourcer .aliases
add_if_missing "source ~/src/fancy_tools/.aliases"
echo ".aliases ajoute"

# Sourcer fancy_functions.sh
add_if_missing "source ~/src/fancy_tools/fancy_functions.sh"
echo "fancy_functions.sh ajoute"

# Ajouter ~/bin au PATH
add_if_missing 'export PATH="$HOME/bin:$PATH"'
echo "~/bin ajoute au PATH"

# Cloner le dépôt si absent
if [ ! -d "$SRC_DIR" ]; then
    mkdir -p ~/src
    git clone "$REPO_URL" "$SRC_DIR"
    echo "Depot clone dans ~/src/fancy_tools"
else
    echo "Depot deja present, clonage ignore"
fi

echo "Installation terminee ! Ouvre un nouveau terminal pour appliquer les changements."
