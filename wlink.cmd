@echo off
setlocal enabledelayedexpansion
set WATCOM=%~dp0
set args=
:loop
if "%~1"=="" goto end
set "f=%~1"
set "f=!f:/=\!"
set "f=!f:`==!"
set "args=!args! !f!"
shift
goto loop
:end
"%WATCOM%binnt\wlink" @%WATCOM%binnt\wlink.lnk %args% || exit /B 1
