FROM pritunl/archlinux
MAINTAINER Julien BONACHERA <julien@bonachera.fr>

RUN pacman -S --noconfirm bind geoip
VOLUME /var/named/slave/
RUN useradd -r named -u 40 && \
    mkdir -p  /var/run/named /var/named && \
    chown -R named: /var/named  /var/run/named
ADD named.conf /etc/named.conf
ADD entrypoint /sbin/entrypoint
ENTRYPOINT /sbin/entrypoint
