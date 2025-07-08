# Mcron client Dockerfile
# This Dockerfile creates a minimal image with mcrcon installed
FROM alpine:latest

RUN apk add --no-cache curl build-base git

RUN git clone https://github.com/Tiiffi/mcrcon.git /mcrcon && \
    cd /mcrcon && \
    make && \
    cp mcrcon /usr/local/bin/ && \
    rm -rf /mcrcon

ENTRYPOINT ["mcrcon"]