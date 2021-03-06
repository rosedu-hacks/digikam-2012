@ECHO OFF

REM Adjust there the right path to KDE4 install directory.
SET KDE4_INSTALL_DIR=D:\4.5.4\kde4-mingw
SET TARGET_INSTALL_DIR=%KDE4_INSTALL_DIR%

SET PATH=%PATH%;%KDE4_INSTALL_DIR%\bin;%KDE4_INSTALL_DIR%\plugins
SET KDEDIRS=%KDE4_INSTALL_DIR%
SET KDE4_LIB_DIRS=%KDE4_INSTALL_DIR%
SET KDE4_LIB_DIR=%KDE4_INSTALL_DIR%
SET KDEROOT=%KDE4_INSTALL_DIR%
SET QTMAKESPEC=%KDE4_INSTALL_DIR%\mkspecs\win32-g++
SET QT_PLUGIN_PATH=%KDE4_INSTALL_DIR%\plugins
SET QTDIR=%KDE4_INSTALL_DIR%
SET QT_INSTALL_DIR=%KDE4_INSTALL_DIR%

REM Clean-up CMake cache file.
DEL /F CMakeCache.txt

REM MinGW : gcc for Windows.
cmake -G "MinGW Makefiles" . -DCMAKE_BUILD_TYPE=relwithdebinfo -DOpenCV_ROOT_DIR=%KDE4_INSTALL_DIR%/share/apps/cmake/modules -DCMAKE_INCLUDE_PATH=%KDE4_INSTALL_DIR%/include -DCMAKE_LIBRARY_PATH=%KDE4_INSTALL_DIR%/lib -DCMAKE_INSTALL_PREFIX=%TARGET_INSTALL_DIR% -DKDE4_INSTALL_DIR=%KDE4_INSTALL_DIR%
REM cmake -G "MinGW Makefiles" . -DCMAKE_BUILD_TYPE=debugfull -DOpenCV_DIR=%KDE4_INSTALL_DIR%/share/apps/cmake/modules -DCMAKE_INCLUDE_PATH=%KDE4_INSTALL_DIR%/include -DCMAKE_LIBRARY_PATH=%KDE4_INSTALL_DIR%/lib -DCMAKE_INSTALL_PREFIX=%TARGET_INSTALL_DIR%


