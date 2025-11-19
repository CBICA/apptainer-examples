#!/bin/bash
#SBATCH --partition=short
#SBATCH --mem=16G
#SBATCH --time=00:30:00

# build an apptainer based on Ubuntu 24.04

module load containers/ubuntu/24.04

# copy the ubuntu_24.04.sif file if not present
[[ ! -f ubuntu_24.04.sif ]] && cp $UBUNTUSIF .

apptainer build numpy.sif numpy.def
