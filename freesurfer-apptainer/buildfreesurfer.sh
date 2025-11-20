#!/bin/bash
#SBATCH --partition=all
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=4G
#SBATCH --time=4:00:00
#SBATCH --job-name=buildfreesurfer
#SBATCH --output=buildfreesurfer-%j.out

# Final build of the SIF is slow. Test build took 1hr 20min.

# Do all work in local storage and copy it back out
FREESURFER_VERSION=8.1.0

cp ubuntu_22.04.sif ${TMP}
cp freesurfer.def ${TMP}
cp freesurfer_ubuntu22-${FREESURFER_VERSION}_amd64.deb ${TMP}
cd ${TMP}

apptainer build freesurfer.sif freesurfer.def

[[ -f freesurfer.sif ]] && cp -f freesurfer.sif ${SLURM_SUBMIT_DIR}

