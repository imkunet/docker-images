FROM alpine:3

RUN apk add --no-cache pipx
RUN pipx install iredis

RUN mkdir -p ~/iredis
RUN echo "history_location = ~/iredis/.iredis_history" > ~/.iredisrc

ENTRYPOINT [ "/root/.local/bin/iredis" ]
