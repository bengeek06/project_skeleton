#!/bin/sh

# apply k&r style to all C source files
indent -kr -no-tabs src/*.c include/*.h

# apply stroustrup style to all C++ source files
astyle -A4 tests/*.cpp
