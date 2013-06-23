@echo off

echo.
echo ============================
echo Batch for Blocking USB Virus
echo       Written by Mabin
echo ============================
echo.

echo This Batch file will remove Recycle Bin and Autorun File in your USB Storage. If you don't want to remove that, please press 'Ctrl + C'.
echo.
echo Please Press Any Key for Continue...
pause > nul

cd \

echo.
echo Removing Recycle Bin...
rmdir recycled /s /q 2> nul
rmdir recycler /s /q 2> nul
echo Removing Autorun File...
del autorun.inf /f /q 2> nul

echo.
echo Making Fake Recycle Bin...
copy nul RECYCLED >nul 2> nul
copy nul RECYCLER >nul 2> nul
attrib -a +r +h +s RECYCLE* 2> nul
echo Making Fake Autorun...
mkdir autorun.inf >nul 2> nul
attrib -a +r +h +s autorun.inf 2> nul
echo.
echo Done. :D
echo.
echo Please Press Any Key for Exit...
pause > nul
