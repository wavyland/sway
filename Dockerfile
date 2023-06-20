FROM alpine:3.17
RUN apk add --no-cache mesa-dri-gallium seatd seatd-launch sway xwayland xauth mcookie
RUN chmod +s /usr/bin/seatd-launch
COPY config /etc/sway/config
COPY Xwayland /etc/sway/Xwayland
RUN chmod +x /etc/sway/Xwayland
ENV WLR_XWAYLAND=/etc/sway/Xwayland
COPY .Xauthority /var/lib/sway/.Xauthority
RUN chmod 777 /var/lib/sway
ENV XAUTHORITY=/var/lib/sway/.Xauthority
USER nobody
ENTRYPOINT ["sway"]
