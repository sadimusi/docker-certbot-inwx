ARG CERTBOT_VERSION
FROM certbot/certbot:${CERTBOT_VERSION}

RUN wget https://github.com/sadimusi/docker-certbot-inwx/archive/master.zip && \
    unzip master.zip && \
    pip install ./docker-certbot-inwx-* dnspython && \
    rm -rf certbot-dns-inwx-master master.zip
