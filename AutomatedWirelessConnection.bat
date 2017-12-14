@ECHO OFF
REM Anthony Vu 12/13/17
REM This script will connect a computer to the
REM "guest" network if the device is a laptop
setlocal
REM 6DSASTS111222LS
REM should pull L
echo %computername%
set device=%computername:~-2%
rem echo ON
set device2=%device:~0,1%
if "%device2%"=="L" (
    echo Is Laptop
	REM add WiFi
	
	
	
	
	
	
) else (
	echo Not Laptop
)
ECHO OFF
REM if %device% == "L" (
REM   netsh wlan connect ssid="Guest" name="Guest" interface="Wi-Fi"
REM )