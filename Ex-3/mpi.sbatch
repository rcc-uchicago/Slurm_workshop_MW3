#!/bin/bash

#Here is a comment
#SBATCH --time=00:10:00
#SBATCH --job-name=Myjob
#SBATCH --output=Myjob_%j.out
#SBATCH --error=Myjob_%j.err
#SBATCH --partition=caslake
#SBATCH --account=rcc-staff
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=2000

module load openmpi
make clean
make -f Makefile
#ulimit -s unlimited
ulimit -l unlimited
ulimit -u 10000
#Run your code
#sleep 60
mpirun  ./mpi_prog 

