FROM ubuntu:22.04
LABEL maintainer="Phizzl <the@phizzl.it>"

ARG DCEM_VERSION=2.7.3

RUN apt-get -yq update \
    && apt-get -yq install unzip supervisor python3-pip wget openjdk-8-jre \
    && apt-get -yq clean all \
    && pip install xq \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt \
    && wget -q -O DCEM-Linux-${DCEM_VERSION}.zip "https://doubleclue.com/files/DCEM-Linux-${DCEM_VERSION}.zip" \
    && unzip DCEM-Linux-${DCEM_VERSION}.zip \
    && tar xfz DCEM-Linux-${DCEM_VERSION}.tar.gz \
    && rm DCEM-Linux-${DCEM_VERSION}.tar.gz DCEM-Linux-${DCEM_VERSION}.zip

RUN find /opt/DCEM/jvm/bin -type f -exec bash -c "rm {}; ln -sv \$(which \$(basename {})) {};" \;

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY supervisord-wrapper.sh /opt/dcem-supervisord-wrapper.sh

EXPOSE 443/tcp
EXPOSE 8443/tcp

VOLUME /opt/DCEM/DCEM_HOME
CMD ["/usr/bin/supervisord"]
