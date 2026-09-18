#!/bin/bash

echo " Czyszczenie kompilacji aplikacji:"

podman run --rm --platform linux/386 -v "$(pwd)":/src:Z "builder-deb12-32bit" make clean

rm -rf build
