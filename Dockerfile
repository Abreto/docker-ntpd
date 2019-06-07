FROM alpine

LABEL maintainer="Abreto Fu <m@abreto.net>"

RUN apk update && \
    apk add --no-cache openntpd && \
    rm -rf /var/cache/apk/*

COPY ntpd.conf /etc/ntpd.conf

ENTRYPOINT [ "cat", "/etc/ntpd.conf" ]