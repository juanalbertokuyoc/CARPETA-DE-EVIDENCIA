#!/bin/bash

# Crear automáticamente la estructura de directorios
directorio_raiz="/tmp/mi_arbol"
niveles=2
directorios_por_nivel=2

for ((i = 1; i <= niveles; i++)); do
    for ((j = 1; j <= directorios_por_nivel; j++)); do
        directorio="$directorio_raiz/nivel_$i/directorio_$j"
        mkdir -p "$directorio"
        echo "Directorio creado: $directorio"
    done
done

# Función para el saludo con variables
saludo_con_variables() {
    read -p "Ingrese su nombre: " nombre
    echo "Hola, $nombre. ¡Bienvenido al programa!"
}

while true; do
    clear
    echo "Menú Principal"
    echo "1. Crear un árbol de directorios"
    echo "2. Ejecutar el script de Hola Mundo"
    echo "3. Ejecutar el script de Saludo usando variables"
    echo "4. Salir"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo "Árbol de directorios ya creado en $directorio_raiz"
            ;;
        2)
            echo "Ejecutando el script de Hola Mundo..."
            ;;
        3)
            saludo_con_variables
            ;;
        4)
            echo "Saliendo del programa."
            exit 0
            ;;
        *)
            echo "Opción no válida. Por favor, seleccione una opción válida."
            ;;
    esac

    read -p "Presione Enter para continuar..."
done

