#!/bin/bash
# Optimisation: traiter 1M lignes
optimize() {
    # Mauvais: boucle sur chaque ligne
    # while read line; do echo $line; done < file
    
    # Bon: utiliser awk/sed
    awk '{print $1}' huge_file.txt > output.txt
}

time optimize
