# Python + numpy using miniconda

## Build the container

Submit the build script:

``` console
$ sbatch build_numpy-conda.sh
```

## Run Python from the container

``` console
$ apptainer run numpy-conda.sif python3 test_compute.py
numpy version: 2.3.4

a =
[[0.15563264 0.30518228 0.67236014]
 [0.29527415 0.64357075 0.6591398 ]
 [0.04671864 0.18235228 0.96704644]]

det(a) = 0.01639532114280694
```
