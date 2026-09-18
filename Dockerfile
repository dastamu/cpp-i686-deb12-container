# DOCKERFILE

FROM --platform="linux/386" docker.io/i386/debian:bookworm-slim

# Aktualizacja i instalacja środowiska programistycznego
RUN apt-get update && apt-get install -y --no-install-recommends \
    g++ \
    cmake \
    make \
    libc6-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src
