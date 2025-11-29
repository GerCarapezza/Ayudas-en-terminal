#!/bin/bash

BIN="./home/utnso/tp-2025-2c-Here-we-go-again/query_control//bin/query_control"

echo "Levantando 100 queries en 4 grupos..."

# Grupo 1
for i in $(seq 1 25); do
    $BIN DEFAULT AGING_1 20 &
done
echo "Grupo 1 levantado (25 procesos)"

# Grupo 2
for i in $(seq 1 25); do
    $BIN DEFAULT AGING_2 20 &
done
echo "Grupo 2 levantado (25 procesos)"

# Grupo 3
for i in $(seq 1 25); do
    $BIN DEFAULT AGING_3 20 &
done
echo "Grupo 3 levantado (25 procesos)"

# Grupo 4
for i in $(seq 1 25); do
    $BIN DEFAULT AGING_4 20 &
done
echo "Grupo 4 levantado (25 procesos)"

echo "Listo: 100 queries levantados en segundo plano."