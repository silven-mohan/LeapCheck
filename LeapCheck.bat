:: LeapCheck

@echo off


:menu
echo ----- LeapCheck -----
echo 1. Current Year
echo 2. Custom Year
echo 3. Exit
set /p choice=Choose one of the options from above:
set /a choice=%choice%

cls
if "%choice%"=="1" (
	goto ongoing_year
	goto menu
) else if "%choice%"=="2" (
	goto custom_year
	goto menu
) else if "%choice%"=="3" (
	exit
) else (
	echo Invalid Choice!
	pause
	goto menu
)

:ongoing_year
set year=%date:~6, 4%
goto leapcheck
pause
cls

:custom_year
set /p year=Enter the year:
set /a year=%year%
goto leapcheck
pause
cls

:leapcheck
set /a lc=year%%4
if "%lc%"=="0" (
	echo %year% is a Leap year.
) else (
	echo %year% is not a Leap year.
)
pause
goto menu