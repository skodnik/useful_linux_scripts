# Сохранение аудио ролика в указанную директорию

Установка `xsel`, `youtube-dl` и `ffmpeg` в Fedora.
```
# dnf install xsel youtube-dl ffmpeg
```
Создание текстового документа в редакторе nano.
```
$ nano best_audio_dl
```
Содержание скрипта, вставить в файл `best_audio_dl`.
```
#!/usr/bin/env bash
url="$(xsel -o)"
youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-quality 0 -o '~/YouTubeDL/Audio/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $url
```
Аудио файл лучшего качества будет загружаться в директорию `~/YouTubeDL/Audio/<название плейлиста>/<название файла>`.

Если требуется конвертация файла в mp3, например, то следует добавить флаг `--audio-format mp3`. Таким образом, последняя строчка будет выглядеть так.
```
youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/YouTubeDL/Audio/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $url
```
Предоставляем полные права на чтение, модификацию и исполнение всем пользователям.
```
# chmod 777 ./best_audio_dl
```
Для вызова скрипта из любого контекста перемещаем его в директорию `/usr/bin`
```  
$ mv ./best_audio_dl /usr/bin
```
Для использования по хоткею указываем имя скрипта `best_audio_dl` в настройках горячих клавиш.

При нажатии установленного сочетания клавиш произойдет загрузка аудио файла в указанную директорию источник будет выбран тот, ссылка на который будет или выделена в момент нажатия хоткея или находиться в буфере обмена. Внимание! Если будет указана ссылка на плейлист, то загружены будут все аудио дорожки из него!

Так как используется youtube-dl - [github.com/rg3/youtube-dl](https://github.com/rg3/youtube-dl) список источников довольно широк (youtube, soundcloud, ted и прочие - [rg3.github.io/youtube-dl/supportedsites.html](https://rg3.github.io/youtube-dl/supportedsites.html)), как впрочем и список доступных опций.
