#!/bin/bash

#SBATCH --time=1:00:00
#SBATCH --time=00:10:00
##SBATCH --partition=gpu2
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=2000
#SBATCH --job-name=MyJob
#SBATCH --account=rcc-staff
#SBATCH --output=MyJob_%j.out
#SBATCH --error=MyJob_%j.err


module load cuda/10.2
make clean
make -f Makefile

./deviceQ

