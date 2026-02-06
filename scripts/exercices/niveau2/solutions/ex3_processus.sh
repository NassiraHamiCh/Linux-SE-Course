#!/bin/bash
echo "=== Processus de $USER ==="
ps aux | grep "^$USER" | head -10
