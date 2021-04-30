#!/bin/sh

set -e

mkdir build && cd build

conan install .. -s compiler=clang -s compiler.version=10 -s compiler.libcxx=libstdc++11 --build
cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++
cmake --build .
