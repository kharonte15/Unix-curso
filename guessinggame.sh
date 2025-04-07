#!/usr/bin/env bash
# File: guessinggame.sh

# Función para preguntar al usuario
function ask_user {
  echo "¿Cuántos archivos hay en el directorio actual?"
  read guess
}

# Función para contar los archivos
function count_files {
  local count=$(ls -1 | wc -l)
  echo $count
}

# Obtener el número correcto de archivos
file_count=$(count_files)

# Bucle para seguir preguntando hasta acertar
while true; do
  ask_user

  # Validar que el usuario ingrese un número
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Por favor, ingrese un número válido."
    continue
  fi

  if [[ $guess -lt $file_count ]]; then
    echo "Demasiado bajo. Intenta de nuevo."
  elif [[ $guess -gt $file_count ]]; then
    echo "Demasiado alto. Intenta de nuevo."
  else
    echo "¡Felicidades! Has adivinado correctamente."
    break
  fi
done
