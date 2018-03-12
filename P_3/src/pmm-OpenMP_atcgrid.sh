#!/bin/bash

#PBS -N pmm-secuencial
#PBS -q ac
echo "Id$PBS_O_WORKDIR usuario del trabajo: $PBS_O_LOGNAME"
echo "Id$PBS_O_WORKDIR del trabajo: $PBS_JOBID"
echo "Nombre del trabajo especificado por usuario: $PBS_JOBNAME"
echo "Nodo que ejecuta qsub: $PBS_O_HOST"
echo "Directorio en el que se ha ejecutado qsub: $PBS_O_WORKDIR"
echo "Cola: $PBS_QUEUE"
echo "Nodos asignados al trabajo:"
cat $PBS_NODEFILE

export OMP_DYNAMIC=FALSE

echo "Tiempo secuencial con 100"
$PBS_O_WORKDIR/pmm-secuencial 100

echo "Tiempo secuencial con 250"
$PBS_O_WORKDIR/pmm-secuencial 250

echo "Tiempo secuencial con 500"
$PBS_O_WORKDIR/pmm-secuencial 500

echo "Tiempo secuencial con 1000"
$PBS_O_WORKDIR/pmm-secuencial 1000

echo "Tiempo secuencial con 1500"
$PBS_O_WORKDIR/pmm-secuencial 1500

export OMP_NUM_THREADS=4
echo "Tiempo con cuatro threads con 100"
$PBS_O_WORKDIR/pmm-OpenMP 100

echo "Tiempo con cuatro threads con 250"
$PBS_O_WORKDIR/pmm-OpenMP 250

echo "Tiempo con cuatro threads con 500"
$PBS_O_WORKDIR/pmm-OpenMP 500

echo "Tiempo con cuatro threads con 1000"
$PBS_O_WORKDIR/pmm-OpenMP 1000

echo "Tiempo con cuatro threads con 1500"
$PBS_O_WORKDIR/pmm-OpenMP 1500
