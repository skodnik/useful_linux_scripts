# Запуск youtube ролика в проигрывателе VLC


  # dnf install xsel vlc
  $ touch youtubeinvlc
  $ nano youtubeinvlc

  #!/usr/bin/env bash
  url="$(xsel -o)"
  vlc $url

  $ chmod 777 ./youtubeinvlc
  $ mv ./seltr /usr/bin/youtubeinvlc
