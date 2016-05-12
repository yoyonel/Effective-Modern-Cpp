#!/bin/bash

source set_env_for_compiler.sh

mkdir -p ../build/Effective-Modern-Cpp/$COMPILER

cd ../build/Effective-Modern-Cpp/$COMPILER

cmake ../../../Effective-Modern-Cpp/

cd -