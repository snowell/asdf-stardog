#!/usr/bin/env bash

if [ -n "$STARDOG_HOME" ]; then
  echo -e "Stardog Home\t$STARDOG_HOME\t\$STARDOG_HOME"
elif [ -f "$PWD/.stardog-home" ]; then
  read -r homedir < .stardog-home
  echo -e "Stardog Home\t$homedir\t$PWD/.stardog-home"
elif [ -f "$HOME/.stardog-home" ]; then
  read -r homedir < $HOME/.stardog-home
  echo -e "Stardog Home\t$homedir\t$HOME/.stardog-home"
else
  echo -e "Stardog Home\t[Not set]"
fi

if [ -n "$STARDOG_EXT" ]; then
  echo -e "Stardog Ext\t$STARDOG_EXT\t\$STARDOG_EXT"
elif [ -f "$PWD/.stardog-ext" ]; then
  read -r extdir < .stardog-ext
  echo -e "Stardog Ext\t$extdir\t$PWD/.stardog-ext"
elif [ -f "$HOME/.stardog-ext" ]; then
  read -r extdir < $HOME/.stardog-ext
  echo -e "Stardog Ext\t$extdir\t$HOME/.stardog-ext"
else
  echo -e "Stardog Ext\t[Not set]"
fi

if [ -n "$STARDOG_LICENSE_PATH" ]; then
  echo -e "Stardog License\t$STARDOG_LICENSE_PATH\t\$STARDOG_LICENSE_PATH"
elif [ -f "$PWD/.stardog-license-path" ]; then
  read -r licpath < .stardog-license-path
  echo -e "Stardog License\t$licpath\t$PWD/.stardog-license-path"
elif [ -f "$HOME/.stardog-license-path" ]; then
  read -r licpath < $HOME/.stardog-license-path
  echo -e "Stardog License\t$licpath\t$HOME/.stardog-license-path"
else
  echo -e "Stardog License\t[Not set]"
fi
