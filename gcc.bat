
SET "CC=C:\mingw-w64\x86_64-6.3.0-posix-seh-rt_v5-rev1\mingw64\bin\gcc.exe"
SET "CXX=C:\mingw-w64\x86_64-6.3.0-posix-seh-rt_v5-rev1\mingw64\bin\g++.exe"
SET "PATH=C:\mingw-w64\x86_64-6.3.0-posix-seh-rt_v5-rev1\mingw64\bin;C:\Program Files (x86)\CMake\bin"

ECHO CC=%CC%
ECHO CXX=%CXX%
ECHO %PATH%

IF EXIST "output_gcc" rd /q /s "output_gcc"

IF EXIST %CXX% ECHO "CXX EXISTS"
IF EXIST %CC% ECHO "CC EXISTS"

MKDIR "output_gcc"
CD "output_gcc"
cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release ..\code 
cmake --build .
Test
CD ..
