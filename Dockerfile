ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache \
    python3 \
    py3-paho-mqtt \
    jq

COPY run.sh monitor.py /

CMD ["/run.sh"]
