#!/bin/bash
backup() {
    local src=$1
    local dest="backup_$(date +%Y%m%d)"
    mkdir -p "$dest"
    cp -r "$src" "$dest/"
    echo "✓ $src sauvegardé dans $dest"
}

backup "Documents"
