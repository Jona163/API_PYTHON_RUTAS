#!/bin/bash

# Resaltar archivos modificados
git status --short | while read -r line; do
    # Obtener estado y nombre del archivo
    status=$(echo "$line" | cut -c 1-2)
    file=$(echo "$line" | cut -c 4-)

    # Colores
    GREEN="\033[1;32m"
    RESET="\033[0m"

    # Mostrar según estado
    if [[ $status == "M " ]]; then
        echo -e "${GREEN}Modificado:${RESET} $file"
    elif [[ $status == "A " ]]; then
        echo -e "${GREEN}Añadido:${RESET} $file"
    else
        echo "$line"
    fi
done
