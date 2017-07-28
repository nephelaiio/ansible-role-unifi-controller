FROM base/archlinux:latest
RUN pacman -Syy
RUN pacman -Sy --noconfirm python python2 sudo ; ln -sf /usr/bin/python2 /usr/bin/python
RUN pacman -Sy --noconfirm sed gzip
RUN pacman -Sy --noconfirm sed systemd systemd-sysvcompat
RUN echo LANG=en_US.UTF-8 > /etc/locale.conf
RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen
RUN locale-gen
ENV container docker

CMD ["/bin/bash"]
