#!/bin/bash

echo " Zapisanie obrazu kontenera:"

podman save -o "builder-deb12-32bit.tar" "builder-deb12-32bit"
