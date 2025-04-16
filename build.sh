#!/bin/bash

rm -r build
mkdir build
cd build
cmake ..
# Setze das Zielverzeichnis für die ausführbare Datei
cmake -DCMAKE_RUNTIME_OUTPUT_DIRECTORY=../ ..
make
cd ..
./KanjiStudyJam