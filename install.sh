#!/bin/bash
# Create .kadi directory
mkdir ~/.kadi

# Move kadi.sh to .kadi directory
mv kadi/kadi.sh ~/.kadi/kadi.sh

# Add alias to .profile
echo "alias kadi='~/.kadi/kadi.sh'" >>~/.profile
