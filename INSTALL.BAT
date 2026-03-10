@echo off
echo .
echo      I n s t a l l ...
echo .
if /%1==/ goto USAGE
if /%2==/ goto USAGE
set src=%1
set dst=%2\fq4
if exist %2\fq4\nul goto MD1
md %2\fq4
:MD1
cd %dst%
copy sound.exe %dst% > nul
copy fq4.*    %dst% > nul
copy kct.log  %dst% > nul
copy *.bat    %dst% > nul

@echo off
evmove %1: c:

%2
install1  %1 %2
rem inst  fq4 %1 %2
goto END
:USAGE
echo install   Disk-Drive-Name:   Hard-Disk-Drive-Name:
echo .
echo See  manual!
:END

