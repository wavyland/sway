FROM alpine:3.17
RUN apk add --no-cache mesa-dri-gallium sway xwayland
COPY config /etc/sway/config
USER nobody
ENTRYPOINT ["sway"]
