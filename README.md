# Fancy Tools

## Description
Ensemble de scripts Shell pour automatiser la configuration d'un environnement
de développement Git sur Ubuntu/Debian.

## Prérequis
- OS : Ubuntu / Debian
- Git installé (`sudo apt install git`)
- Bash ou Zsh

## Installation
1. Cloner le dépôt :
```bash
   git clone https://github.com/sompaluckyrenklis-design/fancy_tools.git ~/src/fancy_tools
```
2. Lancer le script d'installation :
```bash
   bash ~/src/fancy_tools/install.sh
```
3. Ouvrir un nouveau terminal pour appliquer les changements.

## Utilisation
| Commande | Description |
|----------|-------------|
| `gss` | Affiche le statut Git |
| `gpl` | Effectue un git pull |
| `gpu` | Effectue un git push |
| `gap` | Ajoute tous les fichiers modifiés |
| `gco 'message'` | Commit avec préfixe [branche] automatique |
| `updateFancyTools` | Met à jour les outils depuis GitHub |

## Structure du projet
```
fancy_tools/
├── .aliases              # Alias Git
├── fancy_functions.sh    # Fonction gco
├── install.sh            # Script d'installation
├── bin/
│   └── updateFancyTools  # Script de mise à jour
└── README.md             # Documentation
```
