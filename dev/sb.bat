::@echo off
cls
::Grab NAND
::head -c 555555555 %1 > %1-NAND
:: Figure out file size
:: TODO - check for %1, if not, do a set /p where one can click drag bin to prompt
::for /F "tokens=3,3" %%a in ('dir %1') do echo %%a>binsize.tmp
dir %1 >$f1
find "%1" $f1>$f2
for /F "tokens=3" %%b in ('type $f2') do echo %%b >$f3
set /p size=<$f3
set size=%size:,=%
del $f*
echo %size%
set mil=555555555
echo %mil%
set /A dif=(%size%-%mil%)
echo %dif%