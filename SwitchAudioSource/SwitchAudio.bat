:: 000 :: <- измените это число для сброса настроек
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Программа-скрипт для быстрого переключения устройства вывода звука по умолчанию
:: Больше информации на https://github.com/EternalRival/SwitchAudio
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Крайне не рекомендуется изменять код ниже этой строки!
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
title %~n0
:main
set /p device1=<%~nx0^:D1
set /p device2=<%~nx0^:D2

if not defined device1 goto :noDevices
if not defined device2 goto :noDevices

:switchDevices
set selectedDevice=%device1%
set /p selectedDevice=<%~nx0^:SD
if %selectedDevice%==%device1% (set selectedDevice=%device2%) else (set selectedDevice=%device1%)
@echo %selectedDevice% > %~nx0:SD
powershell set-audiodevice -id '%selectedDevice%'
exit 

:noDevices
cls
echo.
echo -----------------------------------------------------------------
echo   Не указаны аудиоустройства! Готовим список ваших устройств... 
powershell get-audiodevice -list > %~nx0:deviceList
echo -----------------------------------------------------------------
findstr /b "Name ID"  <%~nx0:deviceList
echo -----------------------------------------------------------------

:define1
if not defined device1 set /p device1=Введите ID устройства 1: 
if not defined device1 goto :noDevices
@echo %device1%>%~nx0:D1

:define2
if not defined device2 set /p device2=Введите ID устройства 2: 
if not defined device2 goto :noDevices
@echo %device2%>%~nx0:D2

:defineSuccess
cls
echo.
echo ^|---------------------------------------------------------------^|
echo ^|                 Устройства успешно добавлены.                 ^|
echo ^|---------------------------------------------------------------^|
echo ^|Если устройства добавлены неверно и требуется их изменить:     ^|
echo ^|- открыть файл %~n0 в текстовом редакторе               ^|
echo ^|- изменить число в первой строке между "::"                    ^|
echo ^|- сохранить файл %~n0 и перезапустить                   ^|
echo ^|---------------------------------------------------------------^|
echo.
echo Нажмите Enter и перезапустите программу...
pause>nul
exit