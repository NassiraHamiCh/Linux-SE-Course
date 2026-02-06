#!/bin/bash
set -euo pipefail
trap 'echo "Erreur ligne $LINENO"' ERR

deploy() {
    echo "🚀 Déploiement..."
    git pull origin main || return 1
    npm install || return 1
    npm test || return 1
    systemctl restart app || return 1
    echo "✓ Déploiement réussi"
}

deploy && echo "SUCCESS" || echo "FAILED"
