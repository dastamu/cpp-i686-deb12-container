#!/bin/bash

echo " Kompilacja aplikacji:"

#podman run --rm --platform linux/386 -v "$(pwd)":/src:Z "builder-deb12-32bit" make

podman run --rm -v "$(pwd)":/src:Z "builder-ol6-64bit" make