#!/bin/bash

# Definiowanie menu wyboru
echo " Select container image:"

options=("Debian 12 32-bit" "OracleLinux 6 64-bit" "Anuluj")
#options=("Debian6" "OracleLinux6" "Exit") 

# Pętla select generuje ponumerowane menu na podstawie tablicy 'options'
select opt in "${options[@]}"
do
  case $opt in
    "Debian 12 32-bit")
      echo "   Budowa obrazu kontenera z Debian 12 32-bit:"
      podman build --platform linux/386 -t "builder-deb12-32bit" .
      ;;
    "OracleLinux 6 64-bit")
      echo "   Budowa obrazu kontenera z OracleLinux 6 64-bit:"
      podman build -f Dockerfile.ol6 -t "builder-ol6-64bit" .
      ;;
    "Anuluj")
      echo "   Anulowano budowę obrazu kontenera"
      break # Przerywa pętlę i kończy skrypt
      ;;
    *) 
      echo "   Nieprawidłowy wybór. Wybierz numer od 1 do ${#options[@]}."
      ;;
  esac
  
  echo "   Wybierz kolejną opcję lub anuluj (${#options[@]}):"
done

echo "   Twoje obrazy kontenerów:"
podman images
