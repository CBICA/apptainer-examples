#!/bin/bash
#SBATCH --partition=all
#SBATCH --mem-per-cpu=4G
#SBATCH --time=2:30:00
#SBATCH --job-name=predownload
#SBATCH --output=predownload-%j.out

FREESURFER_VERSION=8.1.0

# download ubuntu jammy (22.04) SIF if not already downloaded

module load containers/ubuntu/22.04

[[ ! -f ubuntu_22.04.sif ]] && cp $UBUNTUSIF .

# NOTE wget -c will not re-download existing file

wget -c https://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/${FREESURFER_VERSION}/freesurfer_ubuntu22-${FREESURFER_VERSION}_amd64.deb

