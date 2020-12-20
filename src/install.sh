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

