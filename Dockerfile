FROM sparklyballs/base-vanilla-armhf
MAINTAINER sparklyballs
ARG APKLIST="git nano nginx openssl php php-cli php-json php-fpm"

# install packages
RUN apk add --update $APKLIST && \
rm -rf /var/cache/apk/*

COPY root/ /

EXPOSE 80 443
VOLUME /config

