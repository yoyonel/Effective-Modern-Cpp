#!/bin/bash

mkdir -p ../build/Effective-Modern-Cpp/clang-3.5
cd ../build/Effective-Modern-Cpp/clang-3.5

# url: http://evadeflow.com/2013/11/static-analysis-with-clangscan-build/
cmake -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ ../../../Effective-Modern-Cpp/

cd -