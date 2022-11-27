#!/usr/bin/env bash

set -euo pipefail

TOOL_NAME="abc"
TOOL_TEST="echo 'WRITE 0' | abc"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_all_versions() {
  echo "1.05.03"
}

download_release() {
  local version filename url
  version="$1"
  filename="$2"

  # TODO: Adapt the release URL convention for abc
  url="https://homepages.cwi.nl/~steven/abc/implementations/abc-unix.tar.gz"

  echo "* Downloading $TOOL_NAME release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="${3%/bin}/bin"
  local man_path="${3%/bin}/share/man"
  local lib_path="${3%/bin}/share/lib/abc"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  (
    mkdir -p "$install_path"
    mkdir -p "$lib_path"
    mkdir -p "$man_path"
    cd $ASDF_DOWNLOAD_PATH
    local defs=""
    if [[ $(uname) == 'Darwin' ]]; then
      sed -i -s 's/define TERMIO/undef TERMIO/' unix/os.h
      defs="-Wno-implicit-function-declaration -Wno-return-type"
    fi

    echo "* Compiling abc"
    make -f Makefile.unix DESTABC=$install_path DESTLIB=$3/share/lib/abc DESTMAN=$3/share/man DEFS="$defs" install >/dev/null 2>&1

    local tool_cmd
    tool_cmd="abc"
    test -x "$install_path/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error occurred while installing $TOOL_NAME $version."
  )
}
