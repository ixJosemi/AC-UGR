#!/bin/bash

echo "secuencial"
./pmm-secuencial 100
./pmm-secuencial 250
./pmm-secuencial 500
./pmm-secuencial 1000
./pmm-secuencial 1500

echo "paralelo con 4 threads"
export OMP_NUM_THREADS=4

./pmm-OpenMP 100
./pmm-OpenMP 250
./pmm-OpenMP 500
./pmm-OpenMP 1000
./pmm-OpenMP 1500
