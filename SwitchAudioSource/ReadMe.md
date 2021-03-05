# SwitchAudio
***
*Версия для github в кодировке UTF-8. Для корректного отображения кириллицы, используйте версию из 'SwitchAudioRelease.zip'*
***
#### Программа-скрипт для быстрого переключения устройства вывода звука по умолчанию
Больше информации на https://github.com/EternalRival/SwitchAudio
***
Актуальная информация и документация по используемой библиотеке находится по адресу https://github.com/frgnca/AudioDeviceCmdlets
***
##### Условия для корректной работы.
- Путь к файлам не должен содержать пробелы/кириллицу.
- Файл 'SwitchAudio.bat' должен находиться в файловой системе с типом NTFS.
***
##### Установка.
1. Скачать zip-архив с актуальной версией скрипта по адресу https://github.com/EternalRival/SwitchAudio
2. Распаковать в любое удобное место. Во избежание непредвиденных ошибок, желательно избегать пробелы/кириллицу в пути к файлам.
3. Поместить файл 'setup.bat' в одну папку с 'AudioDeviceCmdlets.dll'.
4. Запустить исполняемый файл 'setup.bat' для установки библиотеки 'AudioDeviceCmdlets.dll' в систему.
5. Запустить исполняемый файл 'SwitchAudio.bat' для первичной настройки скрипта.
6. Следуя инструкции последовательно ввести ID двух аудиоустройств. (ID можно скопировать в том же окне через Ctrl+C/Ctrl+V)
7. Завершить настройку и перейти к использованию.
8. Если скрипт не работает, вероятно была допущена ошибка при установке/настройке. Для исправления выполнить следующие действия.
   1. Открыть файл 'SwitchAudio.bat' в текстовом редакторе, изменить число в первой строке между "::", сохранить файл 'SwitchAudio.bat' и перезапустить.
   2. Повторить пункты 5-7.
   3. Если проблема не решена, повторить процедуру установки сначала.
***
##### Использование.
1. Поместить 'SwitchAudio.bat' в удобное место. 
2. Открытие файла переключает устройство вывода звука по умолчанию между двумя выбранными устройствами.
3. (опционально) Создать ярлык для 'SwitchAudio.bat'
4. (опционально) В свойствах ярлыка указать комбинацию клавиш для быстрого вызова.
***