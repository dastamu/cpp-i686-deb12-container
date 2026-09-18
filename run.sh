#!/bin/bash

echo " Uruchamianie aplikacji w kontenerze:"

if [ -f "hello" ]; then
  #podman run --rm --platform linux/386 -v "$(pwd)":/src:Z "builder-deb12-32bit" ./hello
  podman run --rm -v "$(pwd)":/src:Z "builder-ol6-64bit" ./hello
else
  podman run --rm --platform linux/386 -v "$(pwd)":/src:Z "builder-deb12-32bit" ./build/hello
fi



