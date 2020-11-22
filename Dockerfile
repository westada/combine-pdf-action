FROM alpine:3.10
LABEL maintainer="Bryce Mecum <petridish@gmail.com>"

RUN apk --update add poppler poppler-utils

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
