FROM alpine:3

RUN apk add --no-cache pipx
RUN pipx install iredis

WORKDIR /root

RUN mkdir -p /root/iredis
RUN printf "[main]\nhistory_location = /root/iredis/.iredis_history\n" >> /root/.iredisrc

ENTRYPOINT [ "/root/.local/bin/iredis" ]
