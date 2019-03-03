# Перевод выделенного текста

Установка `xsel` в Fedora.
```
# dnf install xsel
```
Клонирование github репозитория и установка `Translate Shell`.
```
$ git clone https://github.com/soimort/translate-shell
$ cd translate-shell/
$ make
# make install
```
Создание текстового документа в редакторе nano.
```
$ nano translate_selection
```
Содержание скрипта, вставить в файл `translate_selection`.
```
#!/usr/bin/env bash
text=$(xsel -o)
translate=$(trans -b "$text")
notify-send -u critical "$text" "$translate"
```
Предоставляем полные права на чтение, модификацию и исполнение всем пользователям.
```
# chmod 777 ./translate_selection
```
Для вызова скрипта из любого контекста перемещаем его в директорию `/usr/bin`
```  
$ mv ./translate_selection /usr/bin
```
Для использования по хоткею указываем имя скрипта `translate_selection` в настройках горячих клавиш. Теперь, при нажатии выбранного хоткея, будет происходить перевод выделенного в этот момент фрагмента текста или фрагмента находящегося буфере с помощью сервиса Google Translate и вывод результата перевода с помощью штатной системы нотификаций.
