#!/bin/bash

echo " Kompilacja aplikacji:"

podman run --rm --platform linux/386 -v "$(pwd)":/src:Z "builder-deb12-32bit" make
