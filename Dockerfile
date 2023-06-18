# syntax=docker/dockerfile:1

FROM itzg/minecraft-server:java20-alpine

WORKDIR /
RUN mkdir -p ./cfg
COPY wrapper .
COPY overrides ./cfg

ENTRYPOINT ./wrapper
HEALTHCHECK --start-period=1m --interval=5s --retries=24 CMD mc-health
