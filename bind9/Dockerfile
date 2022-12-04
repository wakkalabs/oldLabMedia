FROM ubuntu:latest

RUN apt-get install  bash
RUN apt-get update \
    && apt-get install -y \
        bind9 \
        bind9utils \
        bind9-doc \
        dnsutils 


  # RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

    COPY named.conf.options /etc/bind/
    COPY named.conf.local /etc/bind/
    COPY db.gitcarter.org /etc/bind/zones/
    EXPOSE 53/udp
    EXPOSE 53/tcp

    ENTRYPOINT [ "/bin/bash" ]
    CMD ["/bin/sh", "-c", "named -g -c /etc/bind/named.conf -u bind"]