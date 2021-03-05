:: Программа-скрипт для быстрого переключения устройства вывода звука по умолчанию
:: Больше информации на https://github.com/EternalRival/SwitchAudio
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Данный скрипт устанавливает необходимую библиотеку dll из текущей папки в систему
:: Актуальная информация и документация по библиотеке находится по адресу https://github.com/frgnca/AudioDeviceCmdlets
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
Title Install AudioDeviceCmdlets.dll
(
echo New-Item "$($profile | split-path)\Modules\AudioDeviceCmdlets" -Type directory -Force
echo Copy-Item AudioDeviceCmdlets.dll "$($profile | split-path)\Modules\AudioDeviceCmdlets\AudioDeviceCmdlets.dll"
echo Set-Location "$($profile | Split-Path)\Modules\AudioDeviceCmdlets"
echo Get-ChildItem ^| Unblock-File
echo Import-Module AudioDeviceCmdlets
)>text.ps1
powershell -executionpolicy RemoteSigned -file text.ps1
del text.ps1
cls 
echo.
echo ^|---------------------------------------------------------------^|
echo ^|               AudioDeviceCmdlets.dll установлен               ^|
echo ^|---------------------------------------------------------------^|
echo ^|                  Далее запустите SwitchAudio                  ^|
echo ^|---------------------------------------------------------------^|
echo ^|                         (опционально)                         ^|
echo ^|-Создайте ярлык на рабочий стол                                ^|
echo ^|-Откройте свойства ярлыка                                      ^|
echo ^|-Задайте комбинацию клавиш для быстрого переключения устройств ^|
echo ^|---------------------------------------------------------------^|
echo.
echo Нажмите Enter, чтобы закрыть это окно...
pause>nul