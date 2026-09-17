#!/bin/bash

echo " Import obrazu kontenera:"

# Usunięcie starego obrazu kontenera
podman rmi "builder-deb12-32bit"
# Import nowego
podman load -i "builder-deb12-32bit.tar"
# Kasowanie osieroconych obrazów kontenerów
podman image prune -f
