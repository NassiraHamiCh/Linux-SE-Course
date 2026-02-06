#!/bin/bash
echo "=== Top 5 processus CPU ==="
ps aux | sort -nrk 3 | head -5 | awk '{print $2, $3"%", $11}'
