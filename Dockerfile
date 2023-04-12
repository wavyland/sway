FROM alpine:3.17
RUN apk add --no-cache mesa-dri-gallium seatd seatd-launch sway xwayland
RUN chmod +s /usr/bin/seatd-launch
COPY config /etc/sway/config
USER nobody
ENTRYPOINT ["sway"]
