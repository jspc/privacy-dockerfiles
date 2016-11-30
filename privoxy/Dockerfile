FROM alpine
MAINTAINER jspc

EXPOSE 8118

RUN apk add --update --no-cache privoxy

ADD privoxy/ /etc/privoxy

ENTRYPOINT ["/usr/sbin/privoxy", "--no-daemon", "/etc/privoxy/config"]
