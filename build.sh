#!/bin/sh

# Fill in these environment variables.
# I have tested this code with CUDA 4.0, 4.1, and 4.2. 
# Only use Fermi-generation cards. Older cards won't work.

# If you're not sure what these paths should be, 
# you can use the find command to try to locate them.
# For example, NUMPY_INCLUDE_PATH contains the file
# arrayobject.h. So you can search for it like this:
# 
# find /usr -name arrayobject.h
# 
# (it'll almost certainly be under /usr)

export PATH=.local/bin:$PATH
export  PYTHONPATH=$PYTHONPATH:./local/lib

module load python/2.7.5
module load atlas/3.10.1

#easy_install --prefix=$HOME/local numpy

# CUDA toolkit installation directory.
export CUDA_INSTALL_PATH=/usr/local/cuda-5.5/

# CUDA SDK installation directory.
export CUDA_SDK_PATH=/usr/local/cuda-5.5/

# Python include directory. This should contain the file Python.h, among others.
export PYTHON_INCLUDE_PATH=/share/apps/python/2.7.5/include/python2.7/

# Numpy include directory. This should contain the file arrayobject.h, among others.
export NUMPY_INCLUDE_PATH=./local/lib/python2.6/site-packages/numpy-1.6.2-py2.6-linux-x86_64.egg/numpy/core/include/numpy/

# ATLAS library directory. This should contain the file libcblas.so, among others.
export ATLAS_LIB_PATH=/share/apps/atlas/3.10.1/lib/

make $*

