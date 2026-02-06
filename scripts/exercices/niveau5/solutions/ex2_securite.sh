#!/bin/bash
echo "=== SCAN DE SÉCURITÉ ==="
echo "Ports ouverts:"
ss -tuln | grep LISTEN | awk '{print $5}'

echo -e "\nFichiers SUID suspects:"
find / -perm -4000 -type f 2>/dev/null | head -5

echo -e "\nDernières connexions échouées:"
grep "Failed password" /var/log/auth.log 2>/dev/null | tail -3
