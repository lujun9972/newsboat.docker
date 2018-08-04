FROM lujun9972/archlinuxcn.docker
RUN pacman -Syu --noconfirm && pacman -S newsboat w3m mpg123 --noconfirm && pacman -Scc --noconfirm
ADD rss.txt rss.txt
ADD config config
ENTRYPOINT ["newsboat"]
