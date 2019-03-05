# Небольшой пополняемый сборник скриптов для автоматизации рутинных действий в GNU Linux

Услышав любопытное в ролике [Почему я люблю Linux](https://www.youtube.com/watch?v=YSVB7y_EDRI) решил собрать (создать) свой сборник скриптиков для автоматизации рутинных действий.

Скрипты опробованы в дистрибутиве [Linux Fedora KDE](https://spins.fedoraproject.org/kde/) 29. Для иных дистрибутивов существенных отличий быть не должно, за исключением пакетных менеджеров и наличия/версий приложений в них.

Operating System | Format |	Tool(s)
---|---|---
Debian	| .deb	| `apt`, `apt-cache`, `apt-get`, `dpkg`
Ubuntu	| .deb	| `apt`, `apt-cache`, `apt-get`, `dpkg`
CentOS	| .rpm	| `yum`
Fedora	| .rpm	| `dnf`, `yum`
FreeBSD	| Ports, .txz	| `make`, `pkg`

[digitalocean.com/community/tutorials/package-management-basics-apt-yum-dnf-pkg](https://www.digitalocean.com/community/tutorials/package-management-basics-apt-yum-dnf-pkg)

В качестве текстового редактора я привожу `nano` (как более простого и понятного), но нет никаких причин неиспользования иного, например - `vim`.

Непосредственно скрипты собраны  в директории `scripts`, а описания и пояснения к ним в `.md` файлах.
В директории `aliases` - алиасы для использования в `.bashrc` или `.zshrc`, например.


## Ликбез
- `#` - запуск команды **с правами root**
- `$` - запуск команды **с правами пользователя**
