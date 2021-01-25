#!/usr/bin/env bash

if [ -n "$STARDOG_HOME" ]; then
  echo -e "Stardog Home\t$STARDOG_HOME\t\$STARDOG_HOME"
elif [ -f "$PWD/.stardog-home" ]; then
  read -r homedir < .stardog-home
  echo -e "Stardog Home\t$homedir\t$PWD/.stardog-home"
elif [ -f "$HOME/.stardog-home" ]; then
  read -r homedir < $HOME/.stardog-home
  echo -e "Stardog Home\t$homedir\t$HOME/.stardog-home"
fi

if [ -n "$STARDOG_EXT" ]; then
  echo -e "Stardog Ext\t$STARDOG_EXT\t\$STARDOG_EXT"
elif [ -f "$PWD/.stardog-ext" ]; then
  read -r extdir < .stardog-ext
  echo -e "Stardog Ext\t$extdir\t$PWD/.stardog-ext"
elif [ -f "$HOME/.stardog-ext" ]; then
  read -r extdir < $HOME/.stardog-ext
  echo -e "Stardog Ext\t$extdir\t$HOME/.stardog-ext"
fi