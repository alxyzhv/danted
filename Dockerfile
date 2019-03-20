FROM alpine

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories

RUN apk update && apk add --no-cache dante-server

ARG user=user
ARG password=123456

ENV PROXY_USER $user
ENV PROXY_PASSWORD $password

RUN adduser -S -H ${PROXY_USER} \
    && echo "${PROXY_USER}:${PROXY_PASSWORD}" | chpasswd

ADD sockd.conf /etc/sockd.conf

EXPOSE 1080

CMD ["sockd", "-f", "/etc/sockd.conf"]`