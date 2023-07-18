#!/bin/bash
#SBATCH --job-name=hybrid
#SBATCH --output=hybrid_%j.out
#SBATCH --error=hybrid_%j.err
#SBATCH --time=00:10:00
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=8
#SBATCH --account=rcc-staff
#SBATCH --partition=caslake
##SBATCH --constraint=edr

ulimit -l unlimited
ulimit -u 10000

# Load the default OpenMPI module.
module load openmpi
make clean
make -f Makefile

# Set OMP_NUM_THREADS to the number of CPUs per task we asked for.
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK



mpirun ./mpomp
