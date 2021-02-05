setlocal EnableDelayedExpansion

rem Create Makefiles
cmake -G "NMake Makefiles" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      -DCMAKE_CXX_STANDARD=11
      -S . -B build
if errorlevel 1 exit 1

rem Build
cmake --build build
if errorlevel 1 exit 1

rem Install
cmake --install build --component scaffolder 
if errorlevel 1 exit 1