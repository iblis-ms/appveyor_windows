
SET "PATH=C:\mingw-w64\x86_64-6.3.0-posix-seh-rt_v5-rev1\mingw64\bin;C:\Program Files (x86)\CMake\bin"
SET "CC=cl.exe"
SET "CXX=cl.exe"

ECHO "VISUAL_STUDIO_YEAR=%VISUAL_STUDIO_YEAR% VISUAL_STUDIO_VERSION=%VISUAL_STUDIO_VERSION%"

IF EXIST "output_visual" rd /q /s "output_visual"

MKDIR "output_visual"
CD "output_visual"
cmake -G "Visual Studio %VISUAL_STUDIO_VERSION% %VISUAL_STUDIO_YEAR% Win64" -DCMAKE_BUILD_TYPE=Release ..\code 
REM cmake -G "Visual Studio 15 2017 Win64" -DCMAKE_BUILD_TYPE=Release ..\code 
cmake --build .

CD Debug
Test
CD ..\..