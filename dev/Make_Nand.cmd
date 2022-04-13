::@echo off
::cls
dir test.bin >$f1
find "test.bin" $f1>$f2
for /F "tokens=3" %%b in ('type $f2') do echo %%b >$f3
set /p size=<$f3
set size=%size:,=%
del $f*
echo %size%