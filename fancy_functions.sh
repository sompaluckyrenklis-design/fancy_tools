unalias gco 2>/dev/null
gco() {
    if ! git rev-parse --is-inside-work-tree &>/dev/null; then
        echo "Erreur : ce répertoire n'est pas un dépôt Git."
        return 1
    fi
    if [ -z "$1" ]; then
        echo "Usage : gco 'votre message de commit'"
        return 1
    fi
    branch=$(git rev-parse --abbrev-ref HEAD)
    git commit -m "[$branch] $1"
}
