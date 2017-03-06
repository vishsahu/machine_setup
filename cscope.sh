#!/bin/sh
rm -rf cscope*
find $PWD -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" -o -name "*.py" > $PWD/cscope.files
cscope -b -q -k $PWD/cscope.files
