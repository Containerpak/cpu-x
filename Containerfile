FROM ghcr.io/containerpak/gtk3:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/cpu-x"

RUN apt-get update && \
    apt-get install -y --no-install-recommends cpu-x && \
    cpak-clean-junk

COPY io.github.thetumultuousunicornofdarkness.cpu-x.desktop /usr/share/applications/io.github.thetumultuousunicornofdarkness.cpu-x.desktop
