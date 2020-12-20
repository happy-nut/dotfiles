#!/bin/bash

set -ex

# Save the current working directory in an environment variable.
INITIAL_WORKING_DIRECTORY=$(pwd)

cd "$(dirname "$0")"

# Detect OS.
case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    # Linux detected.
    echo 'Not suported yet.'
    exit 1
    ;;
  darwin*)
    # OS X detected.
    ./osx/install.sh
    ;;
  msys*)
    # Windows deteced.
    echo 'Not suported yet.'
    ;;
  *)
    echo 'Unknown OS.'
    exit 1
    ;;
esac

cd $INITIAL_WORKING_DIRECTORY

