#!/bin/bash
while true; do
    echo "1) Date  2) User  3) Quitter"
    read -p "Choix: " choix
    case $choix in
        1) date ;;
        2) whoami ;;
        3) exit 0 ;;
        *) echo "Invalide" ;;
    esac
done
