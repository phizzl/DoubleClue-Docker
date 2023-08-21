FROM ubuntu:22.04
LABEL maintainer="Phizzl <the@phizzl.it>"

RUN apt-get -yq update \
    && apt-get -yq install unzip supervisor python3-pip wget \
    && apt-get -yq clean all \
    && pip install xq \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt \
    && wget -q -O DCEM_Linux.tar.gz "https://doubleclue.com/files/DCEM_Linux.tar.gz" \
    && tar xfz DCEM_Linux.tar.gz \
    && rm DCEM_Linux.tar.gz

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY supervisord-wrapper.sh /opt/dcem-supervisord-wrapper.sh

EXPOSE 443/tcp
EXPOSE 8443/tcp

VOLUME /opt/DCEM/DCEM_HOME
CMD ["/usr/bin/supervisord"]
