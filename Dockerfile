FROM bash:4.4
COPY check_cert_date.sh /
RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*

CMD ["bash", "/check_cert_date.sh"]
