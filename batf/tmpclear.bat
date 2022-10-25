@echo off 
:e1
set way=C:\
cd /D %way%
FOR /R %way% %%i IN (*.tmp %2) DO (@echo %%i > con | del %%i)
if not "%way%"=="" goto e1 
echo Temp clear done! & pause & exit