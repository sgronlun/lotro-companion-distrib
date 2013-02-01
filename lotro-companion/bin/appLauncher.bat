@echo off
if not "%ECHO%" == "" echo %ECHO%

setlocal
set DIRNAME=%~dp0%
set PROGNAME=%~nx0%
set ARGS=%*

title %NAME%

goto BEGIN

:warn
    echo %PROGNAME%: %*
goto :EOF

:BEGIN

rem # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

if not "%DISTRIB_HOME%" == "" (
    call :warn Ignoring predefined value for DISTRIB_HOME
)
set DISTRIB_HOME=%DIRNAME%..
if not exist "%DISTRIB_HOME%" (
    call :warn DISTRIB_HOME is not valid: %DISTRIB_HOME%
    goto END
)

if "%JAVA_MAX_MEM%" == "" set JAVA_MAX_MEM=64M 

if "%JAVA_MIN_MEM%" == "" set JAVA_MIN_MEM=16M 

set DEFAULT_JAVA_OPTS=-Xms%JAVA_MIN_MEM% -Xmx%JAVA_MAX_MEM% -Dcom.sun.management.jmxremote
set CLASSPATH=%DISTRIB_HOME%\conf
set DEFAULT_JAVA_DEBUG_OPTS=-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005

rem Support for loading native libraries
set PATH=%PATH%;%DISTRIB_HOME%\jni

rem Setup the Java Virtual Machine
if "%JAVA%" == "" set JAVA="java"

if "%JAVA_OPTS%" == "" set JAVA_OPTS=%DEFAULT_JAVA_OPTS%

if not "%LANGUAGE%" == "" set JAVA_OPTS=%JAVA_OPTS% -Duser.language=%LANGUAGE%

if "%DISTRIB_DEBUG%" == "" goto :DISTRIB_DEBUG_END
    rem Use the defaults if JAVA_DEBUG_OPTS was not set
    if "%JAVA_DEBUG_OPTS%" == "" set JAVA_DEBUG_OPTS=%DEFAULT_JAVA_DEBUG_OPTS%
    
    set "JAVA_OPTS=%JAVA_DEBUG_OPTS% %JAVA_OPTS%"
    call :warn Enabling Java debug options: %JAVA_DEBUG_OPTS%
:DISTRIB_DEBUG_END

rem Setup the classpath
set CLASSPATH=%CLASSPATH%;%DISTRIB_HOME%\lib\classworlds-1.0.1.jar

rem Setup boot options
set CLASSWORLDS_CONF=%DISTRIB_HOME%\conf\%NAME%.conf
set BOOT_OPTS=%BOOT_OPTS% -Dclassworlds.conf="%CLASSWORLDS_CONF%"

:EXECUTE
    rem Execute the Java Virtual Machine
    cd %DISTRIB_HOME%
    "%JAVA%" %JAVA_OPTS% -classpath "%CLASSPATH%" %BOOT_OPTS% org.codehaus.classworlds.Launcher %ARGS%

rem # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

:END

endlocal
