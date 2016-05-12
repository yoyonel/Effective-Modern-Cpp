#!/bin/bash

source set_env_for_compiler.sh

echo "COMPILER_NAME: $COMPILER_NAME"
echo "LINKER_NAME: $COMPILER_NAME"
echo "- Version: $COMPILER_MAJOR_VERSION.$COMPILER_MINOR_VERSION"

# urls: 
# - http://www.linux-france.org/article/memo/node8.html
# - http://stackoverflow.com/questions/5188267/checking-the-gcc-version-in-a-makefile
CURRENT_COMPILER_VERSION=`$COMPILER_NAME -dumpversion`
CURRENT_COMPILER_MAJOR_VERSION=`echo $CURRENT_COMPILER_VERSION | cut -f1 -d.`
CURRENT_COMPILER_MINOR_VERSION=`echo $CURRENT_COMPILER_VERSION | cut -f2 -d.`
#CURRENT_COMPILER_BUILD_VERSION=`echo $CURRENT_COMPILER_VERSION | cut -f3 -d.`
# echo "$CURRENT_COMPILER_MAJOR_VERSION$CURRENT_COMPILER_MINOR_VERSION"
# echo "$COMPILER_MAJOR_VERSION$COMPILER_MINOR_VERSION"
echo "Current compiler version activate: $CURRENT_COMPILER_MAJOR_VERSION.$CURRENT_COMPILER_MINOR_VERSION"
if [ "$CURRENT_COMPILER_MAJOR_VERSION$CURRENT_COMPILER_MINOR_VERSION" != "$COMPILER_MAJOR_VERSION$COMPILER_MINOR_VERSION" ]
	then
	echo "The version of compiler differ, please choose the right version ..."
	. update_alternatives.sh
fi

mkdir -p ../build/Effective-Modern-Cpp/$COMPILER

cd ../build/Effective-Modern-Cpp/$COMPILER

cmake ../../../Effective-Modern-Cpp/

cd -