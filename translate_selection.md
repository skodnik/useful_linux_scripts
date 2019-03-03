# Перевод выделенного текста

Установка `xsel` и `Translate Shell` в Fedora. Для других дистрибутивов используйте иные пакетные менеджеры. Запуск от `root` (#) или `su`.
```
# dnf install xsel
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
Результат перевода будет выведен в форме системного уведомления.

Предоставляем полные права на чтение, модификацию и исполнение всем пользователям.
```
# chmod 777 ./translate_selection
```
Для вызова скрипта из любого контекста перемещаем его в директорию `/usr/bin`
```  
$ mv ./translate_selection /usr/bin
```
Для использования по хоткею указываем имя скрипта `translate_selection` в настройках горячих клавиш.
