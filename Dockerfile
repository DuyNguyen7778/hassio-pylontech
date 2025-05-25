ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache \
    python3 \
    py3-pip \
    jq \
 && pip3 install --no-cache-dir --root-user-action=ignore paho-mqtt

COPY run.sh monitor.py /

CMD ["/run.sh"]
