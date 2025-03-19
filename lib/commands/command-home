#!/usr/bin/env bash

scope="$1"
homedir="$2"

if [ -z "$scope" ]; then
  if [ -z "$homedir" ]; then
    if [ -n "$STARDOG_HOME" ]; then
      echo -e "Stardog Home\t$STARDOG_HOME\t\$STARDOG_HOME"
    elif [ -f "$PWD/.stardog-home" ]; then
      read -r homedir < .stardog-home
      echo -e "Stardog Home\t$homedir\t$PWD/.stardog-home"
    elif [ -f "$HOME/.stardog-home" ]; then
      read -r homedir < $HOME/.stardog-home
      echo -e "Stardog Home\t$homedir\t$HOME/.stardog-home"
    else
      echo -e "No Stardog Home set"
    fi
    exit 0
  fi
fi

if [ ! -d "$homedir" ]; then
  echo -e "asdf-stardog: $homedir does not exist"
  exit 1
fi

case "$scope" in
  global)
    echo "$homedir" > ~/.stardog-home
    echo "Global STARDOG_HOME set to $homedir"
    ;;
  local)
    echo "$homedir" > .stardog-home
    echo "Local STARDOG_HOME set to $homedir"
    ;;
  *)
    echo -e "Usage: asdf stardog home {global|local} \$dir"
    exit 1
esac