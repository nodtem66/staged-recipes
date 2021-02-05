rem Create Makefiles
cmake -g Ninja ^
      -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_CXX_STANDARD=11 \ ^
      -S . -B build

rem Build
cmake --build build

rem Install
cmake --install build --component scaffolder --prefix=%PREFIX%
dir %PREFIX%\
dir %PREFIX%\bin

rem Test / Check ?
rem There is no make check/test