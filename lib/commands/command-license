#!/usr/bin/env bash

scope="$1"
licpath="$2"

if [ -z "$scope" ]; then
  if [ -z "$licpath" ]; then
    if [ -n "$STARDOG_LICENSE_PATH" ]; then
      echo -e "Stardog Ext\t$STARDOG_LICENSE_PATH\t\$STARDOG_LICENSE_PATH"
    elif [ -f "$PWD/.stardog-license-path" ]; then
      read -r licpath < .stardog-license-path
      echo -e "Stardog Ext\t$licpath\t$PWD/.stardog-license-path"
    elif [ -f "$HOME/.stardog-license-path" ]; then
      read -r licpath < $HOME/.stardog-license-path
      echo -e "Stardog Ext\t$licpath\t$HOME/.stardog-license-path"
    else
      echo -e "No Stardog License Path set"
    fi
    exit 0
  fi
fi

if [ ! -f "$licpath" ]; then
  echo -e "asdf-stardog: $licpath does not exist"
  exit 1
fi

case "$scope" in
  global)
    echo "$licpath" > ~/.stardog-license-path
    echo "Global STARDOG_LICENSE_PATH set to $licpath"
    ;;
  local)
    echo "$licpath" > .stardog-license-path
    echo "Local STARDOG_LICENSE_PATH set to $licpath"
    ;;
  *)
    echo -e "Usage: asdf stardog license {global|local} \$file"
    exit 1
esac