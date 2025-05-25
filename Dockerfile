ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Cài python3, pip và jq rồi cài paho-mqtt bằng pip
RUN apk add --no-cache \
        jq \
        python3 \
        py3-pip \
 && pip3 install --no-cache-dir --root-user-action=ignore paho-mqtt

# Copy file chạy chính vào container
COPY run.sh monitor.py /

# Thiết lập lệnh chạy khi container khởi động
CMD ["/run.sh"]
