FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    git \
    wget \
    file \
    cpio \
    unzip \
    rsync \
    bc \
    bison \
    flex \
    perl \
    python3 \
    python3-setuptools \
    libncurses-dev \
    libssl-dev \
    kmod \
    && rm -rf /var/lib/apt/lists/*

ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} builder \
    && useradd -m -u ${UID} -g ${GID} builder \
    && mkdir -p /dl \
    && chown -R ${UID}:${GID} /dl

USER builder
WORKDIR /work

CMD ["/bin/bash"]
