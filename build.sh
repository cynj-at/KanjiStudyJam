#!/bin/bash

rm -r build
mkdir build
cd build
cmake ..
cmake -DCMAKE_RUNTIME_OUTPUT_DIRECTORY=../ ..
make
cd ..
./KanjiStudyJam