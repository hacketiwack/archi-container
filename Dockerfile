FROM debian:trixie-slim
WORKDIR /opt/Archi
COPY fonts/local.conf /etc/fonts/local.conf
COPY build/ ./
COPY scripts/start ./start

RUN set -eux; \
    apt-get update -qq; \
    apt-get install -qq -y fonts-noto fontconfig libgtk-3-0 xvfb; \
    fc-cache -fv; \
    chmod +x ./Archi ./start; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["./start"]
CMD ["-h"]