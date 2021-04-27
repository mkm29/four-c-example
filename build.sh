#!/bin/sh

set -e

git clone https://github.com/memsharded/four-c-example.git
cd four-c-example
mkdir build
cd build
 
conan install .. -s compiler=gcc -s compiler.version=4.8 -s compiler.libcxx=libstdc++11 --build
cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++
cmake --build .
