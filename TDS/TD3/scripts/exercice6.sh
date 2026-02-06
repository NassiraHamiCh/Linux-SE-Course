#!/bin/bash
# TD3 - Exercice 6 : Menu interactif
# Auteur : Filière IIA S3
# Description : Menu avec plusieurs options système

# Fonction pour afficher le menu
afficher_menu() {
    echo ""
    echo "============================================"
    echo "         MENU PRINCIPAL"
    echo "============================================"
    echo "  1. Afficher la date et l'heure"
    echo "  2. Afficher l'utilisateur courant"
    echo "  3. Afficher le répertoire courant"
    echo "  4. Lister les fichiers du répertoire"
    echo "  5. Afficher l'espace disque disponible"
    echo "  6. Quitter le programme"
    echo "============================================"
}

# Boucle principale du menu
while true
do
    afficher_menu
    read -p "Votre choix (1-6) : " choix
    echo ""
    
    case $choix in
        1)
            echo "=== Date et heure ==="
            echo "Date actuelle : $(date '+%d/%m/%Y')"
            echo "Heure actuelle : $(date '+%H:%M:%S')"
            echo "Date complète : $(date)"
            ;;
        2)
            echo "=== Utilisateur courant ==="
            echo "Nom d'utilisateur : $USER"
            echo "UID : $(id -u)"
            echo "GID : $(id -g)"
            echo "Groupes : $(groups)"
            ;;
        3)
            echo "=== Répertoire courant ==="
            echo "Chemin complet : $(pwd)"
            echo "Nombre de fichiers : $(ls -1 | wc -l)"
            ;;
        4)
            echo "=== Liste des fichiers ==="
            ls -lh
            echo ""
            echo "Total : $(ls -1 | wc -l) éléments"
            ;;
        5)
            echo "=== Espace disque ==="
            echo "Espace du répertoire courant :"
            df -h .
            echo ""
            echo "Résumé :"
            df -h . | tail -1 | awk '{print "Utilisé: "$3" / Disponible: "$4" / Total: "$2}'
            ;;
        6)
            echo "============================================"
            echo "    Merci d'avoir utilisé ce programme !"
            echo "          Au revoir ! 👋"
            echo "============================================"
            exit 0
            ;;
        *)
            echo "❌ ERREUR : Choix invalide !"
            echo "Veuillez choisir un nombre entre 1 et 6."
            ;;
    esac
    
    # Pause avant de réafficher le menu
    echo ""
    read -p "Appuyez sur Entrée pour continuer..."
    clear  # Efface l'écran (optionnel)
done
