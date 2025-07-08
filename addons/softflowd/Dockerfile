ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

ENV LANG=C.UTF-8

RUN apk add --no-cache softflowd

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
