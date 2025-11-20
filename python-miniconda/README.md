# Python + numpy using miniconda

## Edit the .def file

The `numpy-conda.def` file has to be edited to pick the architecture-specific
version of Miniconda: Intel x86_64 or ARM64 aarch64.

## Build the container

Submit the build script:

``` console
$ sbatch build_numpy-conda.sh
```

On the Grace Hopper nodes, just run the script directly on the command line:

``` console
$ ./build_numpy-conda.sh
INFO:    User not listed in /etc/subuid, trying root-mapped namespace
INFO:    The %post section will be run under the fakeroot command
INFO:    Starting build...
...
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
