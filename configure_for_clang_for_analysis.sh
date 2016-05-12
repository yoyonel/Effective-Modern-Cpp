#!/bin/bash

mkdir -p ../build/Effective-Modern-Cpp/clang-analysis
cd ../build/Effective-Modern-Cpp/clang-analysis

# url: http://evadeflow.com/2013/11/static-analysis-with-clangscan-build/
#scan-build cmake -DCMAKE_CXX_FLAGS=-fsyntax-only -DCMAKE_C_COMPILER=/usr/share/clang/scan-build-3.5/ccc-analyzer -DCMAKE_CXX_COMPILER=/usr/share/clang/scan-build-3.5/c++-analyzer ../../../Effective-Modern-Cpp/
scan-build cmake -DCMAKE_C_COMPILER=/usr/share/clang/scan-build-3.5/ccc-analyzer -DCMAKE_CXX_COMPILER=/usr/share/clang/scan-build-3.5/c++-analyzer ../../../Effective-Modern-Cpp/

cd -