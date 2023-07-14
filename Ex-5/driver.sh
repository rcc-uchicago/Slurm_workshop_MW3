#!/bin/bash

module unload openmpi
module unload cuda
module unload gcc

module load openmpi/1.4  
module load cuda/10.2
module load gcc/7.4.0
# Compiling the device code
nvcc -c dev.cu
#Compiling the host code
mpicc -c hostname.c

# Linking the host and device code
mpicc -o HostMap dev.o hostname.o -lcudart

#Submitting the job as batch script
sbatch mpijob.sh
