
SET "CC=cl.exe"
SET "CXX=cl.exe"

ECHO "VISUAL_STUDIO_YEAR=%VISUAL_STUDIO_YEAR% VISUAL_STUDIO_VERSION=%VISUAL_STUDIO_VERSION%"

MKDIR "output_visual"
CD "output_visual"
cmake -G "Visual Studio %VISUAL_STUDIO_VERSION% %VISUAL_STUDIO_YEAR% Win64" -DCMAKE_BUILD_TYPE=Release ..\code 
REM cmake -G "Visual Studio 15 2017 Win64" -DCMAKE_BUILD_TYPE=Release ..\code 
cmake --build .

CD Debug
Test
CD ..\..