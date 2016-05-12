#!/bin/bash

source set_env_for_compiler.sh

sudo update-alternatives --config $COMPILER_NAME
sudo update-alternatives --config $LINKER_NAME
