FROM alpine:edge
MAINTAINER jspc

EXPOSE 8118

RUN apk add --update --no-cache privoxy tor

ADD privoxy/ /etc/privoxy

USER privoxy

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
