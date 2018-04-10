FROM base/archlinux
ADD mirrorlist /etc/pacman.d/mirrorlist
RUN pacman -Syu --noconfirm && pacman -S newsboat w3m mpg123 --noconfirm && pacman -Scc --noconfirm
ADD rss.txt rss.txt
ADD config config
ADD ~/.inoreader-password /root/.inoreader-password
CMD newsboat -ru rss.txt -C config
