#!/usr/bin/env bash

scope="$1"
extdir="$2"

if [ -z "$scope" ]; then
  if [ -z "$extdir" ]; then
    if [ -n "$STARDOG_EXT" ]; then
      echo -e "Stardog Ext\t$STARDOG_EXT\t\$STARDOG_EXT"
    elif [ -f "$PWD/.stardog-ext" ]; then
      read -r extdir < .stardog-ext
      echo -e "Stardog Ext\t$extdir\t$PWD/.stardog-ext"
    elif [ -f "$HOME/.stardog-ext" ]; then
      read -r extdir < $HOME/.stardog-ext
      echo -e "Stardog Ext\t$extdir\t$HOME/.stardog-ext"
    else
      echo -e "No Stardog Ext set"
    fi
    exit 0
  fi
fi

if [ ! -d "$extdir" ]; then
  echo -e "asdf-stardog: $extdir does not exist"
  exit 1
fi

case "$scope" in
  global)
    echo "$extdir" > ~/.stardog-ext
    echo "Global STARDOG_EXT set to $extdir"
    ;;
  local)
    echo "$extdir" > .stardog-ext
    echo "Local STARDOG_EXT set to $extdir"
    ;;
  *)
    echo -e "Usage: asdf stardog ext {global|local} \$dir"
    exit 1
esac