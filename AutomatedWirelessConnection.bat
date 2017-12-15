@ECHO OFF
REM Anthony Vu 12/13/17
REM This script will connect a computer to the
REM "guest" network if the device is a laptop
setlocal
REM 6DSASTS111222LS
REM should pull L
echo %computername%
set device=%computername:~-2%
REM echo ON
set device2=%device:~0,1%
if "%device2%"=="L" (
    echo is laptop
	REM add WiFi
	netsh wlan add profile filename="wifi-guest.xml" interface="Wi-Fi" user=current
	netsh wlan connect name="GUEST" interface="Wi-Fi"
) else (
	echo not laptop
)