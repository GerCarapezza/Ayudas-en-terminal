#!/bin/bash

# Chequeo de argumentos
if [ $# -ne 3 ]; then
    echo "Uso: $0 <clave> <nuevo_valor> <directorio>"
    echo "Ejemplo: $0 PUERTO_ESCUCHA 9020 /home/utnso/configs"
    exit 1
fi

CLAVE=$1
NUEVO_VALOR=$2
DIRECTORIO=$3

# Verifica si el directorio existe
if [ ! -d "$DIRECTORIO" ]; then
    echo "El directorio '$DIRECTORIO' no existe"
    exit 1
fi

# Contador de archivos modificados
MODIFICADOS=0

# Recorre todos los .config del directorio y los modifica
for archivo in "$DIRECTORIO"/*.config; do
    # Verifica que existan archivos .config
    if [ ! -e "$archivo" ]; then
        echo "No se encontraron archivos .config en '$DIRECTORIO'"
        exit 1
    fi
    
    echo "Procesando $archivo ..."
    
    # Verifica si la clave existe en el archivo
    if grep -q "^${CLAVE}[[:space:]]*=" "$archivo"; then
        # Modifica la línea que contiene la clave
        sed -i "s|^${CLAVE}[[:space:]]*=.*|${CLAVE} = ${NUEVO_VALOR}|" "$archivo"
        echo "  ✓ Modificado: $CLAVE = $NUEVO_VALOR"
        ((MODIFICADOS++))
    else
        echo "  ⚠ La clave '$CLAVE' no existe en $archivo"
    fi
done

echo ""
echo "═══════════════════════════════════════"
echo "Resumen: $MODIFICADOS archivo(s) modificados"
echo "Clave modificada: $CLAVE = $NUEVO_VALOR"
echo "═══════════════════════════════════════"