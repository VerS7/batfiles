@echo off
set "file=file.txt"
set "IP=string"
shift
for /f "usebackq tokens=4" %%i in ("%file%") do (
 set/a m+=1
 if "%%i" equ "%IP%" (
  for /f "usebackq tokens=4" %%j in ("%file%") do (
   set/a n+=1
   for /f %%k in ('
    set/a n-m+2
   ') do (
    if %%k equ 0 (
     set ID=%%j
     goto #
    )
   )
  )
 )
)
:#
echo Session ID = %ID%
pause