@echo off
set /p arg="Введите название команды:"
shift
help %arg% > %arg%.txt