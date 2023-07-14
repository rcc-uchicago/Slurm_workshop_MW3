#!/bin/bash

#SBATCH -t 00:30:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --partition=gpu
#SBATCH --gres=gpu:2
#SBATCH --account=rcc-staff
##SBATCH --nodelist=gpu1203,gpu1204
#SBATCH --job-name=MyJob
#SBATCH --output=MyJob-%j.out
#SBATCH --error=MyJob-%j.err
##SBATCH --qos=stafftest

ulimit -l unlimited
ulimit -u 10000

mpirun ./HostMap
