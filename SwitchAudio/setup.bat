:: �ணࠬ��-�ਯ� ��� ����ண� ��४��祭�� ���ன�⢠ �뢮�� ��㪠 �� 㬮�砭��
:: ����� ���ଠ樨 �� https://github.com/EternalRival/SwitchAudio
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: ����� �ਯ� ��⠭�������� ����室���� ������⥪� dll �� ⥪�饩 ����� � ��⥬�
:: ���㠫쭠� ���ଠ�� � ���㬥���� �� ������⥪� ��室���� �� ����� https://github.com/frgnca/AudioDeviceCmdlets
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
echo ^|               AudioDeviceCmdlets.dll ��⠭�����               ^|
echo ^|---------------------------------------------------------------^|
echo ^|                  ����� ������� SwitchAudio                  ^|
echo ^|---------------------------------------------------------------^|
echo ^|                         (��樮���쭮)                         ^|
echo ^|-������� ��� �� ࠡ�稩 �⮫                                ^|
echo ^|-��ன� ᢮��⢠ ��몠                                      ^|
echo ^|-������ ��������� ������ ��� ����ண� ��४��祭�� ���ன�� ^|
echo ^|---------------------------------------------------------------^|
echo.
echo ������ Enter, �⮡� ������� �� ����...
pause>nul