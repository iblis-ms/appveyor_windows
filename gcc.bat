
SET "CC=C:\mingw-w64\x86_64-6.3.0-posix-seh-rt_v5-rev1\mingw64\bin\gcc.exe"
SET "CXX=C:\mingw-w64\x86_64-6.3.0-posix-seh-rt_v5-rev1\mingw64\bin\g++.exe"

ECHO CC=%CC%
ECHO CXX=%CXX%

MKDIR "output_gcc"
CD "output_gcc"
cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ..\code 
cmake --build .
Test
CD ..
