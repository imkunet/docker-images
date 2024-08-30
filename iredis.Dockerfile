FROM alpine:3

RUN apk add --no-cache pipx
RUN pipx install iredis

ENTRYPOINT [ "/root/.local/bin/iredis" ]
