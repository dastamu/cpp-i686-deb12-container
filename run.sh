#!/bin/bash

echo " Uruchamianie aplikacji w kontenerze:"

podman run --rm --platform linux/386 -v "$(pwd)":/src:Z "builder-deb12-32bit" ./hello

