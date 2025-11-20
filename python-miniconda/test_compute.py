#!/usr/bin/env python3
# Filename: test_compute.py
import numpy as np

# Trivial check of numpy

print(f'numpy version: {np.__version__}')
print()

a = np.random.rand(3, 3)
print(f'a = \n{a}')
print()
print(f'det(a) = {np.linalg.det(a)}')
