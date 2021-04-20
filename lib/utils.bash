#!/usr/bin/env bash

set -euo pipefail

# TODO: Ensure this is the correct GitHub homepage where releases can be downloaded for stardog.
GH_REPO="https://github.com/snowell/asdf-stardog"

fail() {
  echo -e "asdf-stardog: $*"
  exit 1
}

# curl_opts=(-fsSL)
curl_opts=(-fL)

list_all_versions() {
  jfrog rt s "stardog-binaries/**/stardog*zip" | jq '.[] | .path|capture("stardog-(?<v>\\d.+).zip") | .v'
  jfrog rt s "stardog-testing/nightly-develop-snapshot/binaries/complexible/stardog/stardog*zip" | jq '.[] | .path|capture("stardog-(?<v>\\d.+).zip") | .v'
}

download_release() {
  local version filename url snapUrl
  version="$1"
  filename="$2"

  # TODO: Adapt the release URL convention for stardog
  url="https://$artifactoryUsername:$artifactoryPassword@stardog.jfrog.io/artifactory/stardog-binaries/complexible/stardog/stardog-${version}.zip"
  snapUrl="https://$artifactoryUsername:$artifactoryPassword@stardog.jfrog.io/artifactory/stardog-testing/nightly-develop-snapshot/binaries/complexible/stardog/stardog-${version}.zip"

  echo "* Downloading stardog release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || curl "${curl_opts[@]}" -o "$filename" -C - "$snapUrl" || fail "Could not download $url"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="$3"

  if [ "$install_type" != "version" ]; then
    fail "asdf-stardog supports release installs only"
  fi

  # TODO: Adapt this to proper extension and adapt extracting strategy.
  local release_file="$ASDF_DOWNLOAD_PATH/stardog-$version.zip"
  (
    mkdir -p "$install_path"

    unzip "$release_file" -d "$install_path" || fail "Could not extract $release_file"
  #  rm "$release_file"

    mv $install_path/stardog-$version/* $install_path/
    rm -rf $install_path/stardog-$version
    # Get rid of extra shims
    rm $install_path/bin/*.bat $install_path/bin/*.exe

    # TODO: Asert stardog executable exists.
    local tool_cmd
    tool_cmd="$(echo "stardog version" | cut -d' ' -f1)"
    test -x "$install_path/bin/$tool_cmd" || fail "Expected $install_path/bin/$tool_cmd to be executable."

    echo "stardog $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error ocurred while installing stardog $version."
  )
}