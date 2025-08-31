#!/bin/bash

echo "===== Running Services on $(hostname) ====="
echo

# List sirf running services
systemctl list-units --type=service --state=running
