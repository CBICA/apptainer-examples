# freesurfer-apptainer

Builds an Apptainer container to hold Freesurfer 8.1.0.

There is no ARM64 aarch64 version.

## CAUTION

The FreeSurfer package file is large (~ 9 GB), so repeated
downloads will cause the FreeSurfer providers to block any
connections from CUBIC.

## Instructions for building the Freesurfer Apptainer

- there are 2 job scripts to be submitted to Slurm
  - `predownload.sh` - downloads Ubuntu SIF and FreeSurfer DEB
  - `buildfreesurfer.sh` - builds the FreeSurfer Apptainer
- to build, submit the jobs one after the other:

```console
$ job1=$( sbatch --parsable predownload.sh)
$ sbatch --dependency=afterok:${job1} buildfreesurfer.sh
```
