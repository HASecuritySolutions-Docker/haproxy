FROM haproxy:latest
MAINTAINER Justin Henderson justin@hasecuritysolutions.com

RUN apt update \
    && apt install -y curl \
    && apt clean
RUN useradd -ms /bin/bash haproxy \
    && chown -R haproxy:haproxy /usr/local/etc/haproxy
USER haproxy
STOPSIGNAL SIGTERM
