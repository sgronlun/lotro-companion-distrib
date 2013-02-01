@echo off
set NAME=companion
set JAVA_MIN_MEM=8M
set JAVA_MAX_MEM=32M
rem set LANGUAGE=en
rem set DISTRIB_DEBUG=true

%~d0%
cd %~dp0%
call appLauncher.bat %*
