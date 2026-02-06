#!/bin/bash
# Valider des entrées utilisateur
validate_email() {
    [[ $1 =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]
}

read -p "Email: " email
if validate_email "$email"; then
    echo "✓ Email valide"
else
    echo "✗ Email invalide"
fi
