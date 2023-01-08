#!/bin/bash

# kadi add package [optional version]
add() {
  if grep -q "^$1=" requirements.txt; then
    echo "Package already exists in requirements.txt"
  else
    if [ -z "$2" ]; then
      if pip install "$1"; then
        echo "$1" >>requirements.txt
      else
        echo "Error installing package"
      fi
    else
      if pip install "$1"=="$2"; then
        echo "$1"=="$2" >>requirements.txt
      else
        echo "Error installing package"
      fi
    fi
  fi
}

# kadi update
update() {
  pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U
  # Update requirements.txt
  pip freeze >requirements.txt
}

# kadi upgrade package [new version]
upgrade() {
  if pip install "$1"=="$2"; then
    sed -i "s/^$1=.*/$1==$2/g" requirements.txt
  else
    echo "Error installing package"
  fi
}

# kadi remove package
remove() {
  if pip uninstall "$1"; then
    sed -i "/^$1=.*/d" requirements.txt
  else
    echo "Error removing package"
  fi
}

# kadi install
install() {
  pip install -r requirements.txt
}

case "$1" in
"add")
  add "$2" "$3"
  ;;
"update")
  update
  ;;
"upgrade")
  upgrade "$2" "$3"
  ;;
"remove")
  remove "$2"
  ;;
"install")
  install
  ;;
esac
