#!/bin/bash

# Here is a comment
#SBATCH --time=00:10:00
#SBATCH --account=rcc-staff
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=caslake
#SBATCH --mem-per-cpu=2000
#SBATCH --job-name=MyJob
#SBATCH --output=MyJob_%j.out
#SBATCH --error=MyJob_%j.err

echo “Hello”
sleep 1m
echo "Finished"
