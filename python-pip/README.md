# Python + numpy using pip

## Build the container

Submit the build script:

``` console
$ sbatch build_numpy-pip.sh
```

## Run Python from the container

``` console
$ apptainer run numpy-pip.sif python3 test_compute.py
numpy version: 2.3.5

a =
[[0.9725007  0.31192923 0.09249497]
 [0.37273473 0.63351842 0.97099228]
 [0.50488299 0.96326217 0.63093467]]

det(a) = -0.43769510426706343
```
