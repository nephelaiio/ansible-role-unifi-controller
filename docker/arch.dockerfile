FROM pritunl/archlinux:latest
RUN pacman -Sy --noconfirm python python2 sudo ; ln -sf /usr/bin/python2 /usr/bin/python
