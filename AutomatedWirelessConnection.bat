REM Anthony Vu 12/13/17
REM This script will connect a computer to the
REM "guest" network if the device is a laptop
setlocal
REM 6DSASTS111222LS
REM should pull L
set device=%computername:~13,1%

if %device% == "L" (
   netsh wlan connect ssid="Guest" name="Guest" interface="Wi-Fi"
)