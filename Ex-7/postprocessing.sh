#!/bin/bash

#SBATCH --time=00:05:00
#SBATCH --mem=1G
#SBATCH --job-name=postprocessing
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err
#SBATCH --nodes=1
#SBATCH --account=rcc-staff

# Run a command
echo “Doing some postprocessing”
