:: 000 :: <- �᫮ ��� ।���஢���� ::
:: �ணࠬ��-�ਯ� ��� ����ண� ��४��祭�� ���ன�⢠ �뢮�� ��㪠 �� 㬮�砭��
:: ����� ���ଠ樨 �� https://github.com/EternalRival/SwitchAudio
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
title %~n0
:main
set /p device1=<%~f0^:D1
set /p device2=<%~f0^:D2

if not defined device1 goto :noDevices
if not defined device2 goto :noDevices

:switchDevices
set selectedDevice=%device1%
set /p selectedDevice=<%~f0^:SD
if %selectedDevice%==%device1% (set selectedDevice=%device2%) else (set selectedDevice=%device1%)
@echo %selectedDevice% > %~f0:SD
start "" %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe Set-audiodevice -id '%selectedDevice%'
exit 

:noDevices
cls
echo.
echo -----------------------------------------------------------------
echo   �� 㪠���� �㤨����ன�⢠! ��⮢�� ᯨ᮪ ���� ���ன��... 
powershell get-audiodevice -list > %~f0:deviceList
echo -----------------------------------------------------------------
findstr /b "Name ID"  <%~f0:deviceList
echo -----------------------------------------------------------------

:define1
if not defined device1 set /p device1=������ ID ���ன�⢠ 1: 
if not defined device1 goto :noDevices
@echo %device1%>%~f0:D1

:define2
if not defined device2 set /p device2=������ ID ���ன�⢠ 2: 
if not defined device2 goto :noDevices
@echo %device2%>%~f0:D2

:defineSuccess
cls
echo.
echo ^|---------------------------------------------------------------^|
echo ^|                 ���ன�⢠ �ᯥ譮 ���������.                 ^|
echo ^|---------------------------------------------------------------^|
echo ^|�᫨ ���ன�⢠ ��������� ����୮ � �ॡ���� �� ��������:     ^|
echo ^|- ������ 䠩� %~n0 � ⥪�⮢�� ।����               ^|
echo ^|- �������� �᫮ � ��ࢮ� ��ப� ����� "::"                    ^|
echo ^|- ��࠭��� 䠩� %~n0 � ��१�������                   ^|
echo ^|---------------------------------------------------------------^|
echo.
echo ������ Enter � ��१������ �ணࠬ��...
pause>nul
exit