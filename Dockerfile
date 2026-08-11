FROM debian:trixie-slim

ARG ARCHI_VERSION
ARG COARCHI_VERSION

WORKDIR /opt/Archi

RUN set -eux; \
    : "${ARCHI_VERSION:?ARCHI_VERSION is required}"; \
    : "${COARCHI_VERSION:?COARCHI_VERSION is required}"; \ 
    # Install dependencies
    apt-get update -qq; \
    apt-get install -qq -y wget fonts-noto fontconfig libarchive-tools libgtk-3-0 xvfb;\
    # Install Archi
    wget -O - -q "https://github.com/archimatetool/archi.io/releases/download/${ARCHI_VERSION}/Archi-Linux64-${ARCHI_VERSION}.tgz" | bsdtar -xf - --strip-components=1; \
    chmod +x ./Archi; \
    # Install coArchi
    mkdir -p plugins; \
    wget -O - -q "https://www.archimatetool.com/downloads/coarchi/coArchi_${COARCHI_VERSION}.archiplugin" | bsdtar -xf - -C plugins; \
    # Create start script
    echo '#!/bin/sh' > ./start; \
    echo 'xvfb-run -a /opt/Archi/Archi -nosplash -consoleLog -application com.archimatetool.commandline.app "$@"' >> ./start; \
    chmod +x ./start; \
    # Remove unnecessary packages
    apt-get autoremove -y wget libarchive-tools; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["./start"]
CMD ["-h"]
