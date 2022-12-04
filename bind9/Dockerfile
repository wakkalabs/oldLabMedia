FROM ubuntu:latest


RUN apt-get update \
    && apt-get install -y \
        bind9 \
        bind9utils \
        bind9-doc \
        dnsutils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

    RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

    COPY named.conf.options /etc/bind/
    COPY named.conf.local /etc/bind/
    COPY db.gitcarter.org /etc/bind/zones/

    CMD ['/bin/bash', "-c", "service bind9 start && tail -f /var/log/syslog"]
