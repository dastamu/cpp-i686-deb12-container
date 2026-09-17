#!/bin/bash

echo " Budowa kontenera i aplikacji:"

podman build --platform linux/386 -t "builder-deb12-32bit" .

podman images