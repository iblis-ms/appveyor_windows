
SET "CC=cl.exe"
SET "CXX=cl.exe"

MKDIR "output_gcc"
CD "output_gcc"
cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ..\code 
cmake --build .
CD bin
Test
CD ../..
